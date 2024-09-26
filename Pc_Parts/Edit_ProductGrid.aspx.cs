using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Pc_Parts
{
    public partial class Edit_ProductGrid : System.Web.UI.Page
    {
        FunCls FnObj = new FunCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/Icons/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            string upd = "UPDATE Category_tb SET category_name = '" + TextBox1.Text + "', category_image = '" + p + "', category_description = '" + TextBox2.Text + "' WHERE category_id = " + Session["UPID"] + "";
            int i = FnObj.Fun_NonQuery(upd);
            if (i == 1)
            {
                Response.Redirect("Edit_Categorey.aspx");
            }
        }
    }
}