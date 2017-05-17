<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Razer_Company.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            margin-left: 120px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="ProductDataSource" Height="238px" ShowFooter="True" Width="748px">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="ProductID" InsertVisible="False" SortExpression="ProductID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ValidationGroup="INSERT" OnClick="LinkBtnInsert_Click" ID="LinkBtnInsert" runat="server">Insert</asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductName" SortExpression="ProductName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEditName" runat="server" ErrorMessage="Please Insert Name" ControlToValidate="TextBox1" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TxtProdctName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="RequiredFieldValidatorEditName" runat="server" ErrorMessage="Please Insert Name" ControlToValidate="TxtProdctName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductPrice" SortExpression="ProductPrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEditPrice" runat="server" ErrorMessage="Please Insert Price" ControlToValidate="TextBox2" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TxtProdctPrice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="RequiredFieldValidatorProdctPrice" runat="server" ErrorMessage="Please Insert Price" ControlToValidate="TxtProdctPrice" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductStock" SortExpression="ProductStock">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ProductStock") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEditStock" runat="server" ErrorMessage="Please Insert stock" ControlToValidate="TextBox3" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ProductStock") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:TextBox ID="TxtProdctStock" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="RequiredFieldValidatorInsertStock" runat="server" ErrorMessage="Please Insert stock" ControlToValidate="TxtProdctStock" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="Uploadimage.aspx?id={0}" InsertVisible="False" Text="Set Image" />
        </Columns>
    </asp:GridView>
        <asp:ValidationSummary ValidationGroup="INSERT" ID="ValidationSummary1" ForeColor="Red" runat="server" />
        <asp:ValidationSummary ID="ValidationSummary2" ForeColor="Red" runat="server" />
</div>
<asp:SqlDataSource ID="ProductDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1526888_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [Add,Edit and Delete] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductStock] = @original_ProductStock) OR ([ProductStock] IS NULL AND @original_ProductStock IS NULL))" InsertCommand="INSERT INTO [Add,Edit and Delete] ([ProductName], [ProductPrice], [ProductStock]) VALUES (@ProductName, @ProductPrice, @ProductStock)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Add,Edit and Delete]" UpdateCommand="UPDATE [Add,Edit and Delete] SET [ProductName] = @ProductName, [ProductPrice] = @ProductPrice, [ProductStock] = @ProductStock WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductStock] = @original_ProductStock) OR ([ProductStock] IS NULL AND @original_ProductStock IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_ProductID" Type="Int32" />
        <asp:Parameter Name="original_ProductName" Type="String" />
        <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
        <asp:Parameter Name="original_ProductStock" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="ProductPrice" Type="Decimal" />
        <asp:Parameter Name="ProductStock" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="ProductPrice" Type="Decimal" />
        <asp:Parameter Name="ProductStock" Type="Int32" />
        <asp:Parameter Name="original_ProductID" Type="Int32" />
        <asp:Parameter Name="original_ProductName" Type="String" />
        <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
        <asp:Parameter Name="original_ProductStock" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
