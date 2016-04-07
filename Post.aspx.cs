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
public partial class Post : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = " 网上书店";
        if (!IsPostBack)
        {
            gvbind();
        }

    }
    public void addliuyan(string title, string name, string compyname, string email, string htp, string neirong)
    {
        SqlConnection conn = new SqlConnection(SqlHelper.connstring);

        SqlCommand comm = new SqlCommand("insert into tb_Post([title],name,partyname,email,htp,neirong) values('" + title + "','" + name + "','" + compyname + "','" + email + "','" + htp + "','" + neirong + "')", conn);
        conn.Open();
        comm.ExecuteNonQuery();
        conn.Close();
    }
    protected void fabu_Click(object sender, EventArgs e)
    {
        addliuyan(title.Text, name.Text, compyname.Text, email.Text, htp.Text, neirong.Text);
        Alert.AlertAndRedirect("留言成功", "Post.aspx");
        title.Text = "";
        name.Text = "";
        email.Text = "";
        htp.Text = "";
        neirong.Text = "";
        compyname.Text = "";
        Alert.AlertAndRedirect("留言成功！感谢您的支持", "Post.aspx");
    }
    private void gvbind()
    {
        string sql = "select * from tb_Post order by id desc";
        SqlConnection con = new SqlConnection(SqlHelper.connstring);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        PagedDataSource objPds = new PagedDataSource();
        objPds.DataSource = ds.Tables[0].DefaultView;

        objPds.AllowPaging = true;
        objPds.PageSize = 39;

        int CurPage;
        if (Request.QueryString["Page"] != null)
            CurPage = Convert.ToInt32(Request.QueryString["Page"]);
        else
            CurPage = 1;

        objPds.CurrentPageIndex = CurPage - 1;
        lblCurrentPage.Text = CurPage.ToString();
        lblSumPage.Text = objPds.PageCount.ToString();

        if (!objPds.IsFirstPage)
        {
            this.hyfirst.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + 1;
            lnkPrev.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage - 1);
        }

        if (!objPds.IsLastPage)
        {
            hylastpage.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + objPds.PageCount;

            lnkNext.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage + 1);
        }

        this.DataList1.DataSource = objPds;
        this.DataList1.DataBind();
        con.Close();
    }
    protected string CutChar(string strChar, int intLength)
    {
        //取得自定义长度的字符串
        if (strChar.Length > intLength)
        { return strChar.Substring(0, intLength); }
        else
        { return strChar; }

    }
}
