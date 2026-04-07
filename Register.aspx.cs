using System;
using System.Configuration;
using Npgsql;

namespace TicketReservationSystem
{
    public partial class Register : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                NpgsqlConnection con = new NpgsqlConnection(
                    ConfigurationManager.ConnectionStrings["pgcon"].ConnectionString);

                con.Open();

                NpgsqlCommand cmd = new NpgsqlCommand(
                    "INSERT INTO public.users (username, password, role) VALUES (@u,@p,@r)", con);

                cmd.Parameters.AddWithValue("@u", txtUser.Text);
                cmd.Parameters.AddWithValue("@p", txtPass.Text);
                cmd.Parameters.AddWithValue("@r", ddlRole.SelectedValue);

                cmd.ExecuteNonQuery();
                con.Close();

                lblMsg.Text = "Registered Successfully ✅";
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }
    }
}