import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _showFulllist = true;
  bool get showFulllist => _showFulllist;
  set showFulllist(bool _value) {
    _showFulllist = _value;
  }

  dynamic _name = jsonDecode(
      '[{\"name\":\"string\",\"name_id\":\"string\",\"name_type\":\"string\"},{\"name\":\"string\",\"name_id\":\"string\",\"name_type\":\"string\"}]');
  dynamic get name => _name;
  set name(dynamic _value) {
    _name = _value;
  }

  dynamic _infoproduct;
  dynamic get infoproduct => _infoproduct;
  set infoproduct(dynamic _value) {
    _infoproduct = _value;
  }

  List<double> _price = [];
  List<double> get price => _price;
  set price(List<double> _value) {
    _price = _value;
  }

  void addToPrice(double _value) {
    _price.add(_value);
  }

  void removeFromPrice(double _value) {
    _price.remove(_value);
  }

  List<DateTime> _datetime = [];
  List<DateTime> get datetime => _datetime;
  set datetime(List<DateTime> _value) {
    _datetime = _value;
  }

  void addToDatetime(DateTime _value) {
    _datetime.add(_value);
  }

  void removeFromDatetime(DateTime _value) {
    _datetime.remove(_value);
  }

  List<String> _spisanie = [];
  List<String> get spisanie => _spisanie;
  set spisanie(List<String> _value) {
    _spisanie = _value;
  }

  void addToSpisanie(String _value) {
    _spisanie.add(_value);
  }

  void removeFromSpisanie(String _value) {
    _spisanie.remove(_value);
  }

  List<String> _namespisanie = [];
  List<String> get namespisanie => _namespisanie;
  set namespisanie(List<String> _value) {
    _namespisanie = _value;
  }

  void addToNamespisanie(String _value) {
    _namespisanie.add(_value);
  }

  void removeFromNamespisanie(String _value) {
    _namespisanie.remove(_value);
  }

  List<String> _summspisani = [];
  List<String> get summspisani => _summspisani;
  set summspisani(List<String> _value) {
    _summspisani = _value;
  }

  void addToSummspisani(String _value) {
    _summspisani.add(_value);
  }

  void removeFromSummspisani(String _value) {
    _summspisani.remove(_value);
  }

  List<int> _spisanienumber = [];
  List<int> get spisanienumber => _spisanienumber;
  set spisanienumber(List<int> _value) {
    _spisanienumber = _value;
  }

  void addToSpisanienumber(int _value) {
    _spisanienumber.add(_value);
  }

  void removeFromSpisanienumber(int _value) {
    _spisanienumber.remove(_value);
  }

  List<String> _namlist = [];
  List<String> get namlist => _namlist;
  set namlist(List<String> _value) {
    _namlist = _value;
  }

  void addToNamlist(String _value) {
    _namlist.add(_value);
  }

  void removeFromNamlist(String _value) {
    _namlist.remove(_value);
  }

  List<String> _namlistID = [];
  List<String> get namlistID => _namlistID;
  set namlistID(List<String> _value) {
    _namlistID = _value;
  }

  void addToNamlistID(String _value) {
    _namlistID.add(_value);
  }

  void removeFromNamlistID(String _value) {
    _namlistID.remove(_value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
