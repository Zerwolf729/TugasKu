/// Design tokens jarak, radius, border, dan elevasi untuk TugasKu.
abstract final class AppSpacing {
  // Skala jarak berbasis 4 dp.
  static const double space1 = 4;
  static const double space2 = 8;
  static const double space3 = 12;
  static const double space4 = 16;
  static const double space5 = 20;
  static const double space6 = 24;
  static const double space8 = 32;
  static const double space10 = 40;

  // Radius.
  static const double radiusSmall = 8;
  static const double radiusMedium = 12;
  static const double radiusLarge = 16;
  static const double radiusXLarge = 20;

  // Border dan elevasi.
  static const double borderWidth = 1;
  static const double elevationCard = 1;
  static const double elevationDialog = 8;

  // Ukuran interaksi.
  static const double buttonHeight = 48;
  static const double fieldHeight = 52;
  static const double touchTarget = 48;
  static const double iconSize = 24;

  // Lebar konten maksimum pada layar lebar.
  static const double contentMaxWidth = 600;
}
