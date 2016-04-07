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

public partial class MemberManage_ShowPwd : System.Web.UI.Page
{
    SqlConnection sqlconn = new SqlConnection( ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        sqlconn.Open();
        SqlCommand sqlcom = new SqlCommand("select MemberPWD from tb_Member where MemberName='"
            + Convert.ToString(Session["MName"]) + "'", sqlconn);
        labMName.Text = Session["MName"].ToString();//接受FillUserID页传值
        labMPwd.Text = Convert.ToString(sqlcom.ExecuteScalar());
        sqlconn.Close();
    }
  
}
