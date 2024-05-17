class TeacherState {
  int? selectedSection;
  TeacherState({this.selectedSection});
}

class TeacherInitialState extends TeacherState {
  TeacherInitialState(selectedSection)
      : super(selectedSection: selectedSection);
}

class TeacherFectchListState extends TeacherState {
  TeacherFectchListState(selectedSection)
      : super(selectedSection: selectedSection);
}
