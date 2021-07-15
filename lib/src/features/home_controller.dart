import 'package:my_state_management/src/shared/my_state/my_state.dart';

enum HomeStatus { empty, error, loading, success }

class HomeController extends MyState<HomeStatus> {
  HomeController() : super(HomeStatus.empty);

  int _count = 0;

  Future<void> incrementCounter() async {
    update(HomeStatus.loading);
    await Future.delayed(Duration(seconds: 1));
    _count++;
    update(HomeStatus.success);
  }

  int get count => _count;
}
