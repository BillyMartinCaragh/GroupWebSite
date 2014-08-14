<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="_Default" Debug="true"%>

<!DOCTYPE html >

<html >
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [books] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [books] ([Title], [Author], [Category], [PublicationDate], [Publisher], [Price]) VALUES (@Title, @Author, @Category, @PublicationDate, @Publisher, @Price)" 
            SelectCommand="SELECT * FROM [books]" 
            
            UpdateCommand="UPDATE [books] SET [Title] = @Title, [Author] = @Author, [Category] = @Category, [PublicationDate] = @PublicationDate, [Publisher] = @Publisher, [Price] = @Price WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="PublicationDate" Type="String" />
                <asp:Parameter Name="Publisher" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="PublicationDate" Type="String" />
                <asp:Parameter Name="Publisher" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Author" HeaderText="Author" 
                    SortExpression="Author" />
                <asp:BoundField DataField="Category" HeaderText="Category" 
                    SortExpression="Category" />
                <asp:BoundField DataField="PublicationDate" HeaderText="PublicationDate" 
                    SortExpression="PublicationDate" />
                <asp:BoundField DataField="Publisher" HeaderText="Publisher" 
                    SortExpression="Publisher" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
            </Columns>
        </asp:GridView>
    </div>
    <br />
    <asp:Label ID="lblTitle" runat="server" Text="Insert New Title"></asp:Label>
    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
    <br />
     <asp:Label ID="lblAuthor" runat="server" Text="Insert New Author"></asp:Label>
    <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
    <br />
     <asp:Label ID="lblCategory" runat="server" Text="Insert New Category"></asp:Label>
    <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
    <br />
     <asp:Label ID="lblPublicationDate" runat="server" Text="Insert New Publication Date"></asp:Label>
    <asp:TextBox ID="txtPublicationDate" runat="server"></asp:TextBox>
    <br />
     <asp:Label ID="lblPublisher" runat="server" Text="Insert New Publisher"></asp:Label>
    <asp:TextBox ID="txtPublisher" runat="server"></asp:TextBox>
    <br />
     <asp:Label ID="lblPrice" runat="server" Text="Insert New Price"></asp:Label>
    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
    <br />

    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit New Entry" 
        onclick="Button1_Click" />

    </form>
</body>
</html>
