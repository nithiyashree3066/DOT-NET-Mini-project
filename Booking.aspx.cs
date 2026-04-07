using System;
using System.Configuration;
using Npgsql;

namespace TicketReservationSystem
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void btnBook_Click(object sender, EventArgs e)
        {
            try
            {
                using (NpgsqlConnection con = new NpgsqlConnection(
                    ConfigurationManager.ConnectionStrings["pgcon"].ConnectionString))
                {
                    con.Open();

                    using (NpgsqlCommand cmd = new NpgsqlCommand(
                        "INSERT INTO tickets (userid, source, destination, traveldate) VALUES (@uid,@s,@d,@date)", con))
                    {
                        cmd.Parameters.AddWithValue("@uid", 1);
                        cmd.Parameters.AddWithValue("@s", txtSource.Text);
                        cmd.Parameters.AddWithValue("@d", txtDestination.Text);
                        cmd.Parameters.AddWithValue("@date", DateTime.Parse(txtDate.Text));

                        cmd.ExecuteNonQuery();
                    }
                }

                lblMsg.ForeColor = System.Drawing.Color.Green;
                lblMsg.Text = "Ticket Booked Successfully ✅";
            }
            catch (Exception ex)
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = ex.Message;
            }
        }
    }
}