<%@ Page Language="C#" AutoEventWireup="true"   MasterPageFile="~/MasterPage.master" CodeFile="Lishi.aspx.cs" Inherits="Lishi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:GridView ID="gvOrderInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            CellPadding="4" Font-Size="12pt" ForeColor="#333333" GridLines="None" OnPageIndexChanging="gvOrderInfo_PageIndexChanging"
            PageSize="8" Width="892px">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:TemplateField HeaderText="订单编号">
                    <ItemTemplate>
                        <asp:Label ID="OrderID" runat="server" Text='<%# Bind("OrderID") %>' Width="87px"></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="90px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="商品名称">
                    <ItemTemplate>
                     <a  href="ShowInfo.aspx?GoodsID=<%#Eval("goodsId") %>"><asp:Label ID="Label2" runat="server" Text='<%# Bind("GoodsName") %>' Width="102px"></asp:Label></a>   
                    </ItemTemplate>
                    <HeaderStyle Width="90px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="商品价格">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("GoodsPrice") %>' Width="57px"></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="90px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="数量">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("shuliang") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("shuliang") %>' Width="87px"></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="90px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="合计">
                                
                                <ItemTemplate>
                                    <%#(decimal.Parse(Eval("shuliang").ToString())*decimal.Parse(Eval("goodsprice").ToString())).ToString("N2") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                <asp:TemplateField HeaderText="订单状态">
                    <ItemTemplate>
                        <asp:Label ID="OrderStite" runat="server" Text='<%# Bind("OrderStite") %>' Width="67px"></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="90px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="订单时间">
                    <ItemTemplate>
                        <asp:Label ID="Ordertime" runat="server" Text='<%# Bind("Ordertime","{0:d}") %>'
                            Width="87px"></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="90px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="评价">
                    <ItemTemplate>
                        <asp:Label ID="pingjia" runat="server" Text='<%# Bind("pingjia") %>' Width="52px"></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="90px" />
                </asp:TemplateField>
                <asp:HyperLinkField DataNavigateUrlFields="OrderID" DataNavigateUrlFormatString="OrderChk.aspx?OrderID={0}"
                    HeaderText="订单操作" Text="订单操作">
                    <ControlStyle Font-Underline="False" ForeColor="Black" />
                </asp:HyperLinkField>
                <asp:HyperLinkField DataNavigateUrlFields="OrderID" DataNavigateUrlFormatString="orderPingjia.aspx?OrderID={0}"
                    HeaderText="评价" Text="评价">
                    <ControlStyle Font-Underline="False" ForeColor="Black" />
                </asp:HyperLinkField>
                
                <asp:HyperLinkField DataNavigateUrlFields="OrderID" DataNavigateUrlFormatString="tuihuo.aspx?OrderID={0}"
                    HeaderText="退货" Text="退货">
                    <ControlStyle Font-Underline="False" ForeColor="Black" />
                </asp:HyperLinkField>
            </Columns>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        &nbsp;</div>
 

</asp:Content>
