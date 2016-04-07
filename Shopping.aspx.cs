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

public partial class MemberManage_Shopping : System.Web.UI.Page
{
    SqlOperate sqloperate = new SqlOperate();
    SqlHelper data=new SqlHelper();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["MName"] == null)
            {
                Response.Write("<script>alert('您还没有登录，请登录后再使用该功能!');location='javascript:history.go(-1)';</script>");
            }
            else
            {

                SqlDataReader dr = data.GetDataReader("select top 1 * from tb_Order where  IsCheckout='否' and  Ordeuser='" + Session["MName"].ToString() + "' order by id desc  ");
                if (dr.Read())
                {
                    Label5.Text = dr["Orderid"].ToString();
                }


                BinderOrder();

            }
        }
    }
    protected void lbtnCheck_Click(object sender, EventArgs e)
    {
        if (labMoney.Text == "0")
        {
            Alert.AlertAndRedirect("您的购物车中没有任何物品", "Shopping.aspx");         

        }
        else
        {
            SqlHelper data = new SqlHelper();
            SqlDataReader dr;
            dr = data.GetDataReader("select * from tb_Member where MemberName='" + Session["MName"].ToString() + "'");
            dr.Read();
            string MPrice = dr["MemberMoney"].ToString();
         
            

                string sqlstrshop1 = "update tb_Member set MemberMoney='"
                    + (Convert.ToInt32(MPrice) - Convert.ToInt32(labMoney.Text)) + "' where MemberName='" + Session["MName"].ToString() + "'";
                sqloperate.DataCom(sqlstrshop1);
              
                Response.Redirect("SuccShop.aspx?OrderMember=" + Session["MName"].ToString());
            
        }
    }
    protected void lbtnClear_Click(object sender, EventArgs e)
    {
        string sqlstr = "delete from tb_OrderInfo where OrderMember='"
            + Session["MName"].ToString() + "' and IsCheckout='否'";
        sqloperate.DataCom(sqlstr);
        Response.Redirect("Shopping.aspx");
    }
    protected void gvOrderInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvOrderInfo.PageIndex = e.NewPageIndex;
        gvOrderInfo.DataBind();
    }
    protected void gvOrderInfo_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void gvOrderInfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sqlstr = "delete from tb_OrderInfo where OrderID='" + gvOrderInfo.DataKeys[e.RowIndex].Value + "'";
        sqloperate.DataCom(sqlstr);
        Response.Redirect("Shopping.aspx");
    }
  
    public override void VerifyRenderingInServerForm(System.Web.UI.Control control)
    {
    }

    protected void gvOrderInfo_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SqlHelper mydata = new SqlHelper();
        string ID = gvOrderInfo.DataKeys[e.RowIndex].Values[0].ToString();
     
        {

            
           mydata.RunSql("update tb_OrderInfo  set shuliang ='" + ((TextBox)gvOrderInfo.Rows[e.RowIndex].FindControl("TextBox1")).Text + "'  where OrderID='" + ID+"'");
            gvOrderInfo.EditIndex = -1;
            BinderOrder();
        }
     
    }
    protected void gvOrderInfo_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvOrderInfo.EditIndex = e.NewEditIndex;
        BinderOrder();
    }
    protected void gvOrderInfo_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvOrderInfo.EditIndex = -1;
        BinderOrder();
    }
    private void BinderOrder()
    {
        string sqlstr = "select shuliang,OrderID,GoodsName,GoodsTypeName,GoodsPrice,orderDate from tb_OrderInfo where OrderMember='" + Convert.ToString(Session["MName"]) + "' and IsCheckout='否'";
        gvOrderInfo.DataKeyNames = new string[] { "OrderID" };
        sqloperate.gvDataBind(gvOrderInfo, sqlstr);

        SqlHelper data = new SqlHelper();
        SqlDataReader dr1;
        dr1 = data.GetDataReader("select OrderID from tb_OrderInfo where OrderMember='" + Convert.ToString(Session["MName"]) + "' and IsCheckout='否'");
        if (dr1.Read())
        {

            string sqlstrtprice = "select sum(GoodsPrice*shuliang) as tprice from tb_OrderInfo"
                + " where OrderMember='" + Convert.ToString(Session["MName"]) + "' and IsCheckout='否'";

            SqlDataReader dr;
            dr = data.GetDataReader(sqlstrtprice);
            dr.Read();
            labMoney.Text = Convert.ToString(int.Parse(dr["tprice"].ToString()) );


        }
        else
        {
            labMoney.Text = "0";

        }


        //sqlconn.Open();
        //SqlDataAdapter myda = new SqlDataAdapter(sqlstrtprice, sqlconn);
        //DataSet myds = new DataSet();
        //myda.Fill(myds, "tb_OrderInfo");
        //DataRowView mydrv = myds.Tables["tb_OrderInfo"].DefaultView[0];

    }
}
