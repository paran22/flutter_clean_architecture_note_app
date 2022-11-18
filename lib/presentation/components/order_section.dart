import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:note_app/domain/util/note_order.dart';
import 'package:note_app/domain/util/order_type.dart';



class OrderSection extends ConsumerWidget {
  final NoteOrder noteOrder;
  final Function(NoteOrder noteOrder) onOrderChanged;

  const OrderSection({
    Key? key,
    required this.noteOrder,
    required this.onOrderChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          children: [
            Radio<NoteOrder>(
              value: NoteOrder.title(noteOrder.orderType),
              groupValue: noteOrder,
              onChanged: (NoteOrder? value) {
                onOrderChanged(value ?? NoteOrder.title(noteOrder.orderType));
              },
              activeColor: Colors.white,
            ),
            const Text('제목'),
            Radio<NoteOrder>(
              value: NoteOrder.date(noteOrder.orderType),
              groupValue: noteOrder,
              onChanged: (NoteOrder? value) {
                onOrderChanged(value ?? NoteOrder.date(noteOrder.orderType));
              },
              activeColor: Colors.white,
            ),
            const Text('날짜'),
            Radio<NoteOrder>(
              value: NoteOrder.color(noteOrder.orderType),
              groupValue: noteOrder,
              onChanged: (NoteOrder? value) {
                onOrderChanged(value ?? NoteOrder.color(noteOrder.orderType));
              },
              activeColor: Colors.white,
            ),
            const Text('색깔'),
          ],
        ),
        Row(
          children: [
            Radio<OrderType>(
              value: const OrderType.ascending(),
              groupValue: noteOrder.orderType,
              onChanged: (OrderType? value) {
                onOrderChanged(noteOrder.copyWith(
                    orderType: value ?? const OrderType.ascending()));
              },
              activeColor: Colors.white,
            ),
            const Text('오름차순'),
            Radio<OrderType>(
              value: const OrderType.descending(),
              groupValue: noteOrder.orderType,
              onChanged: (OrderType? value) {
                onOrderChanged(noteOrder.copyWith(
                    orderType: value ?? const OrderType.descending()));
              },
              activeColor: Colors.white,
            ),
            const Text('내림차순'),
          ],
        ),
      ],
    );
  }
}
