import '../database.dart';

class CategoriaTable extends SupabaseTable<CategoriaRow> {
  @override
  String get tableName => 'categoria';

  @override
  CategoriaRow createRow(Map<String, dynamic> data) => CategoriaRow(data);
}

class CategoriaRow extends SupabaseDataRow {
  CategoriaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoriaTable();

  int get idCategoria => getField<int>('id_categoria')!;
  set idCategoria(int value) => setField<int>('id_categoria', value);

  String get descricaoCategoria => getField<String>('descricao_categoria')!;
  set descricaoCategoria(String value) =>
      setField<String>('descricao_categoria', value);
}
