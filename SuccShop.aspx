<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SuccShop.aspx.cs"   MasterPageFile="~/MasterPage.master" Inherits="MemberManage_SuccShop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table style="width: 529px; height: 220px; background-image: url(../Image/例图/购买后结账.jpg);" cellpadding="0" cellspacing="0" align="center">
            <tr>
                <td style="height: 137px; text-align: center" colspan="2">
                    <table style="width: 892px; height: 315px;" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="left" colspan="3" style="font-weight: bold; font-size:16pt; width: 916px;
                                color: #ff9966; height: 5px">
                                收货人信息</td>
                        </tr>
                        <tr>
                            <td align="left" colspan="3" style="font-weight: bold; font-size: 16pt; width: 916px;
                                color: #ff9966; height: 5px">
                                收货人：<asp:Label ID="Label2" runat="server"></asp:Label><br />
                                收货地址：<asp:Label ID="Label3" runat="server"></asp:Label><br />
                                电话：<asp:Label ID="Label4" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="left" colspan="3" style="font-weight: bold; font-size: 16pt; width: 916px;
                                color: #ff9966; height: 5px">
                                送货方式：<asp:DropDownList ID="DropDownList1" runat="server" Width="143px">
                                    <asp:ListItem>快递</asp:ListItem>
                                    <asp:ListItem>普通</asp:ListItem>
                                    <asp:ListItem>上门</asp:ListItem>
                                    <asp:ListItem>其他</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td align="left" colspan="3" style="font-weight: bold; font-size: 16pt; width: 916px;
                                color: #ff9966; height: 5px">
                                付款方式：<asp:DropDownList ID="DropDownList2" runat="server" Width="144px">
                                    <asp:ListItem>货到付款</asp:ListItem>
                                    <asp:ListItem>先付款</asp:ListItem>
                                    <asp:ListItem>其他</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3" style="font-weight: bold; font-size: 16pt; width: 916px;
                                color: #ff9966; height: 5px">
                                商品清单</td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 24pt; color: #ff9966; height: 49px; width: 916px;" colspan="3" align="left">
                                <span style="font-size: 12pt; color: #808080">
                                    <asp:GridView ID="gvOrderInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                        CellPadding="4" Font-Size="12pt" ForeColor="#333333" GridLines="None" PageSize="8" Width="892px">
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="名称">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("GoodsName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="类别">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("GoodsTypeName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="价格">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("GoodsPrice") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="数量">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("shuliang") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("shuliang") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                          
                                        </Columns>
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <EditRowStyle BackColor="#999999" />
                                    </asp:GridView>
                                    <asp:Label ID="Label5" runat="server" Text="合计金额："></asp:Label><asp:Label ID="labMoney"
                                        runat="server"></asp:Label>
                                </span></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; height: 65px; width: 916px;" colspan="3">
                                <span style="color: #808080">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="购买" />
                                    </span></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
</asp:Content>