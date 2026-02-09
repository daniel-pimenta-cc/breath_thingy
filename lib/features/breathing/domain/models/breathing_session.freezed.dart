// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breathing_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BreathingSessionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )
    running,
    required TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )
    paused,
    required TResult Function(int totalCycles) completed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    running,
    TResult? Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    paused,
    TResult? Function(int totalCycles)? completed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    running,
    TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    paused,
    TResult Function(int totalCycles)? completed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BreathingSessionIdle value) idle,
    required TResult Function(BreathingSessionRunning value) running,
    required TResult Function(BreathingSessionPaused value) paused,
    required TResult Function(BreathingSessionCompleted value) completed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BreathingSessionIdle value)? idle,
    TResult? Function(BreathingSessionRunning value)? running,
    TResult? Function(BreathingSessionPaused value)? paused,
    TResult? Function(BreathingSessionCompleted value)? completed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BreathingSessionIdle value)? idle,
    TResult Function(BreathingSessionRunning value)? running,
    TResult Function(BreathingSessionPaused value)? paused,
    TResult Function(BreathingSessionCompleted value)? completed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreathingSessionStateCopyWith<$Res> {
  factory $BreathingSessionStateCopyWith(
    BreathingSessionState value,
    $Res Function(BreathingSessionState) then,
  ) = _$BreathingSessionStateCopyWithImpl<$Res, BreathingSessionState>;
}

/// @nodoc
class _$BreathingSessionStateCopyWithImpl<
  $Res,
  $Val extends BreathingSessionState
>
    implements $BreathingSessionStateCopyWith<$Res> {
  _$BreathingSessionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BreathingSessionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BreathingSessionIdleImplCopyWith<$Res> {
  factory _$$BreathingSessionIdleImplCopyWith(
    _$BreathingSessionIdleImpl value,
    $Res Function(_$BreathingSessionIdleImpl) then,
  ) = __$$BreathingSessionIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BreathingSessionIdleImplCopyWithImpl<$Res>
    extends
        _$BreathingSessionStateCopyWithImpl<$Res, _$BreathingSessionIdleImpl>
    implements _$$BreathingSessionIdleImplCopyWith<$Res> {
  __$$BreathingSessionIdleImplCopyWithImpl(
    _$BreathingSessionIdleImpl _value,
    $Res Function(_$BreathingSessionIdleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BreathingSessionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BreathingSessionIdleImpl implements BreathingSessionIdle {
  const _$BreathingSessionIdleImpl();

  @override
  String toString() {
    return 'BreathingSessionState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreathingSessionIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )
    running,
    required TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )
    paused,
    required TResult Function(int totalCycles) completed,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    running,
    TResult? Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    paused,
    TResult? Function(int totalCycles)? completed,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    running,
    TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    paused,
    TResult Function(int totalCycles)? completed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BreathingSessionIdle value) idle,
    required TResult Function(BreathingSessionRunning value) running,
    required TResult Function(BreathingSessionPaused value) paused,
    required TResult Function(BreathingSessionCompleted value) completed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BreathingSessionIdle value)? idle,
    TResult? Function(BreathingSessionRunning value)? running,
    TResult? Function(BreathingSessionPaused value)? paused,
    TResult? Function(BreathingSessionCompleted value)? completed,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BreathingSessionIdle value)? idle,
    TResult Function(BreathingSessionRunning value)? running,
    TResult Function(BreathingSessionPaused value)? paused,
    TResult Function(BreathingSessionCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class BreathingSessionIdle implements BreathingSessionState {
  const factory BreathingSessionIdle() = _$BreathingSessionIdleImpl;
}

/// @nodoc
abstract class _$$BreathingSessionRunningImplCopyWith<$Res> {
  factory _$$BreathingSessionRunningImplCopyWith(
    _$BreathingSessionRunningImpl value,
    $Res Function(_$BreathingSessionRunningImpl) then,
  ) = __$$BreathingSessionRunningImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    BreathingPhase phase,
    int cycle,
    double elapsed,
    double phaseDuration,
  });
}

/// @nodoc
class __$$BreathingSessionRunningImplCopyWithImpl<$Res>
    extends
        _$BreathingSessionStateCopyWithImpl<$Res, _$BreathingSessionRunningImpl>
    implements _$$BreathingSessionRunningImplCopyWith<$Res> {
  __$$BreathingSessionRunningImplCopyWithImpl(
    _$BreathingSessionRunningImpl _value,
    $Res Function(_$BreathingSessionRunningImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BreathingSessionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? cycle = null,
    Object? elapsed = null,
    Object? phaseDuration = null,
  }) {
    return _then(
      _$BreathingSessionRunningImpl(
        phase: null == phase
            ? _value.phase
            : phase // ignore: cast_nullable_to_non_nullable
                  as BreathingPhase,
        cycle: null == cycle
            ? _value.cycle
            : cycle // ignore: cast_nullable_to_non_nullable
                  as int,
        elapsed: null == elapsed
            ? _value.elapsed
            : elapsed // ignore: cast_nullable_to_non_nullable
                  as double,
        phaseDuration: null == phaseDuration
            ? _value.phaseDuration
            : phaseDuration // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$BreathingSessionRunningImpl implements BreathingSessionRunning {
  const _$BreathingSessionRunningImpl({
    required this.phase,
    required this.cycle,
    required this.elapsed,
    required this.phaseDuration,
  });

  @override
  final BreathingPhase phase;
  @override
  final int cycle;
  @override
  final double elapsed;
  @override
  final double phaseDuration;

  @override
  String toString() {
    return 'BreathingSessionState.running(phase: $phase, cycle: $cycle, elapsed: $elapsed, phaseDuration: $phaseDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreathingSessionRunningImpl &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.cycle, cycle) || other.cycle == cycle) &&
            (identical(other.elapsed, elapsed) || other.elapsed == elapsed) &&
            (identical(other.phaseDuration, phaseDuration) ||
                other.phaseDuration == phaseDuration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phase, cycle, elapsed, phaseDuration);

  /// Create a copy of BreathingSessionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreathingSessionRunningImplCopyWith<_$BreathingSessionRunningImpl>
  get copyWith =>
      __$$BreathingSessionRunningImplCopyWithImpl<
        _$BreathingSessionRunningImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )
    running,
    required TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )
    paused,
    required TResult Function(int totalCycles) completed,
  }) {
    return running(phase, cycle, elapsed, phaseDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    running,
    TResult? Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    paused,
    TResult? Function(int totalCycles)? completed,
  }) {
    return running?.call(phase, cycle, elapsed, phaseDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    running,
    TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    paused,
    TResult Function(int totalCycles)? completed,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(phase, cycle, elapsed, phaseDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BreathingSessionIdle value) idle,
    required TResult Function(BreathingSessionRunning value) running,
    required TResult Function(BreathingSessionPaused value) paused,
    required TResult Function(BreathingSessionCompleted value) completed,
  }) {
    return running(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BreathingSessionIdle value)? idle,
    TResult? Function(BreathingSessionRunning value)? running,
    TResult? Function(BreathingSessionPaused value)? paused,
    TResult? Function(BreathingSessionCompleted value)? completed,
  }) {
    return running?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BreathingSessionIdle value)? idle,
    TResult Function(BreathingSessionRunning value)? running,
    TResult Function(BreathingSessionPaused value)? paused,
    TResult Function(BreathingSessionCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(this);
    }
    return orElse();
  }
}

