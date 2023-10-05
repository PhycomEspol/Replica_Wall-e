package com.example.controlbluetooh;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.content.Context;
import android.os.Handler;
import android.widget.Toast;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

public class BluetoothConnection {
    private final BluetoothSocket mmSocket;
    private final InputStream mmInStream;
    private final OutputStream mmOutStream;

    private final Handler bluetoothIn;
    private final int handlerState;
    private final Context context; // Agregado: referencia al contexto

    public BluetoothConnection(BluetoothSocket socket, Handler handler, int state, Context context) {
        mmSocket = socket;
        bluetoothIn = handler;
        handlerState = state;
        this.context = context; // Agregado: inicializa el contexto

        InputStream tmpIn = null;
        OutputStream tmpOut = null;

        try {
            tmpIn = mmSocket.getInputStream();
            tmpOut = mmSocket.getOutputStream();
        } catch (IOException e) {
            e.printStackTrace();
        }

        mmInStream = tmpIn;
        mmOutStream = tmpOut;
    }

    public void run() {
        byte[] buffer = new byte[256];
        int bytes;

        while (true) {
            try {
                bytes = mmInStream.read(buffer);
                String readMessage = new String(buffer, 0, bytes);
                bluetoothIn.obtainMessage(handlerState, bytes, -1, readMessage).sendToTarget();
            } catch (IOException e) {
                e.printStackTrace();
                break;
            }
        }
    }

    public void write(int input) {
        try {
            mmOutStream.write(input);
        } catch (IOException e) {
            Toast.makeText(context, "La Conexión falló", Toast.LENGTH_LONG).show();
            e.printStackTrace();
        }
    }

    public void cancel() {
        try {
            mmSocket.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
