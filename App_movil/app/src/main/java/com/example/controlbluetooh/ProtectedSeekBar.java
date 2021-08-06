package com.example.controlbluetooh;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.SeekBar;


public class ProtectedSeekBar extends androidx.appcompat.widget.AppCompatSeekBar {
    private Drawable mThumb;

    public ProtectedSeekBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
    public ProtectedSeekBar(Context context, AttributeSet attrs) {
        super(context, attrs);
    }
    public ProtectedSeekBar(Context context) {
        super(context);
    }

    @Override
    public void setThumb(Drawable thumb) {
        super.setThumb(thumb);
        mThumb = thumb;
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        if(event.getAction() == MotionEvent.ACTION_DOWN) {
            if( event.getX() < mThumb.getBounds().left ||
                    event.getX() > mThumb.getBounds().right ||
                    event.getY() > mThumb.getBounds().bottom ||
                    event.getY() < mThumb.getBounds().top) {
                return false;
            }
        }
        return super.onTouchEvent(event);
    }
}

///////////////////////////////////////////////////////////////////////
/*package com.timera.android.common.view;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.SeekBar;

@SuppressLint("AppCompatCustomView")
public class ProtectedSeekBar extends SeekBar {
    public ProtectedSeekBar(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }
    public ProtectedSeekBar(Context context, AttributeSet attrs) {
        super(context, attrs);
    }
    public ProtectedSeekBar(Context context) {
        super(context);
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getAction()) {
            case MotionEvent.ACTION_DOWN:
                final int width = getWidth();
                final int available = width - getPaddingLeft() - getPaddingRight();
                int x = (int) event.getX();
                float scale;
                float progress = 0;
                if (x < getPaddingLeft()) {
                    scale = 0.0f;
                } else if (x > width - getPaddingRight()) {
                    scale = 1.0f;
                } else {
                    scale = (float) (x - getPaddingLeft()) / (float) available;
                }
                final int max = getMax();
                progress += scale * max;
                if (progress < 0) {
                    progress = 0;
                } else if (progress > max) {
                    progress = max;
                }

                if (Math.abs(progress - getProgress()) < 10) return super.onTouchEvent(event);
                else return false;
            default:
                return super.onTouchEvent(event);
        }
    }
}
*/