using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.OleDb;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace CANTEEN_FEEDBACK
{
    public partial class FedbackForm : System.Web.UI.Page
    {
        //DB Connection
        String mycon = @"Data Source=DESKTOP-DCCUTP6\SQLEXPRESS; Initial Catalog=MAS-KREEDA-SYNERGY-CANTEEN-SYSTEM; Integrated Security=true";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRSave_Click(object sender, EventArgs e)
        {
            string rbValue;

            //check radio btn value
            if (rbExcellent.Checked)
            {
                rbValue = "ඉතා හොදයි";
            }
            else if (rbGood.Checked)
            {
                rbValue = "හොදයි";
            }
            else if (rbNeutral.Checked)
            {
                rbValue = "සාමාන්‍යයි";
            }
            else
            {
                rbValue = "දියුනු විය යුතුයි";
            }

            //validation
            if (txtRDate.Text == string.Empty || txtREPF.Text == string.Empty)
            {
                //Alert
                Response.Write("<script>alert('සෑම අංශයක්ම පුරවන්න!');</script>");
            }
            else
            {
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO CanteenFeedback(fdate,fepf,fmeal,fselection,freason) VALUES('" + txtRDate.Text + "','" + txtREPF.Text + "','" + dwMeal.SelectedValue + "','" + rbValue + "','" + dwReason.SelectedValue + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('දත්ත ගබඩා විය');", true);
                txtRDate.Text = "";
                txtREPF.Text = "";
                rbExcellent.Checked = false;
                rbGood.Checked = false;
                rbNeutral.Checked = false;
                rbPoor.Checked = false;
            }
        }
    }
}