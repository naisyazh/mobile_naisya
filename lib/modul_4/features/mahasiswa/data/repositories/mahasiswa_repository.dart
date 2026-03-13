import '../models/mahasiswa_model.dart';

class MahasiswaRepository {
  List<MahasiswaModel> getMahasiswa() {
    return [
      MahasiswaModel(
        nama: "Aulia Ramadhan",
        nim: "221001001",
        programStudi: "D4 Teknik Informatika",
        semester: 4,
      ),
      MahasiswaModel(
        nama: "Nabila Putri",
        nim: "221001014",
        programStudi: "D4 Teknik Informatika",
        semester: 4,
      ),
      MahasiswaModel(
        nama: "Rizki Saputra",
        nim: "221001021",
        programStudi: "D4 Sistem Informasi",
        semester: 6,
      ),
      MahasiswaModel(
        nama: "Salma Khairunnisa",
        nim: "221001030",
        programStudi: "D4 Sistem Informasi",
        semester: 2,
      ),
    ];
  }
}
