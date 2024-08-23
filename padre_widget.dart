import 'package:flutter/material.dart';
import 'hijo_widget.dart'; // Importa el widget hijo

class PadreWidget extends StatefulWidget {
  const PadreWidget({super.key}); 

  @override
  PadreWidgetState createState() => PadreWidgetState();
}

class PadreWidgetState extends State<PadreWidget> {
  String _mensaje = "Esperando mensaje...";

  void _recibirMensaje(String mensaje) {
    setState(() {
      _mensaje = mensaje;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla padre"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(_mensaje, style: const TextStyle(fontSize: 24))),
          const SizedBox(height: 20),
          HijoWidget(onMensajeEnviado: _recibirMensaje),
        ],
      ),
    );
  }
}
