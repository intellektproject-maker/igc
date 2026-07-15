import 'package:flutter/foundation.dart';

import '../models/dashboard_model.dart';
import '../repositories/dashboard_repository.dart';

class DashboardProvider extends ChangeNotifier {
  DashboardProvider({
    DashboardRepository? repository,
  }) : _repository = repository ?? const DashboardRepository();

  final DashboardRepository _repository;

  DashboardModel? _dashboard;

  DashboardModel? get dashboard => _dashboard;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  String? _error;

  String? get error => _error;

  Future<void> loadDashboard() async {
    try {
      _isLoading = true;
      _error = null;

      notifyListeners();

      _dashboard = await _repository.getDashboard();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}