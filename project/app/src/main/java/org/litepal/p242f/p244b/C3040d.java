package org.litepal.p242f.p244b;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* renamed from: org.litepal.f.b.d */
/* loaded from: classes2.dex */
public final class C3040d {

    /* renamed from: a */
    public String f11178a;

    /* renamed from: b */
    public List<C3038b> f11179b = new ArrayList();

    /* renamed from: c */
    public String f11180c;

    /* renamed from: a */
    private String m13882a() {
        return this.f11178a;
    }

    /* renamed from: b */
    private String m13883b() {
        return this.f11180c;
    }

    /* renamed from: c */
    private List<C3038b> m13884c() {
        return this.f11179b;
    }

    /* renamed from: c */
    private void m13885c(String str) {
        this.f11178a = str;
    }

    /* renamed from: d */
    private void m13886d(String str) {
        this.f11180c = str;
    }

    /* renamed from: e */
    private C3038b m13887e(String str) {
        for (C3038b c3038b : this.f11179b) {
            if (c3038b.f11168a.equalsIgnoreCase(str)) {
                return c3038b;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final void m13888a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int i = 0;
        while (true) {
            if (i >= this.f11179b.size()) {
                i = -1;
                break;
            } else if (str.equalsIgnoreCase(this.f11179b.get(i).f11168a)) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            this.f11179b.remove(i);
        }
    }

    /* renamed from: a */
    public final void m13889a(C3038b c3038b) {
        this.f11179b.add(c3038b);
    }

    /* renamed from: b */
    public final boolean m13890b(String str) {
        for (int i = 0; i < this.f11179b.size(); i++) {
            if (str.equalsIgnoreCase(this.f11179b.get(i).f11168a)) {
                return true;
            }
        }
        return false;
    }
}
