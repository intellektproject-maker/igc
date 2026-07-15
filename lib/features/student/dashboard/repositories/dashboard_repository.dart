import '../mock/dashboard_mock.dart';
import '../models/dashboard_model.dart';

class DashboardRepository {
  const DashboardRepository();

  Future<DashboardModel> getDashboard() async {
    // Simulate API delay
    await Future.delayed(const Duration(milliseconds: 500));

    return DashboardModel.fromMap(
      DashboardMock.studentDashboard,
    );
  }
}