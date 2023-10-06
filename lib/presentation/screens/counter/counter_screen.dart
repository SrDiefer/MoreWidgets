import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_formato/presentation/providers/counter_provider.dart';
import 'package:widget_formato/presentation/providers/theme_provider.dart';




class CounterScreen extends ConsumerWidget{

  static const name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int clickCounter = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            onPressed: (){
              ref.read(isDarkModeProvider.notifier).update((state) => !state);
          }, 
          icon: Icon(isDarkMode? Icons.dark_mode_outlined: Icons.light_mode_outlined))

        ]
          
          
      ),
      body: Center(
        child: Text('Valor: $clickCounter', style: Theme.of(context).textTheme.titleLarge,),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          ref.read(counterProvider.notifier).state++;
        },
    ),


    );
  }
}