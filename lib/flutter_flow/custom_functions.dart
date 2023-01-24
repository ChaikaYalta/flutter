import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/supabase/supabase.dart';

bool showsearch(
  String searchFor,
  String searchIn,
) {
  return searchIn.toLowerCase().contains(searchFor.toLowerCase());
}

String keyoption(String key) {
  // delete the first and last character of the string
  return key.substring(1, key.length - 1);
}
