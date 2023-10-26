class CartItems {
  static List<Map<String, dynamic>> cartItems = [
    {
      'itemName': 'Rolax',
      'itemCategory': 'Watch',
      'itemPrice': 1200,
      'itemPic': [
        'assets/images/rc4.png',
        'assets/images/rc4.png',
        'assets/images/rc4.png',
      ],
      'isRecommended': true,
      'cartItemCount': 1
    },
    {
      'itemName': 'New Jogger',
      'itemCategory': 'Shoes',
      'itemPrice': 1350,
      'itemPic': [
        'assets/images/rc4.png',
        'assets/images/rc4.png',
        'assets/images/rc4.png',
      ],
      'isRecommended': true,
      'cartItemCount': 1
    },
  ];

  static String cartLength = cartItems.length.toString();
}
