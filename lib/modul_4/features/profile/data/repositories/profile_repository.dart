import '../models/profile_model.dart';

class ProfileRepository {
  ProfileModel getProfile() {
    return ProfileModel(
      nama: "Naiysa",
      nim: "221001999",
      kelas: "4A TI",
      programStudi: "D4 Teknik Informatika",
      email: "naiysa@example.com",
    );
  }
}
