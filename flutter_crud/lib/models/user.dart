class User {
  final String id;
  final String name;
  final String email;
  final String avatarUrl;

  const Use ({
    this.id,
    @required this.name,
    @required this.email,
    @required this.avatarUrl,
  });
}