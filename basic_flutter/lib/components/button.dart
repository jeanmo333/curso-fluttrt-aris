import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        ElevatedButton(
          onPressed: () {
            print("Pulsado!");
          },
          onLongPress: () {
            print("Pulsadooooooooo!");
          },
          style:
              ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.red)),
          child: Text("Soy un botón :)"),
        ),
        OutlinedButton(onPressed: null, child: Text("Outlined")),
        TextButton(onPressed: null, child: Text("TextButton")),
        FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
        Spacer()
      ],
    );
  }
}
