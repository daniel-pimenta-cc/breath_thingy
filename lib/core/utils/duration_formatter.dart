abstract final class DurationFormatter {
  static String formatSeconds(int seconds) {
    return '${seconds}s';
  }

  static String formatCountdown(double remainingSeconds) {
    final secs = remainingSeconds.ceil();
    return '$secs';
  }
}
