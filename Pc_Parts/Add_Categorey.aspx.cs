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
    public partial class Add_Categorey : System.Web.UI.Page
    {
        FunCls FnObj = new FunCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/Icons/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            string ins = "insert into Category_tb values('" + TextBox1.Text + "','" + p + "','" + TextBox2.Text + "','active')";
            int i = FnObj.Fun_NonQuery(ins);
            if (i == 1)
            {
                Response.Redirect("Admin_Page.aspx");
            }
           
        }
    }
}