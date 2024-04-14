package com.iflytek.voiceads.download;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.download.DownloadService;
import com.iflytek.voiceads.download.p174a.InterfaceC2249b;
import com.iflytek.voiceads.download.p175b.C2253b;
import com.iflytek.voiceads.download.p175b.C2256d;
import com.iflytek.voiceads.download.p175b.InterfaceC2251a;
import com.iflytek.voiceads.download.p178c.C2259b;
import com.iflytek.voiceads.download.p178c.InterfaceC2258a;
import com.iflytek.voiceads.download.p179d.C2262a;
import com.iflytek.voiceads.utils.C2313g;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: com.iflytek.voiceads.download.a */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2247a implements InterfaceC2249b, C2256d.a {

    /* renamed from: a */
    private static C2247a f8439a;

    /* renamed from: e */
    private InterfaceC2251a f8443e;

    /* renamed from: f */
    private InterfaceC2258a f8444f;

    /* renamed from: g */
    private Context f8445g;

    /* renamed from: h */
    private C2262a f8446h;

    /* renamed from: i */
    private DownloadService.BinderC2246a f8447i;

    /* renamed from: j */
    private ServiceConnection f8448j = new ServiceConnectionC2250b(this);

    /* renamed from: d */
    private List<C2262a> f8442d = new ArrayList();

    /* renamed from: c */
    private ConcurrentHashMap<Integer, Object> f8441c = new ConcurrentHashMap<>();

    /* renamed from: b */
    private ExecutorService f8440b = Executors.newFixedThreadPool(2);

    private C2247a(Context context) {
        this.f8445g = context;
        this.f8444f = new C2259b(context);
        this.f8443e = new C2253b(this.f8444f);
    }

    /* renamed from: a */
    public static InterfaceC2249b m9880a(Context context) {
        synchronized (C2247a.class) {
            if (f8439a == null) {
                f8439a = new C2247a(context);
            }
        }
        return f8439a;
    }

    /* renamed from: c */
    private void m9883c() {
        for (C2262a c2262a : this.f8442d) {
            if (c2262a.m9966g() == 3) {
                m9884e(c2262a);
                return;
            }
        }
    }

    /* renamed from: e */
    private void m9884e(C2262a c2262a) {
        if (this.f8441c.size() >= 2) {
            c2262a.m9951a(3);
            this.f8443e.mo9896a(c2262a);
            return;
        }
        C2256d c2256d = new C2256d(this.f8440b, this.f8443e, c2262a, this);
        this.f8441c.put(Integer.valueOf(c2262a.m9967h()), c2256d);
        c2262a.m9951a(1);
        this.f8443e.mo9896a(c2262a);
        c2256d.m9907a();
    }

    @Override // com.iflytek.voiceads.download.p174a.InterfaceC2249b
    /* renamed from: a */
    public C2262a mo9885a(int i) {
        return this.f8444f.mo9909a(i);
    }

    /* renamed from: a */
    public List<C2262a> m9886a() {
        return this.f8444f.mo9910a();
    }

    @Override // com.iflytek.voiceads.download.p174a.InterfaceC2249b
    /* renamed from: a */
    public void mo9887a(C2262a c2262a) {
        this.f8446h = c2262a;
        if (this.f8447i != null) {
            this.f8447i.m9878a(c2262a);
            return;
        }
        try {
            Class.forName("com.iflytek.voiceads.download.DownloadService");
            Intent intent = new Intent(this.f8445g, (Class<?>) DownloadService.class);
            this.f8445g.startService(intent);
            this.f8445g.bindService(intent, this.f8448j, 1);
        } catch (ClassNotFoundException e) {
            C2313g.m10138b(SDKConstants.TAG, "service not found");
        }
    }

    @Override // com.iflytek.voiceads.download.p174a.InterfaceC2249b
    /* renamed from: b */
    public void mo9888b() {
        try {
            for (C2262a c2262a : m9886a()) {
                File file = new File(c2262a.m9962c());
                if (file.exists() && file.delete()) {
                    this.f8444f.mo9912b(c2262a);
                }
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "clearAllDownloaded:" + e.getMessage());
        }
    }

    @Override // com.iflytek.voiceads.download.p174a.InterfaceC2249b
    /* renamed from: b */
    public void mo9889b(C2262a c2262a) {
        this.f8442d.add(c2262a);
        m9884e(c2262a);
    }

    @Override // com.iflytek.voiceads.download.p175b.C2256d.a
    /* renamed from: c */
    public void mo9890c(C2262a c2262a) {
        if (c2262a != null) {
            this.f8441c.remove(Integer.valueOf(c2262a.m9967h()));
            this.f8442d.remove(c2262a);
        }
        m9883c();
    }

    @Override // com.iflytek.voiceads.download.p175b.C2256d.a
    /* renamed from: d */
    public void mo9891d(C2262a c2262a) {
        if (c2262a != null) {
            this.f8441c.remove(Integer.valueOf(c2262a.m9967h()));
            this.f8442d.remove(c2262a);
        }
    }
}
