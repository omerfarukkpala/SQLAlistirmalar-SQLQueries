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
    public partial class FrmMusteri : Form
    {
        public FrmMusteri()
        {
            InitializeComponent();
        }

        SqlConnection baglanti = new SqlConnection(@"Data Source=OMERFARUKPALA;Initial Catalog=SatisVT;Integrated Security=True");

        void Listele()
        {
            SqlCommand komut = new SqlCommand("select * from TBLMUSTERI", baglanti);
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataGridView1.DataSource = dt;
        }

        private void FrmMusteri_Load(object sender, EventArgs e)
        {
            Listele();
            baglanti.Open();
            SqlCommand komut1 = new SqlCommand("select * from TBLSEHIR", baglanti);
            SqlDataReader dr = komut1.ExecuteReader();
            while (dr.Read())
            {
                CmbSehir.Items.Add(dr["sehir"]);
            }
            baglanti.Close();
        }

        private void DataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            TxtId.Text = DataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();
            TxtAd.Text = DataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();
            TxtSoyad.Text = DataGridView1.Rows[e.RowIndex].Cells[2].Value.ToString();
            CmbSehir.Text = DataGridView1.Rows[e.RowIndex].Cells[3].Value.ToString();
            TxtBakiye.Text = DataGridView1.Rows[e.RowIndex].Cells[4].Value.ToString();
        }
    }
}
