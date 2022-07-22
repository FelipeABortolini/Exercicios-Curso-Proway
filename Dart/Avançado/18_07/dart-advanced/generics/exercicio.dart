void main() {
  Seila seila = Seila(meuAtributo: int);
  seila.imprimeRetorna();
}

class Seila<T> {
  T meuAtributo;

  Seila({
    required this.meuAtributo,
  });

  T imprimeRetorna(){
    print('meu valor é $meuAtributo');
    return meuAtributo;
  }
  
}
