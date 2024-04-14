package p003b;

import android.support.v7.widget.ActivityChooserView;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* renamed from: b.d */
/* loaded from: classes.dex */
public final class C0506d {

    /* renamed from: a */
    public static final C0506d f744a;

    /* renamed from: b */
    public static final C0506d f745b;

    /* renamed from: c */
    public final boolean f746c;

    /* renamed from: d */
    public final boolean f747d;

    /* renamed from: e */
    public final int f748e;

    /* renamed from: f */
    public final boolean f749f;

    /* renamed from: g */
    public final boolean f750g;

    /* renamed from: h */
    public final boolean f751h;

    /* renamed from: i */
    public final int f752i;

    /* renamed from: j */
    public final int f753j;

    /* renamed from: k */
    public final boolean f754k;

    /* renamed from: l */
    @Nullable
    String f755l;

    /* renamed from: m */
    private final int f756m;

    /* renamed from: n */
    private final boolean f757n;

    /* renamed from: o */
    private final boolean f758o;

    /* renamed from: b.d$a */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a */
        boolean f759a;

        /* renamed from: b */
        boolean f760b;

        /* renamed from: c */
        int f761c = -1;

        /* renamed from: d */
        int f762d = -1;

        /* renamed from: e */
        int f763e = -1;

        /* renamed from: f */
        boolean f764f;

        /* renamed from: g */
        boolean f765g;

        /* renamed from: h */
        boolean f766h;

