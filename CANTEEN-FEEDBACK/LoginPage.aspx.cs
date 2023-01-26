using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CANTEEN_FEEDBACK
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtUsername.Text == "admin" || txtUsername.Text == "Admin" && txtPassword.Text == "1234")
            {
                Session["un"] = txtUsername.Text;
                Session["pw"] = txtPassword.Text;

                Response.Redirect("AdminPage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Login');</script>");
            }
        }
    }
}