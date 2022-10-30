class OrderForm {
  final String gender;
  final String givenName;
  final String surname;
  final String passportId;
  final String email;

  const OrderForm({
    this.gender = '',
    required this.givenName,
    this.surname = '',
    this.passportId = '',
    this.email = '',
  });
}
