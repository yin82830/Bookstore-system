﻿using System;
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
public partial class OrderChk : System.Web.UI.Page
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
            Alert.AlertAndRedirect("已经操作过了不能在进行操作", "Lishi.aspx");

        }
        else if (OrderStite == "未发货")
        {
            Alert.AlertAndRedirect("还没有发货您不能操作订单", "Lishi.aspx");
        }

        else
        {
            data.RunSql("update tb_Order set OrderStite='货已到' where Orderid='" + id + "'");
            Alert.AlertAndRedirect("操作成功", "Lishi.aspx");

        }
    }
}
