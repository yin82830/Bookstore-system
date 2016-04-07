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
public partial class _Default : System.Web.UI.Page
{
    SqlOperate sqloperate = new SqlOperate();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.Title = "欢迎光临网上书店";
          
            BinderNewGoods();
            BinderHotGoods();
            BindertuijianGoods();
        }
    }
 
    private void BinderNewGoods()
    {
        string sqlstr = "";

        sqlstr = "select top 9 * from vb_GoodsInfo  order by  GoodsID desc ";
        sqloperate.dlDataBind(dlNewGoods, sqlstr);
       
    }
    private void BinderHotGoods()
    {
        string sqlstr = "";

        sqlstr = "select top 9 * from vb_GoodsInfo  order by  GoodsClick desc ";
        sqloperate.dlDataBind(hotGoods, sqlstr);

    }
    private void BindertuijianGoods()
    {
        string sqlstr = "";

        sqlstr = "select top 9 * from vb_GoodsInfo where  GoodsIsNew='是'  order by  GoodsID desc ";
        sqloperate.dlDataBind(dltuijianGoods, sqlstr);

    }

    
    protected void dlGName_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
