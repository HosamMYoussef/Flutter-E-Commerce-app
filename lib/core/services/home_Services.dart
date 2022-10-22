import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreHome {
  final CollectionReference _categoriesCollection =
      FirebaseFirestore.instance.collection('Categories');

  final CollectionReference _productsCollection =
      FirebaseFirestore.instance.collection('Products');

  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection('users');

  Future<List<QueryDocumentSnapshot>> getCategoriesFromFirestore() async {
    var categories = await _categoriesCollection.get();
    return categories.docs;
  }

  // Future<List<QueryDocumentSnapshot>> getusersFromFirestore() async {
  //   var users= await _usersCollection.get();
  //   return users.docs;
  // }

  Future<List<QueryDocumentSnapshot>> getProductsFromFirestore() async {
    var products = await _productsCollection.get();
    return products.docs;
  }
  Future<List<QueryDocumentSnapshot>> getusersFromFirestore() async {
    var products = await _usersCollection.get();
    return products.docs;
  }
}
