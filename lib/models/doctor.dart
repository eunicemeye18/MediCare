class Doctor {
  final String image;
  final String name;
  final String speciality;
  final double rating;
  bool isFavorite;

  Doctor({
    required this.image,
    required this.name,
    required this.speciality,
    required this.rating,
    this.isFavorite = false,
  });
}
