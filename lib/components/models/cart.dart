import 'package:ecommerce/components/models/shoe.dart';
import 'package:flutter/widgets.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'James XXII',
      price: '225',
      imagePath: 'lib/images/james.png',
      description: 'The forwar-thinking desing of his latest signature shoe.',
    ),
    Shoe(
      name: 'Jump Man',
      price: '240',
      imagePath: 'lib/images/jump.png',
      description:
          'You ve got the hops and the speed-lace up in shoes that enhance what you bring to the court.',
    ),
    Shoe(
      name: 'Jordan',
      price: '225',
      imagePath: 'lib/images/jordann.png',
      description: 'Bouncy cushioning is paired with soft yet supportive foam for responsiveness and smooth hell-to-toe transitions.',
    ),
    Shoe(
      name: 'KD 17X',
      price: '240',
      imagePath: 'lib/images/kd.png',
      description:
          'With its port system, the KD Trey 5 X can help you float like KD.',
    ),
  ];
  // list of items in user cart
  List<Shoe> userCart = [];
  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
