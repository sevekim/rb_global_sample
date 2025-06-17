// ignore_for_file: avoid_renaming_method_parameters

import 'package:flutter_riverpod/flutter_riverpod.dart';

enum IndicatorStatus {
  loading,
  error,
  noMore,
  none,
}

class ListViewBuilderIndicatorController
    extends FamilyNotifier<IndicatorStatus, IndicatorStatus?> {
  @override
  IndicatorStatus build(IndicatorStatus? initial) {
    return initial ?? IndicatorStatus.loading;
  }

  void updateIndicatorStatus(IndicatorStatus status) {
    state = status;
  }
}

final listViewBuilderIndicatorControllerProvider = NotifierProvider.family<
    ListViewBuilderIndicatorController, IndicatorStatus, IndicatorStatus?>(
  () => ListViewBuilderIndicatorController(),
);
