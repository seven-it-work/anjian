package com.android.volley;

import android.os.Handler;
import java.util.concurrent.Executor;

/* renamed from: com.android.volley.e */
/* loaded from: classes.dex */
public final class C0592e implements InterfaceC0602o {

    /* renamed from: a */
    private final Executor f1232a;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.android.volley.e$a */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: b */
        private final AbstractC0599l f1236b;

        /* renamed from: c */
        private final C0601n f1237c;

        /* renamed from: d */
        private final Runnable f1238d;

        public a(AbstractC0599l abstractC0599l, C0601n c0601n, Runnable runnable) {
            this.f1236b = abstractC0599l;
            this.f1237c = c0601n;
            this.f1238d = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f1236b.mo1382a()) {
                this.f1236b.m1384b("canceled-at-delivery");
                return;
            }
            if (this.f1237c.f1293c == null) {
                this.f1236b.mo1380a((AbstractC0599l) this.f1237c.f1291a);
            } else {
                AbstractC0599l abstractC0599l = this.f1236b;
                C0606s c0606s = this.f1237c.f1293c;
                if (abstractC0599l.f1254d != null) {
                    abstractC0599l.f1254d.mo1407a(c0606s);
                }
            }
            if (this.f1237c.f1294d) {
                this.f1236b.m1381a("intermediate-response");
            } else {
                this.f1236b.m1384b("done");
            }
            if (this.f1238d != null) {
                this.f1238d.run();
            }
        }
    }

    public C0592e(final Handler handler) {
        this.f1232a = new Executor() { // from class: com.android.volley.e.1
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    private C0592e(Executor executor) {
        this.f1232a = executor;
    }

    @Override // com.android.volley.InterfaceC0602o
    /* renamed from: a */
    public final void mo1344a(AbstractC0599l<?> abstractC0599l, C0601n<?> c0601n) {
        mo1345a(abstractC0599l, c0601n, null);
    }

    @Override // com.android.volley.InterfaceC0602o
    /* renamed from: a */
    public final void mo1345a(AbstractC0599l<?> abstractC0599l, C0601n<?> c0601n, Runnable runnable) {
        abstractC0599l.f1259i = true;
        abstractC0599l.m1381a("post-response");
        this.f1232a.execute(new a(abstractC0599l, c0601n, runnable));
    }

    @Override // com.android.volley.InterfaceC0602o
    /* renamed from: a */
    public final void mo1346a(AbstractC0599l<?> abstractC0599l, C0606s c0606s) {
        abstractC0599l.m1381a("post-error");
        this.f1232a.execute(new a(abstractC0599l, C0601n.m1404a(c0606s), null));
    }
}
