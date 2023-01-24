import 'package:supabase_flutter/supabase_flutter.dart';

export 'database/database.dart';

const _kSupabaseUrl = 'https://dgwszlgqyrevtlvjaefy.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRnd3N6bGdxeXJldnRsdmphZWZ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzMzMDEyNTEsImV4cCI6MTk4ODg3NzI1MX0.m7Uz_TSyDnNOChwck1nKjWTYpLjXfZMWc3YeheoYkLo';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
