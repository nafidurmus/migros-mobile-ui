import 'package:flutter/material.dart';
import 'package:groceries_shoppping/screens/tabs/main_tab.dart';

import 'tabs/migroskop_tab.dart';
import 'tabs/mkolay_tab.dart';
import 'tabs/profile_tab.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  final List<String> titleList = ["MİGROS", "MİGROSKOP", "MİGROSKOP", "PROFİL"];
  String currentTitle;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    currentTitle = titleList[0];
    _tabController.addListener(changeTitle);
  }

  void changeTitle() {
    setState(() {
      currentTitle = titleList[_tabController.index];
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar,
      body: TabBarView(
        controller: _tabController,

        physics: NeverScrollableScrollPhysics(), //kaydırarak geçişi kapatma
        children: [MainTab(), MigroskopTap(), MKolayTab(), ProfiTab()],
      ),
      endDrawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(''),
                      Icon(
                        Icons.exit_to_app,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
              ),
              buildInkWellForDrawer('Money Kimliğim', Icons.credit_card),
              Divider(),
              buildInkWellForDrawer('Barkod Okuyucu', Icons.qr_code),
              Divider(),
              buildInkWellForDrawer('Migros Blockchain', Icons.block),
              Divider(),
              buildInkWellForDrawer('En yakın Migros', Icons.microwave),
              Divider(),
              buildInkWellForDrawer('İletişi', Icons.contact_page),
              Divider(),
              buildInkWellForDrawer('Wifi', Icons.wifi),
              Divider(),
              buildInkWellForDrawer('Migros Tv', Icons.tv),
              Divider(),
              buildInkWellForDrawer(
                  'İYİ gelecek elçileri', Icons.question_answer),
              Divider(),
              ListTile(
                leading: Container(
                  child: Image.network(
                      'https://play-lh.googleusercontent.com/8fnxbueWqwtRAAj2nZW6WTimF1VeLo3S646mU1-pyHgtqAIUi49N4cMSz3SskoUdK_gK'),
                ),
                title: Text(
                  'Migros Sanal Market',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Tıkla Alışverişe Başla',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                isThreeLine: true,
                //dense: true,
              ),
              Expanded(
                child: InkWell(
                  child: Card(
                    color: Colors.orange,
                    child: Row(
                      children: [
                        Text(
                          'Oturumu Kapat',
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: _tabBar,
    );
  }

  InkWell buildInkWellForDrawer(String text, IconData icon) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(icon)
          ],
        ),
      ),
    );
  }

  Widget get _myAppBar => AppBar(
        title: Text(
          currentTitle,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: new IconThemeData(
            color: Colors.white), // drawer butonun rengini değiştirdim
      );

  Widget get _tabBar => TabBar(
        controller: _tabController,
        labelColor: Colors.orange,
        unselectedLabelColor: Colors.black,
        isScrollable: true, // başlıklar ekrana sığıyor

        tabs: [
          Tab(
            icon: Icon(Icons.home),
            text: 'ANASAYFA',
          ),
          Tab(
            icon: Icon(Icons.shopping_bag),
            text: 'MİGROSKOP',
          ),
          Tab(
            icon: Icon(Icons.map),
            text: 'MKOLAY',
          ),
          Tab(
            icon: Icon(Icons.person),
            text: 'PROFİL',
          ),
        ],
      );
}
