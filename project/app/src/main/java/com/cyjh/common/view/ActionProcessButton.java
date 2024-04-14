package com.cyjh.common.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.cyjh.common.C1130R;

/* loaded from: classes.dex */
public class ActionProcessButton extends ProcessButton {

    /* renamed from: a */
    private C1206b f4284a;

    /* renamed from: b */
    private EnumC1205a f4285b;

    /* renamed from: c */
    private int f4286c;

    /* renamed from: d */
    private int f4287d;

    /* renamed from: e */
    private int f4288e;

    /* renamed from: f */
    private int f4289f;

    /* renamed from: com.cyjh.common.view.ActionProcessButton$a */
    /* loaded from: classes.dex */
    public enum EnumC1205a {
        PROGRESS,
        ENDLESS
    }

    /* renamed from: com.cyjh.common.view.ActionProcessButton$b */
    /* loaded from: classes.dex */
    public static class C1206b {

        /* renamed from: a */
        static final Interpolator f4291a = new AccelerateDecelerateInterpolator();

        /* renamed from: m */
        private static final int f4292m = -1291845632;

        /* renamed from: n */
        private static final int f4293n = Integer.MIN_VALUE;

        /* renamed from: o */
        private static final int f4294o = 1291845632;

        /* renamed from: p */
        private static final int f4295p = 436207616;

        /* renamed from: q */
        private static final int f4296q = 2000;

        /* renamed from: r */
        private static final int f4297r = 1000;

        /* renamed from: c */
        float f4299c;

        /* renamed from: d */
        long f4300d;

        /* renamed from: e */
        long f4301e;

        /* renamed from: f */
        boolean f4302f;

        /* renamed from: k */
        View f4307k;

        /* renamed from: s */
        private final Paint f4309s = new Paint();

        /* renamed from: b */
        final RectF f4298b = new RectF();

        /* renamed from: l */
        Rect f4308l = new Rect();

        /* renamed from: g */
        int f4303g = f4292m;

        /* renamed from: h */
        int f4304h = Integer.MIN_VALUE;

        /* renamed from: i */
        int f4305i = f4294o;

        /* renamed from: j */
        int f4306j = f4295p;

        public C1206b(View view) {
            this.f4307k = view;
        }

        /* renamed from: a */
        private void m5262a() {
            if (this.f4302f) {
                return;
            }
            this.f4299c = 0.0f;
            this.f4300d = AnimationUtils.currentAnimationTimeMillis();
            this.f4302f = true;
            this.f4307k.postInvalidate();
        }

        /* renamed from: a */
        private void m5263a(int i, int i2, int i3) {
            this.f4308l.left = 0;
            this.f4308l.top = i;
            this.f4308l.right = i2;
            this.f4308l.bottom = i3;
        }

        /* renamed from: a */
        private void m5264a(int i, int i2, int i3, int i4) {
            this.f4303g = i;
            this.f4304h = i2;
            this.f4305i = i3;
            this.f4306j = i4;
        }

