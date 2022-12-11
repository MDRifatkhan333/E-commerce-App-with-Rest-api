import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SingleProductPage extends StatefulWidget {
  const SingleProductPage({super.key});

  @override
  State<SingleProductPage> createState() => _SingleProductPageState();
}

class _SingleProductPageState extends State<SingleProductPage> {
  double _counter = 0.0;

  void _incrementCounter() {
    setState(() {
      _counter++;

      print(_counter);
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      print(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 225, 225),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 130,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Coconut",
                        style: TextStyle(
                            fontSize: 35,
                            color: Color.fromARGB(255, 70, 64, 64)),
                      ),
                      Text(
                        "Chips",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Dang",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Spacer(),
                  OutlinedButton.icon(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 25,
                      ),
                      onPressed: () {},
                      label: const Text(''),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)))),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            //color: Colors.black,
            height: 300,
            child: Image.asset(
              "images/coconut_chips.png",
              fit: BoxFit.cover,
              // height: 300,
            ),
          ),
          Container(
            //height: 180,
            //color: Colors.blue,
            child: Row(
              children: [
                // SizedBox(
                //   width: 10,
                // ),

                // ClipPath(
                //   clipper: button(),
                //   child: Container(
                //     height: 60,
                //     width: 70,
                //     decoration: const BoxDecoration(
                //       color: Color.fromARGB(255, 241, 223, 53),
                //       borderRadius: BorderRadius.all(Radius.circular(20)),
                //     ),
                //     child: const Icon(
                //       Icons.add,
                //       color: Colors.red,
                //       size: 25,
                //     ),
                //   ),
                // ),

                IconButton(
                    onPressed: _incrementCounter,
                    icon: const Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 30,
                    )),

                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '$_counter',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 90,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 241, 223, 53),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(
                          child: Text(
                            (_counter * 5).toStringAsFixed(2),
                            // "\$" + " $_counter",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: _decrementCounter,
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.black,
                      size: 30,
                    )),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 50),
              height: 75,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Add to Cart",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    height: 60,
                    width: 70,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 241, 223, 53),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Icon(
                      Icons.card_travel,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class button extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.8733875, size.height * 0.5026800);
    path0.quadraticBezierTo(size.width * 0.7936625, size.height * 0.0746400,
        size.width * 0.4997750, size.height * 0.1090600);
    path0.cubicTo(
        size.width * 0.4994625,
        size.height * 0.1570600,
        size.width * 0.4981000,
        size.height * 0.8400800,
        size.width * 0.4985625,
        size.height * 0.8893200);
    path0.quadraticBezierTo(size.width * 0.8038250, size.height * 0.8408000,
        size.width * 0.8733875, size.height * 0.5026800);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
