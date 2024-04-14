package com.iflytek.voiceads.download.p179d;

import com.iflytek.voiceads.download.p174a.InterfaceC2248a;
import com.iflytek.voiceads.download.p180e.C2265a;
import java.io.Serializable;
import java.util.List;

/* renamed from: com.iflytek.voiceads.download.d.a */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2262a implements Serializable {

    /* renamed from: a */
    private InterfaceC2248a f8496a;

    /* renamed from: b */
    private C2265a f8497b;

    /* renamed from: c */
    private int f8498c;

    /* renamed from: d */
    private String f8499d;

    /* renamed from: e */
    private String f8500e;

    /* renamed from: f */
    private long f8501f;

    /* renamed from: g */
    private long f8502g;

    /* renamed from: h */
    private int f8503h;

    /* renamed from: i */
    private int f8504i;

    /* renamed from: j */
    private List<C2263b> f8505j;

    /* renamed from: com.iflytek.voiceads.download.d.a$a */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public static final class a {

        /* renamed from: a */
        private String f8506a;

        /* renamed from: b */
        private String f8507b;

        /* renamed from: a */
        public a m9972a(String str) {
            this.f8506a = str;
            return this;
        }

        /* renamed from: a */
        public C2262a m9973a() {
            C2262a c2262a = new C2262a();
            c2262a.m9955a(this.f8506a);
            c2262a.m9961b(this.f8507b);
            c2262a.m9959b(Math.abs(this.f8506a.hashCode()));
            return c2262a;
        }

        /* renamed from: b */
        public a m9974b(String str) {
            this.f8507b = str;
            return this;
        }
    }

    /* renamed from: a */
    public C2265a m9950a() {
        return this.f8497b;
    }

    /* renamed from: a */
    public void m9951a(int i) {
        this.f8503h = i;
    }

    /* renamed from: a */
    public void m9952a(long j) {
        this.f8501f = j;
    }

    /* renamed from: a */
    public void m9953a(InterfaceC2248a interfaceC2248a) {
        this.f8496a = interfaceC2248a;
    }

    /* renamed from: a */
    public void m9954a(C2265a c2265a) {
        this.f8497b = c2265a;
    }

    /* renamed from: a */
    public void m9955a(String str) {
        this.f8499d = str;
    }

    /* renamed from: a */
    public void m9956a(List<C2263b> list) {
        this.f8505j = list;
    }

    /* renamed from: a */
    public void m9957a(boolean z) {
        this.f8504i = z ? 0 : 1;
    }

    /* renamed from: b */
    public String m9958b() {
        return this.f8499d;
    }

    /* renamed from: b */
    public void m9959b(int i) {
        this.f8498c = i;
    }

    /* renamed from: b */
    public void m9960b(long j) {
        this.f8502g = j;
    }

    /* renamed from: b */
    public void m9961b(String str) {
        this.f8500e = str;
    }

    /* renamed from: c */
    public String m9962c() {
        return this.f8500e;
    }

    /* renamed from: d */
    public long m9963d() {
        return this.f8501f;
    }

    /* renamed from: e */
    public long m9964e() {
        return this.f8502g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f8498c == ((C2262a) obj).f8498c;
    }

    /* renamed from: f */
    public InterfaceC2248a m9965f() {
        return this.f8496a;
    }

    /* renamed from: g */
    public int m9966g() {
        return this.f8503h;
    }

    /* renamed from: h */
    public int m9967h() {
        return this.f8498c;
    }

    public int hashCode() {
        return this.f8498c;
    }

    /* renamed from: i */
    public boolean m9968i() {
        return this.f8504i == 0;
    }

    /* renamed from: j */
    public List<C2263b> m9969j() {
        return this.f8505j;
    }

    /* renamed from: k */
    public boolean m9970k() {
        return this.f8503h == 5;
    }
}
