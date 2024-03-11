// Marvel Ravindra Dioputra 2200481
// TP1 Pemrograman Visual

// library untuk Asyncronus
import 'dart:async';

// Class Go Food
class OrderGoFood {
  late String _foodName; // atribut nama makanan
  late String _restaurantName; // atribut nama restoran
  late int _quantity; // atribut jumlah yang dipesan

  // Konstruktor
  OrderGoFood(this._foodName, this._restaurantName, this._quantity);

  // Getter dan Setter
  String get foodName => _foodName;
  set foodName(String value) => _foodName = value;

  String get restaurantName => _restaurantName;
  set restaurantName(String value) => _restaurantName = value;

  int get quantity => _quantity;
  set quantity(int value) => _quantity = value;

  // Method untuk memesan go food, delay 3 detik setelah memesan
  Future<String> processOrder() async {
    print('Sedang memesan $_foodName dari $_restaurantName...');
    await Future.delayed(Duration(seconds: 3));
    return 'Pemesanan $_foodName dari $_restaurantName sebanyak $_quantity berhasil!';
  }
}

void main() {
  // Membuat objek orderan
  var order = OrderGoFood('Nasi Goreng', 'Warung Sederhana', 2);

  // Proses metode asyncnya
  order.processOrder().then((result) {
    print(result);
  });

  print('Proses pemesanan sedang berlangsung...');
}
