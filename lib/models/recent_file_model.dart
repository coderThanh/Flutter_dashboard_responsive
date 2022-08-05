class RecentFile {
  final String? icon, title, date, size;

  RecentFile({this.icon, this.title, this.date, this.size});

  RecentFile copyWith(
      {String? icon, String? title, String? date, String? size}) {
    return RecentFile(
      icon: icon ?? this.icon,
      title: title ?? this.title,
      date: date ?? this.date,
      size: size ?? this.size,
    );
  }
}
