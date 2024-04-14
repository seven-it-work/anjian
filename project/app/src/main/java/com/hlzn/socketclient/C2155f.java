package com.hlzn.socketclient;

import android.content.Context;
import com.hlzn.socketclient.bean.ServiceParam;
import com.hlzn.socketclient.p163b.C2146a;
import com.hlzn.socketclient.p165d.InterfaceC2151a;
import com.hlzn.socketclient.p167f.C2158c;
import com.hlzn.socketclient.p167f.C2159d;

/* renamed from: com.hlzn.socketclient.f */
/* loaded from: classes.dex */
public class C2155f {

    /* renamed from: c */
    private static C2155f f8143c;

    /* renamed from: a */
    public Context f8144a;

    /* renamed from: b */
    private InterfaceC2151a f8145b;

    private C2155f() {
    }

    /* renamed from: a */
    public static C2155f m9554a() {
        if (f8143c == null) {
            synchronized (C2155f.class) {
                if (f8143c == null) {
                    f8143c = new C2155f();
                }
            }
        }
        return f8143c;
    }

    /* renamed from: a */
    private void m9555a(int i, String str, String str2) {
        ServiceParam serviceParam = new ServiceParam();
        serviceParam.f8107d = str2;
        serviceParam.f8115l = i;
        serviceParam.f8116m = str;
        C2158c.m9591a(this.f8144a, C2146a.f8088g, serviceParam);
    }

    /* renamed from: a */
    private void m9556a(Context context) {
        this.f8144a = context;
    }

    /* renamed from: a */
    private void m9557a(InterfaceC2151a interfaceC2151a) {
        this.f8145b = interfaceC2151a;
    }

    /* renamed from: a */
    private void m9558a(String str) {
        ServiceParam serviceParam = new ServiceParam();
        serviceParam.f8111h = -1;
        serviceParam.f8112i = str;
        C2158c.m9591a(this.f8144a, C2146a.f8086e, serviceParam);
    }

    /* renamed from: b */
    private InterfaceC2151a m9559b() {
        return this.f8145b;
    }

    /* renamed from: b */
    private void m9560b(String str) {
        ServiceParam serviceParam = new ServiceParam();
        serviceParam.f8113j = -1;
        serviceParam.f8114k = str;
        C2158c.m9591a(this.f8144a, C2146a.f8087f, serviceParam);
    }

    /* renamed from: c */
    private void m9561c() {
        C2158c.m9590a(this.f8144a, C2146a.f8083b);
    }

    /* renamed from: c */
    private void m9562c(String str) {
        ServiceParam serviceParam = new ServiceParam();
        serviceParam.f8107d = str;
        serviceParam.f8115l = -1;
        serviceParam.f8116m = str;
        C2158c.m9591a(this.f8144a, C2146a.f8088g, serviceParam);
    }

    /* renamed from: d */
    private void m9563d() {
        C2159d.m9593b("TAG", "scriptStart:" + C2146a.f8103v);
        if (C2146a.f8103v) {
            ServiceParam serviceParam = new ServiceParam();
            serviceParam.f8110g = true;
            C2158c.m9591a(this.f8144a, C2146a.f8084c, serviceParam);
        }
    }

    /* renamed from: d */
    private void m9564d(String str) {
        ServiceParam serviceParam = new ServiceParam();
        serviceParam.f8117n = -1;
        serviceParam.f8118o = str;
        C2158c.m9591a(this.f8144a, C2146a.f8089h, serviceParam);
    }

    /* renamed from: e */
    private void m9565e() {
        C2159d.m9593b("TAG", "scriptStop:" + C2146a.f8103v);
        if (C2146a.f8103v) {
            ServiceParam serviceParam = new ServiceParam();
            serviceParam.f8110g = false;
            C2158c.m9591a(this.f8144a, C2146a.f8085d, serviceParam);
        }
    }

    /* renamed from: e */
    private void m9566e(String str) {
        ServiceParam serviceParam = new ServiceParam();
        serviceParam.f8119p = -1;
        serviceParam.f8120q = str;
        C2158c.m9591a(this.f8144a, C2146a.f8090i, serviceParam);
    }

    /* renamed from: f */
    private void m9567f() {
        C2158c.m9590a(this.f8144a, C2146a.f8093l);
    }

    /* renamed from: f */
    private void m9568f(String str) {
        ServiceParam serviceParam = new ServiceParam();
        serviceParam.f8121r = -1;
        serviceParam.f8122s = str;
        C2158c.m9591a(this.f8144a, C2146a.f8091j, serviceParam);
    }

    /* renamed from: g */
    private void m9569g(String str) {
        ServiceParam serviceParam = new ServiceParam();
        serviceParam.f8123t = -1;
        serviceParam.f8124u = str;
        C2158c.m9591a(this.f8144a, C2146a.f8092k, serviceParam);
    }
}
