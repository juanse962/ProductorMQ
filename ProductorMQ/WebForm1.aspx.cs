﻿using RabbitMQ.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductorMQ
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var factory = new ConnectionFactory() { HostName = "localhost" };
            using (var connection = factory.CreateConnection()) {
                using (var channel = connection.CreateModel()) {
                    String cola = DropDownList1.SelectedItem.ToString();
                    channel.QueueDeclare(cola, false, false, false, null);
                    string message = TextBox1.Text;
                    var body = Encoding.UTF8.GetBytes(message);
                    channel.BasicPublish("",cola, basicProperties: null, body: body);

                }
            }
        }
    }
}