﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace ASM_1___DATABASE
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            string connectionString = "Data Source=YourServerName;Initial Catalog=YourDatabase;User ID=YourUsername;Password=YourPassword;Encrypt=True;TrustServerCertificate=True;";
    

        }
    }
}