        /* renamed from: a */
        private a m706a(int i, TimeUnit timeUnit) {
            if (i < 0) {
                throw new IllegalArgumentException("maxAge < 0: " + i);
            }
            long seconds = timeUnit.toSeconds(i);
            this.f761c = seconds > 2147483647L ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) seconds;
            return this;
        }

        /* renamed from: a */
        private a m707a(TimeUnit timeUnit) {
            long seconds = timeUnit.toSeconds(2147483647L);
            this.f762d = seconds > 2147483647L ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) seconds;
            return this;
        }

        /* renamed from: b */
        private a m708b() {
            this.f759a = true;
            return this;
        }

        /* renamed from: b */
        private a m709b(int i, TimeUnit timeUnit) {
            if (i < 0) {
                throw new IllegalArgumentException("minFresh < 0: " + i);
            }
            long seconds = timeUnit.toSeconds(i);
            this.f763e = seconds > 2147483647L ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) seconds;
            return this;
        }

        /* renamed from: c */
        private a m710c() {
            this.f760b = true;
            return this;
        }

        /* renamed from: d */
        private a m711d() {
            this.f764f = true;
            return this;
        }

        /* renamed from: e */
        private a m712e() {
            this.f765g = true;
            return this;
        }

        /* renamed from: f */
        private a m713f() {
            this.f766h = true;
            return this;
        }

        /* renamed from: a */
        public final C0506d m714a() {
            return new C0506d(this);
        }
    }

    static {
        a aVar = new a();
        aVar.f759a = true;
        f744a = aVar.m714a();
        a aVar2 = new a();
        aVar2.f764f = true;
        long seconds = TimeUnit.SECONDS.toSeconds(2147483647L);
        aVar2.f762d = seconds > 2147483647L ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) seconds;
        f745b = aVar2.m714a();
    }

    C0506d(a aVar) {
        this.f746c = aVar.f759a;
        this.f747d = aVar.f760b;
        this.f748e = aVar.f761c;
        this.f756m = -1;
        this.f749f = false;
        this.f750g = false;
        this.f751h = false;
        this.f752i = aVar.f762d;
        this.f753j = aVar.f763e;
        this.f754k = aVar.f764f;
        this.f757n = aVar.f765g;
        this.f758o = aVar.f766h;
    }

    private C0506d(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, @Nullable String str) {
        this.f746c = z;
        this.f747d = z2;
        this.f748e = i;
        this.f756m = i2;
        this.f749f = z3;
        this.f750g = z4;
        this.f751h = z5;
        this.f752i = i3;
        this.f753j = i4;
        this.f754k = z6;
        this.f757n = z7;
        this.f758o = z8;
        this.f755l = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static p003b.C0506d m692a(p003b.C0523u r24) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p003b.C0506d.m692a(b.u):b.d");
    }

    /* renamed from: a */
    private boolean m693a() {
        return this.f746c;
    }

    /* renamed from: b */
    private boolean m694b() {
        return this.f747d;
    }

    /* renamed from: c */
    private int m695c() {
        return this.f748e;
    }

    /* renamed from: d */
    private int m696d() {
        return this.f756m;
    }

    /* renamed from: e */
    private boolean m697e() {
        return this.f749f;
    }

    /* renamed from: f */
    private boolean m698f() {
        return this.f750g;
    }

    /* renamed from: g */
    private boolean m699g() {
        return this.f751h;
    }

    /* renamed from: h */
    private int m700h() {
        return this.f752i;
    }

    /* renamed from: i */
    private int m701i() {
        return this.f753j;
    }

    /* renamed from: j */
    private boolean m702j() {
        return this.f754k;
    }

    /* renamed from: k */
    private boolean m703k() {
        return this.f757n;
    }

    /* renamed from: l */
    private boolean m704l() {
        return this.f758o;
    }

    /* renamed from: m */
    private String m705m() {
        StringBuilder sb = new StringBuilder();
        if (this.f746c) {
            sb.append("no-cache, ");
        }
        if (this.f747d) {
            sb.append("no-store, ");
        }
        if (this.f748e != -1) {
            sb.append("max-age=");
            sb.append(this.f748e);
            sb.append(", ");
        }
        if (this.f756m != -1) {
            sb.append("s-maxage=");
            sb.append(this.f756m);
            sb.append(", ");
        }
        if (this.f749f) {
            sb.append("private, ");
        }
        if (this.f750g) {
            sb.append("public, ");
        }
        if (this.f751h) {
            sb.append("must-revalidate, ");
        }
        if (this.f752i != -1) {
            sb.append("max-stale=");
            sb.append(this.f752i);
            sb.append(", ");
        }
        if (this.f753j != -1) {
            sb.append("min-fresh=");
            sb.append(this.f753j);
            sb.append(", ");
        }
        if (this.f754k) {
            sb.append("only-if-cached, ");
        }
        if (this.f757n) {
            sb.append("no-transform, ");
        }
        if (this.f758o) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }

    public final String toString() {
        String sb;
        String str = this.f755l;
        if (str != null) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.f746c) {
            sb2.append("no-cache, ");
        }
        if (this.f747d) {
            sb2.append("no-store, ");
        }
        if (this.f748e != -1) {
            sb2.append("max-age=");
            sb2.append(this.f748e);
            sb2.append(", ");
        }
        if (this.f756m != -1) {
            sb2.append("s-maxage=");
            sb2.append(this.f756m);
            sb2.append(", ");
        }
        if (this.f749f) {
            sb2.append("private, ");
        }
        if (this.f750g) {
            sb2.append("public, ");
        }
        if (this.f751h) {
            sb2.append("must-revalidate, ");
        }
        if (this.f752i != -1) {
            sb2.append("max-stale=");
            sb2.append(this.f752i);
            sb2.append(", ");
        }
        if (this.f753j != -1) {
            sb2.append("min-fresh=");
            sb2.append(this.f753j);
            sb2.append(", ");
        }
        if (this.f754k) {
            sb2.append("only-if-cached, ");
        }
        if (this.f757n) {
            sb2.append("no-transform, ");
        }
        if (this.f758o) {
            sb2.append("immutable, ");
        }
        if (sb2.length() == 0) {
            sb = "";
        } else {
            sb2.delete(sb2.length() - 2, sb2.length());
            sb = sb2.toString();
        }
        this.f755l = sb;
        return sb;
    }
}
