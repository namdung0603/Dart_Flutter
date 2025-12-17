class Product{
  double price;
  int quantity;
  String name;

  Product(this.price, this.quantity, this.name);

  void showTotal(){
    print("Total price of ${name}: ${price*quantity}");
  }
}

class Phone extends Product{
  String brand;
  Phone(this.brand, double price, int quantity, String name):super(price, quantity, name);

  @override
  void showTotal() {
    print("Brand: ${brand}");
    super.showTotal();
  }
}

void main(){
  Product p = Product(2000000, 2, "Laptop");
  p.showTotal();

  Phone ph = Phone("Samsung", 5000000, 1, "Smartphone");
  ph.showTotal();
}