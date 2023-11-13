CREATE TABLE `Pelanggan`(
    `id_pelanggan` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nama` VARCHAR(255) NOT NULL,
    `alamat` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL
);
CREATE TABLE `Barang`(
    `id_barang` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nama_barang` VARCHAR(255) NOT NULL,
    `harga` INT NOT NULL,
    `kategori_id` INT NOT NULL
     FOREIGN KEY(`kategori_id`) REFERENCES `Kategori`(`id_kategori`);
);
CREATE TABLE `Transaksi`(
    `id_transaksi` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `tanggal_transaksi` DATE NOT NULL,
    `jumlah_total` INT NOT NULL,
    `pelanggan_id` INT NOT NULL,

    FOREIGN KEY(`pelanggan_id`) REFERENCES `Pelanggan`(`id_pelanggan`);
);
CREATE TABLE `Kategori`(
    `id_kategori` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nama_kategori` VARCHAR(255) NOT NULL
);
CREATE TABLE `DetailTransaksi`(
    `id_detail_transaksi` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `jumlah_beli` INT NOT NULL,
    `transaksi_id` INT NOT NULL,
    `barang_id` INT NOT NULL,

    FOREIGN KEY(`transaksi_id`) REFERENCES `Transaksi`(`id_transaksi`);
    FOREIGN KEY(`barang_id`) REFERENCES `Barang`(`id_barang`);
);
