import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class CounterScreen extends StatelessWidget {
  const CounterScreen({
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Cuenta de Google'),
        backgroundColor: const Color.fromARGB(255, 151, 195, 201),
      ),
      body: const SingleChildScrollView(
        child:  Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Bloque Uno
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  SizedBox(
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                             Text('Tu cuenta está protegida', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                             SizedBox(height: 15,),
                             Text('La Verificación de seguridad verificó tu cuenta y no encontró acciones recomendadas.', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 114, 111, 111)),),
                             SizedBox(height: 30,),
                             Text('Ver detalles', style: TextStyle(color: Color.fromARGB(255, 8, 72, 191),fontSize: 18),),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 0),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 227, 227, 227),
                      radius: 37.5,
                      child: Icon(Icons.verified_user,size: 70, color: Color.fromARGB(255, 10, 110, 13),),
                    ),
                  )
                ],
              ),
              
              
            )
            , Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ), 
           //Bloque dos
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  SizedBox(
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                             Text('Verificación de privacidad', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                             SizedBox(height: 15,),
                             Text('Elige la configuración de privacidad indicada para ti con esta guía paso a paso.', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 114, 111, 111)),),
                             SizedBox(height: 30,),
                             Text('Realizar la Verificación de privacidad', style: TextStyle(color: Color.fromARGB(255, 8, 72, 191), fontSize: 16),),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 0),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 227, 227, 227),
                      radius: 37.5,
                      child: Icon(Icons.shield_moon,size: 77, color: Color.fromARGB(255, 35, 24, 248),),
                    ),
                  )
                ],
              ),
              
              
            )
            , Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            
            //Bloque tres
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                //mainAxisSize: MainAxisSize.min,
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  SizedBox(
                    //width:99999999,
                    child: Column(
                     // mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                             Text('¿Buscas otra información?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                             SizedBox(height: 20,),
                             Row(
                              children: [
                                Icon(Icons.search),
                                SizedBox(width: 15,),
                                Text('Buscar en la Cuenta de Google',style: TextStyle(fontSize: 20),),
                                SizedBox(width: 67,),
                                Icon(Icons.arrow_forward_ios)

                              ],
                             ),
                             SizedBox(height: 25,),
                             Row(
                              children: [
                                Icon(Icons.help_outline),
                                SizedBox(width: 15,),
                                Text('Ver las opciones de ayuda', style: TextStyle(fontSize: 20),),
                                SizedBox(width: 100,),
                                Icon(Icons.arrow_forward_ios)

                              ],
                             ),
                             SizedBox(height: 25,),
                             Row(
                              children: [
                                
                                Icon(Icons.message_outlined),
                                SizedBox(width: 15,),
                                Text('Enviar comentarios', style: TextStyle(fontSize: 20,),),
                                SizedBox(width: 150,),
                                Icon(Icons.arrow_forward_ios)

                              ],
                             )

                            
                      ],
                      
                    ),
                  ),
                 
                ],
              ),
              
              
            )
            , Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            
            //Bloque cuatro
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  SizedBox(
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                            // Text('Tu cuenta está protegida', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                             //SizedBox(height: 15,),
                             Text('Solo tú puedes ver la configuración. Tambien puedes revisar la configuración de Maps, la Búsqueda o cualquier servicio de Google que uses con frecuencia. Google protege la privacidad de tus datos.', style: TextStyle(fontSize: 13, color: Color.fromARGB(255, 114, 111, 111)),),
                             SizedBox(height: 3,),
                             Text('Más información.', style: TextStyle(color: Color.fromARGB(255, 8, 72, 191)),),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 0),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 227, 227, 227),
                      radius: 31,
                      child: Icon(Icons.shield_moon,size: 60, color: Color.fromARGB(255, 21, 37, 180),),
                    ),
                  )
                ],
              ),
              
              
            )
            , Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
          ],
        ),
      )
      ); 
    
  }
}

