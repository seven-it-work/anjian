package com.cyjh.feedback.lib.p091c;

import android.text.TextUtils;

/* renamed from: com.cyjh.feedback.lib.c.b */
/* loaded from: classes.dex */
public final class C1459b {

    /* renamed from: a */
    public String f5662a;

    /* renamed from: b */
    public String f5663b;

    /* renamed from: c */
    public String f5664c;

    /* renamed from: d */
    public int f5665d;

    /* renamed from: e */
    private boolean f5666e;

    /* renamed from: a */
    private String m6756a() {
        return this.f5662a;
    }

    /* renamed from: a */
    private void m6757a(int i) {
        this.f5665d = i;
    }

    /* renamed from: a */
    private void m6758a(boolean z) {
        this.f5666e = z;
    }

    /* renamed from: b */
    private void m6759b(String str) {
        this.f5664c = str;
    }

    /* renamed from: b */
    private boolean m6760b() {
        return this.f5666e;
    }

    /* renamed from: c */
    private int m6761c() {
        return this.f5665d;
    }

    /* renamed from: c */
    private void m6762c(String str) {
        this.f5663b = str;
    }

    /* renamed from: d */
    private String m6763d() {
        return this.f5664c;
    }

    /* renamed from: e */
    private String m6764e() {
        return this.f5663b;
    }

    /* renamed from: a */
    public final void m6765a(String str) {
        this.f5662a = str;
        if (TextUtils.isEmpty(this.f5663b)) {
            this.f5663b = str.substring(str.lastIndexOf("/") + 1);
        }
    }

    public final String toString() {
        return "FolderBean{dirPath='" + this.f5662a + "', dirName='" + this.f5663b + "', firstImgPath='" + this.f5664c + "', dirCount=" + this.f5665d + ", isSelect=" + this.f5666e + '}';
    }
}
