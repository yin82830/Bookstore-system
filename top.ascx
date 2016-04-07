<%@ Control Language="C#" AutoEventWireup="true" CodeFile="top.ascx.cs" Inherits="top" %>
<div id="top" style="background-image: url(images/dh1.jpg); background-repeat:no-repeat;">
      
      <div class="dh">
           <ul>
               <li style="margin-left:230px;"><a href="Default.aspx">首页</a></li>
               <li><a href="Register.aspx" >会员注册</a></li>
               <li><a href="Login.aspx" >会员登录</a></li>         
               <li><a href="Newgoods.aspx" >最新商品</a></li>
               <li><a href="Rexiao.aspx">热门商品</a></li>
               <li><a href="Tuijian.aspx">推荐商品</a> </li>
               <li><a href="Lishi.aspx">我的订单</a></li>
               <li><a href="NewsList.aspx">活动公告</a></li>
               <li><a href="Post.aspx">留言帮助</a></li>
               
           </ul>
      </div><!--dh end-->
  
      <div class="top1">
        商品搜索：
              <asp:DropDownList ID="DropDownList1" runat="server" Width="177px">
              </asp:DropDownList>关键字：<asp:TextBox ID="TextBox1" runat="server" ValidationGroup="2"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
             ValidationGroup="2"></asp:RequiredFieldValidator>
              <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/an1.gif" OnClick="ImageButton1_Click" ValidationGroup="2" /></div>
       
     
</div>