class TeacherEvent {}

class TeacherSelectionEvent extends TeacherEvent {
  int? selection;
  TeacherSelectionEvent(this.selection);
}
