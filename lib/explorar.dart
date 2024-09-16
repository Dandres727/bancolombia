import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                      Column(
                        children: [ 
                          SvgPicture.asset(
                        'assets/logos/bancolombia-seeklogo.svg',
                        width: 30,
                        height: 30,
                        color: Colors.black,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Explorar',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),],
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Section(
                    title: 'Gestionar día a día',
                    items: [
                      SectionItem(
                        imageUrl: 'imagenes/dia_a_dia.png',
                        label: 'Día a Día',
                        color: Colors.purple[100],
                      ),
                      SectionItem(
                        imageUrl: 'imagenes/bolsillos.png',
                        label: 'Bolsillos',
                        color: Colors.purple[100],
                      ),
                    ],
                  ),
                  Section(
                    title: 'Hogar y servicios',
                    items: [
                      SectionItem(
                        imageUrl: 'imagenes/recarga_celular.png',
                        label: 'Recargar celular',
                        color: Colors.green[100],
                      ),
                      SectionItem(
                        imageUrl: 'imagenes/tu360_inmobiliario.png',
                        label: 'Tu360 Inmobiliario',
                        color: Colors.green[100],
                      ),
                    ],
                  ),
                  Section(
                    title: 'Transporte',
                    items: [
                      SectionItem(
                        imageUrl: 'imagenes/recargar_transporte.png',
                        label: 'Recargar transporte',
                        color: Colors.yellow[100],
                      ),
                      SectionItem(
                        imageUrl: 'imagenes/muverang.png',
                        label: 'Muverang',
                        color: Colors.yellow[100],
                      ),
                      SectionItem(
                        imageUrl: 'imagenes/tu360_movilidad.png',
                        label: 'Tu360 Movilidad',
                        color: Colors.yellow[100],
                      ),
                      SectionItem(
                        imageUrl: 'imagenes/comprar_flypass.jpg',
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