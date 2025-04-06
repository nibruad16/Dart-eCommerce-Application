import 'dart:io';

import 'package:product/product.dart';
import 'package:product/prodactManager.dart';


 ProductManager productManager = ProductManager();
void main(){

  while(true){
    print("\n------- ecomerce app -------");
    print("1. Add Product");
    print("2. View Product");
    print("3. View All Products");
    print("4. Edit Product");
    print("5. Delete Product");
    print("6. Exit");


  stdout.write("Enter your choice: ");
  String? choice  = stdin.readLineSync();

  switch(choice){
    case '1':
      print("Enter product name: ");
      String? name = stdin.readLineSync();
      print("Enter product description: ");
      String? description = stdin.readLineSync();
      print("Enter product price: ");
      double price =  double.parse(stdin.readLineSync()!);

     productManager.addProduct(Product(name: name!, description: description!, price: price));
     break;

    case '2':
      print('Enter product index: ');
      int index = int.parse(stdin.readLineSync()!);
      productManager.viewProducts(index);
      break;

      case '3':
        productManager.viewAllProducts();
        break;

      case '4':
        print('Enter product index: ');
        int index  = int.parse(stdin.readLineSync()!);

        print('Enter new product name: ');
        String? name = stdin.readLineSync();
        print('Enter new product description: ');
        String? description = stdin.readLineSync();
        print('Enter new product price: ');
        double price = double.parse(stdin.readLineSync()!);

        productManager.editProduct(index, name: name, description: description, price: price);
        break;

      case '5':
        print('Enter product index: ');
        int index = int.parse(stdin.readLineSync()!);
        productManager.deleteProduct(index);
        break;

      case '6':
        print('Exiting...');
        return;

      default:
        print('Invalid choice');
        break;      
  }



    
  }





}
