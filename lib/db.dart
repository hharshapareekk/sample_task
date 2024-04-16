class vidDetails {
   final String description;
   final int month;
   final int day;
   final int year;
   final String title;


vidDetails({
  required this.description,
  required this.day,
  required this.month,
  required this.year,
  required this.title,
});

  @override
  String toString() {
    return '$day/$month/$year';
  }
}