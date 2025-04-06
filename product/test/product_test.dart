import 'package:product/product.dart';
import 'package:product/prodactManager.dart';
import 'package:test/test.dart';

void main(){
  test('test product',(){
    var product = Product(name: 'Product 1', description: 'Description 1', price: 100);
    expect(product.name, 'Product 1');
    expect(product.description, 'Description 1');
    expect(product.price, 100);
  });

  test('test product manager',(){
    var productManager = ProductManager();
    var product = Product(name: 'Product 1', description: 'Description 1', price: 100);
    productManager.addProduct(product);
    expect(() => productManager.viewProducts(0), returnsNormally);
  });

  test('test product manager',(){
    var productManager = ProductManager();
    var product = Product(name: 'Product 1', description: 'Description 1', price: 100);
    productManager.addProduct(product);
  });
}
