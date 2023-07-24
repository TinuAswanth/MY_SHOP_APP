import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String? img;
  final String? title;
  final String? price;
  final BuildContext? context;

  const DetailsPage({
    super.key,
    this.img,
    this.title,
    this.price,
    this.context,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/candle$img.jpg",
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          IconButton(
            padding: const EdgeInsets.only(left: 20, top: 40),
            icon: const Icon(
              Icons.close,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.3,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("ILLUM"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "$title",
                                style: const TextStyle(
                                  fontSize: 28,
                                ),
                              ),
                              Text(
                                "\$$price",
                                style: const TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("SIZE"),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "16 OZ",
                                    style: TextStyle(fontSize: 22),
                                  )
                                ],
                              )),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("QTY"),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(fontSize: 22),
                                  )
                                ],
                              ))
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Divider(
                            thickness: 1.5,
                          ),
                          ListTile(
                            leading: const Text(
                              "Details",
                              style: TextStyle(fontSize: 18),
                            ),
                            trailing: IconButton(
                              icon: const Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          const Divider(
                            thickness: 1.5,
                          ),
                          ListTile(
                            leading: const Text(
                              "Shipping & Returns",
                              style: TextStyle(fontSize: 18),
                            ),
                            trailing: IconButton(
                              icon: const Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          const Divider(
                            thickness: 1.5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              shape: BoxShape.circle),
                          child: const Icon(Icons.favorite_border),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_bag_outlined,
                              color: Colors.white),
                          label: const Text("Add to Basket",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  letterSpacing: 1)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink[100],
                            shape: const StadiumBorder(),
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 6,
                                vertical: 10),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
