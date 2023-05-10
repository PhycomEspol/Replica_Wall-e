import 'dart:async';
import 'dart:convert';
import 'dart:ui';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Connection {
  FlutterBluePlus  flutterBluePlus = FlutterBluePlus.instance;
  BluetoothDevice? _connectedDevice;
  //BluetoothConnection? _connection;
  StreamSubscription? _deviceState;

  Future<bool> get isEnable {
    return flutterBluePlus.isOn;
  }

  Future<bool> requestEnable() async {
    return isEnable.then((value) async {
      print("Value in request Enable: "+value.toString());
      if (!value) {
        return await FlutterBluePlus.instance.turnOn();
      } else {
        return true;
      }

    });
  }

  Future<bool> connect(BluetoothDevice device, VoidCallback onConnectionLost) async {
    _connectedDevice = device;
    print("conectando a: "+device.name);
    try {
      await _connectedDevice?.connect(timeout: Duration(seconds: 5));/*.listen((_) {
        onConnectionLost();
      });*/
      _deviceState = device.state.listen((event) {
        if (event == BluetoothDeviceState.disconnected) {
          onConnectionLost();
        }
      });
      return true;
    } catch (e) {
      _connectedDevice = null;
      print('Error connecting to device: $e');
      Fluttertoast.showToast(msg: "Error connecting to device: $e");
      return false;
    }
  }

  Future<void> disconnect() async {
    try {
      await _connectedDevice?.disconnect();
    } catch (e) {
      print('Error disconnecting from device: $e');
      Fluttertoast.showToast(msg: "Error connecting to device: $e");
    }
  }

  Future scanDevices() async {
    print("Antes de scan");
    await flutterBluePlus.startScan(
      timeout: Duration(seconds: 2),
      //scanMode: ScanMode.opportunistic
    );
    print("Antes de delayed");
    //await Future.delayed(Duration(seconds: 5));
    print("Antes de stop");
    await flutterBluePlus.stopScan();
    print("Después de stop");
  }

  Stream<List<BluetoothDevice>> get scanResults {
    return flutterBluePlus.scanResults.map((results) {
      print("longitud de scanResults: "+results.length.toString());
      return results.map((result) {
        print("Nombre del Dispositivo: "+result.device.name.toString());
        return result.device;
      }).toList();
    });
  }

  Stream<List<BluetoothDevice>> bondedDevices() async* {
    List<BluetoothDevice> devices = [];
    //var bondedDevices = await flutterBluePlus.bondedDevices;
    for(BluetoothDevice result in await flutterBluePlus.bondedDevices){
      await Future.delayed(Duration(seconds: 1));
      devices.add(result);
      yield devices;
    }
  }

  Future<bool> pairDevice(BluetoothDevice device) async {
    try {
      await device.connect();
      return true;
    } catch (e) {
      print('Error pairing device: $e');
      return false;
    }
  }

  Future<void> sendString(String message) async {
    /*if (_connectedDevice != null) {
      List<int> bytes = utf8.encode(message);
      _connectedDevice.services!.write(bytes);
    } else {
      throw Exception('No hay conexión Bluetooth establecida');
    }*/
    //await bluetoothCharacteristic.write(utf8.encode(str));
    // TODO: probar que funcione correctamente
    List<BluetoothService>? services = await _connectedDevice?.discoverServices();
    if(services==null){print("NULL services");}
    services!.forEach((service) async {
        // do something with service
        var characteristics = service.characteristics;
        for(BluetoothCharacteristic c in characteristics) {
            //List<int> value = await c.read(); //read
            //print(value);
            // Writes to a characteristic
            print(message);
            print(utf8.encode(message));
            await c.write(utf8.encode(message));
        }

        
    });
  }
}