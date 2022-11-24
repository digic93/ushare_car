import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService extends  ChangeNotifier{
  final String _baseUrl= 'identitytoolkit.googleapis.com';
  final String _firebaseToken='AIzaSyB9n-YNxeC_3nddtw_0pN7QXJnmwy98_zI';

  Future<String?> createUser(int id,int mobile,String fistName,String lasName,String email,String password,String collegeDegree,) async{
    final Map<String, String> authData={
      'id' : 'id',
      'mobile' : 'mobile',
      'fistName' : fistName,
      'lasName': lasName,
      'email': email,
      'password' : password,
      'collegeDegree' :collegeDegree,

    };
    final url = Uri.https(_baseUrl, '/v1/accounts:signUp',{'key':_firebaseToken});

    final resp= await http.post(url,body: json.encode(authData));
    final Map<String,dynamic> decodeResp = json.decode(resp.body);

    if(decodeResp.containsKey('idToken')){
      return null;
    }else{
      return decodeResp['error']['message'];
    }
  } 
  Future<String?> login(String email,String password) async{
    final Map<String, String> authData={
      'email' : email,
      'password': password,
    };
    final url = Uri.https(_baseUrl, '/v1/accounts:signUp',{'key':_firebaseToken});

    final resp= await http.post(url,body: json.encode(authData));
    final Map<String,dynamic> decodeResp = json.decode(resp.body);

    if(decodeResp.containsKey('idToken')){
      return null;
    }else{
      return decodeResp['error']['message'];
    }
  } 
}