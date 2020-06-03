class Store {
  int id;
  String name;
  String date;
  String address;
  int price;
  int amount;
  String image;
  String status_icon;
  String status;
  Store(
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
List<String> orderStatus = [
  'Pending',
  'Packing',
  'On the way',
  'Done'
];
List<Store> stores = [
  Store(
    id: 1,
    name: 'Jonh',
    address: 'Dongdork village, Dongdork Stree, Home 6',
    price: 30000,
    amount: 3,
    status: orderStatus[0],
    status_icon: 'refresh',
    date: '10:00 22-5-2020',
    image:
    'https://images.unsplash.com/photo-1587743654986-787b7e7ce14b?ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80',
  ),
  Store(
    id: 2,
    name: 'Mark Zuckerberg',
    date: '11:00 22-5-2020',
    address: 'Hong khar, Hong khar Stree',
    price: 30000,
    amount: 3,
    status_icon: 'warning',
    status: orderStatus[1],
    image:
    'https://images.unsplash.com/photo-1510832198440-a52376950479?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1048&q=80',
  ),
  Store(
    id: 3,
    name: 'Joe',
    date: '10:00 22-5-2020',
    address: 'Talatsao, Dongdork Stree',
    price: 30000,
    amount: 3,
    status_icon: 'warning',
    status: orderStatus[1],
    image:
        'https://images.unsplash.com/photo-1507548335453-2264668e6243?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1058&q=80',
  ),
];
