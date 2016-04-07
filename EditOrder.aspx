<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditOrder.aspx.cs" Inherits="AdminManage_EditOrder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="font-size:12pt; background-image: url(../Image/例图/后台/后台页.jpg);" cellpadding="0" cellspacing="0" align="center" height="339" width="515">
            <tr>
                <td style="height: 4px; font-size: 12pt;" colspan="3" align="center">
            </td>
            </tr>
            <tr>
                <td colspan="3" style="vertical-align: top; text-align: center; height: 50px;">
                    <table style="width: 671px; height: 50px; font-size: 12pt;"  border="1" cellpadding="0" cellspacing="0" bordercolor="#cccc66">
                        <tr>
                            <td style="height: 17px">
                                地址：</td>
                            <td colspan="3" style="height: 17px; text-align: left" align="left">
                                <asp:TextBox ID="txtOMCity" runat="server" Width="488px" Enabled="false"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 27px">
                                订货人：</td>
                            <td style="height: 27px" align="left">
                                <asp:TextBox ID="txtOMember" runat="server" Enabled="false"></asp:TextBox></td>
                            <td style="height: 27px">
                                电 话：</td>
                            <td style="height: 27px" align="left">
                                <asp:TextBox ID="txtPhone" runat="server" Enabled="false"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                数量：</td>
                            <td align="left">
                                <asp:TextBox ID="txtONum" runat="server" Enabled="false"></asp:TextBox></td>
                            <td>
                                总计金额：</td>
                            <td align="left">
                                <asp:TextBox ID="txtOTPrice" runat="server" Enabled="false"></asp:TextBox></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="font-size: 12pt">
                    &nbsp;详细信息：</td>
            </tr>
             <tr>
                <td colspan="3" rowspan="2" style="vertical-align: top; text-align: center">
                    <asp:GridView ID="gvPOInfo" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" AllowPaging="True" PageSize="5" OnPageIndexChanging="gvPOInfo_PageIndexChanging" Font-Size="12pt" Width="655px">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <EditRowStyle BackColor="#999999" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="OrderID" HeaderText="订单编号" />
                            <asp:BoundField DataField="OrderMember" HeaderText="订货人" />
                            <asp:BoundField DataField="GoodsName" HeaderText="商品名称" />
                       
                            <asp:BoundField DataField="GoodsPrice" HeaderText="商品价格" />
                            <asp:BoundField DataField="OrderDate" HeaderText="订单日期" />
                            <asp:BoundField DataField="OrderStite" HeaderText="订单状态" />
                         
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            
           
        </table>
    <table style="width:100%;">
        <tr>
                <td colspan="3" style="vertical-align: top; height: 30px; text-align: center">
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发货" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="审核退货" /></td>
            </tr>
    </table>
    </div>
    </form>
</body>
</html>
