package com.p058c.p062d;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.view.View;
import android.widget.ProgressBar;
import com.cyjh.elfin.p073a.C1225b;
import com.p058c.C1088a;

/* renamed from: com.c.d.f */
/* loaded from: classes.dex */
public final class RunnableC1110f implements Runnable {

    /* renamed from: a */
    ProgressBar f3764a;

    /* renamed from: b */
    ProgressDialog f3765b;

    /* renamed from: c */
    Activity f3766c;

    /* renamed from: d */
    boolean f3767d;

    /* renamed from: e */
    int f3768e;

    /* renamed from: f */
    int f3769f;

    /* renamed from: g */
    private View f3770g;

    /* renamed from: h */
    private String f3771h;

    public RunnableC1110f(Object obj) {
        if (obj instanceof ProgressBar) {
            this.f3764a = (ProgressBar) obj;
            return;
        }
        if (obj instanceof ProgressDialog) {
            this.f3765b = (ProgressDialog) obj;
        } else if (obj instanceof Activity) {
            this.f3766c = (Activity) obj;
        } else if (obj instanceof View) {
            this.f3770g = (View) obj;
        }
    }

    /* renamed from: a */
    private void m4096a(int i) {
        if (i <= 0) {
            this.f3767d = true;
            i = C1225b.f4496ak;
        }
        this.f3768e = i;
        if (this.f3764a != null) {
            this.f3764a.setProgress(0);
            this.f3764a.setMax(i);
        }
        if (this.f3765b != null) {
            this.f3765b.setProgress(0);
            this.f3765b.setMax(i);
        }
    }

    /* renamed from: a */
    private static void m4097a(Object obj, String str, boolean z) {
        if (obj != null) {
            if (!(obj instanceof View)) {
                if (obj instanceof Dialog) {
                    Dialog dialog = (Dialog) obj;
                    C1088a c1088a = new C1088a(dialog.getContext());
                    if (z) {
                        c1088a.m3741a(dialog);
                        return;
                    } else {
                        c1088a.m3745b(dialog);
                        return;
                    }
                }
                if (obj instanceof Activity) {
                    Activity activity = (Activity) obj;
                    activity.setProgressBarIndeterminateVisibility(z);
                    activity.setProgressBarVisibility(z);
                    if (z) {
                        activity.setProgress(0);
                        return;
                    }
                    return;
                }
                return;
            }
            View view = (View) obj;
            ProgressBar progressBar = obj instanceof ProgressBar ? (ProgressBar) obj : null;
            if (z) {
                view.setTag(InterfaceC1108d.f3762y, str);
                view.setVisibility(0);
                if (progressBar != null) {
                    progressBar.setProgress(0);
                    progressBar.setMax(100);
                    return;
                }
                return;
            }
            Object tag = view.getTag(InterfaceC1108d.f3762y);
            if (tag == null || tag.equals(str)) {
                view.setTag(InterfaceC1108d.f3762y, null);
                if (progressBar == null || !progressBar.isIndeterminate()) {
                    return;
                }
                view.setVisibility(8);
            }
        }
    }

    /* renamed from: a */
    private void m4098a(String str) {
        m4103a();
        if (this.f3765b != null) {
            new C1088a(this.f3765b.getContext()).m3741a((Dialog) this.f3765b);
        }
        if (this.f3766c != null) {
            this.f3766c.setProgressBarIndeterminateVisibility(true);
            this.f3766c.setProgressBarVisibility(true);
        }
        if (this.f3764a != null) {
            this.f3764a.setTag(InterfaceC1108d.f3762y, str);
            this.f3764a.setVisibility(0);
        }
        if (this.f3770g != null) {
            this.f3770g.setTag(InterfaceC1108d.f3762y, str);
            this.f3770g.setVisibility(0);
        }
    }

    /* renamed from: b */
    private void m4099b() {
        if (this.f3764a != null) {
            this.f3764a.setProgress(this.f3764a.getMax());
        }
        if (this.f3765b != null) {
            this.f3765b.setProgress(this.f3765b.getMax());
        }
        if (this.f3766c != null) {
            this.f3766c.setProgress(9999);
        }
    }

    /* renamed from: b */
    private void m4100b(int i) {
        int i2;
        if (this.f3764a != null) {
            this.f3764a.incrementProgressBy(this.f3767d ? 1 : i);
        }
        if (this.f3765b != null) {
            this.f3765b.incrementProgressBy(this.f3767d ? 1 : i);
        }
        if (this.f3766c != null) {
            if (this.f3767d) {
                i2 = this.f3769f;
                this.f3769f = i2 + 1;
            } else {
                this.f3769f += i;
                i2 = (this.f3769f * C1225b.f4496ak) / this.f3768e;
            }
            if (i2 > 9999) {
                i2 = 9999;
            }
            this.f3766c.setProgress(i2);
        }
    }

    /* renamed from: b */
    private void m4101b(String str) {
        if (C1105a.m4067b()) {
            m4102c(str);
        } else {
            this.f3771h = str;
            C1105a.m4045a((Runnable) this);
        }
    }

    /* renamed from: c */
    private void m4102c(String str) {
        if (this.f3765b != null) {
            new C1088a(this.f3765b.getContext()).m3745b((Dialog) this.f3765b);
        }
        if (this.f3766c != null) {
            this.f3766c.setProgressBarIndeterminateVisibility(false);
            this.f3766c.setProgressBarVisibility(false);
        }
        if (this.f3764a != null) {
            this.f3764a.setTag(InterfaceC1108d.f3762y, str);
            this.f3764a.setVisibility(0);
        }
        View view = this.f3764a;
        if (view == null) {
            view = this.f3770g;
        }
        if (view != null) {
            Object tag = view.getTag(InterfaceC1108d.f3762y);
            if (tag == null || tag.equals(str)) {
                view.setTag(InterfaceC1108d.f3762y, null);
                if (this.f3764a == null || !this.f3764a.isIndeterminate()) {
                    return;
                }
                view.setVisibility(8);
            }
        }
    }

    /* renamed from: a */
    public final void m4103a() {
        if (this.f3764a != null) {
            this.f3764a.setProgress(0);
            this.f3764a.setMax(C1225b.f4496ak);
        }
        if (this.f3765b != null) {
            this.f3765b.setProgress(0);
            this.f3765b.setMax(C1225b.f4496ak);
        }
        if (this.f3766c != null) {
            this.f3766c.setProgress(0);
        }
        this.f3767d = false;
        this.f3769f = 0;
        this.f3768e = C1225b.f4496ak;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m4102c(this.f3771h);
    }
}
