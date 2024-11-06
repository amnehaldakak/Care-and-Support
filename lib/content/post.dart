import 'package:flutter/material.dart';
import 'package:supcar/constent/color.dart';

class Post1 extends StatelessWidget {
  final String postDoc;

  const Post1({super.key, required this.postDoc});

  @override
  Widget build(BuildContext context) {
    buildPostHeader() {
      return Container(
        alignment: Alignment.topRight,
        child: ListTile(
            trailing: CircleAvatar(
              backgroundImage: AssetImage('image/PI.jpeg'),
              backgroundColor: Colors.grey,
            ),
            title: GestureDetector(
              onTap: () {},
              child: Text(
                'username',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'date of post',
                  textAlign: TextAlign.right,
                ),
                Container(padding: EdgeInsets.all(5)),
                Icon(
                  Icons.watch_later_outlined,
                  size: 15,
                ),
              ],
            )),
      );
    }

    buildPostImage() {
      return GestureDetector(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
              'https://th.bing.com/th?id=OIP.TQSxaEcMizUChr5Gz1dbYgHaFj&w=288&h=216&c=8&rs=1&qlt=90&o=6&dpr=1.4&pid=3.1&rm=2',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            )
          ],
        ),
      );
    }

    buildPostFooter() {
      return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            postDoc,
            textAlign: TextAlign.justify,
          ),
        )
      ]);
    }

    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
          color: blue1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildPostHeader(),
              buildPostFooter(),
              buildPostImage(),
            ],
          ),
        ));
  }
}
