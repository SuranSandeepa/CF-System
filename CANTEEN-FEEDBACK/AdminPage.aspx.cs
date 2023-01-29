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
    public partial class AdminPage : System.Web.UI.Page
    {
        //DB Connection
        String mycon = @"Data Source=DESKTOP-DCCUTP6\SQLEXPRESS; Initial Catalog=MAS-KREEDA-SYNERGY-CANTEEN-SYSTEM; Integrated Security=true";

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView();
        }

        private void GridView()
        {
            using (SqlConnection sqlconn = new SqlConnection(mycon))
            {
                sqlconn.Open();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM CanteenFeedback", mycon);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gvFeedback.DataSource = dt;
                gvFeedback.DataBind();
            }
        }
    }
}