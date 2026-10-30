## 3. Design Tokens

Simpan nilai berikut sebagai konstanta terpusat, bukan menulis warna,
jarak, atau radius berbeda-beda di setiap widget.

### 3.1 Warna

  -----------------------------------------------------------------------
  Token                   Nilai                   Penggunaan
  ----------------------- ----------------------- -----------------------
  `colorBackground`       `#F7F8FA`               Latar utama aplikasi

  `colorSurface`          `#FFFFFF`               Kartu, dialog, bottom
                                                  sheet, field

  `colorSurfaceSubtle`    `#F0F3F7`               Area sekunder, chip
                                                  netral

  `colorTextPrimary`      `#172033`               Judul dan teks utama

  `colorTextSecondary`    `#5F6B7A`               Deskripsi, label,
                                                  metadata

  `colorTextDisabled`     `#98A2B3`               Teks nonaktif

  `colorBorder`           `#E1E6ED`               Border, divider,
                                                  outline

  `colorPrimary`          `#315EFB`               Tombol utama, link,
                                                  fokus

  `colorPrimaryPressed`   `#2449D8`               Keadaan tombol ditekan

  `colorPrimaryTint`      `#EAF0FF`               Latar pilihan/aksen
                                                  lembut

  `colorSuccess`          `#18794E`               Status selesai dan
                                                  sukses

  `colorSuccessTint`      `#E7F6EE`               Latar status selesai

  `colorWarning`          `#946200`               Tenggat
                                                  dekat/peringatan

  `colorWarningTint`      `#FFF4D6`               Latar peringatan

  `colorDanger`           `#B42318`               Hapus, error, tenggat
                                                  terlewat

  `colorDangerTint`       `#FEECEB`               Latar error/destruktif

  `colorInfo`             `#175CD3`               Informasi status proses

  `colorInfoTint`         `#EAF2FF`               Latar status proses

  `colorOverlay`          `#172033` dengan        Scrim dialog/bottom
                          opasitas 40%            sheet
  -----------------------------------------------------------------------

**Aturan warna** - Gunakan `colorPrimary` hanya untuk tindakan utama
atau elemen interaktif penting. - Tombol hapus dan tindakan destruktif
menggunakan `colorDanger`, bukan warna utama. - Jangan menggunakan warna
sebagai satu-satunya penanda status; sertakan teks dan/atau ikon. - Teks
utama di atas permukaan putih harus memiliki kontras yang kuat. - Status
belum dikerjakan, proses, dan selesai harus memiliki label teks yang
selalu terlihat.

### 3.2 Tipografi

Gunakan font sistem yang mudah dibaca. Jika memakai satu font khusus,
gunakan secara konsisten dan sediakan fallback.

  ------------------------------------------------------------------------
  Token                           Ukuran Berat            Penggunaan
  ---------------- --------------------- ---------------- ----------------
  `displaySmall`                   28 sp Bold (700)       Judul utama
                                                          halaman jika
                                                          diperlukan

  `headline`                       24 sp Bold (700)       Judul halaman

  `titleLarge`                     20 sp SemiBold (600)   Judul
                                                          bagian/detail

  `titleMedium`                    16 sp SemiBold (600)   Judul kartu
                                                          tugas

  `bodyLarge`                      16 sp Regular (400)    Isi utama dan
                                                          form

  `bodyMedium`                     14 sp Regular (400)    Deskripsi dan
                                                          isi sekunder

  `labelLarge`                     14 sp SemiBold (600)   Tombol dan label
                                                          penting

  `labelMedium`                    12 sp Medium (500)     Chip dan
                                                          metadata

  `caption`                        12 sp Regular (400)    Waktu pembaruan
                                                          atau keterangan
                                                          pendek
  ------------------------------------------------------------------------

Catatan: - `sp` adalah satuan skala teks pada Flutter/Android; gunakan
`fontSize` dengan nilai yang sepadan. - Jangan mengunci tinggi komponen
berdasarkan satu baris teks. - Izinkan judul tugas membungkus menjadi
dua atau lebih baris. - Hormati pengaturan ukuran teks sistem; hindari
mengecilkan teks secara paksa agar muat.

### 3.3 Spacing

Gunakan skala dasar 4 dp.

  Token         Nilai Penggunaan
  ----------- ------- -------------------------
  `space1`       4 dp Jarak sangat rapat
  `space2`       8 dp Jarak ikon-label
  `space3`      12 dp Jarak elemen berdekatan
  `space4`      16 dp Padding standar
  `space5`      20 dp Jarak antarkelompok
  `space6`      24 dp Jarak antarbagian
  `space8`      32 dp Jarak besar
  `space10`     40 dp Pemisah area utama

Panduan: - Padding horizontal layar: 16 dp pada ponsel kecil, 20--24 dp
pada ponsel besar. - Jarak antarkartu: 12 dp. - Padding internal kartu:
16 dp. - Jarak label ke input: 8 dp. - Jarak antarfield: 16 dp. - Jangan
menggunakan angka jarak acak jika token yang tersedia sudah memadai.

### 3.4 Radius, border, dan elevasi

  Token                   Nilai Penggunaan
  ------------------- --------- ------------------------------
  `radiusSmall`            8 dp Chip kecil, elemen kompak
  `radiusMedium`          12 dp Input dan tombol
  `radiusLarge`           16 dp Kartu
  `radiusXLarge`          20 dp Dialog/bottom sheet tertentu
  `borderWidth`            1 dp Outline dan divider
  `elevationCard`       1--2 dp Kartu bila dibutuhkan
  `elevationDialog`        8 dp Dialog di atas konten

Gunakan border tipis sebagai pemisah utama. Bayangan harus lembut dan
jarang digunakan; jangan menggabungkan border tebal dengan shadow kuat
pada setiap kartu.

### 3.5 Ukuran interaksi

-   Tinggi tombol utama: minimal 48 dp.
-   Tinggi field input: sekitar 52--56 dp.
-   Target sentuh ikon/tombol: minimal 48 × 48 dp jika memungkinkan.
-   Ikon standar: 20--24 dp.
-   Checkbox, radio, dan kontrol status harus memiliki area sentuh yang
    cukup besar.
-   Jarakkan dua tindakan berbahaya atau tindakan yang sering digunakan
    agar tidak mudah salah tekan.

------------------------------------------------------------------------
