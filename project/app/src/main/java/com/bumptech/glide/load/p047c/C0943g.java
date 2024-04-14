package com.bumptech.glide.load.p047c;

import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.util.C1084i;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.c.g */
/* loaded from: classes.dex */
public class C0943g implements InterfaceC1022g {

    /* renamed from: e */
    private static final String f2911e = "@#&=*+-_.,:!?()/~'%;$";

    /* renamed from: c */
    public final InterfaceC0944h f2912c;

    /* renamed from: d */
    @Nullable
    public URL f2913d;

    /* renamed from: f */
    @Nullable
    private final URL f2914f;

    /* renamed from: g */
    @Nullable
    private final String f2915g;

    /* renamed from: h */
    @Nullable
    private String f2916h;

    /* renamed from: i */
    @Nullable
    private volatile byte[] f2917i;

    /* renamed from: j */
    private int f2918j;

    public C0943g(String str) {
        this(str, InterfaceC0944h.f2920b);
    }

    public C0943g(String str, InterfaceC0944h interfaceC0944h) {
        this.f2914f = null;
        this.f2915g = C1084i.m3471a(str);
        this.f2912c = (InterfaceC0944h) C1084i.m3470a(interfaceC0944h, "Argument must not be null");
    }

    public C0943g(URL url) {
        this(url, InterfaceC0944h.f2920b);
    }

    private C0943g(URL url, InterfaceC0944h interfaceC0944h) {
        this.f2914f = (URL) C1084i.m3470a(url, "Argument must not be null");
        this.f2915g = null;
        this.f2912c = (InterfaceC0944h) C1084i.m3470a(interfaceC0944h, "Argument must not be null");
    }

    /* renamed from: b */
    private URL m2782b() throws MalformedURLException {
        if (this.f2913d == null) {
            this.f2913d = new URL(m2788a());
        }
        return this.f2913d;
    }

    /* renamed from: c */
    private URL m2783c() throws MalformedURLException {
        if (this.f2913d == null) {
            this.f2913d = new URL(m2788a());
        }
        return this.f2913d;
    }

    /* renamed from: d */
    private String m2784d() {
        return m2788a();
    }

    /* renamed from: e */
    private Map<String, String> m2785e() {
        return this.f2912c.mo2789a();
    }

    /* renamed from: f */
    private String m2786f() {
        return this.f2915g != null ? this.f2915g : ((URL) C1084i.m3470a(this.f2914f, "Argument must not be null")).toString();
    }

    /* renamed from: g */
    private byte[] m2787g() {
        if (this.f2917i == null) {
            this.f2917i = m2786f().getBytes(f3189b);
        }
        return this.f2917i;
    }

    /* renamed from: a */
    public final String m2788a() {
        if (TextUtils.isEmpty(this.f2916h)) {
            String str = this.f2915g;
            if (TextUtils.isEmpty(str)) {
                str = ((URL) C1084i.m3470a(this.f2914f, "Argument must not be null")).toString();
            }
            this.f2916h = Uri.encode(str, f2911e);
        }
        return this.f2916h;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    /* renamed from: a */
    public final void mo2330a(@NonNull MessageDigest messageDigest) {
        if (this.f2917i == null) {
            this.f2917i = m2786f().getBytes(f3189b);
        }
        messageDigest.update(this.f2917i);
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public boolean equals(Object obj) {
        if (obj instanceof C0943g) {
            C0943g c0943g = (C0943g) obj;
            if (m2786f().equals(c0943g.m2786f()) && this.f2912c.equals(c0943g.f2912c)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public int hashCode() {
        if (this.f2918j == 0) {
            this.f2918j = m2786f().hashCode();
            this.f2918j = (this.f2918j * 31) + this.f2912c.hashCode();
        }
        return this.f2918j;
    }

    public String toString() {
        return m2786f();
    }
}
