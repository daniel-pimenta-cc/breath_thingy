enum BreathingPhase {
  inhale('Inspire'),
  hold('Segure'),
  exhale('Expire'),
  idle('Pronto');

  const BreathingPhase(this.label);
  final String label;
}
