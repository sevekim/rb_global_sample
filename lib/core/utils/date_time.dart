DateTime? dateTimeFromEpoch(dynamic ms) {
  if (ms == null) return null;
  if (ms is int) return DateTime.fromMillisecondsSinceEpoch(ms);
  if (ms is String) {
    final parsed = int.tryParse(ms);
    if (parsed != null) {
      return DateTime.fromMillisecondsSinceEpoch(parsed);
    }
  }
  return null;
}
