class DoctorModel {
  final String name, lastName, phone;
  final String? image;

  DoctorModel({
    required this.name,
    required this.lastName,
    required this.phone,
    this.image,
  });
}
