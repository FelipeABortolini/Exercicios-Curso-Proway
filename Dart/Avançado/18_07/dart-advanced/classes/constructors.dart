void main() {

  Constructors constructors = Constructors('felipe', 21);
  Constructors constructors1 = Constructors.nomeadoOpcionais(age: 21);
  Constructors constructors2 = Constructors.nomeadoRequerido(name: "felipe", age: 21);
  Constructors constructors3 = Constructors.hibrido('Felipe', age: 21);
  Constructors constructors4 = Constructors.hibridoComDefault("felipe", hobby:'futebol', age: 21);
}

class Constructors {
  String? name;
  String? hobby;
  int? age;

  Constructors(this.name, this.age); // Construtor NÃO NOMEADO

  Constructors.nomeadoOpcionais({this.name, this.age}); // Construtor NOMEADO COM PARÂMETROS OPCIONAL

  Constructors.nomeadoRequerido({required this.name, required this.age}); // Construtor NOMEADO COM PARÂMETROS REQUERIDOS

  Constructors.hibrido(
    this.name, {
      required this.age,
    }); // Contrutor HIBRIDO

  Constructors.hibridoComDefault(
    this.name, {
      this.hobby = 'programar',
      required this.age,
    }); // Construtor HIBRIDO com VALORES DEFAULT
}
