import 'package:donationapp/model/institution/institution.dart';
import 'package:donationapp/model/product/product.dart';
import 'package:donationapp/services/http_service.dart';
import 'package:flutter/material.dart';

import '../../model/client/client.dart';


class DataProvider extends ChangeNotifier{
  HttpService service = HttpService();

  List<Client> _alClients = [];

  List<Client> _filteredClients = [];
  //List<Client> get Client => _filteredClients;

  List<Product> _allProducts = [];
  List<Product> _filteredProducts = [];

  List<Institution> _allInstitutions = [];
  List<Institution> _filteredInstitutions = [];

  

  //TODO fetch all institutions
  //TODO fetch all filtered institutions

  //TODO fetch all products
  //TODO tech all filtered products

  //TODO fetch all clients
  //TODO filter all clients
  
}
