import 'package:flutter/material.dart';

class HijoWidget extends StatelessWidget {
  final String mensaje;
  final Function(String) onMensajeEnviado;

  const HijoWidget({super.key, this.mensaje = "Mensaje desde el hijo", required this.onMensajeEnviado}); 


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(mensaje, style: const TextStyle(fontSize: 24)),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            onMensajeEnviado("¡Hola desde el widget hijo!");
          },
          child: const Text("Enviar mensaje"),
        ),
      ],
    );
  }
}
