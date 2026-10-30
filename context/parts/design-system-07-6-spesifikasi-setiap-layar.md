## 6. Spesifikasi Setiap Layar

### 6.1 Daftar Tugas

**Tujuan:** membantu pengguna melihat dan menemukan tugas dengan cepat.

Urutan konten: 1. App bar bertajuk **TugasKu**. 2. Ringkasan singkat,
misalnya jumlah tugas aktif dan tugas selesai. 3. Kolom pencarian
opsional. 4. Filter status: Semua, Belum, Proses, Selesai. 5. Daftar
kartu tugas yang dapat di-scroll. 6. Tombol tambah yang mudah dijangkau,
misalnya FloatingActionButton dengan tooltip "Tambah tugas".

Perilaku: - Urutkan tugas berdasarkan deadline terdekat; tugas tanpa
deadline dapat diletakkan setelah tugas dengan deadline. - Filter dan
pencarian dapat digunakan bersama. - Setelah tambah, edit, hapus, atau
ubah status, daftar harus mencerminkan data terbaru. - Tampilkan
deadline terlewat dengan teks yang jelas, bukan hanya warna. - Jangan
menampilkan terlalu banyak ringkasan statistik hingga mendorong daftar
ke bawah.

### 6.2 Tambah Tugas

Field berurutan: 1. Mata kuliah* 2. Judul tugas* 3. Deskripsi 4.
Deadline 5. Prioritas 6. Status awal (default: Belum dikerjakan)

Perilaku: - Fokus awal pada field pertama yang relevan. - Keyboard tidak
boleh menutupi field aktif atau tombol Simpan. - Tombol **Simpan Tugas**
jelas dan mudah dijangkau. - Setelah penyimpanan berhasil, tampilkan
feedback dan kembali sesuai alur. - Jika pengguna membatalkan form yang
sudah diisi, konfirmasikan apakah perubahan akan dibuang.

### 6.3 Detail Tugas

Tampilkan: - Mata kuliah. - Judul lengkap. - Deskripsi lengkap, termasuk
line breaks. - Deadline dalam format tanggal lokal yang mudah dibaca. -
Prioritas. - Status saat ini. - Tombol **Edit** dan **Hapus**. - Kontrol
untuk mengubah status dengan label yang jelas.

Perilaku: - Jika deskripsi panjang, seluruh layar dapat di-scroll. -
Status yang diubah harus tersimpan dan terlihat segera setelah operasi
sukses. - Jangan menganggap perubahan berhasil sebelum penyimpanan lokal
mengonfirmasi keberhasilan.

### 6.4 Edit Tugas

-   Gunakan form dan gaya visual yang sama dengan layar Tambah Tugas.
-   Isi field dengan data yang tersimpan saat ini.
-   Judul layar: **Edit Tugas**.
-   Tombol utama: **Simpan Perubahan**.
-   Sediakan tombol kembali/batal yang konsisten.
-   Jika data diubah tetapi tidak disimpan, tanyakan sebelum membuang
    perubahan.
-   Setelah sukses, detail/daftar harus menampilkan data terbaru.

------------------------------------------------------------------------
