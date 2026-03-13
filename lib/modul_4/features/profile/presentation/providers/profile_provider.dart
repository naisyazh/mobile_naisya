import '../../data/models/profile_model.dart';
import '../../data/repositories/profile_repository.dart';

class ProfileProvider {
  final ProfileRepository repository = ProfileRepository();

  ProfileModel getProfile() {
    return repository.getProfile();
  }
}
