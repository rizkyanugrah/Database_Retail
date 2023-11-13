-- MELIHAT KATEGORI BARANG YANG PALING BANYAK BARANGNYA
SELECT Kategori.nama_kategori AS NamaKategori, COUNT(Barang.id_barang) AS JumlahBarang
FROM Kategori
JOIN Barang ON Kategori.id_kategori = Barang.kategori_id
GROUP BY Kategori.id_kategori
ORDER BY JumlahBarang DESC
LIMIT 1;
