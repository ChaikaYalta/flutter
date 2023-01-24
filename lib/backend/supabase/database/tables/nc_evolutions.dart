import '../database.dart';

class NcEvolutionsTable extends SupabaseTable<NcEvolutionsRow> {
  @override
  String get tableName => 'nc_evolutions';

  @override
  NcEvolutionsRow createRow(Map<String, dynamic> data) => NcEvolutionsRow(data);
}

class NcEvolutionsRow extends SupabaseDataRow {
  NcEvolutionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NcEvolutionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get titleDown => getField<String>('titleDown');
  set titleDown(String? value) => setField<String>('titleDown', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get batch => getField<int>('batch');
  set batch(int? value) => setField<int>('batch', value);

  String? get checksum => getField<String>('checksum');
  set checksum(String? value) => setField<String>('checksum', value);

  int? get status => getField<int>('status');
  set status(int? value) => setField<int>('status', value);

  DateTime? get created => getField<DateTime>('created');
  set created(DateTime? value) => setField<DateTime>('created', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
