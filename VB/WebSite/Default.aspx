<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="Cell_Context_Menu" %>

<%-- BeginRegion Page setup --%>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v7.3"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v7.3"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v7.3" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v7.3" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>How to determine the clicked cell within the OnContextMenu client side event</title>
</head>
<body>
<script language="javascript">
function OnCellContextMenu(visibleIndex, fieldName) {
	alert('clicked row index : ' + visibleIndex + '\n clicked field name : ' + fieldName);
}
</script>
	<form id="form1" runat="server">

		<dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" Width="690px" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" KeyFieldName="CategoryID" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared">
			<Columns>
				<dxwgv:GridViewDataTextColumn Caption="CategoryID" FieldName="CategoryID" ReadOnly="True"
					VisibleIndex="0">
					<EditFormSettings Visible="False" />
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn Caption="CategoryName" FieldName="CategoryName" VisibleIndex="1">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn Caption="Description" FieldName="Description" VisibleIndex="2">
				</dxwgv:GridViewDataTextColumn>
			</Columns>
		</dxwgv:ASPxGridView>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
			SelectCommand="SELECT * FROM [Categories]"></asp:AccessDataSource>
	</form>
</body>
</html>