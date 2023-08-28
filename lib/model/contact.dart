class Contact {
  const Contact({
    required this.id,
    required this.name,
    required this.phone,
    required this.imageUrl,
  });

  final String id;
  final String name;
  final String phone;
  final String imageUrl;

  get getName => name;
  get getPhone => phone;
  get getImageUrl => imageUrl;
}
