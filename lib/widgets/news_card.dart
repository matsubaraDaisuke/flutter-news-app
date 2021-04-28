import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  NewsCard(
      {Key key,
      this.title = 'no title',
      this.imageUrl,
      this.author = "no author"})
      : super(key: key);

  final String title;
  final String imageUrl;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Divider(color: Colors.black),
        Row(
          children: <Widget>[
            SizedBox(width: 10),
            Container(
                color: Colors.white,
                height: 80,
                width: 80,
                child: FadeInImage(
                  fit: BoxFit.fill,
                  placeholder: AssetImage("lib/assets/loading.gif"),
                  image: this.imageUrl == null
                      ? AssetImage("lib/assets/no_image.png")
                      : NetworkImage(this.imageUrl),
                )),
            SizedBox(width: 10),
            new Flexible(
              child: new DefaultTextStyle(
                style: new TextStyle(color: Colors.black),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        this.title,
                      ),
                      SizedBox(height: 10),
                      Text(
                        this.author,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
        Divider(color: Colors.black)
      ],
    );
  }
}

// class NewsCard extends StatefulWidget {
//   @override
//   _newsItemState createState() => _newsItemState();
// }

// class _newsItemState extends State<NewsCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // Divider(color: Colors.black),
//         Row(
//           children: <Widget>[
//             SizedBox(width: 10),
//             Container(
//               color: Colors.blue,
//               height: 80,
//               width: 80,
//               child: Image.network(
//                 "https://picsum.photos/id/10/200/200",
//                 fit: BoxFit.fill,
//               ),
//             ),
//             SizedBox(width: 10),
//             new Flexible(
//               child: new DefaultTextStyle(
//                 style: new TextStyle(color: Colors.black),
//                 overflow: TextOverflow.ellipsis,
//                 maxLines: 3,
//                 child: Container(
//                   width: double.infinity,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'first rowefaj i ;a ief;a ;fje; d daj f;eaf ;ajf;a uha f ea  eafwae fwaef feawf fewaf hu  a l hdaa fafea fawefa auh al hu alaafea. faeaa. fafafewa , afaefa  ',
//                       ),
//                       SizedBox(height: 10),
//                       Text(
//                         'user name',
//                         style: TextStyle(color: Colors.grey),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(width: 10),
//           ],
//         ),
//         Divider(color: Colors.black)
//       ],
//     );
//   }
// }
