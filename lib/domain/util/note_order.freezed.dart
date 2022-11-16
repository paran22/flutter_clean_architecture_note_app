// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteOrder {
  OrderType get orderType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType orderType) title,
    required TResult Function(OrderType orderType) date,
    required TResult Function(OrderType orderType) color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType orderType)? title,
    TResult? Function(OrderType orderType)? date,
    TResult? Function(OrderType orderType)? color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? date,
    TResult Function(OrderType orderType)? color,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Title value) title,
    required TResult Function(Date value) date,
    required TResult Function(Color value) color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Title value)? title,
    TResult? Function(Date value)? date,
    TResult? Function(Color value)? color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Title value)? title,
    TResult Function(Date value)? date,
    TResult Function(Color value)? color,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteOrderCopyWith<NoteOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteOrderCopyWith<$Res> {
  factory $NoteOrderCopyWith(NoteOrder value, $Res Function(NoteOrder) then) =
      _$NoteOrderCopyWithImpl<$Res, NoteOrder>;
  @useResult
  $Res call({OrderType orderType});

  $OrderTypeCopyWith<$Res> get orderType;
}

/// @nodoc
class _$NoteOrderCopyWithImpl<$Res, $Val extends NoteOrder>
    implements $NoteOrderCopyWith<$Res> {
  _$NoteOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = null,
  }) {
    return _then(_value.copyWith(
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderTypeCopyWith<$Res> get orderType {
    return $OrderTypeCopyWith<$Res>(_value.orderType, (value) {
      return _then(_value.copyWith(orderType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TitleCopyWith<$Res> implements $NoteOrderCopyWith<$Res> {
  factory _$$TitleCopyWith(_$Title value, $Res Function(_$Title) then) =
      __$$TitleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderType orderType});

  @override
  $OrderTypeCopyWith<$Res> get orderType;
}

/// @nodoc
class __$$TitleCopyWithImpl<$Res> extends _$NoteOrderCopyWithImpl<$Res, _$Title>
    implements _$$TitleCopyWith<$Res> {
  __$$TitleCopyWithImpl(_$Title _value, $Res Function(_$Title) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = null,
  }) {
    return _then(_$Title(
      null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
    ));
  }
}

/// @nodoc

class _$Title implements Title {
  const _$Title(this.orderType);

  @override
  final OrderType orderType;

  @override
  String toString() {
    return 'NoteOrder.title(orderType: $orderType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Title &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleCopyWith<_$Title> get copyWith =>
      __$$TitleCopyWithImpl<_$Title>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType orderType) title,
    required TResult Function(OrderType orderType) date,
    required TResult Function(OrderType orderType) color,
  }) {
    return title(orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType orderType)? title,
    TResult? Function(OrderType orderType)? date,
    TResult? Function(OrderType orderType)? color,
  }) {
    return title?.call(orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? date,
    TResult Function(OrderType orderType)? color,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Title value) title,
    required TResult Function(Date value) date,
    required TResult Function(Color value) color,
  }) {
    return title(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Title value)? title,
    TResult? Function(Date value)? date,
    TResult? Function(Color value)? color,
  }) {
    return title?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Title value)? title,
    TResult Function(Date value)? date,
    TResult Function(Color value)? color,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(this);
    }
    return orElse();
  }
}

abstract class Title implements NoteOrder {
  const factory Title(final OrderType orderType) = _$Title;

  @override
  OrderType get orderType;
  @override
  @JsonKey(ignore: true)
  _$$TitleCopyWith<_$Title> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateCopyWith<$Res> implements $NoteOrderCopyWith<$Res> {
  factory _$$DateCopyWith(_$Date value, $Res Function(_$Date) then) =
      __$$DateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderType orderType});

  @override
  $OrderTypeCopyWith<$Res> get orderType;
}

/// @nodoc
class __$$DateCopyWithImpl<$Res> extends _$NoteOrderCopyWithImpl<$Res, _$Date>
    implements _$$DateCopyWith<$Res> {
  __$$DateCopyWithImpl(_$Date _value, $Res Function(_$Date) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = null,
  }) {
    return _then(_$Date(
      null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
    ));
  }
}

/// @nodoc

class _$Date implements Date {
  const _$Date(this.orderType);

  @override
  final OrderType orderType;

  @override
  String toString() {
    return 'NoteOrder.date(orderType: $orderType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Date &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateCopyWith<_$Date> get copyWith =>
      __$$DateCopyWithImpl<_$Date>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType orderType) title,
    required TResult Function(OrderType orderType) date,
    required TResult Function(OrderType orderType) color,
  }) {
    return date(orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType orderType)? title,
    TResult? Function(OrderType orderType)? date,
    TResult? Function(OrderType orderType)? color,
  }) {
    return date?.call(orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? date,
    TResult Function(OrderType orderType)? color,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Title value) title,
    required TResult Function(Date value) date,
    required TResult Function(Color value) color,
  }) {
    return date(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Title value)? title,
    TResult? Function(Date value)? date,
    TResult? Function(Color value)? color,
  }) {
    return date?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Title value)? title,
    TResult Function(Date value)? date,
    TResult Function(Color value)? color,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this);
    }
    return orElse();
  }
}

abstract class Date implements NoteOrder {
  const factory Date(final OrderType orderType) = _$Date;

  @override
  OrderType get orderType;
  @override
  @JsonKey(ignore: true)
  _$$DateCopyWith<_$Date> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ColorCopyWith<$Res> implements $NoteOrderCopyWith<$Res> {
  factory _$$ColorCopyWith(_$Color value, $Res Function(_$Color) then) =
      __$$ColorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderType orderType});

  @override
  $OrderTypeCopyWith<$Res> get orderType;
}

/// @nodoc
class __$$ColorCopyWithImpl<$Res> extends _$NoteOrderCopyWithImpl<$Res, _$Color>
    implements _$$ColorCopyWith<$Res> {
  __$$ColorCopyWithImpl(_$Color _value, $Res Function(_$Color) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = null,
  }) {
    return _then(_$Color(
      null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
    ));
  }
}

/// @nodoc

class _$Color implements Color {
  const _$Color(this.orderType);

  @override
  final OrderType orderType;

  @override
  String toString() {
    return 'NoteOrder.color(orderType: $orderType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Color &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorCopyWith<_$Color> get copyWith =>
      __$$ColorCopyWithImpl<_$Color>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType orderType) title,
    required TResult Function(OrderType orderType) date,
    required TResult Function(OrderType orderType) color,
  }) {
    return color(orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType orderType)? title,
    TResult? Function(OrderType orderType)? date,
    TResult? Function(OrderType orderType)? color,
  }) {
    return color?.call(orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? date,
    TResult Function(OrderType orderType)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Title value) title,
    required TResult Function(Date value) date,
    required TResult Function(Color value) color,
  }) {
    return color(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Title value)? title,
    TResult? Function(Date value)? date,
    TResult? Function(Color value)? color,
  }) {
    return color?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Title value)? title,
    TResult Function(Date value)? date,
    TResult Function(Color value)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(this);
    }
    return orElse();
  }
}

abstract class Color implements NoteOrder {
  const factory Color(final OrderType orderType) = _$Color;

  @override
  OrderType get orderType;
  @override
  @JsonKey(ignore: true)
  _$$ColorCopyWith<_$Color> get copyWith => throw _privateConstructorUsedError;
}
