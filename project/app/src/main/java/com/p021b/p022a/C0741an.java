package com.p021b.p022a;

import android.support.v4.app.NotificationCompat;
import com.p021b.p022a.p023a.AbstractRunnableC0641b;
import com.p021b.p022a.p023a.p030g.C0720h;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.an */
/* loaded from: classes.dex */
public final class C0741an extends AbstractRunnableC0641b {

    /* renamed from: a */
    final /* synthetic */ C0740am f1876a;

    /* renamed from: c */
    private final InterfaceC0758h f1877c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0741an(C0740am c0740am, InterfaceC0758h interfaceC0758h) {
        super("OkHttp %s", c0740am.m1891b());
        this.f1876a = c0740am;
        this.f1877c = interfaceC0758h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final String m1893a() {
        return this.f1876a.f1873c.f1878a.f1783b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.p021b.p022a.p023a.AbstractRunnableC0641b
    /* renamed from: b */
    public final void mo1558b() {
        IOException e;
        boolean z = true;
        try {
            try {
                C0746as m1892c = this.f1876a.m1892c();
                try {
                    if (this.f1876a.f1872b.m1655a()) {
                        this.f1877c.mo1959a(new IOException("Canceled"));
                    } else {
                        this.f1877c.mo1958a(m1892c);
                    }
                } catch (IOException e2) {
                    e = e2;
                    if (z) {
                        C0720h m1803b = C0720h.m1803b();
                        StringBuilder sb = new StringBuilder("Callback failure for ");
                        C0740am c0740am = this.f1876a;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(c0740am.f1872b.m1655a() ? "canceled " : "");
                        sb2.append(c0740am.f1874d ? "web socket" : NotificationCompat.CATEGORY_CALL);
                        sb2.append(" to ");
                        sb2.append(c0740am.m1891b());
                        sb.append(sb2.toString());
                        m1803b.mo1783a(4, sb.toString(), e);
                    } else {
                        this.f1877c.mo1959a(e);
                    }
                }
            } catch (IOException e3) {
                e = e3;
                z = false;
            }
        } finally {
            this.f1876a.f1871a.f1815c.m1996b(this);
        }
    }
}
