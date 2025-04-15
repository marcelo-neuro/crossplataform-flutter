class Pizza {
  final String name;
  final String ingredients;
  final int price;
  final String photoPath;
  final bool soldOut;

  const Pizza({
    required this.name,
    required this.ingredients,
    required this.price,
    required this.photoPath,
    required this.soldOut
    });
}

const List<Pizza> pizzaData = [  
  Pizza(    
    name: 'Focaccia',    
    ingredients: 'Bread with italian olive oil and rosemary',    
    price: 6,    
    photoPath: 'images/focaccia.jpg',    
    soldOut: false,  
    ),  Pizza(    
      name: 'Pizza Margherita',    
      ingredients: 'Tomato and mozarella',    
      price: 10,    
      photoPath: 'images/margherita.jpg',    
      soldOut: false,  ),  Pizza(    
        name: 'Pizza Spinaci',    
        ingredients: 'Tomato, mozarella, spinach, and ricotta cheese',    
        price: 12,    
        photoPath: 'images/spinaci.jpg',    
        soldOut: false,  ),  Pizza(    
          name: 'Pizza Funghi',    
          ingredients: 'Tomato, mozarella, mushrooms, and onion',    
          price: 12,    
          photoPath: 'images/funghi.jpg',    
          soldOut: false,  ),  Pizza(    
            name: 'Pizza Salamino',    
            ingredients: 'Tomato, mozarella, and pepperoni',    
            price: 15,    
            photoPath: 'images/salamino.jpg',    
            soldOut: true,  ),  Pizza(    
              name: 'Pizza Prosciutto',    
              ingredients: 'Tomato, mozarella, ham, aragula, and burrata cheese',    
              price: 18,    
              photoPath: 'images/prosciutto.jpg',    
              soldOut: false,  ),];
