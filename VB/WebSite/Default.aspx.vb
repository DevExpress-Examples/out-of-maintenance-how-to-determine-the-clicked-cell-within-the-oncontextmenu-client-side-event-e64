Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxTabControl
Imports DevExpress.Xpo
Imports System.Drawing
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.ASPxEditors
Imports System.Collections.Generic
Imports DevExpress.Data
Imports DevExpress.Web.ASPxDataView

Partial Public Class Cell_Context_Menu
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub
	Protected Sub ASPxGridView1_HtmlDataCellPrepared(ByVal sender As Object, ByVal e As ASPxGridViewTableDataCellEventArgs)
		e.Cell.Attributes.Add("oncontextmenu", "OnCellContextMenu(" & e.VisibleIndex.ToString() & ", '" & e.DataColumn.FieldName.ToString() & "')")
	End Sub
End Class


