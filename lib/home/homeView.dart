import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Witgets/circleButton.dart';
import 'package:flutter_application_1/explorar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 150,
        leading: Padding(
          padding: const EdgeInsets.all(15),
          child: SvgPicture.asset(
            'assets/logos/bancolombia_s.a._logo.svg',
            width: 550,
            height: 250,
            color: Colors.black,
          ),
        ),
        actions: [
          const CircleButton(
            color: Colors.white, 
            iconData: Icons.notifications_none_outlined, 
            colorIcon: Colors.black,
            showBadge: false,
            ),
          const SizedBox(width: 15,),
          const CircleButton(
            color: Colors.white,
            iconData: CupertinoIcons.question,
            colorIcon: Colors.black,
            showBadge: false,
          ),
          const SizedBox(width: 15,),
          SvgPicture.asset(
            'assets/logos/whatsapp.svg',
            width: 30,
            height: 30,
            color: Colors.black,
          ),
          const SizedBox(width: 15,),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const Text('Bienvenido',style: TextStyle(fontSize: 30),),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                  ElevatedButton(
                  onPressed: (){
                    
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: const Row(
                  mainAxisSize: MainAxisSize.min, // Ajusta el tamaño del botón al contenido
                  children: [
                    Text('Iniciar Sesión', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(width: 5), // Espacio entre el texto y el ícono
                    Icon(Icons.exit_to_app,size: 18,color: Color.fromARGB(255, 179, 176, 169),), // El ícono al lado derecho
                    ],
                  ),
                )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: (){

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.lock_outline,size: 35,),
                    SizedBox(width: 5,),
                    Column(
                      children: [
                        Text('Clave Dinámica',style: TextStyle(fontSize: 12),),
                        Text('123456',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(width: 15,),
                    Icon(Icons.chevron_right,size: 25,)
                  ],
                )
                )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20,left: 10, bottom: 20),
                padding: const EdgeInsets.only(top: 50),
                width: MediaQuery.of(context).size.height * 0.12,
                height: 166,
                color: const Color.fromARGB(245, 219, 98, 179),
                child: const Column(
                children: [
                  Icon(Icons.build_outlined,size: 40,)
                ],
              ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.height * 0.60,
                height: 166,
                color: Colors.black,
                child: const Column(
                children: [
                  Text('¡Preparate!',
                  style: TextStyle(
                    backgroundColor: Colors.black,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                    ),
                  ),
                  Text('El 12 de septiembre, entre la 1:00 a.m. y las 3:00 a.m., tendremos un mantenimiento. ' 
                  'Durante esas dos horas no podrás ver tus cuentas ni transferir desde nuestra app o la Sucursal Virtual Personas.'
                  'Mientras tanto, paga con tus tarjetas físicas o retira en cajeros.',
                  style: TextStyle(backgroundColor: Colors.black,color: Colors.white),),
                  ],
                ),
              )
            ],
          ),
          const Text('Transacciones principales',style: TextStyle(fontSize: 20)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
            children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 100,
                  height: 100,
                  color: Colors.white,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.description_outlined),
                      Text('Ver saldos y\nmovimientos',style: TextStyle(fontSize: 10),),
                    ],
                  )
                ),
                const SizedBox(width: 15,),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 100,
                  height: 100,
                  color: Colors.white,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text('Tranferir dinero',style: TextStyle(fontSize: 10),),
                    ],
                  )
                ),
                const SizedBox(width: 15,),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 100,
                  height: 100,
                  color: Colors.white,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.credit_card),
                      Text('Pagar tarjetas \nde crédito y \ncrédito',style: TextStyle(fontSize: 10),),
                    ],
                  )
                ),
                const SizedBox(width: 15,),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 100,
                  height: 100,
                  color: Colors.white,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.credit_card),
                      Text('Pagar y \nadministrar \nfacturas',style: TextStyle(fontSize: 10),),
                    ],
                  )
                ),
                                const SizedBox(width: 15,),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 100,
                  height: 100,
                  color: Colors.white,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.credit_card),
                      Text('Pagar y \nadministrar \nfacturas',style: TextStyle(fontSize: 10),),
                    ],
                  )
                ),
                                const SizedBox(width: 15,),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 100,
                  height: 100,
                  color: Colors.white,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.credit_card),
                      Text('Pagar y \nadministrar \nfacturas',style: TextStyle(fontSize: 10),),
                    ],
                  )
                ),
                                const SizedBox(width: 15,),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 100,
                  height: 100,
                  color: Colors.white,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.credit_card),
                      Text('Pagar y \nadministrar \nfacturas',style: TextStyle(fontSize: 10),),
                    ],
                  )
                ),
                                const SizedBox(width: 15,),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 100,
                  height: 100,
                  color: Colors.white,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.credit_card),
                      Text('Pagar y \nadministrar \nfacturas',style: TextStyle(fontSize: 10),),
                    ],
                  )
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: const Text('Explora nuestras categorías',style: TextStyle(fontSize: 20)),
          ),
          Container(
            color: Colors.white,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Section(
                title: '', 
                items: [
                SectionItem(
                  imageUrl: 'imagenes/tiro_blanco.png', 
                  label: 'Gestionar día a día',
                  color: Colors.purple[100]
                ),
                SectionItem(
                  imageUrl: 'imagenes/tiro_blanco.png', 
                  label: 'Hogar y servicios',
                  color: Colors.green[100]
                ),
                SectionItem(
                  imageUrl: 'imagenes/tiro_blanco.png', 
                  label: 'Transporte',
                  color: Colors.yellow[100]
                ),                                         
              ]),
              )        
            ],
          ),
          ),
          Container(
            color: Colors.white,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Section(
                title: '', 
                items: [
                SectionItem(
                  imageUrl: 'imagenes/tiro_blanco.png', 
                  label: 'Para ti',
                  color: const Color.fromARGB(255, 255, 210, 210)
                ),
                SectionItem(
                  imageUrl: 'imagenes/tiro_blanco.png', 
                  label: 'Trámites y solicitudes',
                  color: const Color.fromARGB(255, 210, 235, 255)
                ),                                      
              ]),
              )       
            ],
          ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: const Text('Pensando en ti te recomendamos',style: TextStyle(fontSize: 20)),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Text('Primera noticia'),
                      Image.asset(
                        'imagenes/360_news.png',                        
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Text('Segunda noticia'),
                      Image.asset(
                        'imagenes/360_news2.png',                        
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Text('Tercera noticia'),
                      Image.asset(
                        'imagenes/360_news.png',                        
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Text('Cuarta noticia'),
                      Image.asset(
                        'imagenes/360_news2.png',                        
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Text('Quinta noticia'),
                      Image.asset(
                        'imagenes/360_news.png',                        
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.qr_code_rounded),
        backgroundColor: Colors.white,        
      ),
    );
  }

}