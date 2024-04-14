package mobi.oneway.export.p198e;

/* renamed from: mobi.oneway.export.e.d */
/* loaded from: classes2.dex */
public class C2672d extends Thread {

    /* renamed from: a */
    private a f10279a;

    /* renamed from: b */
    private long f10280b;

    /* renamed from: c */
    private long f10281c;

    /* renamed from: d */
    private boolean f10282d = false;

    /* renamed from: mobi.oneway.export.e.d$a */
    /* loaded from: classes2.dex */
    public interface a {
        void timeout();
    }

    public C2672d(a aVar, long j) {
        this.f10280b = 5000L;
        this.f10279a = aVar;
        if (j != 0) {
            this.f10280b = j;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        super.run();
        this.f10281c = System.currentTimeMillis();
        while (!C2670b.m12055a().m12063d() && !this.f10282d) {
            if (System.currentTimeMillis() - this.f10281c > this.f10280b) {
                this.f10282d = true;
                if (this.f10279a != null) {
                    C2670b.m12055a().m12062c(new Runnable() { // from class: mobi.oneway.export.e.d.1
                        @Override // java.lang.Runnable
                        public void run() {
                            C2672d.this.f10279a.timeout();
                        }
                    });
                }
            }
        }
    }
}
