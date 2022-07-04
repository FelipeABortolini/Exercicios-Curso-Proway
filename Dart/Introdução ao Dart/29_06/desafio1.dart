import "dart:math";
void main() { 
  var lista = [];    
  lista.add('Felipe'); 
  lista.add('Cláudio');
  lista.add('Gabriel'); 
  lista.add('Matheus'); 
  
  final _random = new Random();
  
  var element = lista[_random.nextInt(lista.length)];
  
  print(element); 
}