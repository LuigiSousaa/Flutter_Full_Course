import 'package:mercado/TarefasModel.dart';
import 'package:flutter/material.dart';

class TarefasController extends ChangeNotifier {
// Lista de tarefas
  List<Tarefas> _tarefas = [];
  bool _ordenar = true;
// Getter para acessar a lista de tarefas
  List<Tarefas> get tarefas => _tarefas;
// Método para adicionar uma nova tarefa à lista
  void adicionarTarefa(String descricao, BuildContext context) {
    if (descricao.isNotEmpty) {
      _tarefas.add(Tarefas(descricao, false));
// Notifica os ouvintes (widgets) sobre a mudança no estado
      notifyListeners();
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) { 
          return const AlertDialog(
            title: Text('Aviso'),
            content: Text('A descrição da tarefa não pode estar vazia.'),
          );
        },
      );
      // Fecha o AlertDialog após 2 segundos
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(context).pop();
      });
    }
  }

  // Método para ordenar a lista em ordem alfabetica
  void ordenarLista() {
    _tarefas.sort((a, b) {
      final comparison = a.descricao.compareTo(b.descricao);
      return _ordenar ? comparison : -comparison;
    });
    _ordenar = !_ordenar; //inverte a ordem
    notifyListeners();
  }

  //Método para atualizar o item da compra
  void editarTarefa(int indice, String novaDescricao, BuildContext context) {
    if (_tarefas.any((item) => item.descricao == novaDescricao)) {
    } else if (novaDescricao.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Aviso'),
            content: const Text("Não é possível inserir um item vazio"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("OK"),
              )
            ],
          );
        },
      );
    } else {
      _tarefas[indice].descricao = novaDescricao;
      notifyListeners();
    }
  }

// Método para marcar uma tarefa como concluída com base no índice
  void marcarComoConcluida(int indice) {
    if (indice >= 0 && indice < _tarefas.length) {
      _tarefas[indice].concluida = true;
// Notifica os ouvintes sobre a mudança no estado
      notifyListeners();
    }
  }

// Método para desmarcar uma tarefa como concluída com base no índice
  void desmarcarComoConcluida(int indice) {
    if (indice >= 0 && indice < _tarefas.length) {
      _tarefas[indice].concluida = false;
// Notifica os ouvintes sobre a mudança no estado
      notifyListeners();
    }
  }

// Método para excluir uma tarefa com base no índice
  void excluirTarefa(int indice) {
    if (indice >= 0 && indice < _tarefas.length) {
      _tarefas.removeAt(indice);
// Notifica os ouvintes sobre a mudança no estado
      notifyListeners();
    }
  }
}
