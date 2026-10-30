## 8. Panduan Implementasi Flutter

### Struktur folder yang disarankan

``` text
lib/
  app/
    app.dart
    theme/
      app_colors.dart
      app_spacing.dart
      app_typography.dart
      app_theme.dart
  core/
    widgets/
      app_button.dart
      app_text_field.dart
      status_chip.dart
      task_card.dart
      app_empty_state.dart
  features/
    tasks/
      data/
        task_dao.dart
        task_database.dart
        task_repository_impl.dart
      domain/
        task.dart
        task_repository.dart
      presentation/
        screens/
          task_list_screen.dart
          task_form_screen.dart
          task_detail_screen.dart
        state/
          task_view_model.dart
        widgets/
          task_filter_bar.dart
```

Nama folder dan pola state management boleh menyesuaikan
framework/library yang dipilih. Yang penting, UI, state, dan data layer
tetap dipisahkan.

### Pemetaan konsep

  -----------------------------------------------------------------------
  Kebutuhan studi kasus               Pilihan pada Flutter
  ----------------------------------- -----------------------------------
  UI deklaratif                       Flutter widgets

  State/ViewModel                     State management atau ViewModel
                                      pattern

  Navigation                          Navigator atau router yang
                                      konsisten

  Database lokal offline              SQLite dengan Drift/sqflite atau
                                      solusi lokal yang sesuai

  Data access                         DAO/repository

  Git                                 Commit kecil dengan pesan yang
                                      bermakna
  -----------------------------------------------------------------------

Jika instruksi dosen secara eksplisit mewajibkan Room dan Jetpack
Compose, implementasi Flutter tidak memenuhi stack tersebut walaupun
desain visualnya dapat digunakan sebagai referensi. Konfirmasikan stack
yang diperbolehkan sebelum mulai implementasi.

### Theme terpusat

-   Buat satu `ThemeData` light sebagai sumber tema global.
-   Definisikan `ColorScheme`, `TextTheme`, bentuk tombol, input, app
    bar, kartu, dialog, dan snackbar secara terpusat.
-   Hindari warna dan style inline yang berulang.
-   Gunakan `const` untuk widget statis bila memungkinkan.
-   Gunakan komponen bersama agar layar Tambah dan Edit tidak memiliki
    gaya berbeda.

### Akses database

-   Widget UI tidak boleh memanggil DAO/database secara langsung.
-   Gunakan repository untuk menyembunyikan detail penyimpanan.
-   Jalankan operasi penyimpanan dengan pola asynchronous yang sesuai.
-   Tampilkan feedback berdasarkan hasil operasi sebenarnya.
-   Database lokal harus menjadi sumber data persisten, bukan hanya
    variabel sementara di memori.

------------------------------------------------------------------------
