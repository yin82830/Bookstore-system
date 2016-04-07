using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class MemberManage_ShowInfo : System.Web.UI.Page
{
    SqlOperate sqloperate = new SqlOperate();
    SqlHelper data = new SqlHelper();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    string strGTypeID;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            sqlconn.Open();
            string strid = Page.Request.QueryString["GoodsID"];
            string sqlstr = "select * from vb_GoodsInfo where GoodsID='" + strid + "'";
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlconn);
            DataSet myds = new DataSet();
            myda.Fill(myds, "vb_GoodsInfo");
            DataRowView mydrv = myds.Tables["vb_GoodsInfo"].DefaultView[0];
            txtGID.Text = Convert.ToString(mydrv.Row["GoodsID"]);
            txtGName.Text = Convert.ToString(mydrv.Row["GoodsName"]);
            //txtGType.Text = Convert.ToString(mydrv.Row["GoodsTypeName"]);
                 txtGPrice.Text = Convert.ToString(mydrv.Row["GoodsPrice"]);
           
            txtGIntro.Text = Convert.ToString(mydrv.Row["GoodsIntroduce"]) + "…";
            iGPhoto.ImageUrl = "uploads/" + Convert.ToString(mydrv.Row["GoodsPhoto"]);
            strGTypeID = Convert.ToString(mydrv.Row["GoodsTypeID"]);
            store.Text = int.Parse(mydrv.Row["GoodsNum"].ToString())+"件";
            //Label1.Text = Convert.ToString(mydrv.Row["name1"]) + " " + Convert.ToString(mydrv.Row["name2"]) + " " + Convert.ToString(mydrv.Row["name3"]);
           int num = int.Parse(mydrv.Row["GoodsNum"].ToString());
           Session["num"] = num;
           Session.Timeout = 12312;
        }
    }
    protected void btnShop_Click(object sender, EventArgs e)
    {
        string Orderid;
        int num = int.Parse(Session["num"].ToString());
        int qty=int.Parse(TextBox1.Text);
        if(qty>num)
        {
            Response.Write("<script>alert('库存没有那么多，请修改数量！')</script>");
            return;
        }
        if (Session["MName"] == null)
        {
            Response.Write("<script>alert('您还没有登录，请登录后再购买，谢谢合作！');location='javascript:history.go(-1)';</script>");
        }
        else
        {
            SqlDataReader dr = data.GetDataReader("select top 1 * from tb_Order where IsCheckout='否' and  Ordeuser='" + Session["MName"].ToString() + "' order by id desc  ");

            sqlconn.Open();
            SqlCommand sqlcom = new SqlCommand("select * from tb_Member where MemberName='" + Session["MName"].ToString() + "'", sqlconn);
            sqlcom.CommandType = CommandType.Text;

            SqlDataReader read = sqlcom.ExecuteReader();
            if (read.Read())
            {
                if (decimal.Parse(read["memberMoney"].ToString()) < decimal.Parse(TextBox1.Text) * decimal.Parse(txtGPrice.Text))
                {
                    Response.Write("<script>alert('您的账户余额已不足，请充值！');</script>");
                    return;
                }
            }
            read.Close();
           
            
                Orderid =DateTime.Now.Year.ToString()+DateTime.Now.Month.ToString()+ DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
                string sqlOrder = "insert into tb_Order(Orderid,Ordeuser,OrderStite)values('" + Orderid + "','" + Session["MName"].ToString() + "','未发货')";
                sqloperate.DataCom(sqlOrder);
          
            string strid = Page.Request.QueryString["GoodsID"];
            string sqlstrbind = "select * from tb_GoodsInfo where GoodsID='" + strid + "'";
            SqlDataAdapter myda = new SqlDataAdapter(sqlstrbind, sqlconn);
            DataSet myds = new DataSet();
            myda.Fill(myds, "vb_GoodsInfo");
            DataRowView mydrv = myds.Tables["vb_GoodsInfo"].DefaultView[0];
            strGTypeID = Convert.ToString(mydrv.Row["GoodsTypeID"]);



            string sqlstr = "insert into tb_OrderInfo"
                + "(OrderID,OrderMember,GoodsID,GoodsName,GoodsTypeID,GoodsPrice,IsCheckout,shuliang)"
                + " values('" + Orderid + "','" + Session["MName"].ToString() + "','" + txtGID.Text.Trim() + "','"
                + txtGName.Text.Trim() + "','" + strGTypeID + "','" + txtGPrice.Text.Trim() + "','否','"+TextBox1.Text+"')";
            sqloperate.DataCom(sqlstr);
            Response.Redirect("Shopping.aspx");
           
        }
    }
}
