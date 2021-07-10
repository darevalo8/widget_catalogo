import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://depor.com/resizer/_CcozFdYlDZICtg8RjRKxRQYPao=/1200x900/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/TKVN4FQRUZCLXNVG4CM2KET6W4.jpg"),
              
            ),
          ),
          GestureDetector(
            onLongPress: (){
              print('Boton orpimido');
            },
            child: Container(
              padding: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('DA'),
                backgroundColor: Colors.redAccent,
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: FadeInImage(
          image: NetworkImage("https://www.geekmi.news/__export/1616117518299/sites/debate/img/2021/03/18/inosukeflex_crop1616117430877.jpeg_1460082578.jpeg"),
          placeholder: AssetImage('assets/loading.gif'),
        )
      ),
    );
  }
}