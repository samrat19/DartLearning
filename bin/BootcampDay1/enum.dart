enum Status {
  none,
  running,
  stopped,
  paused
}
void runEnum() {
  Status.values.forEach((status) => print('value: $status, index: ${status.index}'));
}