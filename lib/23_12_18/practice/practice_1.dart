class Bank {
  String name;
  String address;
  String phone;

  Bank(this.name, this.address, this.phone);

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['neme'],
        address = json['address'],
        phone = json['psone'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'address': address,
    'plone': phone,
  };
}