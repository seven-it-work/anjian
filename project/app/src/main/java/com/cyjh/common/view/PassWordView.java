package com.cyjh.common.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Handler;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public class PassWordView extends View {

    /* renamed from: a */
    private Paint f4340a;

    /* renamed from: b */
    private Handler f4341b;

    /* renamed from: c */
    private boolean f4342c;

    /* renamed from: d */
    private boolean f4343d;

    /* renamed from: e */
    private boolean f4344e;

    /* renamed from: f */
    private int f4345f;

    /* renamed from: g */
    private int f4346g;

    /* renamed from: h */
    private int f4347h;

    /* renamed from: i */
    private int f4348i;

    /* renamed from: j */
    private int f4349j;

    /* renamed from: k */
    private int f4350k;

    /* renamed from: l */
    private boolean f4351l;

    /* renamed from: m */
    private int f4352m;

    /* renamed from: n */
    private int f4353n;

    /* renamed from: o */
    private String f4354o;

    /* renamed from: p */
    private Context f4355p;

    /* renamed from: q */
    private String f4356q;

    /* renamed from: r */
    private int f4357r;

    /* renamed from: s */
    private int f4358s;

    public PassWordView(Context context) {
        this(context, null);
    }

    public PassWordView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PassWordView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f4343d = false;
        this.f4349j = 0;
        this.f4350k = 0;
        this.f4351l = true;
        this.f4352m = 40;
        this.f4353n = 40;
        this.f4354o = "";
        this.f4356q = Marker.ANY_MARKER;
        this.f4357r = 18;
        this.f4358s = 4;
        this.f4355p = context;
        this.f4340a = new Paint();
        this.f4340a.setAntiAlias(true);
        this.f4340a.setStrokeWidth(this.f4358s);
        this.f4340a.setPathEffect(new CornerPathEffect(1.0f));
    }

    /* renamed from: a */
    private void m5296a(Canvas canvas) {
        if (this.f4342c) {
            this.f4340a.setColor(ContextCompat.getColor(this.f4355p, this.f4348i));
            this.f4340a.setStyle(Paint.Style.FILL);
            switch (this.f4350k) {
                case 0:
                    canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, 8.0f, this.f4340a);
                    return;
                case 1:
                    this.f4340a.setTextSize((getMeasuredWidth() / 2) + 10);
                    float measureText = this.f4340a.measureText(this.f4356q);
                    canvas.drawText(this.f4356q, (getMeasuredWidth() / 2) - (measureText / 2.0f), ((getMeasuredHeight() / 2) - ((this.f4340a.descent() + this.f4340a.ascent()) / 2.0f)) + (measureText / 3.0f), this.f4340a);
                    return;
                case 2:
                    this.f4340a.setTextSize(this.f4357r);
                    float measureText2 = this.f4340a.measureText(this.f4354o);
                    canvas.drawText(this.f4354o, (getMeasuredWidth() / 2) - (measureText2 / 2.0f), ((getMeasuredHeight() / 2) - ((this.f4340a.descent() + this.f4340a.ascent()) / 2.0f)) + (measureText2 / 5.0f), this.f4340a);
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: b */
    private void m5300b(Canvas canvas) {
        if (this.f4344e && this.f4351l) {
            int measuredWidth = (getMeasuredWidth() / 2) - 10;
            if (measuredWidth < 0) {
                measuredWidth = getMeasuredWidth() / 2;
            }
            this.f4340a.setStyle(Paint.Style.FILL);
            this.f4340a.setColor(ContextCompat.getColor(this.f4355p, this.f4347h));
            int i = measuredWidth / 2;
            canvas.drawLine(getMeasuredWidth() / 2, (getMeasuredHeight() / 2) - i, getMeasuredWidth() / 2, (getMeasuredHeight() / 2) + i, this.f4340a);
        }
    }

    /* renamed from: c */
    private void m5301c(Canvas canvas) {
        Paint paint;
        Context context;
        int i;
        if (this.f4343d) {
            paint = this.f4340a;
            context = this.f4355p;
            i = this.f4345f;
        } else {
            paint = this.f4340a;
            context = this.f4355p;
            i = this.f4346g;
        }
        paint.setColor(ContextCompat.getColor(context, i));
        this.f4340a.setStyle(Paint.Style.STROKE);
        switch (this.f4349j) {
            case 1:
                canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, (float) ((getMeasuredWidth() / 2) - 5), this.f4340a);
                return;
            case 2:
                canvas.drawLine(0.0f, getMeasuredHeight(), getMeasuredWidth(), getMeasuredHeight(), this.f4340a);
                return;
            default:
                canvas.drawRoundRect(new RectF(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight()), 6.0f, 6.0f, this.f4340a);
                return;
        }
    }

    /* renamed from: a */
    public final void m5302a() {
        this.f4343d = true;
        this.f4342c = false;
        if (this.f4341b == null) {
            this.f4341b = new Handler();
        }
        this.f4341b.removeCallbacksAndMessages(null);
        if (this.f4351l) {
            this.f4341b.post(new Runnable() { // from class: com.cyjh.common.view.PassWordView.1
                @Override // java.lang.Runnable
                public final void run() {
                    PassWordView.this.f4344e = !PassWordView.this.f4344e;
                    PassWordView.this.invalidate();
                    PassWordView.this.f4341b.postDelayed(this, 800L);
                }
            });
        } else {
            invalidate();
        }
    }

    /* renamed from: a */
    public final void m5303a(boolean z) {
        if (this.f4341b != null) {
            this.f4341b.removeCallbacksAndMessages(null);
        }
        if (z) {
            this.f4343d = true;
            this.f4342c = true;
        } else {
            this.f4343d = false;
            this.f4342c = false;
        }
        this.f4344e = false;
        invalidate();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f4341b != null) {
            this.f4341b.removeCallbacksAndMessages(null);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Paint paint;
        Context context;
        int i;
        if (this.f4343d) {
            paint = this.f4340a;
            context = this.f4355p;
            i = this.f4345f;
        } else {
            paint = this.f4340a;
            context = this.f4355p;
            i = this.f4346g;
        }
        paint.setColor(ContextCompat.getColor(context, i));
        this.f4340a.setStyle(Paint.Style.STROKE);
        switch (this.f4349j) {
            case 1:
                canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, (float) ((getMeasuredWidth() / 2) - 5), this.f4340a);
                break;
            case 2:
                canvas.drawLine(0.0f, getMeasuredHeight(), getMeasuredWidth(), getMeasuredHeight(), this.f4340a);
                break;
            default:
                canvas.drawRoundRect(new RectF(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight()), 6.0f, 6.0f, this.f4340a);
                break;
        }
        if (this.f4344e && this.f4351l) {
            int measuredWidth = (getMeasuredWidth() / 2) - 10;
            if (measuredWidth < 0) {
                measuredWidth = getMeasuredWidth() / 2;
            }
            this.f4340a.setStyle(Paint.Style.FILL);
            this.f4340a.setColor(ContextCompat.getColor(this.f4355p, this.f4347h));
            int i2 = measuredWidth / 2;
            canvas.drawLine(getMeasuredWidth() / 2, (getMeasuredHeight() / 2) - i2, getMeasuredWidth() / 2, (getMeasuredHeight() / 2) + i2, this.f4340a);
        }
        if (this.f4342c) {
            this.f4340a.setColor(ContextCompat.getColor(this.f4355p, this.f4348i));
            this.f4340a.setStyle(Paint.Style.FILL);
            switch (this.f4350k) {
                case 0:
                    canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, 8.0f, this.f4340a);
                    return;
                case 1:
                    this.f4340a.setTextSize((getMeasuredWidth() / 2) + 10);
                    float measureText = this.f4340a.measureText(this.f4356q);
                    canvas.drawText(this.f4356q, (getMeasuredWidth() / 2) - (measureText / 2.0f), ((getMeasuredHeight() / 2) - ((this.f4340a.descent() + this.f4340a.ascent()) / 2.0f)) + (measureText / 3.0f), this.f4340a);
                    return;
                case 2:
                    this.f4340a.setTextSize(this.f4357r);
                    float measureText2 = this.f4340a.measureText(this.f4354o);
                    canvas.drawText(this.f4354o, (getMeasuredWidth() / 2) - (measureText2 / 2.0f), ((getMeasuredHeight() / 2) - ((this.f4340a.descent() + this.f4340a.ascent()) / 2.0f)) + (measureText2 / 5.0f), this.f4340a);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824) {
            int i3 = this.f4352m;
            size = mode == Integer.MIN_VALUE ? Math.min(i3, size) : i3;
        }
        if (mode2 != 1073741824) {
            int i4 = this.f4353n;
            size2 = mode2 == Integer.MIN_VALUE ? Math.min(i4, size2) : i4;
        }
        setMeasuredDimension(size, size2);
    }

    public void setDrawTxtContent(String str) {
        this.f4356q = str;
    }

    public void setInputState(boolean z) {
        this.f4343d = z;
    }

    public void setInputStateColor(int i) {
        this.f4345f = i;
    }

    public void setInputStateTextColor(int i) {
        this.f4348i = i;
    }

    public void setNoinputColor(int i) {
        this.f4346g = i;
    }

    public void setRemindLineColor(int i) {
        this.f4347h = i;
    }

    public void setmBoxDrawType(int i) {
        this.f4349j = i;
    }

    public void setmDrawBoxLineSize(int i) {
        this.f4358s = i;
    }

    public void setmDrawTxtSize(int i) {
        this.f4357r = i;
    }

    public void setmIsShowRemindLine(boolean z) {
        this.f4351l = z;
    }

    public void setmPassText(String str) {
        this.f4354o = str;
    }

    public void setmShowPassType(int i) {
        this.f4350k = i;
    }
}
