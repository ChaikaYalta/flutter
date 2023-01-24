import '../database.dart';

class Sheet1Table extends SupabaseTable<Sheet1Row> {
  @override
  String get tableName => 'Sheet-1';

  @override
  Sheet1Row createRow(Map<String, dynamic> data) => Sheet1Row(data);
}

class Sheet1Row extends SupabaseDataRow {
  Sheet1Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Sheet1Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get qop => getField<String>('qop');
  set qop(String? value) => setField<String>('qop', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
