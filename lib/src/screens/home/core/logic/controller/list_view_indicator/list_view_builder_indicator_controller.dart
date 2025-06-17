import 'package:flutter_riverpod/flutter_riverpod.dart';

enum IndicatorStatus {
  loading,
  error,
  noMore,
  none,
}

class ListViewBuilderIndicatorController extends Notifier<IndicatorStatus> {
  @override
  IndicatorStatus build() {
    return IndicatorStatus.loading;
  }

  void updateIndicatorStatus(IndicatorStatus status) {
    state = status;
  }
}

final listViewBuilderIndicatorControllerProvider =
    NotifierProvider<ListViewBuilderIndicatorController, IndicatorStatus>(
  () => ListViewBuilderIndicatorController(),
);
