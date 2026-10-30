## 5. Komponen UI

### 5.1 App bar

**Anatomi:** tombol kembali (jika bukan layar utama), judul, dan
maksimal satu tindakan kontekstual di sisi kanan.

Aturan: - Judul tidak terlalu panjang; jika panjang, gunakan truncation
yang masuk akal tanpa menutupi tombol. - Layar daftar boleh memiliki
tombol pencarian atau tambah. - Jangan menaruh terlalu banyak ikon aksi
pada satu app bar. - Gunakan elevasi rendah atau divider tipis, bukan
shadow berat.

### 5.2 Tombol

**Primary button** - Latar `colorPrimary`, teks putih, radius 12 dp. -
Untuk aksi utama seperti **Simpan Tugas**. - Lebar penuh pada form jika
itu membuat aksi lebih mudah ditemukan.

**Secondary button** - Latar putih, teks `colorTextPrimary`, border
`colorBorder`. - Untuk aksi seperti **Batal** atau **Kembali**.

**Text button** - Tanpa latar dominan; untuk tindakan sekunder yang
tidak perlu tampil seperti tombol besar.

**Destructive button** - Teks/ikon `colorDanger`, dengan konfirmasi
sebelum operasi permanen.

Keadaan tombol: - Default, pressed, disabled, loading. - Saat menyimpan,
tampilkan indikator proses dan cegah penekanan berulang. - Jangan
mengosongkan isi form sebelum penyimpanan berhasil. - Semua tombol harus
memiliki label yang menjelaskan tindakan; jangan mengandalkan ikon saja
untuk tindakan yang tidak umum.

### 5.3 Field input

Field memiliki: - Label yang selalu terlihat di atas input. -
Placeholder sebagai contoh, bukan pengganti label. - Border netral saat
normal, aksen utama saat fokus, dan warna bahaya saat error. - Pesan
error singkat tepat di bawah field terkait. - Ukuran sentuh yang memadai
dan padding konsisten.

Jenis field: - Mata kuliah: teks. - Judul tugas: teks. - Deskripsi: teks
multiline. - Deadline: pemilih tanggal, bukan meminta format tanggal
bebas jika dapat dihindari. - Prioritas: pilihan terstruktur, misalnya
Rendah, Sedang, Tinggi. - Status: pilihan terstruktur, misalnya Belum
dikerjakan, Sedang dikerjakan, Selesai.

Validasi: - Mata kuliah dan judul wajib diisi. - Deadline harus berupa
tanggal yang valid. - Validasi ditampilkan dekat dengan input yang
salah. - Pertahankan data yang sudah diketik saat validasi gagal. -
Berikan pesan yang ramah dan spesifik, misalnya "Judul tugas wajib
diisi."

### 5.4 Kartu tugas

Kartu adalah elemen utama daftar.

Susunan yang disarankan: 1. Nama mata kuliah sebagai metadata. 2. Judul
tugas sebagai teks paling menonjol. 3. Deadline dan prioritas. 4. Chip
status. 5. Indikator tambahan jika tenggat sudah dekat atau lewat.

Aturan: - Seluruh kartu dapat ditekan untuk membuka detail, tetapi
tombol status atau menu tambahan di dalam kartu harus punya area sentuh
terpisah. - Gunakan tinggi dinamis; jangan memotong judul panjang secara
berlebihan. - Tampilkan informasi terpenting lebih dahulu. - Jangan
menampilkan seluruh deskripsi pada daftar; tampilkan ringkasan bila
perlu. - Pastikan kartu tetap jelas tanpa shadow karena border dan jarak
sudah cukup.

### 5.5 Chip status

Gunakan label konsisten: - **Belum dikerjakan** --- latar netral
`colorSurfaceSubtle`, teks `colorTextPrimary`. - **Sedang dikerjakan**
--- latar `colorInfoTint`, teks `colorInfo`. - **Selesai** --- latar
`colorSuccessTint`, teks `colorSuccess`.

Chip prioritas: - Rendah --- netral. - Sedang --- `colorWarningTint`
dengan teks `colorWarning`. - Tinggi --- `colorDangerTint` dengan teks
`colorDanger`.

Jangan menggunakan chip prioritas dan chip status dengan bentuk/warna
yang membingungkan. Selalu sertakan kata status/prioritas.

### 5.6 Dialog konfirmasi hapus

Isi dialog: - Judul: **Hapus tugas?** - Pesan: "Tugas ini akan dihapus
dari daftar. Tindakan ini tidak dapat dibatalkan." - Tombol sekunder:
**Batal** - Tombol destruktif: **Hapus**

Aturan: - Tombol Batal menjadi pilihan aman dan mudah ditemukan. -
Dialog tidak boleh tertutup oleh keyboard atau keluar dari layar
kecil. - Setelah penghapusan berhasil, perbarui daftar dan tampilkan
snackbar. - Jika gagal, pertahankan data dan jelaskan bahwa penghapusan
belum berhasil.

### 5.7 Snackbar dan feedback

Gunakan snackbar untuk hasil operasi singkat: - "Tugas berhasil
disimpan." - "Perubahan tugas berhasil disimpan." - "Tugas berhasil
dihapus." - "Status tugas diperbarui."

Gunakan pesan error yang dapat ditindaklanjuti. Jangan hanya menampilkan
"Error" tanpa penjelasan. Hindari snackbar bertumpuk.

### 5.8 Empty state

Saat daftar kosong: - Ikon/ilustrasi sederhana, bukan gambar dekoratif
besar. - Judul: **Belum ada tugas** - Deskripsi: "Tambahkan tugas
pertamamu agar tenggat dan progresnya mudah dipantau." - Tombol:
**Tambah Tugas**

Empty state pencarian: - Judul: **Tugas tidak ditemukan** - Deskripsi:
"Coba kata kunci lain atau ubah filter." - Tawarkan tindakan menghapus
pencarian/filter bila sesuai.

### 5.9 Loading dan error state

-   Loading awal boleh menggunakan indikator sederhana atau skeleton.
-   Jangan menampilkan loading terus-menerus untuk operasi database
    lokal yang selesai cepat.
-   Error harus menyebut tindakan yang gagal dan langkah berikutnya.
-   Bedakan daftar kosong dari kegagalan membaca database.
-   Jika operasi lokal gagal, jangan berpura-pura bahwa data sudah
    tersimpan.

------------------------------------------------------------------------
