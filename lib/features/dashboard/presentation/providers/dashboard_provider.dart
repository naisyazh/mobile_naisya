import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/dashboard_model.dart';
import '../../data/repositories/dashboard_repository.dart';

final dashboardProvider = Provider<List<DashboardModel>>((ref) {
  final repository = DashboardRepository();
  return repository.getDashboardData();
});
