import '../../data/models/mahasiswa_model.dart';
import '../../data/repositories/mahasiswa_repository.dart';

class MahasiswaProvider {
  final MahasiswaRepository repository = MahasiswaRepository();

  List<MahasiswaModel> getMahasiswa() {
    return repository.getMahasiswa();
  }
}
