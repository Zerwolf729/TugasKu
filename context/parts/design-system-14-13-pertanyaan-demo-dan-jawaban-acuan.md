## 13. Pertanyaan Demo dan Jawaban Acuan

Jawaban berikut adalah acuan konsep. Sesuaikan dengan teknologi dan kode
yang benar-benar dipakai dalam implementasi.

### 1. Mengapa data disimpan menggunakan Room?

Room merupakan lapisan abstraksi database SQLite untuk Android yang
memudahkan operasi data terstruktur, validasi query, dan integrasi
dengan komponen Android. Data tetap tersedia tanpa internet dan dapat
bertahan setelah aplikasi ditutup. **Jika implementasi memakai Flutter,
sebutkan database lokal yang benar-benar digunakan, bukan Room.**

### 2. Bagian mana yang menyimpan UI state?

UI state disimpan dan dikelola oleh state holder/ViewModel atau
mekanisme state management yang dipilih. State tersebut menyediakan data
dan status layar untuk UI, misalnya daftar tugas, filter aktif, loading,
dan pesan error.

### 3. Mengapa UI tidak langsung mengakses database?

Pemisahan ini menjaga tanggung jawab setiap lapisan, mengurangi
ketergantungan UI pada teknologi database, memudahkan pengujian, dan
membuat perubahan data lebih mudah dikelola. UI mengirim aksi ke state
holder/ViewModel, lalu repository menangani akses data.

### 4. Bagaimana aplikasi merespons saat data diubah?

Aksi pengguna diteruskan ke state holder/ViewModel dan repository.
Setelah operasi penyimpanan berhasil, data terbaru dipancarkan/dimuat
kembali ke UI sehingga daftar dan detail menampilkan perubahan. Jika
gagal, aplikasi mempertahankan data yang relevan dan menunjukkan pesan
error.

### 5. Commit mana yang menunjukkan fitur utama selesai?

Tunjukkan commit yang benar-benar menambahkan atau menyelesaikan fitur
CRUD dan penyimpanan lokal. Contoh pesan yang baik:
`feat: add local task storage and CRUD`,
`feat: implement task detail and edit flow`, atau
`test: verify offline persistence`. Jangan mengaku memiliki commit yang
tidak ada di repository.

------------------------------------------------------------------------
