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
    public partial class Login : System.Web.UI.Page
    {
        FunCls FnObj = new FunCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {


            string sel = "select count(Reg_Id) from Login_tb where ussername='" + TextBox1.Text + "' and password=" + TextBox2.Text + "";
            string loginid = FnObj.Fun_Query(sel);
            if (loginid == "1")
            {
                string sel2 = "select Log_type from Login_tb where ussername='" + TextBox1.Text + "' and password=" + TextBox2.Text + "";
                string logintype = FnObj.Fun_Query(sel);
                if (logintype == "user")
                {
                    Response.Redirect("User_page.aspx");
                }
                else
                {
                    Response.Redirect("Admin_Page.aspx");
                }
            }
        }
    }
}