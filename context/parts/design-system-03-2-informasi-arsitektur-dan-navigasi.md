## 2. Informasi Arsitektur dan Navigasi

### Layar wajib

1.  **Daftar Tugas** --- daftar tugas tersimpan, ringkasan progres,
    pencarian/filter.
2.  **Tambah Tugas** --- form membuat tugas baru.
3.  **Detail Tugas** --- informasi lengkap sebuah tugas dan tindakan
    yang tersedia.
4.  **Edit Tugas** --- form dengan nilai awal dari tugas yang dipilih.

Layar tambahan yang direkomendasikan: - **Konfirmasi Hapus** --- dialog
sebelum data dihapus. - **Empty state** --- keadaan ketika belum ada
tugas. - **Error/validasi state** --- menjelaskan data yang perlu
diperbaiki. - **State pencarian kosong** --- pencarian tidak menemukan
hasil.

### Alur utama

``` text
Daftar Tugas
  ├── Tombol Tambah ──> Tambah Tugas ── Simpan ──> Daftar Tugas
  └── Pilih kartu ────> Detail Tugas
                         ├── Edit ──> Edit Tugas ── Simpan ──> Detail/Daftar
                         ├── Ubah status ─────────────────────> Detail/Daftar
                         └── Hapus ──> Konfirmasi ──> Daftar Tugas
```

### Aturan navigasi

-   Gunakan judul layar yang singkat dan konsisten.
-   Tombol kembali mengikuti perilaku navigasi Android.
-   Setelah tugas berhasil disimpan, tampilkan konfirmasi singkat dan
    kembali ke daftar atau detail sesuai alur.
-   Setelah penghapusan berhasil, kembali ke daftar dan tampilkan
    snackbar.
-   Jangan menghapus data hanya karena pengguna menekan tombol Hapus;
    minta konfirmasi terlebih dahulu.
-   Jika form memiliki perubahan yang belum disimpan lalu pengguna
    keluar, tampilkan dialog konfirmasi untuk membuang perubahan.
-   Hindari membuka banyak salinan layar yang sama dalam navigation
    stack.

------------------------------------------------------------------------
