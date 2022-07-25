void main() {
  Client client1 = Client();
  client1.name = 'Felipe';
  client1.bankAccount = 'A9122ABC';
}

abstract class Person {
  String? name;
  String? cpf;
  int? birthday;


  int getAge() {
    if(birthday != null){
      return DateTime.now().year - birthday!;
    } else {
      return 0;
    }
    
  }

  void login();
}

class Client extends Person {
  String? bankAccount;
  
  @override
  void login() {
    print('Login como cliente');
  }

  @override
  int getAge() {
    print(super.getAge());
    return 10;
  }
}
