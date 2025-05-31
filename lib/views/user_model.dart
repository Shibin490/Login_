class Man {
  String name;
  int age;
  Man(this.age, this.name);

  Map<String, dynamic> tojson() {
    return {'name': name, 'age': age};
  }
}
