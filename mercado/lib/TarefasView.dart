import 'package:flutter/services.dart';
import 'package:mercado/TarefasController.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TarefasScreen extends StatelessWidget {
  // Controlador para o campo de texto de nova tarefa
  final TextEditingController _controller = TextEditingController();

  // Método para mostrar o diálogo de edição de tarefa
  void _mostrarDialogoEdicao(
      BuildContext context, TarefasController model, int index) {
    TextEditingController _controller =
        TextEditingController(text: model.tarefas[index].descricao);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Editar Tarefa'),
          content: TextField(
            controller: _controller,
            decoration: const InputDecoration(
              labelText: 'Nova descrição',
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                model.editarTarefa(index, _controller.text, context);
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      // Barra superior do aplicativo
      appBar: AppBar(
        title: const Center(
          child: Text(
            'ToDo Mercado',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ),
      // Corpo principal do aplicativo
      body: Column(
        children: [
          // Campo de texto para adicionar nova tarefa
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Nova Tarefa',
                labelStyle: const TextStyle(color: Colors.black),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                // Ícone para adicionar tarefa ao pressionar o botão
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        // Chamando o método adicionarTarefa do Provider para atualizar o estado
                        Provider.of<TarefasController>(context, listen: false)
                            .adicionarTarefa(_controller.text, context);
                        // Limpar o campo de texto após adicionar a tarefa
                        _controller.clear();
                      },
                      icon: const Icon(Icons.add),
                    ),
                    IconButton(
                      onPressed: () {
                        Provider.of<TarefasController>(context, listen: false)
                            .ordenarLista();
                      },
                      icon: const Icon(
                          Icons.arrow_upward), // Substitua por um ícone adequado
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Lista de tarefas usando um Consumer do Provider para atualização automática
          Expanded(
            child: Consumer<TarefasController>(
              builder: (context, model, child) {
                return ListView.builder(
                  itemCount: model.tarefas.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      // Exibição do texto da tarefa
                      title: Text(model.tarefas[index].descricao),
                      // Checkbox para marcar a tarefa como concluída
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                            value: model.tarefas[index].concluida,
                            onChanged: (value) {
                              // Chamando o método marcarComoConcluida do Provider para atualizar o estado
                              if (value != null) {
                                if (value) {
                                  model.marcarComoConcluida(index);
                                } else {
                                  model.desmarcarComoConcluida(index);
                                }
                              }
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              model.excluirTarefa(index);
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () {
                              _mostrarDialogoEdicao(context, model, index);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
