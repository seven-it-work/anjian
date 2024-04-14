package p003b.p004a.p010f;

import android.support.v7.widget.ActivityChooserView;
import java.util.Arrays;

/* renamed from: b.a.f.n */
/* loaded from: classes.dex */
public final class C0474n {

    /* renamed from: a */
    static final int f481a = 65535;

    /* renamed from: b */
    static final int f482b = 1;

    /* renamed from: c */
    static final int f483c = 2;

    /* renamed from: d */
    static final int f484d = 4;

    /* renamed from: e */
    static final int f485e = 5;

    /* renamed from: f */
    static final int f486f = 6;

    /* renamed from: g */
    static final int f487g = 7;

    /* renamed from: h */
    static final int f488h = 10;

    /* renamed from: i */
    int f489i;

    /* renamed from: j */
    final int[] f490j = new int[10];

    /* renamed from: a */
    private boolean m442a(boolean z) {
        return ((this.f489i & 4) != 0 ? this.f490j[2] : z ? 1 : 0) == 1;
    }

    /* renamed from: b */
    private int m443b(int i) {
        return this.f490j[i];
    }

    /* renamed from: c */
    private int m444c(int i) {
        return (this.f489i & 32) != 0 ? this.f490j[5] : i;
    }

    /* renamed from: c */
    private void m445c() {
        this.f489i = 0;
        Arrays.fill(this.f490j, 0);
    }

    /* renamed from: d */
    private int m446d() {
        return Integer.bitCount(this.f489i);
    }

    /* renamed from: d */
    private int m447d(int i) {
        return (this.f489i & 64) != 0 ? this.f490j[6] : i;
    }

    /* renamed from: e */
    private int m448e() {
        return (this.f489i & 16) != 0 ? this.f490j[4] : ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m449a() {
        if ((this.f489i & 2) != 0) {
            return this.f490j[1];
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C0474n m450a(int i, int i2) {
        if (i >= this.f490j.length) {
            return this;
        }
        this.f489i = (1 << i) | this.f489i;
        this.f490j[i] = i2;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m451a(C0474n c0474n) {
        for (int i = 0; i < 10; i++) {
            if (c0474n.m452a(i)) {
                m450a(i, c0474n.f490j[i]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m452a(int i) {
        return ((1 << i) & this.f489i) != 0;
    }

    /* renamed from: b */
    public final int m453b() {
        if ((this.f489i & 128) != 0) {
            return this.f490j[7];
        }
        return 65535;
    }
}
