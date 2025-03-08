import 'package:flutter/material.dart';
//import 'package:redit_clone/src/api/productos.dart';

class DetalleProductoPage extends StatelessWidget {
  const DetalleProductoPage({
    super.key,
    required this.id,
    this.extras,
  });
  final String id;
  final Map? extras;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle del producto $id'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Image.network(
                    extras?["image"],
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.network(
                          extras?["image"],
                          height: 80,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Center(
                        child: Image.network(
                          extras?["image"],
                          height: 80,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Container(
                              child: Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 15,
                          )),
                          Container(
                            child: Text(
                              "${extras?["rating"]["rate"]}",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text("    "),
                            Container(
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "${extras?["rating"]["count"]} reviews",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(
                                            255, 18, 17, 17)),
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          ' ${extras?['title']}',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.circle),
                        color: Colors.black,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.circle),
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Text('${extras?['description']}'),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "USD${extras?["price"]}",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text("  "),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 22, 21, 21),
                              shape: RoundedRectangleBorder()),
                          onPressed: () {},
                          child: Text(
                            "  Add to cart ",
                            style: TextStyle(
                                color: const Color.fromARGB(221, 248, 242, 242),
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
