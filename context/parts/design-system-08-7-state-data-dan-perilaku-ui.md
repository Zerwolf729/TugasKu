## 7. State, Data, dan Perilaku UI

Design system ini juga menetapkan perilaku visual ketika data berubah.

### Model tugas minimal

-   `id`: identitas unik.
-   `mataKuliah`: nama mata kuliah.
-   `judul`: judul tugas.
-   `deskripsi`: keterangan tambahan.
-   `deadline`: tanggal tenggat yang dapat kosong jika aturan aplikasi
    mengizinkan.
-   `prioritas`: Rendah, Sedang, atau Tinggi.
-   `status`: Belum dikerjakan, Sedang dikerjakan, atau Selesai.

### Prinsip state

-   UI menampilkan state, bukan membaca database langsung dari widget.
-   Aksi pengguna mengirim event/command ke state holder atau ViewModel.
-   Lapisan data menyimpan dan mengambil data melalui repository/DAO
    sesuai stack yang dipilih.
-   Setelah operasi berhasil, state diperbarui agar UI menampilkan hasil
    terbaru.
-   State minimal mencakup daftar tugas, filter aktif, query pencarian,
    status loading, dan pesan error bila diperlukan.
-   Pisahkan state form lokal (teks yang sedang diketik) dari data tugas
    yang sudah tersimpan.
-   Hindari membuat beberapa sumber kebenaran yang berbeda untuk data
    tugas yang sama.

### Status dan tampilan

  -----------------------------------------------------------------------
  Status data                         Tampilan
  ----------------------------------- -----------------------------------
  Belum dikerjakan                    Chip netral "Belum dikerjakan"

  Sedang dikerjakan                   Chip biru "Sedang dikerjakan"

  Selesai                             Chip hijau "Selesai"

  Deadline hari ini                   Label "Tenggat hari ini"

  Deadline terlewat dan belum selesai Label "Terlambat" dengan warna
                                      bahaya

  Penyimpanan gagal                   Pesan error; data form tetap
                                      dipertahankan
  -----------------------------------------------------------------------

Tanggal dan waktu harus ditampilkan sesuai lokal perangkat. Hindari
menyimpan tanggal sebagai teks tampilan; simpan dalam tipe tanggal/waktu
yang sesuai dan format hanya ketika ditampilkan.

------------------------------------------------------------------------
