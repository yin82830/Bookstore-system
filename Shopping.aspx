<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Shopping.aspx.cs"   MasterPageFile="~/MasterPage.master" EnableEventValidation="false" Inherits="MemberManage_Shopping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table style="width: 896px; height: 355px; font-size: 12pt;" border="1" cellpadding="0" cellspacing="0" align="center">
            <tr>
                <td style="height: 50px; vertical-align: bottom; text-align: center; width: 883px;" align="center">
                    &nbsp;<asp:LinkButton ID="lbtnCheck" runat="server" Font-Underline="False" ForeColor="Black" OnClick="lbtnCheck_Click">生成订单</asp:LinkButton>
                
                    <asp:LinkButton ID="lbtnClear" runat="server" Font-Underline="False" ForeColor="Black" OnClick="lbtnClear_Click">清空购物车</asp:LinkButton>
                    <br />
                    订单号：<asp:Label ID="Label5" runat="server" Width="158px"></asp:Label></td>
            </tr>
            <tr>
                <td style="height: 191px; vertical-align: top; text-align: center;" colspan="3">
                    &nbsp;<asp:GridView ID="gvOrderInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        CellPadding="4" Font-Size="12pt" ForeColor="#333333" GridLines="None" OnPageIndexChanging="gvOrderInfo_PageIndexChanging"
                        OnRowCancelingEdit="gvOrderInfo_RowCancelingEdit" OnRowDataBound="gvOrderInfo_RowDataBound"
                        OnRowDeleting="gvOrderInfo_RowDeleting" OnRowEditing="gvOrderInfo_RowEditing"
                        OnRowUpdating="gvOrderInfo_RowUpdating" PageSize="8" Width="100%">
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
                             <asp:TemplateField HeaderText="合计">
                                
                                <ItemTemplate>
                                    <%#(decimal.Parse(Eval("shuliang").ToString())*decimal.Parse(Eval("goodsprice").ToString())).ToString("N2") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="OrderDate" HeaderText="订购时间" />
                           
                            <asp:CommandField HeaderText="删除" ShowDeleteButton="True">
                                <ItemStyle Font-Underline="False" />
                                <ControlStyle Font-Underline="False" ForeColor="Black" />
                            </asp:CommandField>
                            <asp:CommandField EditText="修改" HeaderText="修改数量" ShowEditButton="True" />
                        </Columns>
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="3" style=" height: 20px; background-color: #f0f5d5;" align="center">
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="合计金额："></asp:Label>
                    <asp:Label ID="labMoney" runat="server"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
    
    </div>
 

</asp:Content>
