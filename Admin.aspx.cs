using System;
using System.Configuration;
using System.Data;
using Npgsql;

namespace TicketReservationSystem
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        void LoadData()
        {
            using (NpgsqlConnection con = new NpgsqlConnection(
                ConfigurationManager.ConnectionStrings["pgcon"].ConnectionString))
            {
                con.Open();

                using (NpgsqlDataAdapter da = new NpgsqlDataAdapter(
                    "SELECT * FROM tickets ORDER BY ticketid DESC", con))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
    }
}