        /* renamed from: a */
        private void m5265a(Canvas canvas) {
            long j;
            boolean z;
            int i;
            int width = this.f4308l.width();
            int height = this.f4308l.height();
            int i2 = width / 2;
            int i3 = height / 2;
            int save = canvas.save();
            canvas.clipRect(this.f4308l);
            if (this.f4302f || this.f4301e > 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                long j2 = (currentAnimationTimeMillis - this.f4300d) % 2000;
                long j3 = (currentAnimationTimeMillis - this.f4300d) / 2000;
                float f = ((float) j2) / 20.0f;
                if (this.f4302f) {
                    j = 0;
                    z = false;
                } else {
                    if (currentAnimationTimeMillis - this.f4301e >= 1000) {
                        this.f4301e = 0L;
                        return;
                    }
                    float f2 = i2;
                    float interpolation = f4291a.getInterpolation((((float) ((currentAnimationTimeMillis - this.f4301e) % 1000)) / 10.0f) / 100.0f) * f2;
                    this.f4298b.set(f2 - interpolation, 0.0f, f2 + interpolation, height);
                    canvas.saveLayerAlpha(this.f4298b, 0, 0);
                    j = 0;
                    z = true;
                }
                if (j3 != j) {
                    if (f >= 0.0f && f < 25.0f) {
                        i = this.f4306j;
                    } else if (f < 25.0f || f >= 50.0f) {
                        i = (f < 50.0f || f >= 75.0f) ? this.f4305i : this.f4304h;
                    }
                    canvas.drawColor(i);
                    if (f >= 0.0f && f <= 25.0f) {
                        m5266a(canvas, i2, i3, this.f4303g, ((f + 25.0f) * 2.0f) / 100.0f);
                    }
                    if (f >= 0.0f && f <= 50.0f) {
                        m5266a(canvas, i2, i3, this.f4304h, (f * 2.0f) / 100.0f);
                    }
                    if (f >= 25.0f && f <= 75.0f) {
                        m5266a(canvas, i2, i3, this.f4305i, ((f - 25.0f) * 2.0f) / 100.0f);
                    }
                    if (f >= 50.0f && f <= 100.0f) {
                        m5266a(canvas, i2, i3, this.f4306j, ((f - 50.0f) * 2.0f) / 100.0f);
                    }
                    if (f >= 75.0f && f <= 100.0f) {
                        m5266a(canvas, i2, i3, this.f4303g, ((f - 75.0f) * 2.0f) / 100.0f);
                    }
                    if (this.f4299c > 0.0f && z) {
                        canvas.restoreToCount(save);
                        int save2 = canvas.save();
                        canvas.clipRect(this.f4308l);
                        m5267a(canvas, i2, i3);
                        save = save2;
                    }
                    ViewCompat.postInvalidateOnAnimation(this.f4307k);
                }
                i = this.f4303g;
                canvas.drawColor(i);
                if (f >= 0.0f) {
                    m5266a(canvas, i2, i3, this.f4303g, ((f + 25.0f) * 2.0f) / 100.0f);
                }
                if (f >= 0.0f) {
                    m5266a(canvas, i2, i3, this.f4304h, (f * 2.0f) / 100.0f);
                }
                if (f >= 25.0f) {
                    m5266a(canvas, i2, i3, this.f4305i, ((f - 25.0f) * 2.0f) / 100.0f);
                }
                if (f >= 50.0f) {
                    m5266a(canvas, i2, i3, this.f4306j, ((f - 50.0f) * 2.0f) / 100.0f);
                }
                if (f >= 75.0f) {
                    m5266a(canvas, i2, i3, this.f4303g, ((f - 75.0f) * 2.0f) / 100.0f);
                }
                if (this.f4299c > 0.0f) {
                    canvas.restoreToCount(save);
                    int save22 = canvas.save();
                    canvas.clipRect(this.f4308l);
                    m5267a(canvas, i2, i3);
                    save = save22;
                }
                ViewCompat.postInvalidateOnAnimation(this.f4307k);
            } else if (this.f4299c > 0.0f && this.f4299c <= 1.0d) {
                m5267a(canvas, i2, i3);
            }
            canvas.restoreToCount(save);
        }

        /* renamed from: a */
        final void m5266a(Canvas canvas, float f, float f2, int i, float f3) {
            this.f4309s.setColor(i);
            canvas.save();
            canvas.translate(f, f2);
            float interpolation = f4291a.getInterpolation(f3);
            canvas.scale(interpolation, interpolation);
            canvas.drawCircle(0.0f, 0.0f, f, this.f4309s);
            canvas.restore();
        }

        /* renamed from: a */
        final void m5267a(Canvas canvas, int i, int i2) {
            this.f4309s.setColor(this.f4303g);
            float f = i;
            canvas.drawCircle(f, i2, this.f4299c * f, this.f4309s);
        }
    }

    public ActionProcessButton(Context context) {
        super(context);
        m5258a(context);
    }

