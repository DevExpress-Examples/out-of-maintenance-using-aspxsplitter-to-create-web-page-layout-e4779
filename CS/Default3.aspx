<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3"
    MasterPageFile="~/MasterPage.master" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="content" runat="server" ContentPlaceHolderID="gridPlaceHolder">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
        KeyFieldName="ProductID" Width="100%" ClientInstanceName="grid">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" 
                VisibleIndex="0">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="9">
            </dx:GridViewDataCheckColumn>
        </Columns>
        <Settings VerticalScrollableHeight="500" />
        <SettingsPager Mode="EndlessPaging" PageSize="50" />
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
        SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
</asp:Content>
