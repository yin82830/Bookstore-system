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

public partial class MemberManage_Register : System.Web.UI.Page
{
    SqlOperate sqloperate = new SqlOperate();
    SqlConnection sqlconn = new SqlConnection( ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            sqlconn.Open();
       
        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string sqltest = "select * from tb_Member where MemberName='" + this.txtLoginName.Text + "'";
        sqlconn.Open();
        SqlCommand sqlcom = new SqlCommand(sqltest, sqlconn);
        SqlDataReader read = sqlcom.ExecuteReader();
        read.Read();
        if (read.HasRows)
        {
            if (this.txtLoginName.Text.Trim() == read["MemberName"].ToString().Trim())
            {
                Response.Write("<script language='javascript'>alert('该会员已经注册过');localtion='Register.aspx'</script>");
                return;
            }
        }
        string sqlstr = "insert into tb_Member "
            + "(MemberName,MemberSex,MemberPWD,MemberTName,"
            + "MemberQue,MemberAns,MemberPhone,MemberEmail,MemberCity,MemberAddress,MemberPostCode)"
            + "values('" + txtLoginName.Text + "','" + ddlSex.SelectedValue
            + "','" + txtPwd.Text + "','" + txtTName.Text + "','" + txtQuePwd.Text
            + "','" + txtAnsPwd.Text + "','" + txtTel.Text + "','" + txtEmail.Text
            + "','" + ddlCity.Text + "','" + txtAddress.Text + "','" + txtPostCode.Text + "')";
        sqloperate.DataCom(sqlstr);
        sqlconn.Close();
        Session["regName"] = txtLoginName.Text.Trim();
        Response.Redirect("SuccReg.aspx");
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtLoginName.Text = "";
        txtPwd.Text = "";
        txtTName.Text = "";
        txtQuePwd.Text = "";
        txtAnsPwd.Text = "";
        txtTel.Text = "";
        txtEmail.Text = "";
        txtAddress.Text = "";
        txtPostCode.Text = "";
        txtLoginName.Focus();
    }
   
  
}
