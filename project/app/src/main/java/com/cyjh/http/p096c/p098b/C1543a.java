package com.cyjh.http.p096c.p098b;

import android.content.Context;
import com.cyjh.http.bean.request.UpdateRequestInfo;
import com.cyjh.http.bean.response.VersionUpdateInfo;
import com.cyjh.http.p096c.p097a.InterfaceC1541b;
import com.cyjh.http.p096c.p099c.C1547d;
import com.cyjh.http.p096c.p100d.InterfaceC1572j;
import com.cyjh.http.p101d.p103b.C1577c;

/* renamed from: com.cyjh.http.c.b.a */
/* loaded from: classes.dex */
public final class C1543a implements InterfaceC1541b, InterfaceC1572j {

    /* renamed from: a */
    public static final int f5821a = 2;

    /* renamed from: b */
    public static final int f5822b = 3;

    /* renamed from: e */
    private static C1543a f5823e;

    /* renamed from: c */
    public a f5824c;

    /* renamed from: d */
    private C1547d f5825d;

    /* renamed from: com.cyjh.http.c.b.a$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo5930a(VersionUpdateInfo versionUpdateInfo);

        /* renamed from: b */
        void mo5931b(VersionUpdateInfo versionUpdateInfo);

        /* renamed from: c */
        void mo5932c(VersionUpdateInfo versionUpdateInfo);
    }

    private C1543a() {
    }

    /* renamed from: a */
    public static C1543a m6898a() {
        if (f5823e == null) {
            f5823e = new C1543a();
        }
        return f5823e;
    }

    /* renamed from: a */
    private C1543a m6899a(a aVar) {
        this.f5824c = aVar;
        return this;
    }

    /* renamed from: a */
    private void m6900a(boolean z, Context context) {
        this.f5825d = new C1547d(context, this, z);
        this.f5825d.m6929a(context);
    }

    @Override // com.cyjh.http.p096c.p100d.InterfaceC1572j
    /* renamed from: a */
    public final void mo6901a(VersionUpdateInfo versionUpdateInfo) {
        if (this.f5824c != null) {
            this.f5824c.mo5930a(versionUpdateInfo);
        }
    }

    /* renamed from: a */
    public final void m6902a(boolean z, Context context, UpdateRequestInfo updateRequestInfo) {
        this.f5825d = new C1547d(context, this, z, updateRequestInfo);
        this.f5825d.m6929a(context);
    }

    @Override // com.cyjh.http.p096c.p100d.InterfaceC1572j
    /* renamed from: b */
    public final void mo6903b() {
        this.f5824c.mo5930a(null);
    }

    @Override // com.cyjh.http.p096c.p100d.InterfaceC1572j
    /* renamed from: b */
    public final void mo6904b(VersionUpdateInfo versionUpdateInfo) {
        if (this.f5824c != null) {
            this.f5824c.mo5931b(versionUpdateInfo);
        }
    }

    @Override // com.cyjh.http.p096c.p100d.InterfaceC1572j
    /* renamed from: c */
    public final void mo6905c() {
        this.f5824c.mo5930a(null);
    }

    @Override // com.cyjh.http.p096c.p100d.InterfaceC1572j
    /* renamed from: c */
    public final void mo6906c(VersionUpdateInfo versionUpdateInfo) {
        if (this.f5824c != null) {
            this.f5824c.mo5932c(versionUpdateInfo);
        }
    }

    /* renamed from: d */
    public final void m6907d() {
        if (this.f5825d != null) {
            C1577c.m7005a().m7010a(this.f5825d.getClass().getCanonicalName());
        }
    }
}
