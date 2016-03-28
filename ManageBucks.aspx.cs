using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class ManageBucks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void ExportToExcel_Click(object sender, EventArgs e)
    {
       ExportToExcel2(sender, e);
     
    }
        protected void ExportToExcel2(object sender, EventArgs e)
    {

        Response.Clear();

        Response.Buffer = true;

        Response.AddHeader("content-disposition", "attachment;filename=Travel.xls");

        Response.Charset = "";

        Response.ContentType = "application/vnd.ms-excel";

        using (StringWriter sw = new StringWriter())
        {

            HtmlTextWriter hw = new HtmlTextWriter(sw);
            
            //To Export all pages

            GridView2.AllowPaging = false;

            this.GridView2.DataBind();

            foreach (TableCell cell in GridView2.HeaderRow.Cells)
            {

                cell.BackColor = GridView2.HeaderStyle.BackColor;

            }

            foreach (GridViewRow row in GridView2.Rows)
            {

                foreach (TableCell cell in row.Cells)
                {

                    if (row.RowIndex % 2 == 0)
                    {

                        cell.BackColor = GridView2.AlternatingRowStyle.BackColor;

                    }

                    else
                    {

                        cell.BackColor = GridView2.RowStyle.BackColor;

                    }

                    cell.CssClass = "textmode";

                }

            }
                    GridView2.RenderControl(hw);

            //style to format numbers to string

            string style = @"<style> .textmode { } </style>";

            Response.Write(style);

            Response.Output.Write(sw.ToString());

            Response.Flush();

            Response.End();


          

        }

    }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
        }
}