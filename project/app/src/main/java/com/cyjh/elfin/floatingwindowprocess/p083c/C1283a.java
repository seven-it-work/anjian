package com.cyjh.elfin.floatingwindowprocess.p083c;

import android.content.Context;
import android.view.WindowManager;
import com.cyjh.common.util.C1149ab;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.floatingwindowprocess.floatview.DeleteFloatView;
import com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView;
import com.cyjh.elfin.p073a.InterfaceC1224a;

/* renamed from: com.cyjh.elfin.floatingwindowprocess.c.a */
/* loaded from: classes.dex */
public final class C1283a {

    /* renamed from: c */
    private static final String f4840c = "FloatViewManager";

    /* renamed from: e */
    private static final C1283a f4841e = new C1283a();

    /* renamed from: a */
    public ElfinFloatView f4842a;

    /* renamed from: b */
    public Context f4843b;

    /* renamed from: d */
    private WindowManager f4844d;

    /* renamed from: a */
    public static C1283a m5940a() {
        return f4841e;
    }

    /* renamed from: a */
    private void m5941a(Context context) {
        this.f4843b = context;
    }

    /* renamed from: c */
    private ElfinFloatView m5942c() {
        return this.f4842a;
    }

    /* renamed from: d */
    private void m5943d() {
        this.f4844d = (WindowManager) AppContext.m5350a().getSystemService("window");
        DeleteFloatView deleteFloatView = new DeleteFloatView(this.f4843b);
        this.f4842a = new ElfinFloatView(this.f4843b, deleteFloatView);
        this.f4844d.addView(deleteFloatView, deleteFloatView.getLayoutParams());
        this.f4844d.addView(this.f4842a, this.f4842a.getLayoutParams());
        if (2 == AppContext.m5350a().getResources().getConfiguration().orientation) {
            this.f4842a.m6083c();
        }
    }

    /* renamed from: e */
    private void m5944e() {
        if (this.f4842a == null || C1149ab.m4306a().m4314b(InterfaceC1224a.f4436A, (Boolean) true)) {
            return;
        }
        this.f4842a.setVisibility(8);
    }

    /* renamed from: f */
    private void m5945f() {
        if (this.f4842a != null) {
            if (this.f4842a.getVisibility() == 0) {
                this.f4842a.setVisibility(8);
            }
            this.f4842a = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0047, code lost:
    
        if (2 == com.cyjh.elfin.base.AppContext.m5350a().getResources().getConfiguration().orientation) goto L6;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m5946b() {
        /*
            r3 = this;
            com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView r0 = r3.f4842a
            if (r0 != 0) goto L49
            com.cyjh.elfin.base.AppContext r0 = com.cyjh.elfin.base.AppContext.m5350a()
            java.lang.String r1 = "window"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.view.WindowManager r0 = (android.view.WindowManager) r0
            r3.f4844d = r0
            com.cyjh.elfin.floatingwindowprocess.floatview.DeleteFloatView r0 = new com.cyjh.elfin.floatingwindowprocess.floatview.DeleteFloatView
            android.content.Context r1 = r3.f4843b
            r0.<init>(r1)
            com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView r1 = new com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView
            android.content.Context r2 = r3.f4843b
            r1.<init>(r2, r0)
            r3.f4842a = r1
            android.view.WindowManager r1 = r3.f4844d
            android.view.WindowManager$LayoutParams r2 = r0.getLayoutParams()
            r1.addView(r0, r2)
            android.view.WindowManager r0 = r3.f4844d
            com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView r1 = r3.f4842a
            com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView r2 = r3.f4842a
            android.view.WindowManager$LayoutParams r2 = r2.getLayoutParams()
            r0.addView(r1, r2)
            r0 = 2
            com.cyjh.elfin.base.AppContext r1 = com.cyjh.elfin.base.AppContext.m5350a()
            android.content.res.Resources r1 = r1.getResources()
            android.content.res.Configuration r1 = r1.getConfiguration()
            int r1 = r1.orientation
            if (r0 != r1) goto L4e
        L49:
            com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView r0 = r3.f4842a
            r0.m6083c()
        L4e:
            com.cyjh.common.util.ab r0 = com.cyjh.common.util.C1149ab.m4306a()
            java.lang.String r1 = "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"
            r2 = 1
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            boolean r0 = r0.m4314b(r1, r2)
            if (r0 == 0) goto L66
            com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView r0 = r3.f4842a
            r1 = 0
        L62:
            r0.setVisibility(r1)
            return
        L66:
            com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView r0 = r3.f4842a
            r1 = 8
            goto L62
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.elfin.floatingwindowprocess.p083c.C1283a.m5946b():void");
    }
}
