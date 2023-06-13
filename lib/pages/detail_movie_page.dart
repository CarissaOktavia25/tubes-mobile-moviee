import 'package:flutter/material.dart';
import 'package:moviees_app/theme.dart';

class DetailMovie extends StatelessWidget {
  const DetailMovie({super.key});
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: content(),
      ),
    );
  }

  Widget content() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 0),
      child: Column(
        children: [
          Container(
            height: 280,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/banner_detail.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(20.0),),
              Image.asset(
                'img/rumble_movie.jpeg',
                width: 150,
                height: 240,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 16),
              Text(
                'Rumble',
                style: primaryTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(width: 16),
              
              Text(
                '2022',
                style: primaryTextStyle.copyWith(
                  
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  
                ),
                
              ),
              SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                    ],
                  ),
            ],
        
          ),
          SizedBox(width: 16),
          Padding(padding: EdgeInsets.all(20.0),),
              Text(
                'Sutradara : Hamish Grieve',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
          SizedBox(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 21,
                    vertical: 18,
                  ),
                  
                  child: Text(
                    'Rumble menceritakan tentang monster dan manusia yang hidup secara berdampingan. Para monster bersaing dalam olahraga gulat global populer yang dikenal sebagai gulat monster, dengan setiap kota memiliki pegulat monster sendiri. Setelah Tentacular, sang pegulat yang mirip dengan hiu kecil, menjadi juara dunia baru, dia mengungkapkan tidak ingin lagi mewakili kotanya, Stoker. Warga kota diberi tahu jika mereka tidak mendapatkan pegulat baru, maka mereka akan kehilangan stadion kota beserta pendapatannya. Hal tersebut mendorong penggemar gulat Winnie Coyle mencari perwakilan monster baru untuk kotanya. Kemudian Winnie menuju ke pertandingan bawah tanah dan menemukan Rayburn Jr., putra mendiang jawara dari Stoker, bertarung dengan nama “Steve the Stupendous”.',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}