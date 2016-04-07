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

public partial class top : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlOperate dl = new SqlOperate();
            dl.ddlDataBind(DropDownList1, "select * from tb_GoodsType", "GoodsTypeName", "GoodsTypeID");

        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SGoodsList.aspx?type="+DropDownList1.SelectedValue+"&key="+TextBox1.Text);
    }
}
