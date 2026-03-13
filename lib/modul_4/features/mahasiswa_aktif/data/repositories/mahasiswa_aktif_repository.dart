import '../models/mahasiswa_aktif_model.dart';

class MahasiswaAktifRepository {
  List<MahasiswaAktifModel> getMahasiswaAktif() {
    return [
      MahasiswaAktifModel(
        nama: "Aulia Ramadhan",
        nim: "221001001",
        kelas: "4A TI",
        aktif: true,
      ),
      MahasiswaAktifModel(
        nama: "Nabila Putri",
        nim: "221001014",
        kelas: "4A TI",
        aktif: true,
      ),
      MahasiswaAktifModel(
        nama: "Rizki Saputra",
        nim: "221001021",
        kelas: "6B SI",
        aktif: true,
      ),
    ];
  }
}
