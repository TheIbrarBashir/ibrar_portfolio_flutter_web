class ResumeData {
  String title;
  String date;
  String company;

  ResumeData({required this.title, required this.date, required this.company});

  @override
  String toString() {
    return 'ResumeData{title: $title, date: $date, company: $company}';
  }
}
