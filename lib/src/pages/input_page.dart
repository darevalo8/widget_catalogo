import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Page'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('El texto ingresado en el formulario'),
              Text('Nombre: ${this._nombre}'),
              Text('Contraseña: ${this._password}'),
              _nameInput(),
              _passwordInput()
            ],
          ),
        ),
      ),
    );
  }

  Widget _nameInput() {
    return TextField(
      // textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Nombre',
        hintText: 'Nombre de la persona',
        counter: Text('Letras ${this._nombre.length}/100'),
        // icon: Icon(Icons.person)
        suffixIcon: Icon(Icons.person)
      ),
      onChanged: (valor){
        setState(() {
          this._nombre = valor;
        });
      },
    );
  }
  // TODO es conviertan estas dos funciones en un widget reutilizable
  Widget _passwordInput() {
    return TextField(
      // textCapitalization: TextCapitalization.sentences,
      obscureText: true,
      decoration: InputDecoration(
        
        border: OutlineInputBorder(),
        labelText: 'Contraseña',
        // icon: Icon(Icons.person)
        suffixIcon: Icon(Icons.lock)
      ),
      onChanged: (valor){
        
        setState(() {
          this._password = valor;
        });
      },
    );
  }
}