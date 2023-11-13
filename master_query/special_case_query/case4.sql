-- NOMINAL RATA-RATA TRANSAKSI YANG DILAKUKAN OLEH PELANGGAN DALAM 1 BULAN TERAKHIR
SELECT Pelanggan.nama AS NamaPelanggan, AVG(Transaksi.jumlah_total) AS RataRataTransaksi
FROM Pelanggan
JOIN Transaksi ON Pelanggan.id_pelanggan = Transaksi.pelanggan_id
WHERE Transaksi.tanggal_transaksi >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY Pelanggan.id_pelanggan;
