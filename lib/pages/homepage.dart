import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: SizedBox(
            width: 100,
            child: Image.asset("assets/miaudote.png"),
          ),
        ),
        /* leading: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/user-picture.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ), */
        actions: <Widget>[
          SizedBox(
            width: 60,
            child: TextButton(
              child: const Icon(
                Icons.account_circle,
                color: Color(0xFFBABABA),
              ),
              onPressed: () {
              Navigator.pushNamed(context, '/menu');
            },
            ),
          ),
        ],
      ),
      body: Container(
        color: const Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
            cardItem1(),
            cardItem2(),
            cardItem3(),
            cardItem4(),
          ],
        ),
      ),
    );
  }
}

Widget cardItem1() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "data:image/png;base64,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"),
          ),
          title: Text("Harley Quinn"),
          subtitle: Text("09/05/2019 18:37"),
          trailing: Icon(Icons.more_vert),
        ),
        // Image.asset("assets/post-picture-001.png"),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
          child: Image.asset('assets/dog1.jpg', height: 300, fit: BoxFit.fill),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis ex sem. Praesent elit dui, iaculis at interdum eu, rutrum et mi. "),
        ),
        ButtonBar(
          children: <Widget>[
            TextButton(
              child: const Icon(Icons.favorite),
              onPressed: () {},
            ),
            TextButton(
              child: const Icon(Icons.share),
              onPressed: () {},
            ),
          ],
        ),
      ],
    ),
  );
}

Widget cardItem2() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "data:image/png;base64,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"),
          ),
          title: Text("Bruce Wayne"),
          subtitle: Text("09/05/2019 18:37"),
          trailing: Icon(Icons.more_vert),
        ),
        // Image.asset("assets/post-picture-001.png"),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
          child: Image.asset('assets/cat1.jpg', height: 300, fit: BoxFit.fill),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis ex sem. Praesent elit dui, iaculis at interdum eu, rutrum et mi. "),
        ),
        ButtonBar(
          children: <Widget>[
            TextButton(
              child: const Icon(Icons.favorite),
              onPressed: () {},
            ),
            TextButton(
              child: const Icon(Icons.share),
              onPressed: () {},
            ),
          ],
        ),
      ],
    ),
  );
}

Widget cardItem3() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "data:image/png;base64,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"),
          ),
          title: Text("Pamela Lillian"),
          subtitle: Text("09/05/2019 18:37"),
          trailing: Icon(Icons.more_vert),
        ),
        // Image.asset("assets/post-picture-001.png"),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
          child: Image.asset('assets/dog2.jpg', height: 300, fit: BoxFit.fill),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis ex sem. Praesent elit dui, iaculis at interdum eu, rutrum et mi. "),
        ),
        ButtonBar(
          children: <Widget>[
            TextButton(
              child: const Icon(Icons.favorite),
              onPressed: () {},
            ),
            TextButton(
              child: const Icon(Icons.share),
              onPressed: () {},
            ),
          ],
        ),
      ],
    ),
  );
}

Widget cardItem4() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "data:image/png;base64,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"),
          ),
          title: Text("Harvey Dent"),
          subtitle: Text("09/05/2019 18:37"),
          trailing: Icon(Icons.more_vert),
        ),
        // Image.asset("assets/post-picture-001.png"),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
          child: Image.asset('assets/cat2.jpg', height: 300, fit: BoxFit.fill),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis ex sem. Praesent elit dui, iaculis at interdum eu, rutrum et mi. "),
        ),
        ButtonBar(
          children: <Widget>[
            TextButton(
              child: const Icon(Icons.favorite),
              onPressed: () {},
            ),
            TextButton(
              child: const Icon(Icons.share),
              onPressed: () {},
            ),
          ],
        ),
      ],
    ),
  );
}
