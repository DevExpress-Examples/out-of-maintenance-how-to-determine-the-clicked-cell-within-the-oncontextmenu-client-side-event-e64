using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxTabControl;
using DevExpress.Xpo;
using System.Drawing;
using DevExpress.Web.ASPxGridView;
using DevExpress.Web.ASPxEditors;
using System.Collections.Generic;
using DevExpress.Data;
using DevExpress.Web.ASPxDataView;

public partial class Cell_Context_Menu : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e) {

    }
    protected void ASPxGridView1_HtmlDataCellPrepared(object sender, ASPxGridViewTableDataCellEventArgs e) {
        e.Cell.Attributes.Add("oncontextmenu", "OnCellContextMenu(" + e.VisibleIndex.ToString() + ", '" + e.DataColumn.FieldName.ToString() + "')");
    }
}


