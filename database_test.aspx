<%@ Page Language="C#" AutoEventWireup="true" CodeFile="database_test.aspx.cs" Inherits="database_test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>user list</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h3>user list</h3>
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
                <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                <asp:BoundField DataField="user_password" HeaderText="user_password" SortExpression="user_password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vromonbd_userConnectionString1 %>" DeleteCommand="DELETE FROM [users] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [users] ([user_name], [user_password]) VALUES (@user_name, @user_password)" ProviderName="<%$ ConnectionStrings:vromonbd_userConnectionString1.ProviderName %>" SelectCommand="SELECT [user_id], [user_name], [user_password] FROM [users]" UpdateCommand="UPDATE [users] SET [user_name] = @user_name, [user_password] = @user_password WHERE [user_id] = @user_id">
            <DeleteParameters>
                <asp:Parameter Name="user_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="user_password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="user_password" Type="String" />
                <asp:Parameter Name="user_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
