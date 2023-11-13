-- Tabel Pelanggan
INSERT INTO Pelanggan (nama, alamat, email) VALUES
('Rizky Anugrah', 'Jl. Biawan No. 123', 'rizkyanugrah@gmail.com'),
('Amalia Kartika', 'Jl. Balikpapan No. 456', 'amaliakartika@gmail.com'),
('Rosyid Mubarak', 'Jl. Cendana No. 789', 'rosyidmubarak@gmail.com'),
('Rahmad Fitrianto', 'Jl. Durian No. 101', 'rahmad@gmail.com'),
('Jidan', 'Jl. Jelawat No. 555', 'jidan@gmail.com'),
('Nauval', 'Jl. Rumbia No. 777', 'nopal@gmail.com'),
('Akmal', 'Jl. Kesuma Bangsa No. 888', 'akmal@gmail.com'),
('Hadi Prastiyo', 'Jl. Rapak Indah No. 999', 'tiyo@gmail.com'),
('Dapun', 'Jl. Agus Salim No. 222', 'dapun@gmail.com'),
('Wahyu Kesuma', 'Jl. Jakarta No. 333', 'wahyu@gmail.com');

-- Tabel Kategori
INSERT INTO Kategori (nama_kategori) VALUES
('Elektronik'),
('Pakaian'),
('Makanan'),
('Otomotif'),
('Perabotan'),
('Buku'),
('Mainan'),
('Kesehatan'),
('Alat Rumah Tangga'),
('Olahraga');

-- Tabel Barang
INSERT INTO Barang (nama_barang, harga, kategori_id) VALUES
('Laptop', 8000000, 1),
('T-Shirt', 50000, 2),
('Snack', 15000, 3),
('Motorcycle', 25000000, 4),
('Sofa', 1200000, 5),
('Novel', 75000, 6),
('Action Figure', 200000, 7),
('Vitamin', 50000, 8),
('Blender', 300000, 9),
('Treadmill', 1500000, 10);

-- Tabel Transaksi
INSERT INTO Transaksi (tanggal_transaksi, jumlah_total, pelanggan_id) VALUES
('2023-01-01', 120000, 1),
('2023-01-02', 350000, 3),
('2023-01-03', 75000, 5),
('2023-01-04', 100000, 7),
('2023-01-05', 500000, 9),
('2023-01-06', 90000, 2),
('2023-01-07', 200000, 4),
('2023-01-08', 300000, 6),
('2023-01-09', 450000, 8),
('2023-01-10', 60000, 10);

-- Tabel DetailTransaksi
INSERT INTO DetailTransaksi (jumlah_beli, transaksi_id, barang_id) VALUES
(2, 1, 1),
(3, 2, 4),
(1, 3, 6),
(4, 4, 8),
(2, 5, 10),
(1, 6, 2),
(3, 7, 5),
(2, 8, 7),
(4, 9, 9),
(1, 10, 3);
