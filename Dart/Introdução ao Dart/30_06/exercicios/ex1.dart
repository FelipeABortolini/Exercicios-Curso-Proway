// Crie um algoritmo que tenha um Map e dentro desse map um dos itens é uma lista tipada com alguns itens dentro dela.
// Depois imprima os valores desse map pelo 'key' que tem a lista.
void main() {
  Map meuMap = {
    'lista': <int>[45, 78, 80],
    'nome': 'Jhones'
  };
  print('lista: ${meuMap['lista']}');
  print('elemento 1: ${meuMap['lista'][0]}');
}