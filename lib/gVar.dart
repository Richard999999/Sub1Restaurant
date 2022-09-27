class DetailCar {
  String name;
  String jadualSewa;
  String waktu;
  String spesifikasi;
  String startPrice;
  List imageAsset;
  String imageUrls;
  String merk;

  DetailCar(
      {required this.name,
      required this.jadualSewa,
      required this.waktu,
      required this.spesifikasi,
      required this.startPrice,
      required this.imageAsset,
      required this.imageUrls,
      required this.merk});
}

var detailCar = [
  DetailCar(
    name: 'Bmw Series 330i Sport',
    jadualSewa: 'Hari',
    merk: 'BMW',
    waktu: 'Batas Waktu',
    spesifikasi:
        'Dengan Keunggulannya dalam kecepatan, walau ga selalu unggul tapi tetap menjadi primadona anak muda dalam generasi apapun',
    startPrice: 'Rp 1,2 Juta',
    imageAsset: [
      'images/bmw9.jpg',
      'images/bmw.jpg',
      'images/bmw7.jpg',
      'images/bmw6.jpg',
      'images/bmw8.jpg',
      'images/bmw5.jpg',
      'images/bmw4.jpg',
      'images/bmw2.jpg',
      'images/bmw3.jpg',
      'images/bmw1.jpg'
    ],
    imageUrls:
        'https://scontent-sin6-2.xx.fbcdn.net/v/t39.30808-6/285185263_323898239928144_2429950046567385418_n.jpg?stp=dst-jpg_p180x540&_nc_cat=108&ccb=1-7&_nc_sid=843cd7&_nc_ohc=YyFL0r5XssUAX-ibysM&_nc_ht=scontent-sin6-2.xx&oh=00_AT8pPTMi1X5lI-4UDNV4urZVlBZtYs-zL-Yaj5X8yDIpog&oe=6324053E',
  ),
  DetailCar(
      name: 'C 250',
      jadualSewa: 'Hari',
      merk: 'Mercedes-Benz',
      waktu: 'Batas Waktu',
      spesifikasi:
          'Agar terlihat lebih elegant, dan menarik perhatian sekitar dengan Mercedes-Benz C250, rasakan kenyamanan berkendara',
      startPrice: 'Rp 1,5 Juta',
      imageAsset: [
        'images/mercy.jpg',
        'images/mercy1.jpg',
        'images/mercy3.jpg',
        'images/mercy4.jpg',
        'images/mercy2.jpg',
        'images/mercy5.jpg',
        'images/mercy6.jpg',
      ],
      imageUrls:
          'https://scontent.fcgk9-2.fna.fbcdn.net/v/t45.5328-4/300515999_5365171760242210_2458738481522259159_n.jpg?stp=dst-jpg_p720x720&_nc_cat=101&ccb=1-7&_nc_sid=c48759&_nc_eui2=AeHKlOnimxH-qhOdNCpd-uBkPcACeQxxEIk9wAJ5DHEQiUZ0PXBX4eQHK6JNT5aIMIfpK_u-vMQjHsFIm8T0DSGC&_nc_ohc=Wa-9iYFHLY8AX9d1q8e&_nc_ht=scontent.fcgk9-2.fna&oh=00_AT8ZEf8s-anYrYG5kF7d2VS_Aax51wuR9bXAQ7F9JY0KgQ&oe=63277C46'),
  DetailCar(
    name: 'Alpart',
    jadualSewa: 'Hari',
    merk: 'Toyota',
    waktu: 'Batas Waktu',
    spesifikasi:
        'Tampil Dengan Sebuah fitur yang nyaman jika di perjalanan jauh, rasakan sensasinya hingga kalian lupa jika sudah sampai tujuan',
    startPrice: 'Rp 1,2 Jt',
    imageAsset: [
      'images/alpart1.jpg',
      'images/alpart.jpg',
      'images/alpart2.jpg',
      'images/alpart3.jpg',
      'images/alpart4.jpg',
    ],
    imageUrls:
        'https://scontent.fcgk8-1.fna.fbcdn.net/v/t45.5328-4/278047201_5049980841747846_450886923446072078_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=c48759&_nc_eui2=AeFSbgBN3A2pbEfyhXw_S5xjE2yNPxvXp4gTbI0_G9eniPSqTCmy3Z5rzzSRzFggG6E4Z8G7-USq8Z05uyWrJbug&_nc_ohc=PbB085mlQRYAX_ixTfb&_nc_ht=scontent.fcgk8-1.fna&oh=00_AT8-30DvtNfpxKdusr0WG16QYZDtDvg5sz7z4F_xK8dTMw&oe=6325EA58',
  ),
  DetailCar(
    name: 'Palisade',
    jadualSewa: 'Hari',
    merk: 'Hyundai',
    waktu: 'Batas Waktu',
    spesifikasi:
        'Tampil lebih gagah untuk yang berani beda, Hyundai Palisade Kini hadir dengan warna Black',
    startPrice: 'Rp 1,8 Juta',
    imageAsset: [
      'images/h.jpg',
      'images/h1.jpg',
      'images/h2.jpg',
      'images/h3.jpg',
      'images/h4.jpg',
      'images/h5.jpg',
    ],
    imageUrls:
        'https://scontent-sin6-4.xx.fbcdn.net/v/t45.5328-4/266338366_7230760066997735_3987646237042214128_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=c48759&_nc_ohc=nFpbjKNPd28AX-6QSIM&_nc_ht=scontent-sin6-4.xx&oh=00_AT_dgLnVLLfSdfQBZEe_mIjxHoQ7HrVp37KzG0GHCFpKfw&oe=6327480F',
  ),
  DetailCar(
    name: 'Continental GT',
    jadualSewa: 'Hari',
    merk: 'Bentley',
    waktu: 'Batas Waktu',
    spesifikasi:
        'Terlihat menawan dengan design yang cantik dari Bently Continental GT, dan rasakan level Kenyamanan yang berbeda dalam berkendara',
    startPrice: 'Rp 5 Juta',
    imageAsset: [
      'images/ben.jpg',
      'images/ben1.jpg',
      'images/ben2.jpg',
      'images/ben3.jpg',
      'images/ben4.jpg',
      'images/ben5.jpg',
      'images/ben6.jpg',
      'images/ben7.jpg',
    ],
    imageUrls:
        'https://scontent-sin6-4.xx.fbcdn.net/v/t39.30808-6/305038430_3207656962828887_3270832187598317787_n.jpg?stp=dst-jpg_p960x960&_nc_cat=103&ccb=1-7&_nc_sid=843cd7&_nc_ohc=v0-dRHusnvwAX94STJW&_nc_ht=scontent-sin6-4.xx&oh=00_AT_D2omssCpDa_CvgmV10RDtbVAGdj_MIFSjWEn4TVztGw&oe=632604E6',
  ),
  DetailCar(
    name: 'Civic',
    jadualSewa: 'Hari',
    merk: 'Honda',
    waktu: 'Batas Waktu',
    spesifikasi:
        'Dari dulu hingga kini, siapa pun pasti tau tentang Honda Civic',
    startPrice: 'Rp 1,4 Juta',
    imageAsset: [
      'images/civ.jpg',
      'images/civ1.jpg',
      'images/civ2.jpg',
      'images/civ3.jpg',
      'images/civ4.jpg',
      'images/civ5.jpg',
      'images/civ6.jpg',
    ],
    imageUrls:
        'https://scontent-sin6-3.xx.fbcdn.net/v/t45.5328-4/302126208_5494692713950499_9089689894629212484_n.jpg?stp=dst-jpg_p720x720&_nc_cat=104&ccb=1-7&_nc_sid=c48759&_nc_ohc=Rylrao1z5vMAX8yvbRF&_nc_ht=scontent-sin6-3.xx&oh=00_AT_N-yWBfnF-Kx-l15UGTT6FXXKY_B8GKlkPxtSWUacsUQ&oe=6326AD01',
  ),
  DetailCar(
    name: 'Wrangler',
    jadualSewa: 'Hari',
    merk: 'Jeep',
    waktu: 'Batas Waktu',
    spesifikasi:
        'Tampil lebih maskulin untuk sebuah kendaraan yang sangat nyaman di suspensi ini',
    startPrice: 'Rp 3 Juta',
    imageAsset: [
      'images/jip.jpg',
      'images/jip1.jpg',
      'images/jip2.jpg',
      'images/jip3.jpg',
      'images/jip4.jpg',
      'images/jip5.jpg',
      'images/jip6.jpg',
      'images/jip7.jpg',
      'images/jip8.jpg',
      'images/jip9.jpg',
      'images/jip10.jpg'
    ],
    imageUrls:
        'https://scontent-sin6-3.xx.fbcdn.net/v/t39.30808-6/305979120_478814090778893_4824338476787650503_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=843cd7&_nc_ohc=0BHVvXFV8rYAX8hUIUR&tn=PSj6h6lwTawOe2hi&_nc_ht=scontent-sin6-3.xx&oh=00_AT_mMOLAWNw7jTk91j5ggpFUzyCFS2DYAp2L9QE_ZuaMMQ&oe=6326B040',
  ),
];
