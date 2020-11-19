import 'package:flutter/material.dart';

class PromotionCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const PromotionCard({Key key, @required this.title, @required this.imageUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            child: Text(
              title,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ),
        Expanded(
          child: Card(
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    print('deneme');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
                Positioned(
                  top: 20.0,
                  left: 20.0,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  left: 30.0,
                  top: 30.0,
                  child: Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Migros',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Sanal',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Markete',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Özel',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 10.0,
                  top: 75.0,
                  child: Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '% 10',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'İNDİRİM',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        CardButtons()
      ],
    );
  }
}

class CardButtons extends StatelessWidget {
  const CardButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[600],
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              color: Colors.white,
              onPressed: () {
                print('hemen katıl butonu');
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.orange,
                    ),
                    Text(
                      'HEMEN KATIL',
                      style: TextStyle(color: Colors.orange),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: null,
                  child: Text(
                    'DETAYLARI GÖSTER',
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 15.0),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.thumb_up_alt,
                          color: Colors.white,
                        ),
                        onPressed: null),
                    IconButton(
                        icon: Icon(
                          Icons.thumb_down_alt,
                          color: Colors.white,
                        ),
                        onPressed: null),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Positioned singleCircle() {
  return Positioned(
    right: 10.0,
    top: 75.0,
    child: Container(
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
        color: Colors.purple,
        shape: BoxShape.circle,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '% 10',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'İNDİRİM',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ),
  );
}
