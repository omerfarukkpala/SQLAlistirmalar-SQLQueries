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

        private void BtnKaydet_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into TBLMUSTERI (MUSTERIAD,MUSTERISOYAD,MUSTERISEHIR,MUSTERIBAKIYE) values (@p1,@p2,@p3,@p4)", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtAd.Text);
            komut.Parameters.AddWithValue("@p2", TxtSoyad.Text);
            komut.Parameters.AddWithValue("@p3", CmbSehir.Text);
            komut.Parameters.AddWithValue("@p4", decimal.Parse(TxtBakiye.Text));
            komut.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("MÜŞTERİ SİSTEME KAYDEDİLDİ");
            Listele();
        }

        private void BtnSil_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Delete From TBLMUSTERI where MUSTERIID=@P1", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtId.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Müşteri Silindi");
            Listele();
        }

        private void BtnGuncelle_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("update TBLMUSTERI set MUSTERIAD=@P1, MUSTERISOYAD=@P2, MUSTERISEHIR=@P3, MUSTERIBAKIYE=@P4 where MUSTERIID=@P5", baglanti);
            komut.Parameters.AddWithValue("@P1", TxtAd.Text);
            komut.Parameters.AddWithValue("@P2", TxtSoyad.Text);
            komut.Parameters.AddWithValue("@P3", CmbSehir.Text);
            komut.Parameters.AddWithValue("@P4", decimal.Parse(TxtBakiye.Text));
            komut.Parameters.AddWithValue("@P5", TxtId.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Müşteri Güncellendi");
            Listele();
        }
    }
}
