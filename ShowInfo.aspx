<%@ Page Language="C#" AutoEventWireup="true"   MasterPageFile="~/MasterPage.master" CodeFile="ShowInfo.aspx.cs" Inherits="MemberManage_ShowInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table align="center" bgcolor="#66ccff" border="1" bordercolor="#66ccff" cellpadding="0"
            cellspacing="0" style="font-size: 9pt; background-image: url(../Image/例图/购物信息查询.jpg);
            width:1200px; height:450px">
            <tr>
                <td bgcolor="#f7f6f3" colspan="3" style="height:60px; text-align: center">
                    === 商品详细信息 ===</td>
            </tr>
            <tr>
                <td bgcolor="#f7f6f3" rowspan="3" style="width: 196px; text-align: center">
                    <asp:Image ID="iGPhoto" runat="server" Height="160px" Width="100px" /></td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: center">
                    商 品 ID：</td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 346px; height: 30px">
                   <asp:Label ID="txtGID" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: center">
                    商品名称：</td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 346px; height: 30px">
                    <asp:Label ID="txtGName" runat="server"></asp:Label></td>
            </tr>




<%--
            <tr>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: center">
                    商品类别：</td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 346px; height: 30px">
                    <asp:Label  ID="txtGType" runat="server"></asp:Label></td>
            </tr>
               <tr>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: center">
                    商品小类：</td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 346px; height: 30px">
                    <asp:Label  ID="Label1" runat="server"></asp:Label></td>
            </tr>
--%>






            <tr>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: center">
                    商品价格：</td>
                <td bgcolor="#f7f6f3" colspan="1" style="width: 346px; text-indent: 8pt; height: 30px">
                   <asp:Label  ID="txtGPrice" runat="server"></asp:Label>&nbsp;&nbsp; 商品库存:<asp:Label ID="store"  runat="server"></asp:Label></td>
            </tr>
           
            <tr>
                <td bgcolor="#f7f6f3" colspan="3">
                    &nbsp;商品介绍：</td>
            </tr>
            <tr>
                <td colspan="4" style="vertical-align: top; text-indent: 8pt; height: 134px; text-align: center; background-color: White;">
                    <asp:TextBox ID="txtGIntro" runat="server" Height="128px" ReadOnly="True" TextMode="MultiLine"
                        Width="1200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td bgcolor="#f7f6f3" colspan="3" style="height: 24px; text-align: right">
                    购买数量：<asp:TextBox ID="TextBox1" runat="server" Width="101px">1</asp:TextBox>
                    <asp:Button ID="btnShop" runat="server" Height="23px" OnClick="btnShop_Click" Text="购买"
                        Width="60px" />
                    &nbsp;</td>
            </tr>
        </table>
    </div>

</asp:Content>
