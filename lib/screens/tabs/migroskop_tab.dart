import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groceries_shoppping/constants/constant.dart';
import 'package:groceries_shoppping/constants/promotion_card.dart';

class MigroskopTap extends StatefulWidget {
  const MigroskopTap({Key key}) : super(key: key);

  @override
  _MigroskopTapState createState() => _MigroskopTapState();
}

class _MigroskopTapState extends State<MigroskopTap> {
  int _currentIndex = 0;
  int _currentIndex2 = 0;
  int _currentIndex3 = 0;
  List cardList = [
    PromotionCard(
      title: '19 Tllik yumurta alımına 1Money hediye!',
      imageUrl:
          'https://www.kibrispostasi.com/imagecache/newsimage/news/t/th/thumbs_b_c_8dbed2a8bcc6a97c49aba3d983837997_971x551_1605524478.jpg',
    ),
    PromotionCard(
      title: '16 Tllik unlu mamül veya ekmek alımına 1Money hediye!',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/8/80/Turkish_bread.jpg',
    ),
    PromotionCard(
      title: '68 tllilk tavuk alımına %10 indirim',
      imageUrl: 'https://i.ytimg.com/vi/Sdm6jBUOHrI/maxresdefault.jpg',
    ),
    PromotionCard(
      title: 'Tadım ÇİĞ KARIŞIK KURUYEMİŞ NATUREL 180 gr alımına %10 indirim',
      imageUrl:
          'https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/08089652/08089652-a200ec.jpg',
    ),
  ];

  List cardList2 = [
    InkWell(
      onTap: () {
        print('katalog resmi tıklama');
      },
      child: Image.network(
        'https://kampanyabul.org/wp-content/uploads/2020/09/migroskop-3-eylul-5.jpg',
        fit: BoxFit.cover,
      ),
    ),
    InkWell(
      onTap: () {
        print('katalog resmi tıklama 2');
      },
      child: Image.network(
        'https://kampanyabul.org/wp-content/uploads/2020/09/migroskop-3-eylul-5.jpg',
        fit: BoxFit.cover,
      ),
    ),
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardTitle(title: 'Kataloglar'),
                CarouselSlider(
                  options: CarouselOptions(
                    //disableCenter: true,
                    //height: MediaQuery.of(context).size.height - 150,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex2 = index;
                      });
                    },
                  ),
                  items: cardList2.map((card) {
                    return Builder(builder: (BuildContext context) {
                      return Container(
                        child: Card(
                          color: Colors.white,
                          child: card,
                        ),
                      );
                    });
                  }).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(
                    cardList2,
                    (index, url) {
                      return Container(
                        width: 10.0,
                        height: 10.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex2 == index
                              ? Colors.orange[700]
                              : Colors.orange[100],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardTitle(title: 'Kataloglar'),
              CarouselSlider(
                options: CarouselOptions(
                  //disableCenter: true,
                  //height: MediaQuery.of(context).size.height - 150,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: cardList2.map((card) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                      child: Card(
                        color: Colors.white,
                        child: card,
                      ),
                    );
                  });
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(
                  cardList2,
                  (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index
                            ? Colors.orange[700]
                            : Colors.orange[100],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //PurplePromotion(), // uygulama ilk açıldığında çıkan bildirim

              CardTitle(title: 'Money Kampanyaları'),
              CarouselSlider(
                options: CarouselOptions(
                  //disableCenter: true,
                  height: MediaQuery.of(context).size.height - 200,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex3 = index;
                    });
                  },
                ),
                items: cardList.map((card) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                      child: Card(
                        color: Colors.white,
                        child: card,
                      ),
                    );
                  });
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(cardList, (index, url) {
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex3 == index
                          ? Colors.orange[700]
                          : Colors.orange[100],
                    ),
                  );
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
