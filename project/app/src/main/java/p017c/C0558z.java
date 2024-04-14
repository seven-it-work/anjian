package p017c;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* renamed from: c.z */
/* loaded from: classes.dex */
public class C0558z {

    /* renamed from: c */
    public static final C0558z f1157c = new C0558z() { // from class: c.z.1
        @Override // p017c.C0558z
        /* renamed from: a */
        public final C0558z mo1184a(long j) {
            return this;
        }

        @Override // p017c.C0558z
        /* renamed from: a */
        public final C0558z mo1185a(long j, TimeUnit timeUnit) {
            return this;
        }

        @Override // p017c.C0558z
        /* renamed from: f */
        public final void mo1188f() throws IOException {
        }
    };

    /* renamed from: a */
    private boolean f1158a;

    /* renamed from: b */
    private long f1159b;

    /* renamed from: d */
    private long f1160d;

    /* renamed from: b */
    private C0558z m1243b(long j, TimeUnit timeUnit) {
        if (j <= 0) {
            throw new IllegalArgumentException("duration <= 0: " + j);
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        return mo1184a(System.nanoTime() + timeUnit.toNanos(j));
    }

    /* renamed from: a */
    public C0558z mo1184a(long j) {
        this.f1158a = true;
        this.f1159b = j;
        return this;
    }

    /* renamed from: a */
    public C0558z mo1185a(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0: " + j);
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        this.f1160d = timeUnit.toNanos(j);
        return this;
    }

    /* renamed from: a */
    public final void m1244a(Object obj) throws InterruptedIOException {
        try {
            boolean mo1190m_ = mo1190m_();
            long mo1189l_ = mo1189l_();
            long j = 0;
            if (!mo1190m_ && mo1189l_ == 0) {
                obj.wait();
                return;
            }
            long nanoTime = System.nanoTime();
            if (mo1190m_ && mo1189l_ != 0) {
                mo1189l_ = Math.min(mo1189l_, mo1186c() - nanoTime);
            } else if (mo1190m_) {
                mo1189l_ = mo1186c() - nanoTime;
            }
            if (mo1189l_ > 0) {
                long j2 = mo1189l_ / 1000000;
                obj.wait(j2, (int) (mo1189l_ - (1000000 * j2)));
                j = System.nanoTime() - nanoTime;
            }
            if (j >= mo1189l_) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            throw new InterruptedIOException("interrupted");
        }
    }

    /* renamed from: c */
    public long mo1186c() {
        if (this.f1158a) {
            return this.f1159b;
        }
        throw new IllegalStateException("No deadline");
    }

    /* renamed from: d */
    public C0558z mo1187d() {
        this.f1160d = 0L;
        return this;
    }

    /* renamed from: f */
    public void mo1188f() throws IOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException("thread interrupted");
        }
        if (this.f1158a && this.f1159b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    /* renamed from: l_ */
    public long mo1189l_() {
        return this.f1160d;
    }

    /* renamed from: m_ */
    public boolean mo1190m_() {
        return this.f1158a;
    }

    /* renamed from: n_ */
    public C0558z mo1191n_() {
        this.f1158a = false;
        return this;
    }
}
