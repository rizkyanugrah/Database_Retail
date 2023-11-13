-- 1 PELANGGAN MEMBELI 3 BARANG YANG BERBEDA.
SELECT Pelanggan.nama AS NamaPelanggan, COUNT(DISTINCT DetailTransaksi.barang_id) AS JumlahBarang
FROM Pelanggan
JOIN Transaksi ON Pelanggan.id_pelanggan = Transaksi.pelanggan_id
JOIN DetailTransaksi ON Transaksi.id_transaksi = DetailTransaksi.transaksi_id
GROUP BY Pelanggan.id_pelanggan
HAVING JumlahBarang >= 3;
