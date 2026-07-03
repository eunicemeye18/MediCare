class Doctor {
  final String image;
  final String name;
  final String speciality;
  final double rating;
  final String? description;
  bool isFavorite;

  Doctor({
    required this.image,
    required this.name,
    required this.speciality,
    required this.rating,
    this.description,
    this.isFavorite = false, 
  });
}
