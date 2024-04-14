package com.google.p130a.p140d.p143c;

import com.google.p130a.C1896f;
import java.nio.charset.StandardCharsets;

/* renamed from: com.google.a.d.c.h */
/* loaded from: classes.dex */
final class C1884h {

    /* renamed from: a */
    final String f7358a;

    /* renamed from: b */
    EnumC1888l f7359b;

    /* renamed from: c */
    C1896f f7360c;

    /* renamed from: d */
    C1896f f7361d;

    /* renamed from: e */
    final StringBuilder f7362e;

    /* renamed from: f */
    int f7363f;

    /* renamed from: g */
    int f7364g;

    /* renamed from: h */
    C1887k f7365h;

    /* renamed from: i */
    int f7366i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1884h(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
        StringBuilder sb = new StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i = 0; i < length; i++) {
            char c2 = (char) (bytes[i] & 255);
            if (c2 == '?' && str.charAt(i) != '?') {
                throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
            }
            sb.append(c2);
        }
        this.f7358a = sb.toString();
        this.f7359b = EnumC1888l.FORCE_NONE;
        this.f7362e = new StringBuilder(str.length());
        this.f7364g = -1;
    }

    /* renamed from: a */
    private void m8632a(EnumC1888l enumC1888l) {
        this.f7359b = enumC1888l;
    }

    /* renamed from: a */
    private void m8633a(C1896f c1896f, C1896f c1896f2) {
        this.f7360c = c1896f;
        this.f7361d = c1896f2;
    }

    /* renamed from: b */
    private void m8634b(int i) {
        this.f7364g = i;
    }

    /* renamed from: e */
    private String m8635e() {
        return this.f7358a;
    }

    /* renamed from: f */
    private void m8636f() {
        this.f7366i = 2;
    }

    /* renamed from: g */
    private char m8637g() {
        return this.f7358a.charAt(this.f7363f);
    }

    /* renamed from: h */
    private StringBuilder m8638h() {
        return this.f7362e;
    }

    /* renamed from: i */
    private int m8639i() {
        return this.f7362e.length();
    }

    /* renamed from: j */
    private int m8640j() {
        return this.f7364g;
    }

    /* renamed from: k */
    private void m8641k() {
        this.f7364g = -1;
    }

    /* renamed from: l */
    private int m8642l() {
        return this.f7358a.length() - this.f7366i;
    }

    /* renamed from: m */
    private C1887k m8643m() {
        return this.f7365h;
    }

    /* renamed from: n */
    private void m8644n() {
        this.f7365h = null;
    }

    /* renamed from: a */
    public final char m8645a() {
        return this.f7358a.charAt(this.f7363f);
    }

    /* renamed from: a */
    public final void m8646a(char c2) {
        this.f7362e.append(c2);
    }

    /* renamed from: a */
    public final void m8647a(int i) {
        if (this.f7365h == null || i > this.f7365h.f7394b) {
            this.f7365h = C1887k.m8672a(i, this.f7359b, this.f7360c, this.f7361d, true);
        }
    }

    /* renamed from: a */
    public final void m8648a(String str) {
        this.f7362e.append(str);
    }

    /* renamed from: b */
    public final boolean m8649b() {
        return this.f7363f < m8642l();
    }

    /* renamed from: c */
    public final int m8650c() {
        return m8642l() - this.f7363f;
    }

    /* renamed from: d */
    public final void m8651d() {
        m8647a(this.f7362e.length());
    }
}
