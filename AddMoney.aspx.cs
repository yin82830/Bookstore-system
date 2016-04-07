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

public partial class MemberManage_AddMoney : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (Session["MName"].ToString() == null)
            {
                Alert.AlertAndRedirect("您没有登陆不能充值","../default.aspx");
            }
        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        SqlHelper data = new SqlHelper();
        data.RunSql("update tb_Member set MemberMoney=MemberMoney+" + Convert.ToDecimal(txtLoginName.Text) + " where MemberName='" + Session["MName"].ToString() + "'");
        Alert.AlertAndRedirect("充值成功请继续结算", "Shopping.aspx");
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtLoginName.Text = "";

    }
}
