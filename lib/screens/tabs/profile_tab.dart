import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfiTab extends StatefulWidget {
  const ProfiTab({Key key}) : super(key: key);

  @override
  _ProfiTabState createState() => _ProfiTabState();
}

class _ProfiTabState extends State<ProfiTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.person,
                color: Colors.orange[900],
              ),
            ),
            title: Text(
              'NAFI DURMUS',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Kullanılabilir Moneylerim:\n0,00 MONEY',
              style: TextStyle(
                  color: Colors.orange[900], fontWeight: FontWeight.bold),
            ),
            isThreeLine: true,
            //dense: true,
          ),
          Divider(
            thickness: 2.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              margin: EdgeInsets.all(10.0),
              color: Colors.purple[900],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Toplam Kazancım',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '18.0 TL',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.3,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kazanç Geçmişim için Tıkla',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.arrow_forward, color: Colors.white)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              margin: EdgeInsets.all(10.0),
              color: Colors.orange[700],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Diğer Kazançlarım',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.2,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'BebeMoney, Positive Puan vb için tıkla',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.arrow_forward, color: Colors.white)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                profilePageBuildRow('Sağlık Yaşam Yolculuğum', Icons.headset),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: profilePageBuildRow(
                'Sağlık Yaşam Yolculuğum', Icons.person_add),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: profilePageBuildRow(
                'Sağlık Yaşam Yolculuğum', Icons.shopping_basket),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: profilePageBuildRow(
                'Sağlık Yaşam Yolculuğum', Icons.notification_important),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: profilePageBuildRow(
                'Sağlık Yaşam Yolculuğum', Icons.card_giftcard),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                profilePageBuildRow('Sağlık Yaşam Yolculuğum', Icons.settings),
          ),
          Divider(),
          ListTile(
            title: Text('Cep Telefonu Numarası ile Giriş'),
            subtitle: Text(
                'Money üyeliğini cep telefonu numaran söyleyerek kullanmak istiyorsan bu özlliği açık tutmalısın'),
            isThreeLine: true,
            trailing: Transform.scale(
              scale: 0.8,
              child: Switch(),
            ),
          )
        ],
      ),
    );
  }

  Row profilePageBuildRow(String text, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Icon(icon)
      ],
    );
  }
}

class Switch extends StatefulWidget {
  Switch({Key key}) : super(key: key);

  @override
  _SwitchState createState() => _SwitchState();
}

class _SwitchState extends State<Switch> {
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: _lights,
      onChanged: (bool value) {
        setState(
          () {
            _lights = value;
          },
        );
      },
    );
  }
}
