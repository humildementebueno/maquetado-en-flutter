import 'package:flutter/material.dart';

class ProfileLista extends StatelessWidget {
  String url1 =
      "https://th.bing.com/th/id/OIP.WPPJfLLKYDD8Fbt6K5h-bQHaEK?pid=ImgDet&rs=1";
  String url2 =
      "https://th.bing.com/th/id/R1a96455ba5672424dc74ec51739e3303?rik=AB8p32Adtf3YDw&riu=http%3a%2f%2fwww.freevector.com%2fsite_media%2fpreview_images%2fFreeVector-Naruto-Character-Vector.jpg&ehk=9DrkH%2f0kkQXjpiG0PxEy82CHKcbF%2bLXWxJ9ZCxqcLk0%3d&risl=&pid=ImgRaw";
  String url3 =
      "https://th.bing.com/th/id/OIP.e5NRbhT5OZv9e6DS907IqgHaGL?pid=ImgDet&rs=1";
  String url4 =
      "https://th.bing.com/th/id/OIP.6EKepy_D3FzoNoRVAnKioAHaEo?pid=ImgDet&w=2560&h=1600&rs=1";
  String url5 =
      "https://th.bing.com/th/id/R4143b07ae6ca689f9110eb9b0c376927?rik=5IGKI3kqejQNAQ&riu=http%3a%2f%2fpm1.narvii.com%2f5820%2f350339ea835d6e3203e00e541eeb90a3fb813c1d_00.jpg&ehk=RGumEjVWY%2f2SZFyVGlu8RAg49EOmVmPCelE3ITZDbzc%3d&risl=&pid=ImgRaw";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 320,
          height: 220, //150
          //color: Colors.yellow,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(10),
            children: [
              Container(
                width: 1000,
                height: 270, //250
                color: Colors.white,
                child: Stack(
                  children: [
                    //  Text("hola 1"),
                    posicion_fondo_imagen(url1, 0.0, 800.0, 0.0, 0.0),
                    posicion_fondo_imagen_circular(
                        url3, 130.0, 800.0, 0.0, 0.0), //785,0(izq,der)
                    posicion_fondo_imagen(url3, 0.0, 600.0, 200.0, 0.0),
                    posicion_fondo_imagen_circular(
                        url1, 130.0, 600.0, 200.0, 0.0), //520,115
                    posicion_fondo_imagen(url4, 0.0, 400.0, 400.0, 0.0),
                    posicion_fondo_imagen_circular(
                        url4, 130.0, 300.0, 300.0, 0.0),
                    posicion_fondo_imagen(url2, 0.0, 200.0, 600.0, 0.0),
                    posicion_fondo_imagen_circular(
                        url3, 130.0, 200.0, 600.0, 0.0),
                    posicion_fondo_imagen(url5, 0.0, 0.0, 800.0, 0.0),
                    posicion_fondo_imagen_circular(
                        url1, 130.0, 0.0, 800.0, 0.0),

                    /*   Positioned(
                      top: 110,
                      right: 625,
                      left: 0,
                      bottom: 20,
                      child: fondo_imagen_circular(url2),
                    ),*/
                  ],
                ),
              ),
              /*    fondo_imagen(url1),
              fondo_imagen(url2),
              fondo_imagen(url3),
              fondo_imagen(url4),
              profile_images(),*/
            ],
          ),
        ),
        // fondo_imagen(url1),
        //fondo_imagen(url2),

        //  profile_images(),
      ],
    );
  }

/*------------------nota---------------caso de posicion fondo imagen() y fondo imagen circular()----------
nota preguntar porque en el stack  agarro posiciones distintas y la prioridad me lo desacomoda?,en este caso me hizo variar la prioridad de quien iba primero
la accion inicial (original) fue poner 1ro fondo luego el circular imagenes ,pero me lo tapaba desde que empece a usar el positioned asi que le cambie de lugar osea prioridad 
poniendo 1ro el circular luego el fondo..talvez el poner el nombre en las funciones me confundio que lo intente cambiar
 afirmacion:en la funcion_fondo()=> la dimension de la imagen se mantendra si el resta de los lados es el mismo :)
 se elimino el fondo blanco no se porque :(
 */
  Positioned posicion_fondo_imagen_circular(
      String url, double arriba, derecha, izquierda, abajo) {
    return Positioned(
      top: arriba, //110
      right: derecha, //625
      left: izquierda, //0
      bottom: abajo, //20
      child: fondo_imagen_circular(url),
    );
  }

  Positioned posicion_fondo_imagen(
      String url, double arriba, derecha, izquierda, abajo) {
    return Positioned(
      top: arriba, //0
      right: derecha, //700
      left: izquierda, //70
      bottom: abajo, //0
      child: Container(
        width: 150,
        height: 150,
        child: fondo_imagen(url),
      ),
    );
  }

  /* Container fondo_imagen(String url) {
    return Container(
      child: Image(
        width: 150,
        height: 130,
        image: NetworkImage(url),
      ),
    );
  }
*/
  Container fondo_imagen_circular(String url) {
    return Container(
      width: 20,
      height: 20,
//      color: Colors.green,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }

  Container fondo_imagen(String url) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        //shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Stack profile_images() {
    return Stack(
      children: [
        Icon(
          Icons.notifications_none_outlined,
          size: 44,
        ),
        Positioned(
          top: 9,
          right: 8,
          child: Container(
            //  alignment: Alignment.bottomCenter,
            width: 9,
            height: 9,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
/*----este esta bien devuelve solo fondo de imagen grande
Container fondo_imagen(String url) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        //shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
*/
