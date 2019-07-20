<?php
// menggunakan class phpExcelReader
include "excel_reader2.php";

// membaca file excel yang diupload
$data = new Spreadsheet_Excel_Reader($_FILES['userfile']['tmp_name']);

// membaca jumlah baris dari data excel
$baris = $data->rowcount($sheet_index=0);

// nilai awal counter untuk jumlah data yang sukses dan yang gagal diimport
$sukses = 0;
$gagal = 0;

// import data excel mulai baris ke-2 (karena baris pertama adalah nama kolom)
for ($i=2; $i<=$baris; $i++)
{
  // membaca data nim (kolom ke-1 sampai 7)
  $nama_objek = $data->val($i, 1);
  $data_nilai = $data->val($i, 2);

  // setelah data dibaca, sisipkan ke dalam tabel mhs
  $query = "INSERT INTO objek VALUES ('', '$nama_objek','$data_nilai')";
  $hasil = mysql_query($query);

  // jika proses insert data sukses, maka counter $sukses bertambah
  // jika gagal, maka counter $gagal yang bertambah
  if ($hasil) $sukses++;
  else $gagal++;
}

// tampilan status sukses dan gagal
echo "<center style='margin-top:10%; padding-bottom:14%;'><h3>Proses import data selesai...!!!</h3>";
echo "<p>Jumlah Data Kelulusan yang sukses di import sebanyak : ".$sukses."<br>";
echo "Jumlah Data Kelulusan yang gagal di import sebanyak : ".$gagal."</p>
<input type=button value='Lihat Semua Data' onclick=\"window.location.href='semua-data.html';\"></center>";

?>