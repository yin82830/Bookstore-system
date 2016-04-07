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
public partial class tuihuo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    public string OrderStite;
    protected void Page_Load(object sender, EventArgs e)
    {

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

        if (OrderStite == "货已到")
        {
            data.RunSql("update tb_Order set OrderStite='退货中' where Orderid='" + id + "'");
            Alert.AlertAndRedirect("操作成功等待审核", "Lishi.aspx");

        }
        else if (OrderStite == "未发货")
        {
            Alert.AlertAndRedirect("没有发货的商品不能退货", "Lishi.aspx");
        }
        else if (OrderStite == "已经发货")
        {
            Alert.AlertAndRedirect("没有收货的商品不能退货", "Lishi.aspx");
        }    

        else if (OrderStite == "退货中")
        {
          
            Alert.AlertAndRedirect("正在退货，等待管理员审核退货请求", "Lishi.aspx");

        }
        else if (OrderStite == "退货成功")
        {

            Alert.AlertAndRedirect("商品已经退货，请不要重复操作", "Lishi.aspx");

        }
        
    }
}