    public ActionProcessButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m5258a(context);
    }

    public ActionProcessButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m5258a(context);
    }

    /* renamed from: a */
    private void m5256a() {
        C1206b c1206b = this.f4284a;
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        c1206b.f4308l.left = 0;
        c1206b.f4308l.top = (int) (getMeasuredHeight() - m5274b(C1130R.dimen.layer_padding));
        c1206b.f4308l.right = measuredWidth;
        c1206b.f4308l.bottom = measuredHeight;
    }

    /* renamed from: a */
    private void m5257a(int i, int i2, int i3, int i4) {
        this.f4286c = i;
        this.f4287d = i2;
        this.f4288e = i3;
        this.f4289f = i4;
    }

    /* renamed from: a */
    private void m5258a(Context context) {
        Resources resources = context.getResources();
        this.f4285b = EnumC1205a.ENDLESS;
        this.f4286c = resources.getColor(C1130R.color.holo_blue_bright);
        this.f4287d = resources.getColor(C1130R.color.holo_green_light);
        this.f4288e = resources.getColor(C1130R.color.holo_orange_light);
        this.f4289f = resources.getColor(C1130R.color.holo_red_light);
    }

    /* renamed from: b */
    private void m5259b(Canvas canvas) {
        getProgressDrawable().setBounds(0, (int) (getMeasuredHeight() - (getMeasuredHeight() * 0.05d)), (int) (getMeasuredWidth() * (getProgress() / getMaxProgress())), getMeasuredHeight());
        getProgressDrawable().draw(canvas);
    }

    /* renamed from: c */
    private void m5260c(Canvas canvas) {
        long j;
        boolean z;
        int i;
        int i2;
        int i3;
        if (this.f4284a == null) {
            this.f4284a = new C1206b(this);
            m5256a();
            C1206b c1206b = this.f4284a;
            int i4 = this.f4286c;
            int i5 = this.f4287d;
            int i6 = this.f4288e;
            int i7 = this.f4289f;
            c1206b.f4303g = i4;
            c1206b.f4304h = i5;
            c1206b.f4305i = i6;
            c1206b.f4306j = i7;
            C1206b c1206b2 = this.f4284a;
            if (!c1206b2.f4302f) {
                c1206b2.f4299c = 0.0f;
                c1206b2.f4300d = AnimationUtils.currentAnimationTimeMillis();
                c1206b2.f4302f = true;
                c1206b2.f4307k.postInvalidate();
            }
        }
        if (getProgress() > 0) {
            C1206b c1206b3 = this.f4284a;
            int width = c1206b3.f4308l.width();
            int height = c1206b3.f4308l.height();
            int i8 = width / 2;
            int i9 = height / 2;
            int save = canvas.save();
            canvas.clipRect(c1206b3.f4308l);
            if (c1206b3.f4302f || c1206b3.f4301e > 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                long j2 = (currentAnimationTimeMillis - c1206b3.f4300d) % 2000;
                long j3 = (currentAnimationTimeMillis - c1206b3.f4300d) / 2000;
                float f = ((float) j2) / 20.0f;
                if (c1206b3.f4302f) {
                    j = 0;
                    z = false;
                } else {
                    if (currentAnimationTimeMillis - c1206b3.f4301e >= 1000) {
                        c1206b3.f4301e = 0L;
                        return;
                    }
                    float f2 = i8;
                    float interpolation = C1206b.f4291a.getInterpolation((((float) ((currentAnimationTimeMillis - c1206b3.f4301e) % 1000)) / 10.0f) / 100.0f) * f2;
                    c1206b3.f4298b.set(f2 - interpolation, 0.0f, f2 + interpolation, height);
                    canvas.saveLayerAlpha(c1206b3.f4298b, 0, 0);
                    j = 0;
                    z = true;
                }
                if (j3 != j) {
                    if (f >= 0.0f && f < 25.0f) {
                        i = c1206b3.f4306j;
                    } else if (f < 25.0f || f >= 50.0f) {
                        i = (f < 50.0f || f >= 75.0f) ? c1206b3.f4305i : c1206b3.f4304h;
                    }
                    canvas.drawColor(i);
                    if (f >= 0.0f || f > 25.0f) {
                        i2 = i9;
                    } else {
                        i2 = i9;
                        c1206b3.m5266a(canvas, i8, i9, c1206b3.f4303g, ((f + 25.0f) * 2.0f) / 100.0f);
                    }
                    if (f >= 0.0f && f <= 50.0f) {
                        c1206b3.m5266a(canvas, i8, i2, c1206b3.f4304h, (f * 2.0f) / 100.0f);
                    }
                    if (f >= 25.0f && f <= 75.0f) {
                        c1206b3.m5266a(canvas, i8, i2, c1206b3.f4305i, ((f - 25.0f) * 2.0f) / 100.0f);
                    }
                    if (f >= 50.0f && f <= 100.0f) {
                        c1206b3.m5266a(canvas, i8, i2, c1206b3.f4306j, ((f - 50.0f) * 2.0f) / 100.0f);
                    }
                    if (f >= 75.0f && f <= 100.0f) {
                        c1206b3.m5266a(canvas, i8, i2, c1206b3.f4303g, ((f - 75.0f) * 2.0f) / 100.0f);
                    }
                    if (c1206b3.f4299c > 0.0f || !z) {
                        i3 = save;
                    } else {
                        canvas.restoreToCount(save);
                        i3 = canvas.save();
                        canvas.clipRect(c1206b3.f4308l);
                        c1206b3.m5267a(canvas, i8, i2);
                    }
                    save = i3;
                    ViewCompat.postInvalidateOnAnimation(c1206b3.f4307k);
                }
                i = c1206b3.f4303g;
                canvas.drawColor(i);
                if (f >= 0.0f) {
                }
                i2 = i9;
                if (f >= 0.0f) {
                    c1206b3.m5266a(canvas, i8, i2, c1206b3.f4304h, (f * 2.0f) / 100.0f);
                }
                if (f >= 25.0f) {
                    c1206b3.m5266a(canvas, i8, i2, c1206b3.f4305i, ((f - 25.0f) * 2.0f) / 100.0f);
                }
                if (f >= 50.0f) {
                    c1206b3.m5266a(canvas, i8, i2, c1206b3.f4306j, ((f - 50.0f) * 2.0f) / 100.0f);
                }
                if (f >= 75.0f) {
                    c1206b3.m5266a(canvas, i8, i2, c1206b3.f4303g, ((f - 75.0f) * 2.0f) / 100.0f);
                }
                if (c1206b3.f4299c > 0.0f) {
                }
                i3 = save;
                save = i3;
                ViewCompat.postInvalidateOnAnimation(c1206b3.f4307k);
            } else if (c1206b3.f4299c > 0.0f && c1206b3.f4299c <= 1.0d) {
                c1206b3.m5267a(canvas, i8, i9);
            }
            canvas.restoreToCount(save);
        }
    }

    @Override // com.cyjh.common.view.ProcessButton
    /* renamed from: a */
    public final void mo5261a(Canvas canvas) {
        long j;
        boolean z;
        int i;
        int i2;
        int i3;
        if (getBackground() != getNormalDrawable()) {
            setBackgroundDrawable(getNormalDrawable());
        }
        switch (this.f4285b) {
            case ENDLESS:
                if (this.f4284a == null) {
                    this.f4284a = new C1206b(this);
                    m5256a();
                    C1206b c1206b = this.f4284a;
                    int i4 = this.f4286c;
                    int i5 = this.f4287d;
                    int i6 = this.f4288e;
                    int i7 = this.f4289f;
                    c1206b.f4303g = i4;
                    c1206b.f4304h = i5;
                    c1206b.f4305i = i6;
                    c1206b.f4306j = i7;
                    C1206b c1206b2 = this.f4284a;
                    if (!c1206b2.f4302f) {
                        c1206b2.f4299c = 0.0f;
                        c1206b2.f4300d = AnimationUtils.currentAnimationTimeMillis();
                        c1206b2.f4302f = true;
                        c1206b2.f4307k.postInvalidate();
                    }
                }
                if (getProgress() > 0) {
                    C1206b c1206b3 = this.f4284a;
                    int width = c1206b3.f4308l.width();
                    int height = c1206b3.f4308l.height();
                    int i8 = width / 2;
                    int i9 = height / 2;
                    int save = canvas.save();
                    canvas.clipRect(c1206b3.f4308l);
                    if (c1206b3.f4302f || c1206b3.f4301e > 0) {
                        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                        long j2 = (currentAnimationTimeMillis - c1206b3.f4300d) % 2000;
                        long j3 = (currentAnimationTimeMillis - c1206b3.f4300d) / 2000;
                        float f = ((float) j2) / 20.0f;
                        if (c1206b3.f4302f) {
                            j = 0;
                            z = false;
                        } else {
                            if (currentAnimationTimeMillis - c1206b3.f4301e >= 1000) {
                                c1206b3.f4301e = 0L;
                                return;
                            }
                            float f2 = i8;
                            float interpolation = C1206b.f4291a.getInterpolation((((float) ((currentAnimationTimeMillis - c1206b3.f4301e) % 1000)) / 10.0f) / 100.0f) * f2;
                            c1206b3.f4298b.set(f2 - interpolation, 0.0f, f2 + interpolation, height);
                            canvas.saveLayerAlpha(c1206b3.f4298b, 0, 0);
                            j = 0;
                            z = true;
                        }
                        if (j3 != j) {
                            if (f >= 0.0f && f < 25.0f) {
                                i = c1206b3.f4306j;
                            } else if (f < 25.0f || f >= 50.0f) {
                                i = (f < 50.0f || f >= 75.0f) ? c1206b3.f4305i : c1206b3.f4304h;
                            }
                            canvas.drawColor(i);
                            if (f >= 0.0f || f > 25.0f) {
                                i2 = i9;
                            } else {
                                i2 = i9;
                                c1206b3.m5266a(canvas, i8, i9, c1206b3.f4303g, ((f + 25.0f) * 2.0f) / 100.0f);
                            }
                            if (f >= 0.0f && f <= 50.0f) {
                                c1206b3.m5266a(canvas, i8, i2, c1206b3.f4304h, (f * 2.0f) / 100.0f);
                            }
                            if (f >= 25.0f && f <= 75.0f) {
                                c1206b3.m5266a(canvas, i8, i2, c1206b3.f4305i, ((f - 25.0f) * 2.0f) / 100.0f);
                            }
                            if (f >= 50.0f && f <= 100.0f) {
                                c1206b3.m5266a(canvas, i8, i2, c1206b3.f4306j, ((f - 50.0f) * 2.0f) / 100.0f);
                            }
                            if (f >= 75.0f && f <= 100.0f) {
                                c1206b3.m5266a(canvas, i8, i2, c1206b3.f4303g, ((f - 75.0f) * 2.0f) / 100.0f);
                            }
                            if (c1206b3.f4299c > 0.0f || !z) {
                                i3 = save;
                            } else {
                                canvas.restoreToCount(save);
                                i3 = canvas.save();
                                canvas.clipRect(c1206b3.f4308l);
                                c1206b3.m5267a(canvas, i8, i2);
                            }
                            save = i3;
                            ViewCompat.postInvalidateOnAnimation(c1206b3.f4307k);
                        }
                        i = c1206b3.f4303g;
                        canvas.drawColor(i);
                        if (f >= 0.0f) {
                        }
                        i2 = i9;
                        if (f >= 0.0f) {
                            c1206b3.m5266a(canvas, i8, i2, c1206b3.f4304h, (f * 2.0f) / 100.0f);
                        }
                        if (f >= 25.0f) {
                            c1206b3.m5266a(canvas, i8, i2, c1206b3.f4305i, ((f - 25.0f) * 2.0f) / 100.0f);
                        }
                        if (f >= 50.0f) {
                            c1206b3.m5266a(canvas, i8, i2, c1206b3.f4306j, ((f - 50.0f) * 2.0f) / 100.0f);
                        }
                        if (f >= 75.0f) {
                            c1206b3.m5266a(canvas, i8, i2, c1206b3.f4303g, ((f - 75.0f) * 2.0f) / 100.0f);
                        }
                        if (c1206b3.f4299c > 0.0f) {
                        }
                        i3 = save;
                        save = i3;
                        ViewCompat.postInvalidateOnAnimation(c1206b3.f4307k);
                    } else if (c1206b3.f4299c > 0.0f && c1206b3.f4299c <= 1.0d) {
                        c1206b3.m5267a(canvas, i8, i9);
                    }
                    canvas.restoreToCount(save);
                    return;
                }
                return;
            case PROGRESS:
                getProgressDrawable().setBounds(0, (int) (getMeasuredHeight() - (getMeasuredHeight() * 0.05d)), (int) (getMeasuredWidth() * (getProgress() / getMaxProgress())), getMeasuredHeight());
                getProgressDrawable().draw(canvas);
                return;
            default:
                return;
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.f4284a != null) {
            m5256a();
        }
    }

    public void setMode(EnumC1205a enumC1205a) {
        this.f4285b = enumC1205a;
    }
}
