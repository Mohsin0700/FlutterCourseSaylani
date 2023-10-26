class AllItems {
  static List allItems = [
    {
      'itemName': 'Rolex',
      'itemCategory': 'Watch',
      'itemPrice': 1200,
      'itemPic': [
        'assets/images/offer1.png',
        'assets/images/offer2.png',
        'assets/images/rc1.png'
      ],
      'isRecommended': true,
      'cartItemCount': 1
    },
    {
      'itemName': 'Daytona',
      'itemCategory': 'Watch',
      'itemPrice': 1200,
      'itemPic': [
        'assets/images/watch1.png',
        'assets/images/rc2.png',
        'assets/images/rc3.png',
      ],
      'isRecommended': true,
      'cartItemCount': 1
    },
    {
      'itemName': 'Datejust',
      'itemCategory': 'Watch',
      'itemPrice': 1200,
      'itemPic': [
        'assets/images/watch1.png',
        'assets/images/watch2.png',
        'assets/images/watch3.png',
      ],
      'isRecommended': true,
      'cartItemCount': 1
    },
    {
      'itemName': 'Stylish',
      'itemCategory': 'Watch',
      'itemPrice': 1200,
      'itemPic': [
        'assets/images/watch3.png',
        'assets/images/watch4.png',
        'assets/images/watch1.png',
      ],
      'isRecommended': true,
      'cartItemCount': 1
    },
    {
      'itemName': 'out-one',
      'itemCategory': 'Watch',
      'itemPrice': 1200,
      'itemPic': [
        'assets/images/watch4.png',
        'assets/images/watch3.png',
        'assets/images/watch2.png',
      ],
      'isRecommended': true,
      'cartItemCount': 1
    },
    {
      'itemName': 'New Jogger',
      'itemCategory': 'Shoes',
      'itemPrice': 5000,
      'itemPic': [
        'assets/images/offer2.png',
        'assets/images/offer1.png',
        'assets/images/rc2.png',
      ],
      'isRecommended': true,
      'cartItemCount': 1
    },
    {
      'itemName': 'Multi Check',
      'itemCategory': 'Shirts',
      'itemPrice': 1350,
      'itemPic': [
        'assets/images/rc1.png',
        'assets/images/rc2.png',
        'assets/images/offer2.png',
      ],
      'isRecommended': false,
      'cartItemCount': 1
    },
    {
      'itemName': 'Jeans',
      'itemCategory': 'Pents',
      'itemPrice': 2000,
      'itemPic': [
        'assets/images/rc2.png',
        'assets/images/rc2.png',
        'assets/images/rc2.png',
      ],
      'isRecommended': false,
      'cartItemCount': 1
    },
    {
      'itemName': 'Red Aqua',
      'itemCategory': 'Perfume',
      'itemPrice': 7500,
      'itemPic': [
        'assets/images/rc3.png',
        'assets/images/rc3.png',
        'assets/images/rc3.png',
      ],
      'isRecommended': true,
      'cartItemCount': 1
    },
    {
      'itemName': 'Small Bag',
      'itemCategory': 'Handbag',
      'itemPrice': 1800,
      'itemPic': [
        'assets/images/rc4.png',
        'assets/images/rc4.png',
        'assets/images/rc4.png',
      ],
      'isRecommended': true,
      'cartItemCount': 1
    },
  ];
  static const List<Map<String, dynamic>> recommendedItems = [];

  filterRecommendedItems() {
    for (var element in allItems) {
      if (element['isRecommended'] == true) {
        recommendedItems.add(element);
      }
    }
  }

  static const List<Map<String, dynamic>> allOffers = [
    {
      'img': 'assets/images/offer1.png',
      'title': 'Item-1',
      'text1': 'Get',
      'text2': '50% OFF',
      'text3': 'On first 03 order'
    },
    {
      'img': 'assets/images/offer2.png',
      'isRecommended': false,
      'title': 'Item-2',
      'text1': 'Get',
      'text2': 'GET 1 FREE',
      'text3': 'On first 5 order'
    }
  ];

  static List<Map<String, dynamic>> CategoryItems = [
    {
      'itemName': 'Rolax',
      'itemCategory': 'Watch',
      'itemPic': [
        'assets/images/rc2.png',
        'assets/images/rc4.png',
        'assets/images/rc3.png',
      ],
    },
    {
      'itemName': 'New Jogger',
      'itemCategory': 'Shoes',
      'itemPic': [
        'assets/images/rc1.png',
        'assets/images/rc3.png',
        'assets/images/rc4.png',
      ],
    },
    {
      'itemName': 'Multi Check',
      'itemCategory': 'Shirts',
      'itemPic': [
        'assets/images/rc3.png',
        'assets/images/rc4.png',
        'assets/images/rc4.png',
      ],
    },
    {
      'itemName': 'Jeans',
      'itemCategory': 'Pents',
      'itemPic': [
        'assets/images/rc4.png',
        'assets/images/rc4.png',
        'assets/images/rc4.png',
      ],
    },
    {
      'itemName': 'Red Aqua',
      'itemCategory': 'Perfume',
      'itemPic': [
        'assets/images/rc4.png',
        'assets/images/rc4.png',
        'assets/images/rc4.png',
      ],
    },
    {
      'itemName': 'Small Bag',
      'itemCategory': 'Handbag',
      'itemPic': [
        'assets/images/rc4.png',
        'assets/images/rc4.png',
        'assets/images/rc4.png',
      ],
    },
    {
      'itemName': 'Rolax',
      'itemCategory': 'Watch',
      'itemPic': [
        'assets/images/rc4.png',
        'assets/images/rc4.png',
        'assets/images/rc4.png',
      ],
    },
    {
      'itemName': 'New Jogger',
      'itemCategory': 'Shoes',
      'itemPic': [
        'assets/images/rc4.png',
        'assets/images/rc4.png',
        'assets/images/rc4.png',
      ],
    },
    {
      'itemName': 'Jeans',
      'itemCategory': 'Pents',
      'itemPic': [
        'assets/images/rc4.png',
        'assets/images/rc4.png',
        'assets/images/rc4.png',
      ],
    },
    {
      'itemName': 'Red Aqua',
      'itemCategory': 'Perfume',
      'itemPic': [
        'assets/images/rc4.png',
        'assets/images/rc4.png',
        'assets/images/rc4.png',
      ],
    },
  ];
}
