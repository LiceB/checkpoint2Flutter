import 'package:checkpoint2/IconButton.dart';
import 'package:checkpoint2/constraints.dart';
import 'package:checkpoint2/contato.dart';
import 'package:flutter/material.dart';

enum Favorito { favorito, naofavorito }

class ListaContatos extends StatefulWidget {
  const ListaContatos({Key? key}) : super(key: key);

  @override
  State<ListaContatos> createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  int contFav = 0;
  Favorito? fav;

  final List<Contato> contato = [
    Contato(name: 'Bruno', email: 'bruno@gmail.com', check: false),
    Contato(name: 'Renan', email: 'renan@gmail.com', check: false),
    Contato(name: 'Ester', email: 'ester@gmail.com', check: false),
    Contato(name: 'Guilherme', email: 'gui@gmail.com', check: false),
    Contato(name: 'Alice', email: 'alice@gmail.com', check: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos ${contato.where((contato) => contato.check).length}'),
      ),
      body: ListView.builder(
          itemCount: contato.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(contato[index].name[0]),
              ),
              title: Text(contato[index].name),
              subtitle: Text(contato[index].email),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    contato[index].check = !contato[index].check;

                    if(contato[index].check) {
                      contFav++;
                    } else if(!contato[index].check) {
                      contFav--;
                    }
                  });
                },
                icon: contato[index].check
                    ? Icon(Icons.favorite, color: Colors.red)
                    : Icon(Icons.favorite_border),
              ),
            );
          }),
    );
  }
}
