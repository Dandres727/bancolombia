import 'package:flutter/material.dart';

class Explorar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(),
       body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/explorar.png',
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Explorar',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Section(
                    title: 'Gestionar día a día',
                    items: [
                      SectionItem(
                        imageUrl: 'assets/images/dia_a_dia.png',
                        label: 'Día a Día',
                        color: Colors.purple[100],
                      ),
                      SectionItem(
                        imageUrl: 'assets/images/bolsillos.png',
                        label: 'Bolsillos',
                        color: Colors.purple[100],
                      ),
                    ],
                  ),
                  Section(
                    title: 'Hogar y servicios',
                    items: [
                      SectionItem(
                        imageUrl: 'assets/images/recargar_celular.png',
                        label: 'Recargar celular',
                        color: Colors.green[100],
                      ),
                      SectionItem(
                        imageUrl: 'assets/images/tu360_inmobiliario.png',
                        label: 'Tu360 Inmobiliario',
                        color: Colors.green[100],
                      ),
                    ],
                  ),
                  Section(
                    title: 'Transporte',
                    items: [
                      SectionItem(
                        imageUrl: 'assets/images/recargar_transporte.png',
                        label: 'Recargar transporte',
                        color: Colors.yellow[100],
                      ),
                      SectionItem(
                        imageUrl: 'assets/images/muverang.png',
                        label: 'Muverang',
                        color: Colors.yellow[100],
                      ),
                      SectionItem(
                        imageUrl: 'assets/images/tu360_movilidad.png',
                        label: 'Tu360 Movilidad',
                        color: Colors.yellow[100],
                      ),
                      SectionItem(
                        imageUrl: 'assets/images/comprar_flypass.png',
                        label: 'Comprar Flypass',
                        color: Colors.yellow[100],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Transacciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy),
            label: 'Trámites y solicitudes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ajustes',
          ),
        ],
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final List<SectionItem> items;

  Section({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Wrap(
          alignment: WrapAlignment.start,
          spacing: 20,
          runSpacing: 20,
          children: items,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class SectionItem extends StatelessWidget {
  final String imageUrl;
  final String label;
  final Color? color;

  SectionItem({required this.imageUrl, required this.label, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100, // Adjust the width as needed
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: Image.asset(imageUrl, width: 30, height: 30),
          ),
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}