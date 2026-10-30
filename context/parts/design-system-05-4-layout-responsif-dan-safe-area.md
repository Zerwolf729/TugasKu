## 4. Layout Responsif dan Safe Area

### Aturan wajib

-   Pada Flutter, gunakan `SafeArea` untuk melindungi konten dari status
    bar, notch, punch-hole kamera, dan navigation bar.
-   Jangan menempatkan judul, tombol, atau field di area tepi atas yang
    berpotensi tertutup kamera depan.
-   Hindari mengatur posisi konten utama dengan koordinat absolut atau
    tinggi status bar yang ditulis manual.
-   Gunakan `Scaffold`, `SafeArea`, `Padding`, `LayoutBuilder`, dan
    scroll view sesuai kebutuhan.
-   Form harus dapat di-scroll ketika keyboard muncul; gunakan pola
    seperti `SingleChildScrollView` dan padding bawah yang
    mempertimbangkan `MediaQuery.viewInsets.bottom`.
-   Jangan mematikan penyesuaian keyboard tanpa alasan yang kuat.
-   Uji pada perangkat dengan notch/punch-hole di tengah maupun sudut,
    status bar tinggi, dan navigation mode gesture maupun tiga tombol.

### Breakpoint rekomendasi

  -----------------------------------------------------------------------
  Lebar area konten                   Aturan
  ----------------------------------- -----------------------------------
  Di bawah 360 dp                     Padding horizontal 12--16 dp;
                                      hindari dua kolom

  360--599 dp                         Layout ponsel standar; satu kolom

  600--839 dp                         Tablet kecil/foldable terbuka;
                                      konten terpusat dengan lebar
                                      maksimum

  840 dp ke atas                      Layout lebar; gunakan panel/kolom
                                      tambahan hanya jika membantu
  -----------------------------------------------------------------------

Breakpoint ini adalah pedoman layout, bukan batas perangkat yang kaku.
Gunakan lebar area aktual dari `LayoutBuilder`, bukan asumsi berdasarkan
nama perangkat.

### Lebar konten

-   Untuk layar ponsel, gunakan lebar penuh yang tersedia setelah
    padding.
-   Pada layar lebar, batasi area form/detail sekitar 560--680 dp dan
    pusatkan agar baris teks tidak terlalu panjang.
-   Daftar dapat menggunakan area yang lebih lebar, tetapi kartu tetap
    mudah dipindai.
-   Jangan memaksakan dua kolom pada ponsel sempit.
-   Pada orientasi landscape, pertahankan scroll dan pastikan tombol
    penting tidak hilang di bawah keyboard.

### App bar dan system bars

-   App bar harus menghormati safe area dan tinggi sistem.
-   Gunakan ikon kembali dengan area sentuh yang cukup.
-   Pastikan status bar menggunakan latar terang dan ikon sistem gelap
    ketika memakai light theme.
-   Konten tidak boleh berada di belakang cutout kecuali aplikasi
    sengaja menggunakan edge-to-edge dengan inset yang ditangani dengan
    benar.

------------------------------------------------------------------------
