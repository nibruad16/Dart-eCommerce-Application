import 'product.dart';

class ProductManager{
  final List<Product> _product = [];

  void addProduct(Product product){
    _product.add(product);

    product.printInfo();

  }


  void viewProducts(int index){
    if(index < 0 || index >= _product.length){
      print('Invalid index');

    }else{
      _product[index].printInfo();
    }

  }
    
  void viewAllProducts(){
    for (var element in _product) {
      print(element);
    }
  }



  void editProduct(int index, {String? name, String? description, double? price}){
    if(index < 0 || index >= _product.length){
      print('Invalid index');
      return;
    }

    var products = _product[index];

    if(name != null) products.name = name;
    if(description != null) products.description = description;
    if(price != null) products.price = price;

    print('Product updated successfully');

  }

  void deleteProduct(int index){
    if(index < 0 || index >= _product.length){
      print('Invalid Product Index');
      return;
    }

    var product = _product[index];

    _product.remove(product);

    print('Product deleted successfully');

  }

  }





  
  







