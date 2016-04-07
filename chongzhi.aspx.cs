using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chongzhi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //充值
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlHelper sql = new SqlHelper();

        sql.RunSql("update tb_Member set membermoney=membermoney+" + TextBox1.Text + " where MemberName='" + Session["Mname"].ToString() + "'");
        Alert.AlertAndRedirect("充值成功，请返回！", "login.aspx");
    }
}