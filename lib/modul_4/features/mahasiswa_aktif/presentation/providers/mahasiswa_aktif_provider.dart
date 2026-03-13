import '../../data/models/mahasiswa_aktif_model.dart';
import '../../data/repositories/mahasiswa_aktif_repository.dart';

class MahasiswaAktifProvider {
  final MahasiswaAktifRepository repository = MahasiswaAktifRepository();

  List<MahasiswaAktifModel> getMahasiswaAktif() {
    return repository.getMahasiswaAktif();
  }
}
