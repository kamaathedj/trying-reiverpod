import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rusted_iron_sheets/src/Feature_prisons/Prison.dart';
import 'package:rusted_iron_sheets/src/Feature_prisons/PrisonsProvider.dart';

final futurePrisonServiceProvider =
    FutureProvider.autoDispose<List<Prison>>((ref) async {
  final apiService = ref.watch(prisonsApiProvider);
  return apiService.getPrisons();
});

class PrisonsView extends ConsumerWidget {
  const PrisonsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prisonRef = ref.watch(futurePrisonServiceProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FlexColor.amberDarkPrimary,
        title: Text('data'),
      ),
      body: prisonRef.when(data: (List<Prison> data) {
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (
            BuildContext context,
            int index,
          ) {
            Prison prison = data[index];
            return ListTile(
              onTap: ()=>MaterialBanner(content: Text(prison.name), actions: [Text('*')]),
              title: Text(prison.name),
              subtitle: Text(prison.located),
            );
          },
        );
      }, error: (Object error, _) {
        return Text('Error loading data');
      }, loading: () {
        return Center(child: CircularProgressIndicator());
      }),
    );
  }
}