abstract class BreathingSessionRunning implements BreathingSessionState {
  const factory BreathingSessionRunning({
    required final BreathingPhase phase,
    required final int cycle,
    required final double elapsed,
    required final double phaseDuration,
  }) = _$BreathingSessionRunningImpl;

  BreathingPhase get phase;
  int get cycle;
  double get elapsed;
  double get phaseDuration;

  /// Create a copy of BreathingSessionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreathingSessionRunningImplCopyWith<_$BreathingSessionRunningImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BreathingSessionPausedImplCopyWith<$Res> {
  factory _$$BreathingSessionPausedImplCopyWith(
    _$BreathingSessionPausedImpl value,
    $Res Function(_$BreathingSessionPausedImpl) then,
  ) = __$$BreathingSessionPausedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    BreathingPhase phase,
    int cycle,
    double elapsed,
    double phaseDuration,
  });
}

/// @nodoc
class __$$BreathingSessionPausedImplCopyWithImpl<$Res>
    extends
        _$BreathingSessionStateCopyWithImpl<$Res, _$BreathingSessionPausedImpl>
    implements _$$BreathingSessionPausedImplCopyWith<$Res> {
  __$$BreathingSessionPausedImplCopyWithImpl(
    _$BreathingSessionPausedImpl _value,
    $Res Function(_$BreathingSessionPausedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BreathingSessionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? cycle = null,
    Object? elapsed = null,
    Object? phaseDuration = null,
  }) {
    return _then(
      _$BreathingSessionPausedImpl(
        phase: null == phase
            ? _value.phase
            : phase // ignore: cast_nullable_to_non_nullable
                  as BreathingPhase,
        cycle: null == cycle
            ? _value.cycle
            : cycle // ignore: cast_nullable_to_non_nullable
                  as int,
        elapsed: null == elapsed
            ? _value.elapsed
            : elapsed // ignore: cast_nullable_to_non_nullable
                  as double,
        phaseDuration: null == phaseDuration
            ? _value.phaseDuration
            : phaseDuration // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$BreathingSessionPausedImpl implements BreathingSessionPaused {
  const _$BreathingSessionPausedImpl({
    required this.phase,
    required this.cycle,
    required this.elapsed,
    required this.phaseDuration,
  });

  @override
  final BreathingPhase phase;
  @override
  final int cycle;
  @override
  final double elapsed;
  @override
  final double phaseDuration;

  @override
  String toString() {
    return 'BreathingSessionState.paused(phase: $phase, cycle: $cycle, elapsed: $elapsed, phaseDuration: $phaseDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreathingSessionPausedImpl &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.cycle, cycle) || other.cycle == cycle) &&
            (identical(other.elapsed, elapsed) || other.elapsed == elapsed) &&
            (identical(other.phaseDuration, phaseDuration) ||
                other.phaseDuration == phaseDuration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phase, cycle, elapsed, phaseDuration);

  /// Create a copy of BreathingSessionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreathingSessionPausedImplCopyWith<_$BreathingSessionPausedImpl>
  get copyWith =>
      __$$BreathingSessionPausedImplCopyWithImpl<_$BreathingSessionPausedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )
    running,
    required TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )
    paused,
    required TResult Function(int totalCycles) completed,
  }) {
    return paused(phase, cycle, elapsed, phaseDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    running,
    TResult? Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    paused,
    TResult? Function(int totalCycles)? completed,
  }) {
    return paused?.call(phase, cycle, elapsed, phaseDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    running,
    TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    paused,
    TResult Function(int totalCycles)? completed,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(phase, cycle, elapsed, phaseDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BreathingSessionIdle value) idle,
    required TResult Function(BreathingSessionRunning value) running,
    required TResult Function(BreathingSessionPaused value) paused,
    required TResult Function(BreathingSessionCompleted value) completed,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BreathingSessionIdle value)? idle,
    TResult? Function(BreathingSessionRunning value)? running,
    TResult? Function(BreathingSessionPaused value)? paused,
    TResult? Function(BreathingSessionCompleted value)? completed,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BreathingSessionIdle value)? idle,
    TResult Function(BreathingSessionRunning value)? running,
    TResult Function(BreathingSessionPaused value)? paused,
    TResult Function(BreathingSessionCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class BreathingSessionPaused implements BreathingSessionState {
  const factory BreathingSessionPaused({
    required final BreathingPhase phase,
    required final int cycle,
    required final double elapsed,
    required final double phaseDuration,
  }) = _$BreathingSessionPausedImpl;

  BreathingPhase get phase;
  int get cycle;
  double get elapsed;
  double get phaseDuration;

  /// Create a copy of BreathingSessionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreathingSessionPausedImplCopyWith<_$BreathingSessionPausedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BreathingSessionCompletedImplCopyWith<$Res> {
  factory _$$BreathingSessionCompletedImplCopyWith(
    _$BreathingSessionCompletedImpl value,
    $Res Function(_$BreathingSessionCompletedImpl) then,
  ) = __$$BreathingSessionCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int totalCycles});
}

