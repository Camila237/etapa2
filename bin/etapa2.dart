import 'package:etapa2/etapa2.dart' as etapa2;

/// * The main function is the entry point of the program.
void main(List<String> arguments) async{
  await etapa2.fetchProducts();
  await etapa2.fetchUsers();
  await etapa2.fetchCarts();
}
