void main(){
  List<String> nomes = ['Ailton', 'William'];
  List<String> nomesDiferente = ['dwsdwsd', 'fdsec', 'dwsdw'];
  nomes.shuffle();
  nomes.add('cdtre');
  nomes.addAll(nomesDiferente);
  nomes.removeAt(4);
  nomes.remove('William');
  nomes.clear();
  String nome = 'Ailton';
  print('A lista está vazia? ${nome.isEmpty}');
  print('Tamanho da lista ${nome.length}');
  print(nomes);

  print(nomes.any((value){
    return value == 'Ailton';
  }));

  print(nomes.any((value) => value == 'Ailton'));
  print(nomes.contains('William'));
}