import '../database.dart';

class AdmandEvaTable extends SupabaseTable<AdmandEvaRow> {
  @override
  String get tableName => 'AdmandEva';

  @override
  AdmandEvaRow createRow(Map<String, dynamic> data) => AdmandEvaRow(data);
}

class AdmandEvaRow extends SupabaseDataRow {
  AdmandEvaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdmandEvaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get len => getField<String>('len');
  set len(String? value) => setField<String>('len', value);

  String? get pay => getField<String>('pay');
  set pay(String? value) => setField<String>('pay', value);

  String? get fistname => getField<String>('fistname');
  set fistname(String? value) => setField<String>('fistname', value);

  String? get lastname => getField<String>('lastname');
  set lastname(String? value) => setField<String>('lastname', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get payid => getField<String>('payid');
  set payid(String? value) => setField<String>('payid', value);

  String? get pincode => getField<String>('pincode');
  set pincode(String? value) => setField<String>('pincode', value);

  String? get tableField => getField<String>('table');
  set tableField(String? value) => setField<String>('table', value);

  String? get comments => getField<String>('comments');
  set comments(String? value) => setField<String>('comments', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);
}