/// @nodoc
class __$$BreathingSessionCompletedImplCopyWithImpl<$Res>
    extends
        _$BreathingSessionStateCopyWithImpl<
          $Res,
          _$BreathingSessionCompletedImpl
        >
    implements _$$BreathingSessionCompletedImplCopyWith<$Res> {
  __$$BreathingSessionCompletedImplCopyWithImpl(
    _$BreathingSessionCompletedImpl _value,
    $Res Function(_$BreathingSessionCompletedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BreathingSessionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalCycles = null}) {
    return _then(
      _$BreathingSessionCompletedImpl(
        totalCycles: null == totalCycles
            ? _value.totalCycles
            : totalCycles // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$BreathingSessionCompletedImpl implements BreathingSessionCompleted {
  const _$BreathingSessionCompletedImpl({required this.totalCycles});

  @override
  final int totalCycles;

  @override
  String toString() {
    return 'BreathingSessionState.completed(totalCycles: $totalCycles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreathingSessionCompletedImpl &&
            (identical(other.totalCycles, totalCycles) ||
                other.totalCycles == totalCycles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalCycles);

  /// Create a copy of BreathingSessionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreathingSessionCompletedImplCopyWith<_$BreathingSessionCompletedImpl>
  get copyWith =>
      __$$BreathingSessionCompletedImplCopyWithImpl<
        _$BreathingSessionCompletedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )
    running,
    required TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )
    paused,
    required TResult Function(int totalCycles) completed,
  }) {
    return completed(totalCycles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    running,
    TResult? Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    paused,
    TResult? Function(int totalCycles)? completed,
  }) {
    return completed?.call(totalCycles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    running,
    TResult Function(
      BreathingPhase phase,
      int cycle,
      double elapsed,
      double phaseDuration,
    )?
    paused,
    TResult Function(int totalCycles)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(totalCycles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BreathingSessionIdle value) idle,
    required TResult Function(BreathingSessionRunning value) running,
    required TResult Function(BreathingSessionPaused value) paused,
    required TResult Function(BreathingSessionCompleted value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BreathingSessionIdle value)? idle,
    TResult? Function(BreathingSessionRunning value)? running,
    TResult? Function(BreathingSessionPaused value)? paused,
    TResult? Function(BreathingSessionCompleted value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BreathingSessionIdle value)? idle,
    TResult Function(BreathingSessionRunning value)? running,
    TResult Function(BreathingSessionPaused value)? paused,
    TResult Function(BreathingSessionCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class BreathingSessionCompleted implements BreathingSessionState {
  const factory BreathingSessionCompleted({required final int totalCycles}) =
      _$BreathingSessionCompletedImpl;

  int get totalCycles;

  /// Create a copy of BreathingSessionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreathingSessionCompletedImplCopyWith<_$BreathingSessionCompletedImpl>
  get copyWith => throw _privateConstructorUsedError;
}
