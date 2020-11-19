import 'package:flutter/material.dart';

class MKolayTab extends StatelessWidget {
  const MKolayTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY2UXSG3SUmeEuzDVaInHU6DSiHvmho0EY5g&usqp=CAU"),
              fit: BoxFit.cover)),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Text(
            'Mkolay\'a Hoşgeldin !',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Container(
            width: MediaQuery.of(context).size.width - 70,
            child: Text.rich(
              TextSpan(
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                  text:
                      'Mkolay\'ı kullanmak için bulunduğun mağazayı belirlemeliyiz. Lütfen ',
                  children: [
                    TextSpan(
                        text: 'konum tercihlerinden ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'birini seç')
                  ]),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          SizedBox(
            width: MediaQuery.of(context).size.width - 250,
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'KONUM SERVİSLERİ',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.orange[800],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 250,
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'QR KOD',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.orange[800],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.question_answer,
                        color: Colors.orange[800],
                      ),
                      Text(
                        'Mkolay',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Nedir ?'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.shop_two,
                        color: Colors.orange[800],
                      ),
                      Text(
                        'Mağaza',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Listesi'),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
