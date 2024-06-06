
part of 'dashboard_cubit.dart';

class DashboardState extends Equatable {
  final int currentIndex;
  const DashboardState({required this.currentIndex});

  @override
  List<Object?> get props => [currentIndex];

}