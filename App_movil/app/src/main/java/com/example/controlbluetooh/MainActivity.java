package com.example.controlbluetooh;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.Toast;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Set;
import java.util.UUID;

public class MainActivity extends AppCompatActivity {
    //Bluetooth
    private BluetoothAdapter btAdapter = null;// Adapter del bluetooth del celular
    private BluetoothSocket btSocket = null;
    public static String address = null;
    private static final UUID BTMODULEUUID = UUID.fromString("00001101-0000-1000-8000-00805F9B34FB");
    public boolean activar;
    Handler bluetoothIn;
    final int handlerState = 0;
    private ConnectedThread MyConexionBT;
    Button btnConnect, btnDisconnect;

    //Animacion
    Animation scaleDown_up, scaleUp_up, scaleDown_down, scaleUp_down, scaleDown_left, scaleUp_left, scaleDown_right, scaleUp_right;
    ImageButton btnUp, btnDown, btnLeft, btnRight;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //Se define solo vista horizontal
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);

        //************************ Animación *************************
        // Botones direccionales
        btnUp = findViewById(R.id.btnUp);
        btnDown = findViewById(R.id.btnDown);
        btnLeft = findViewById(R.id.btnLeft);
        btnRight = findViewById(R.id.btnRight);

        // Se hace una animación para cada boton porque de lo contrario se pueden cruzar las animaciones...
        // Ej: Se suelta right y la animacion la puede ejecutar ese boton y algún otro como up
        scaleDown_up = AnimationUtils.loadAnimation(this, R.anim.scale_down); scaleDown_down = AnimationUtils.loadAnimation(this, R.anim.scale_down);
        scaleDown_right = AnimationUtils.loadAnimation(this, R.anim.scale_down); scaleDown_left = AnimationUtils.loadAnimation(this, R.anim.scale_down);
        scaleUp_up = AnimationUtils.loadAnimation(this, R.anim.scale_up); scaleUp_down = AnimationUtils.loadAnimation(this, R.anim.scale_up);
        scaleUp_right = AnimationUtils.loadAnimation(this, R.anim.scale_up); scaleUp_left = AnimationUtils.loadAnimation(this, R.anim.scale_up);
        setAnimation_to_buttons();

        //******************* Conexión bluetooth *******************
        //Botones de conección
        btnConnect = findViewById(R.id.btnConnect);
        btnDisconnect = findViewById(R.id.btnDisconnect);

        btAdapter = BluetoothAdapter.getDefaultAdapter();// Obtiene el adaptador bluetooth del celular
        verificarBluetooth();// verifica que el celular tenga activado el bluetooth
        Set<BluetoothDevice> pairedDeveicesList = btAdapter.getBondedDevices();
        // Obtener el address del modulo, va verificando cada uno de las señales bluetooth presentes
        for(BluetoothDevice pairedDevice : pairedDeveicesList){
            if(pairedDevice.getName().equals("HC-05")){// Encuentra al modulo
                address = pairedDevice.getAddress();
            }
        }
        btnConnect.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                activar = true;
                onResume();
            }
        });
        btnDisconnect.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
            try{
                btSocket.close();
            } catch(Exception e){
                e.printStackTrace();
            }
            }
        });





    }

    /////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////// BLUETOOTH /////////////////////////////////////////////

    private BluetoothSocket createBluetoothSocket (BluetoothDevice device) throws IOException {
        return device.createRfcommSocketToServiceRecord(BTMODULEUUID);
    }


    /**
     * Lanza un Toast en caso de que el bluetooth no esté activo en el celular
     */
    private void verificarBluetooth(){
        if(btAdapter.isEnabled()){
            //No se hace nada, continúa con normalidad
        }else{

            Intent intent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
            startActivityForResult(intent,1);
        }
    }

    public void onResume() {
        super.onResume();
        if (activar) {
            BluetoothDevice device = btAdapter.getRemoteDevice(address);

            try {
                btSocket = createBluetoothSocket(device);

            } catch (IOException e) {
                Toast.makeText(getBaseContext(), "La creacción del Socket fallo", Toast.LENGTH_LONG).show();
            }
            // Establece la conexión con el socket Bluetooth.
            try {
                btSocket.connect();
            } catch (IOException e) {
                try {
                    btSocket.close();
                } catch (IOException e2) {

                }
            }
            MyConexionBT = new ConnectedThread(btSocket);
            MyConexionBT.start();
        }
    }

    private class ConnectedThread extends Thread {
        private final InputStream mmInStream;
        private final OutputStream mmOutStream;

        public ConnectedThread(BluetoothSocket socket) {

            InputStream tmpIn = null;
            OutputStream tmpOut = null;
            try {
                tmpIn = socket.getInputStream();
                tmpOut = socket.getOutputStream();
            } catch (IOException e) {

            }
            mmInStream = tmpIn;
            mmOutStream = tmpOut;
        }

        public void run() {
            byte[] buffer = new byte[256];
            int bytes;

            // Se mantiene en modo escucha para determinar el ingreso de datos
            while (true) {
                try {

                    bytes = mmInStream.read(buffer);
                    String readMessage = new String(buffer, 0, bytes);
                    // Envia los datos obtenidos hacia el evento via handler
                    bluetoothIn.obtainMessage(handlerState, bytes, -1, readMessage).sendToTarget();
                } catch (IOException e) {
                    break;
                }
            }
        }

        //Envio de trama para el arduino
        public void write(String input) {
            try {
                mmOutStream.write(input.getBytes());
            } catch (IOException e) {
                //si no es posible enviar datos se cierra la conexión
                Toast.makeText(getBaseContext(), "La Conexión fallo", Toast.LENGTH_LONG).show();
                finish();
            }
        }

    }




    /////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////// ANIMACIONES /////////////////////////////////////////////
    @SuppressLint("ClickableViewAccessibility")
    private void setAnimation_to_buttons(){
        btnUp.setOnTouchListener(new View.OnTouchListener() {
            private boolean is_pressed1 = false;
            @Override
            public boolean onTouch(View view, MotionEvent motionEvent) {
                pressAnimation(btnUp, scaleDown_up, scaleUp_up, motionEvent);
                return true;
            }
        });
       btnDown.setOnTouchListener(new View.OnTouchListener() {
            private boolean is_pressed2 = false;
            @Override
            public boolean onTouch(View view, MotionEvent motionEvent) {
                pressAnimation(btnDown, scaleDown_down, scaleUp_down, motionEvent);
                return true;
            }
        });
        btnLeft.setOnTouchListener(new View.OnTouchListener() {
            private boolean is_pressed3 = false;
            @Override
            public boolean onTouch(View view, MotionEvent motionEvent) {
                pressAnimation(btnLeft, scaleDown_left, scaleUp_left, motionEvent);
                return true;
            }
        });
        btnRight.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View view, MotionEvent motionEvent) {
                pressAnimation(btnRight, scaleDown_right, scaleUp_right, motionEvent);
                return true;
            }
        });
    }

    private void pressAnimation(ImageButton btn, Animation scaleDown, Animation scaleUp, MotionEvent motionEvent){
        if(motionEvent.getAction()==MotionEvent.ACTION_DOWN){//cuando se lo presiona
            btn.startAnimation(scaleDown);
        }else if(motionEvent.getAction()==MotionEvent.ACTION_UP){//cuando se lo suelta
            btn.startAnimation(scaleUp);
        }
    }


}