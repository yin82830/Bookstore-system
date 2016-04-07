using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class AdminManage_EditOrder : System.Web.UI.Page
{
    SqlOperate sqloperate = new SqlOperate();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    SqlHelper data = new SqlHelper();
    public string OrderStite;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvbind();
        }
    }
    protected void lbtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("OrderManage.aspx");
    }
    protected void gvPOInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvPOInfo.PageIndex = e.NewPageIndex;
        gvbind();
    }
    public void gvbind()
    {
        sqlconn.Open();
        try
        {
            string strname = "select OrderID,OrderMember from vb_OrderInfo where OrderID='" + Request["OrderID"].ToString() + "'";
            SqlDataAdapter mydaname = new SqlDataAdapter(strname, sqlconn);
            DataSet mydsname = new DataSet();
            mydaname.Fill(mydsname, "vb_OrderInfo");
            DataRowView mydrvname = mydsname.Tables["vb_OrderInfo"].DefaultView[0];
            string sqlstr = "select count(GoodsName) as TNum,sum(GoodsPrice) as TPrice from vb_OrderInfo where OrderID='"
                + Convert.ToString(mydrvname.Row["OrderID"]) + "'";
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlconn);
            DataSet myds = new DataSet();
            myda.Fill(myds, "vb_OrderInfo");
            DataRowView mydrv = myds.Tables["vb_OrderInfo"].DefaultView[0];
            txtONum.Text = Convert.ToString(mydrv.Row["TNum"]);
            txtOTPrice.Text = Convert.ToString(mydrv.Row["TPrice"]);
            string sqlstrpart = "select * from vb_OrderInfo where OrderID='"
                + Convert.ToString(mydrvname.Row["OrderID"]) + "'";
            SqlDataAdapter mydabind = new SqlDataAdapter(sqlstrpart, sqlconn);
            DataSet mydsbind = new DataSet();
            mydabind.Fill(mydsbind, "vb_OrderInfo");
            DataRowView mydrvbind = mydsbind.Tables["vb_OrderInfo"].DefaultView[0];
            txtOMember.Text = Convert.ToString(mydrvbind.Row["OrderMember"]);
            sqloperate.gvDataBind(gvPOInfo, sqlstrpart);
            string sqlstrminfo = "select MemberPhone,MemberCity from tb_Member where MemberName='" + txtOMember.Text.Trim() + "'";
            SqlDataAdapter mydaminfo = new SqlDataAdapter(sqlstrminfo, sqlconn);
            DataSet mydsminfo = new DataSet();
            mydaminfo.Fill(mydsminfo, "tb_Member");
            DataRowView mydrvminfo = mydsminfo.Tables["tb_Member"].DefaultView[0];
            txtOMCity.Text = Convert.ToString(mydrvminfo.Row["MemberCity"]);
            txtPhone.Text = Convert.ToString(mydrvminfo.Row["MemberPhone"]);
            sqlconn.Close();
        }
        catch
        {
            Response.Write("<script>alert('该用户已经不存在')<script>");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["Orderid"].ToString();
        SqlHelper data = new SqlHelper();
        SqlDataReader dr;
        string sql = "select * from tb_Order where Orderid='" + id + "'";
        dr = data.GetDataReader(sql);
        dr.Read();
        OrderStite = dr["OrderStite"].ToString();

        if (OrderStite == "已经发货")
        {
            Alert.AlertAndRedirect("该订单已经发货", "OrderManage.aspx");

        }
        if (OrderStite == "退货中")
        {
            Alert.AlertAndRedirect("该订单已经申请退货", "OrderManage.aspx");

        }
        if (OrderStite == "退货成功")
        {
            Alert.AlertAndRedirect("该订单已经退货了", "OrderManage.aspx");

        }
        if (OrderStite == "货已到")
        {
            Alert.AlertAndRedirect("该订单已经到货了", "OrderManage.aspx");

        }
        else
        {


            data.RunSql("update tb_Order set OrderStite='已经发货' where Orderid='" + id + "'");
            Alert.AlertAndRedirect("操作成功", "OrderManage.aspx");

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["Orderid"].ToString();
        SqlHelper data = new SqlHelper();
        SqlDataReader dr;
        string sql = "select * from tb_Order where Orderid='" + id + "'";
        dr = data.GetDataReader(sql);
        dr.Read();
        OrderStite = dr["OrderStite"].ToString();

        if (OrderStite == "退货中")
        {
            string mon = data.ReturnSql("select GoodsPrice from tb_OrderInfo where OrderID='" + id + "'");
            long money = long.Parse(mon);

            data.RunSql("update tb_Member set MemberMoney=MemberMoney+" + money + " where MemberName='" + Session["MName"].ToString() + "'");
            data.RunSql("update tb_Order set OrderStite='退货成功' where Orderid='" + id + "'");
            Alert.AlertAndRedirect("退货成功", "OrderManage.aspx");

        }
        else
        {



            Alert.AlertAndRedirect("没有申请退货不能进行操作", "OrderManage.aspx");

        }
    }
}
