<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BankWebsite.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<section id="contactForm">
</section>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name is required." ControlToValidate="txtName"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblDate" runat="server" Text="Date: "></asp:Label>
    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="Date is required." ControlToValidate="txtDate"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required." ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblAddress" runat="server" Text="Address: "></asp:Label>
    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address is required." ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblConfirmation" runat="server" Text="Confirmation: "></asp:Label>
    <asp:TextBox ID="txtConfirmation" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" ErrorMessage="Confirmation is required." ControlToValidate="txtConfirmation"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblSubject" runat="server" Text="Subject: "></asp:Label>
    <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="Subject is required." ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblMessage" runat="server" Text="Message: "></asp:Label>
    <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Message is required." ControlToValidate="txtMessage"></asp:RequiredFieldValidator>
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
</asp:Content>
