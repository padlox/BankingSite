<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="BankWebsite.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="interestRates">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Product_Descr" HeaderText="Deposit Accounts" SortExpression="Product_Descr" />
                <asp:BoundField DataField="Interest_Rate" HeaderText="Interest Rate" SortExpression="Interest_Rate" />
            </Columns>
        </asp:GridView><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BankingConnectionString %>" SelectCommand="SELECT [Product_Descr], [Interest_Rate] FROM [Interest_Rates_Tbl] WHERE ([Rate_Type] LIKE '%' + @Rate_Type + '%')">
            <SelectParameters>
                <asp:Parameter DefaultValue="D" Name="Rate_Type" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Product_Descr" HeaderText="Loan Accounts" SortExpression="Product_Descr" />
                <asp:BoundField DataField="Interest_Rate" HeaderText="Interest Rate" SortExpression="Interest_Rate" />
            </Columns>
        </asp:GridView>
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BankingConnectionString %>" SelectCommand="SELECT [Product_Descr], [Interest_Rate] FROM [Interest_Rates_Tbl] WHERE ([Rate_Type] LIKE '%' + @Rate_Type + '%')">
            <SelectParameters>
                <asp:Parameter DefaultValue="L" Name="Rate_Type" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
    </section>
</asp:Content>
