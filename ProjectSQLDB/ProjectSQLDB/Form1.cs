using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProjectSQLDB
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void BtnKategori_Click(object sender, EventArgs e)
        {

            FrmKategoriler fr = new FrmKategoriler();
            fr.Show();
        }

        private void Button2_Click(object sender, EventArgs e)
        {
            FrmMusteri fr2 = new FrmMusteri();
            fr2.Show();
        }

        SqlConnection baglanti = new SqlConnection(@"Data Source=OMERFARUKPALA;Initial Catalog=SatisVT;Integrated Security=True");
        private void Form1_Load(object sender, EventArgs e)
        {
            // ürünlerin durum seviyesi
            SqlCommand komut = new SqlCommand("Execute TEST4", baglanti);
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
        }
    }
}
