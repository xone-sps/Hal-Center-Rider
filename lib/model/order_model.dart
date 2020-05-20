class Order {
  int id;
  String name;
  String date;
  String address;
  int price;
  int amount;
  String image;
  String status_icon;
  String status;

  Order(
      {this.id,
      this.name,
      this.date,
      this.address,
      this.price,
      this.amount,
      this.image,
      this.status,
      this.status_icon});
}

List<Order> orders = [
  Order(
    id: 1,
    name: 'Jonh',
    address: 'Dongdork village, Dongdork Stree, Home 6',
    price: 30000,
    amount: 3,
    status: 'Pending',
    status_icon: 'refresh',
    date: '10:00 22-5-2020',
    image:
        'https://images.unsplash.com/photo-1471005115083-ccf6e3cca00d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
  ),
  Order(
    id: 2,
    name: 'Xone',
    date: '11:00 22-5-2020',
    address: 'Hong khar, Hong khar Stree',
    price: 30000,
    amount: 3,
    status_icon: 'warning',
    status: 'Pending',
    image:
        'https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/53/2014/05/Poached-egg-and-bacon-salad-recipe-920x605.jpg',
  ),
  Order(
    id: 3,
    name: 'Joe',
    date: '10:00 22-5-2020',
    address: 'Talatsao, Dongdork Stree',
    price: 30000,
    amount: 3,
    status_icon: 'warning',
    status: 'Pending',
    image:
        'https://images.unsplash.com/photo-1522184216316-3c25379f9760?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
  ),
  Order(
    id: 4,
    name: 'Jame',
    date: '10:00 22-5-2020',
    address: 'Dongdork village, Dongdork Stree',
    price: 30000,
    amount: 5,
    status_icon: 'warning',
    status: 'Pending',
    image:
        'https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/53/2014/05/Poached-egg-and-bacon-salad-recipe-920x605.jpg',
  ),
  Order(
    id: 5,
    name: 'Nana',
    date: '10:00 22-5-2020',
    address: 'Dongdork village',
    price: 30000,
    amount: 3,
    status_icon: 'warning',
    status: 'Pending',
    image:
        'https://images.unsplash.com/photo-1552913903-2cffa1962dc7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
  ),
  Order(
    id: 6,
    name: 'Thong',
    date: '10:00 22-5-2020',
    address: 'Dongdork village',
    price: 30000,
    amount: 3,
    status_icon: 'warning',
    status: 'Pending',
    image:
        'https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/53/2014/05/Poached-egg-and-bacon-salad-recipe-920x605.jpg',
  ),
  Order(
    id: 7,
    name: 'Elon mart',
    date: '10:00 22-5-2020',
    address: 'Dongdork village',
    price: 30000,
    amount: 3,
    status_icon: 'warning',
    status: 'Pending',
    image:
        'https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/53/2014/05/Poached-egg-and-bacon-salad-recipe-920x605.jpg',
  ),
  Order(
    id: 8,
    name: 'Phoud',
    date: '10:00 22-5-2020',
    address: 'Dongdork village',
    price: 30000,
    amount: 3,
    status_icon: 'warning',
    status: 'Pending',
    image:
        'https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/53/2014/05/Poached-egg-and-bacon-salad-recipe-920x605.jpg',
  ),
];
