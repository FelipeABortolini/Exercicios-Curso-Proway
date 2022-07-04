// Crie uma lista de Sets, e os itens desses Sets são Maps de 1 item.

void main(){
  List listaSets = [
    {{'nome': 'Felipe'}, {'idade': 20}}, 
    {{'nome': 'Lila'}, {'idade': 40}}, 
    {{'nome': 'César'}, {'idade': 50}}
  ];
  print(listaSets[0].elementAt(1)['idade']);

//  OUTRA FORMA
  List<Set<Map>> sets = [
    {
      {'nome': 'Felipe'},
      {'nome': 'Felipe'}
    },
    {
      {'nome': 'Felipe'},
      {'nome': 'Felipe'}
    }
  ];

//  OUTRA FORMA
  Map meuMap = {'nome': 'Felipe5'};
  Set<Map> meuSet = {meuMap, meuMap};
  List<Set> sets1 = [meuSet, meuSet];
  print(sets1[0].elementAt(0)['nome']);
}

