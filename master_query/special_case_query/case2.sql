-- MELIHAT 3 PRODUK YANG SERING DIBELI OLEH PELANGGAN
SELECT Barang.nama_barang AS NamaBarang, COUNT(DetailTransaksi.barang_id) AS JumlahPembelian
FROM Barang
JOIN DetailTransaksi ON Barang.id_barang = DetailTransaksi.barang_id
GROUP BY Barang.id_barang
ORDER BY JumlahPembelian DESC
LIMIT 3;
