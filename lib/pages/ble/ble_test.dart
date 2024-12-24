import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:oyutamaribondo/pages/ble/ble_scan.dart';

class LoadBlePage extends HookWidget {
  const LoadBlePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use the `useStream` hook to listen to the Bluetooth adapter state
    final adapterState = useStream(FlutterBluePlus.adapterState,
        initialData: BluetoothAdapterState.unknown);

    // Determine which screen to show based on the adapter state
    final Widget screen = adapterState.data == BluetoothAdapterState.on
        ? const BleScanPage()
        : Text('Adapter state: ${adapterState.data}');

    return Scaffold(
      body: Center(child: screen),
    );
  }
}
