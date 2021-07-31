package com.example.controlbluetooh;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageButton;

public class MainActivity extends AppCompatActivity {

    Animation scaleDown_up, scaleUp_up, scaleDown_down, scaleUp_down, scaleDown_left, scaleUp_left, scaleDown_right, scaleUp_right;
    ImageButton btnUp, btnDown, btnLeft, btnRight;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //Se define solo vista horizontal
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);

        //Botones direccionales
        btnUp = findViewById(R.id.btnUp);
        btnDown = findViewById(R.id.btnDown);
        btnLeft = findViewById(R.id.btnLeft);
        btnRight = findViewById(R.id.btnRight);

        //animación
        //Se hace una animación para cada boton porque de lo contrario se pueden cruzar las animaciones...
        // Ej: Se suelta right y la animacion la puede ejecutar ese boton y algún otro como up
        scaleDown_up = AnimationUtils.loadAnimation(this, R.anim.scale_down); scaleDown_down = AnimationUtils.loadAnimation(this, R.anim.scale_down);
        scaleDown_right = AnimationUtils.loadAnimation(this, R.anim.scale_down); scaleDown_left = AnimationUtils.loadAnimation(this, R.anim.scale_down);
        scaleUp_up = AnimationUtils.loadAnimation(this, R.anim.scale_up); scaleUp_down = AnimationUtils.loadAnimation(this, R.anim.scale_up);
        scaleUp_right = AnimationUtils.loadAnimation(this, R.anim.scale_up); scaleUp_left = AnimationUtils.loadAnimation(this, R.anim.scale_up);
        setAnimation_to_buttons();



    }

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