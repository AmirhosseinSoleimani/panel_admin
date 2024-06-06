import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState(currentIndex: 0));


  void updateNavigationIndexState(int index) {
    emit(DashboardState(currentIndex: index));
  }

}