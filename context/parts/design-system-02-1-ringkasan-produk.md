## 1. Ringkasan Produk

**TugasKu** membantu mahasiswa mencatat tugas dari berbagai mata kuliah,
memantau tenggat, dan memperbarui progres pengerjaan tanpa harus selalu
terhubung ke internet.

### Prinsip desain

1.  **Jelas lebih penting daripada dekoratif.** Judul tugas, mata
    kuliah, tenggat, dan status harus mudah dipindai.
2.  **Light theme.** Latar terang, teks gelap, dan warna aksen
    secukupnya.
3.  **Konsisten.** Komponen yang memiliki fungsi sama harus terlihat dan
    berperilaku sama di seluruh layar.
4.  **Mobile-first dan adaptif.** Konten menyesuaikan lebar layar tanpa
    overflow atau elemen bertumpuk.
5.  **Aman terhadap system UI.** Konten tidak tertutup kamera depan,
    punch-hole, notch, status bar, navigation bar, atau keyboard.
6.  **Offline-first.** Tampilan tetap dapat digunakan ketika tidak ada
    koneksi; status koneksi bukan syarat untuk melihat dan mengelola
    tugas.
7.  **Aksesibel.** Teks terbaca, kontrol mudah disentuh, dan status
    tidak dibedakan melalui warna saja.

### Batasan lingkup

Dokumen ini menetapkan sistem visual dan pengalaman pengguna untuk
**Flutter**. Materi studi kasus pada slide menyebut Kotlin, Jetpack
Compose, ViewModel, Navigation, dan Room. Itu adalah stack implementasi
yang berbeda dari Flutter. Jika dosen mewajibkan stack sesuai slide,
gunakan Kotlin/Compose/Room; jika Flutter memang diperbolehkan, padanan
teknisnya antara lain Flutter widgets, state management/ViewModel
pattern, navigation, dan database lokal seperti SQLite melalui Drift
atau sqflite. Jangan mengklaim memakai Room di aplikasi Flutter.

------------------------------------------------------------------------
