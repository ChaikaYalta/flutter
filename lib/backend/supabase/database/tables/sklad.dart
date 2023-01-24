import '../database.dart';

class SkladTable extends SupabaseTable<SkladRow> {
  @override
  String get tableName => 'sklad';

  @override
  SkladRow createRow(Map<String, dynamic> data) => SkladRow(data);
}

class SkladRow extends SupabaseDataRow {
  SkladRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SkladTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get skladID => getField<String>('skladID');
  set skladID(String? value) => setField<String>('skladID', value);

  String? get skladName => getField<String>('skladName');
  set skladName(String? value) => setField<String>('skladName', value);
}
