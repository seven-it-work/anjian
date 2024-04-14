package org.litepal.p242f.p244b;

import android.text.TextUtils;
import net.grandcentrix.tray.provider.TrayContract;

/* renamed from: org.litepal.f.b.b */
/* loaded from: classes2.dex */
public final class C3038b {

    /* renamed from: a */
    public String f11168a;

    /* renamed from: b */
    public String f11169b;

    /* renamed from: c */
    public boolean f11170c = true;

    /* renamed from: d */
    public boolean f11171d = false;

    /* renamed from: e */
    public String f11172e = "";

    /* renamed from: a */
    private String m13861a() {
        return this.f11168a;
    }

    /* renamed from: a */
    private void m13862a(boolean z) {
        this.f11170c = z;
    }

    /* renamed from: b */
    private String m13863b() {
        return this.f11169b;
    }

    /* renamed from: b */
    private void m13864b(String str) {
        this.f11168a = str;
    }

    /* renamed from: b */
    private void m13865b(boolean z) {
        this.f11171d = z;
    }

    /* renamed from: c */
    private void m13866c(String str) {
        this.f11169b = str;
    }

    /* renamed from: c */
    private boolean m13867c() {
        return this.f11170c;
    }

    /* renamed from: d */
    private boolean m13868d() {
        return this.f11171d;
    }

    /* renamed from: e */
    private String m13869e() {
        return this.f11172e;
    }

    /* renamed from: f */
    private boolean m13870f() {
        return TrayContract.Preferences.Columns.f10375ID.equalsIgnoreCase(this.f11168a) || "id".equalsIgnoreCase(this.f11168a);
    }

    /* renamed from: a */
    public final void m13871a(String str) {
        if (!"text".equalsIgnoreCase(this.f11169b)) {
            this.f11172e = str;
        } else {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f11172e = "'" + str + "'";
        }
    }
}
