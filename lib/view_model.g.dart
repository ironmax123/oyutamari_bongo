// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homePageVMHash() => r'dfb515b124dc6ac7f7000fe0a0df330a99b9973c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$HomePageVM
    extends BuildlessAutoDisposeAsyncNotifier<HomePageState> {
  late final AudioPlayer audioPlayer;

  FutureOr<HomePageState> build(
    AudioPlayer audioPlayer,
  );
}

/// See also [HomePageVM].
@ProviderFor(HomePageVM)
const homePageVMProvider = HomePageVMFamily();

/// See also [HomePageVM].
class HomePageVMFamily extends Family<AsyncValue<HomePageState>> {
  /// See also [HomePageVM].
  const HomePageVMFamily();

  /// See also [HomePageVM].
  HomePageVMProvider call(
    AudioPlayer audioPlayer,
  ) {
    return HomePageVMProvider(
      audioPlayer,
    );
  }

  @override
  HomePageVMProvider getProviderOverride(
    covariant HomePageVMProvider provider,
  ) {
    return call(
      provider.audioPlayer,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'homePageVMProvider';
}

/// See also [HomePageVM].
class HomePageVMProvider
    extends AutoDisposeAsyncNotifierProviderImpl<HomePageVM, HomePageState> {
  /// See also [HomePageVM].
  HomePageVMProvider(
    AudioPlayer audioPlayer,
  ) : this._internal(
          () => HomePageVM()..audioPlayer = audioPlayer,
          from: homePageVMProvider,
          name: r'homePageVMProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homePageVMHash,
          dependencies: HomePageVMFamily._dependencies,
          allTransitiveDependencies:
              HomePageVMFamily._allTransitiveDependencies,
          audioPlayer: audioPlayer,
        );

  HomePageVMProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.audioPlayer,
  }) : super.internal();

  final AudioPlayer audioPlayer;

  @override
  FutureOr<HomePageState> runNotifierBuild(
    covariant HomePageVM notifier,
  ) {
    return notifier.build(
      audioPlayer,
    );
  }

  @override
  Override overrideWith(HomePageVM Function() create) {
    return ProviderOverride(
      origin: this,
      override: HomePageVMProvider._internal(
        () => create()..audioPlayer = audioPlayer,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        audioPlayer: audioPlayer,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<HomePageVM, HomePageState>
      createElement() {
    return _HomePageVMProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HomePageVMProvider && other.audioPlayer == audioPlayer;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, audioPlayer.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HomePageVMRef on AutoDisposeAsyncNotifierProviderRef<HomePageState> {
  /// The parameter `audioPlayer` of this provider.
  AudioPlayer get audioPlayer;
}

class _HomePageVMProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HomePageVM, HomePageState>
    with HomePageVMRef {
  _HomePageVMProviderElement(super.provider);

  @override
  AudioPlayer get audioPlayer => (origin as HomePageVMProvider).audioPlayer;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
