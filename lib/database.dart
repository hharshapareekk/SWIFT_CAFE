class coffeeItems{
  final String name;
  final String categories;
  final double rating;
  final int numOfOrders;
  final String description;
  final String image;
 coffeeItems({
  required this.name,
  required this.categories,
  required this.rating,
  required this.numOfOrders,
  required this.description,
  required this.image,
 });
}
class Database{
  static Map<String,coffeeItems> CoffeeItems ={
    "Espresso" : coffeeItems(name: 'Espresso', categories: 'Espresso, Steamed Milk', rating: 4.9, numOfOrders: 458, description: 'A concentrated coffee beverage made by forcing hot water through finely-ground coffee beans. It has a strong and intense flavor, often served in small shots. It serves as the base for many other coffee drinks.', image: 'assets/images/Coffee1.png'),
    "Hot Cappucino" : coffeeItems(name: 'Hot Cappucino', categories: 'Espresso, Steamed Milk', rating: 4.7, numOfOrders: 458, description: ' A classic Italian coffee made with equal parts of espresso, steamed milk, and milk foam. It is known for its creamy texture and rich flavor.', image: 'assets/images/Coffee2.png'),
    "Black Coffee" : coffeeItems(name: 'Black Coffee', categories: 'Espresso, Steamed Milk', rating: 4.5, numOfOrders: 458, description: 'Also known as a simple or regular coffee, black coffee is brewed coffee served without any additives such as milk or sugar. It is appreciated for its bold and pure coffee flavor.', image: 'assets/images/Coffee3.png'),
    "Lattè" :coffeeItems(name: 'Lattè', categories: 'Espresso, Steamed Milk', rating: 4.3, numOfOrders: 458, description: 'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.', image: 'assets/images/Coffee4.png'),
    "Flat White": coffeeItems(name: 'Flat white', categories: 'Espresso, Steamed Milk', rating: 4.9, numOfOrders: 458, description: 'A flat white is made with espresso and steamed milk. It offers a stronger coffee flavor and a smoother texture.', image: 'assets/images/Coffee5.png')
  };


}
