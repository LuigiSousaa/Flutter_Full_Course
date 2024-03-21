import 'package:exemplo_mediaquery/Exercicio3.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp4());
}

// Isso significa que o estado interno dessa classe pode mudar durante o uso
class MyApp4 extends StatefulWidget {
  @override
  // Aqui estamos mostrando qual classe gerenciará o estado da classe 'MyApp4'
  _MyAppState createState() => _MyAppState();
}

// Estamos dizendo que a classe '_MyAppState' gerenciará o estado para 'MyApp4'
class _MyAppState extends State<MyApp4> {
  // Estamos dizendo que o ídice da aba atual é 0
  int _indiceSelecionado = 0;

  // Aqui definimos uma lista de widgets e armazenamos ela dentro da variável '_opcoesWidget'
  static const List<Widget> _opcoesWidget = <Widget>[
    // Aqui vamos definir o conteúdo de cada widget
    Text("Tela inicial"),
    Text("Tela de pesquisa"),
    Text("Tela perfil")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Exercício 4"),
        ),

        // Aqui utilizamos IndexedStack para empilhar os widgets correspondentes a cada aba.
        // IndexedStack exibe apenas um widget de cada vez, indexado pelo valor de index.
        // Neste caso, _indiceSelecionado é usado para determinar qual widget da lista '_opcoesWidget' será exibido.
        body: IndexedStack(
          index: _indiceSelecionado,
          children: _opcoesWidget,
        ),

        // bottomNavigationBar é a barra de navegação inferior do Scaffold.
        // Com BottomNavigationBar definimos os ícones correspondentes a cada aba.
        // E cada BottomNavigationBar representa uma barra de navegação
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Pagina inicial'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'Pesquisar'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil')
          ],

          // CurrentIndex irá definir a aba selecionada atualmente
          currentIndex: _indiceSelecionado,

          // Aqui adicionamos uma cor para quando o ícone é clicado
          selectedItemColor: Colors.blue,

          // Define uma ação quando cada ícone é pressionado uma vez
          onTap: (int index){
            setState(() {
              _indiceSelecionado = index;
            });
          },
        ),
      ),
    );
  }
}
