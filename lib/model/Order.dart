class Order {
  int id;
  String name;
  String date;
  String address;
  int price;
  int amount;
  String image;
  List<String> status=[
    'A','B','C','D'
  ];
  Order({this.id,this.name, this.date, this.address, this.price,this.amount,this.image,this.status});
}

List <Order> orders=[
  Order(
    id:1,
    name:'New order for you',
    address: 'Dongdork village',
    price: 30000,
    amount: 3,
    date:'10:00 22-5-2020',
    image: 'https://images.unsplash.com/photo-1471005115083-ccf6e3cca00d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
  ),
  Order(
      id:2,
      name:'New order for you',
    date:'11:00 22-5-2020',
      address: 'Dongdork village',
      price: 30000,
      amount: 3,
    image: 'https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/53/2014/05/Poached-egg-and-bacon-salad-recipe-920x605.jpg',
  ),
  Order(
      id:3,
      name:'New order for you',
      date:'10:00 22-5-2020',
      address: 'Dongdork village',
      price: 30000,
      amount: 3,
    image: 'https://images.unsplash.com/photo-1522184216316-3c25379f9760?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
  ),
  Order(
    id:4,
    name:'New order for you',
    date:'10:00 22-5-2020',
    address: 'Dongdork village',
    price: 30000,
    amount: 5,
    image: 'https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/53/2014/05/Poached-egg-and-bacon-salad-recipe-920x605.jpg',
  ),
  Order(
    id:5,
    name:'New order for you',
    date:'10:00 22-5-2020',
    address: 'Dongdork village',
    price: 30000,
    amount: 3,
    image: 'https://images.unsplash.com/photo-1552913903-2cffa1962dc7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
  ),
Order(
    id:6,
    name:'New order for you',
    date:'10:00 22-5-2020',
    address: 'Dongdork village',
    price: 30000,
    amount: 3,
    image: 'https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/53/2014/05/Poached-egg-and-bacon-salad-recipe-920x605.jpg',
  ),
  Order(
    id:7,
    name:'New order for you',
    date:'10:00 22-5-2020',
    address: 'Dongdork village',
    price: 30000,
    amount: 3,
    image: 'https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/53/2014/05/Poached-egg-and-bacon-salad-recipe-920x605.jpg',
  ),
  Order(
    id:8,
    name:'New order for you',
    date:'10:00 22-5-2020',
    address: 'Dongdork village',
    price: 30000,
    amount: 3,
    image: 'https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/53/2014/05/Poached-egg-and-bacon-salad-recipe-920x605.jpg',
  ),
];