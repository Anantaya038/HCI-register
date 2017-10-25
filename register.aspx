<%@ Page Title="" Language="VB" MasterPageFile="~/Template.master" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <center> 
      <h1>Register</h1>
      <p>ID card :&nbsp;&nbsp;
    <asp:TextBox ID="id" runat="server" MaxLength="13" style="text-align: left"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="id" ErrorMessage="Required ID card" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="id" ErrorMessage="Regular id card" ValidationExpression="\d{13}" ForeColor="Red">*</asp:RegularExpressionValidator>
    </p>
    <p>Telephone Number : <asp:TextBox ID="phone" runat="server" MaxLength="10"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Phone no." ForeColor="Red" ControlToValidate="phone">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="phone" ErrorMessage="Regular phone no." ForeColor="Red" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
   </p> 
    <p>DD/MM/YYYY :
    <asp:TextBox ID="bd" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="bd" ErrorMessage="Required DMY" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="bd" ErrorMessage="Regular BD" ForeColor="Red" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$">*</asp:RegularExpressionValidator>
    </p>
    <p>E-mail address :
    <asp:TextBox ID="email" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="email" ErrorMessage="Required E-mail ddress" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="email" ErrorMessage="Regular E-mail address" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    </p>
    <p>URL :
    <asp:TextBox ID="url" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="url" ErrorMessage="Required url" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="url" ErrorMessage="Regular url" ForeColor="Red" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?">*</asp:RegularExpressionValidator>
    </p>
    <p>Password :
    <asp:TextBox ID="pass" runat="server" MaxLength="8"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="pass" ErrorMessage="Required password" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="pass" ErrorMessage="Regular password" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$">*</asp:RegularExpressionValidator>
    </p>
<br />
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" />
    <asp:Button ID="Button1" runat="server" Text="Submit" />
    <br />
</asp:Content>

