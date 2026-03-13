import '../../../../core/constants/constants.dart';
import '../models/dashboard_model.dart';

class DashboardRepository {
  List<DashboardModel> getMenu() {
    return [
      DashboardModel(
        title: "Dosen",
        route: AppConstants.dosenRoute,
        subtitle: "Daftar dosen dan NIDN",
      ),
      DashboardModel(
        title: "Mahasiswa",
        route: AppConstants.mahasiswaRoute,
        subtitle: "Data mahasiswa keseluruhan",
      ),
      DashboardModel(
        title: "Mahasiswa Aktif",
        route: AppConstants.mahasiswaAktifRoute,
        subtitle: "Mahasiswa aktif per semester",
      ),
      DashboardModel(
        title: "Profile",
        route: AppConstants.profileRoute,
        subtitle: "Informasi pembuat aplikasi",
      ),
    ];
  }
}
