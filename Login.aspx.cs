using System;
using System.Configuration;
using Npgsql;

namespace TicketReservationSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                NpgsqlConnection con = new NpgsqlConnection(
                    ConfigurationManager.ConnectionStrings["pgcon"].ConnectionString);

                con.Open();

                NpgsqlCommand cmd = new NpgsqlCommand(
                    "SELECT role FROM users WHERE username=@u AND password=@p", con);

                cmd.Parameters.AddWithValue("@u", txtUser.Text);
                cmd.Parameters.AddWithValue("@p", txtPass.Text);

                object role = cmd.ExecuteScalar();

                if (role != null)
                {
                    if (role.ToString() == "Admin")
                        Response.Redirect("Admin.aspx");
                    else
                        Response.Redirect("Booking.aspx");
                }
                else
                {
                    lblMsg.Text = "Invalid Login ❌";
                }

                con.Close();
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error: " + ex.Message;
            }
        }
    }
}