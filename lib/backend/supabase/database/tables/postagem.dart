import '../database.dart';

class PostagemTable extends SupabaseTable<PostagemRow> {
  @override
  String get tableName => 'postagem';

  @override
  PostagemRow createRow(Map<String, dynamic> data) => PostagemRow(data);
}

class PostagemRow extends SupabaseDataRow {
  PostagemRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PostagemTable();

  int get idPostagem => getField<int>('id_postagem')!;
  set idPostagem(int value) => setField<int>('id_postagem', value);

  String get tituloPostagem => getField<String>('titulo_postagem')!;
  set tituloPostagem(String value) =>
      setField<String>('titulo_postagem', value);

  String? get legendaPostagem => getField<String>('legenda_postagem');
  set legendaPostagem(String? value) =>
      setField<String>('legenda_postagem', value);

  int? get categoriaPostagem => getField<int>('categoria_postagem');
  set categoriaPostagem(int? value) =>
      setField<int>('categoria_postagem', value);
}
