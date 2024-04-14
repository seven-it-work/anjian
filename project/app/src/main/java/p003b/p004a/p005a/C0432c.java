package p003b.p004a.p005a;

import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import p003b.C0494ac;
import p003b.C0496ae;
import p003b.C0506d;
import p003b.C0523u;
import p003b.C0524v;
import p003b.p004a.AbstractC0429a;
import p003b.p004a.p008d.C0451d;
import p003b.p004a.p008d.C0452e;

/* renamed from: b.a.a.c */
/* loaded from: classes.dex */
public final class C0432c {

    /* renamed from: a */
    @Nullable
    public final C0494ac f67a;

    /* renamed from: b */
    @Nullable
    public final C0496ae f68b;

    /* renamed from: b.a.a.c$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        final long f69a;

        /* renamed from: b */
        final C0494ac f70b;

        /* renamed from: c */
        final C0496ae f71c;

        /* renamed from: d */
        Date f72d;

        /* renamed from: e */
        String f73e;

        /* renamed from: f */
        Date f74f;

        /* renamed from: g */
        String f75g;

        /* renamed from: h */
        Date f76h;

        /* renamed from: i */
        long f77i;

        /* renamed from: j */
        long f78j;

        /* renamed from: k */
        String f79k;

        /* renamed from: l */
        int f80l;

        public a(long j, C0494ac c0494ac, C0496ae c0496ae) {
            this.f80l = -1;
            this.f69a = j;
            this.f70b = c0494ac;
            this.f71c = c0496ae;
            if (c0496ae != null) {
                this.f77i = c0496ae.f672k;
                this.f78j = c0496ae.f673l;
                C0523u c0523u = c0496ae.f667f;
                int length = c0523u.f956a.length / 2;
                for (int i = 0; i < length; i++) {
                    String m851a = c0523u.m851a(i);
                    String m854b = c0523u.m854b(i);
                    if ("Date".equalsIgnoreCase(m851a)) {
                        this.f72d = C0451d.m226a(m854b);
                        this.f73e = m854b;
                    } else if ("Expires".equalsIgnoreCase(m851a)) {
                        this.f76h = C0451d.m226a(m854b);
                    } else if ("Last-Modified".equalsIgnoreCase(m851a)) {
                        this.f74f = C0451d.m226a(m854b);
                        this.f75g = m854b;
                    } else if ("ETag".equalsIgnoreCase(m851a)) {
                        this.f79k = m854b;
                    } else if ("Age".equalsIgnoreCase(m851a)) {
                        this.f80l = C0452e.m237b(m854b, -1);
                    }
                }
            }
        }

        /* renamed from: a */
        private C0432c m66a() {
            C0432c c0432c;
            String sb;
            long j;
            String str;
            String str2;
            C0432c c0432c2;
            if (this.f71c == null) {
                c0432c = new C0432c(this.f70b, null);
            } else if (this.f70b.f643a.m904b() && this.f71c.f666e == null) {
                c0432c = new C0432c(this.f70b, null);
            } else if (C0432c.m65a(this.f71c, this.f70b)) {
                C0506d m588d = this.f70b.m588d();
                if (!m588d.f746c) {
                    C0494ac c0494ac = this.f70b;
                    if (!((c0494ac.m585a("If-Modified-Since") == null && c0494ac.m585a("If-None-Match") == null) ? false : true)) {
                        long j2 = 0;
                        long max = this.f72d != null ? Math.max(0L, this.f78j - this.f72d.getTime()) : 0L;
                        if (this.f80l != -1) {
                            max = Math.max(max, TimeUnit.SECONDS.toMillis(this.f80l));
                        }
                        long j3 = max + (this.f78j - this.f77i) + (this.f69a - this.f78j);
                        if (this.f71c.m627f().f748e != -1) {
                            j = TimeUnit.SECONDS.toMillis(r9.f748e);
                        } else if (this.f76h != null) {
                            long time = this.f76h.getTime() - (this.f72d != null ? this.f72d.getTime() : this.f78j);
                            if (time > 0) {
                                j = time;
                            }
                            j = 0;
                        } else {
                            if (this.f74f != null) {
                                C0524v c0524v = this.f71c.f662a.f643a;
                                if (c0524v.f972n == null) {
                                    sb = null;
                                } else {
                                    StringBuilder sb2 = new StringBuilder();
                                    C0524v.m882b(sb2, c0524v.f972n);
                                    sb = sb2.toString();
                                }
                                if (sb == null) {
                                    long time2 = (this.f72d != null ? this.f72d.getTime() : this.f77i) - this.f74f.getTime();
                                    if (time2 > 0) {
                                        j = time2 / 10;
                                    }
                                }
                            }
                            j = 0;
                        }
                        if (m588d.f748e != -1) {
                            j = Math.min(j, TimeUnit.SECONDS.toMillis(m588d.f748e));
                        }
                        long millis = m588d.f753j != -1 ? TimeUnit.SECONDS.toMillis(m588d.f753j) : 0L;
                        C0506d m627f = this.f71c.m627f();
                        if (!m627f.f751h && m588d.f752i != -1) {
                            j2 = TimeUnit.SECONDS.toMillis(m588d.f752i);
                        }
                        if (!m627f.f746c) {
                            long j4 = j3 + millis;
                            if (j4 < j + j2) {
                                C0496ae.a m626e = this.f71c.m626e();
                                if (j4 >= j) {
                                    m626e.m643a("Warning", "110 HttpURLConnection \"Response is stale\"");
                                }
                                if (j3 > 86400000) {
                                    if (this.f71c.m627f().f748e == -1 && this.f76h == null) {
                                        m626e.m643a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                                    }
                                }
                                c0432c2 = new C0432c(null, m626e.m644a());
                                c0432c = c0432c2;
                            }
                        }
                        if (this.f79k != null) {
                            str = "If-None-Match";
                            str2 = this.f79k;
                        } else if (this.f74f != null) {
                            str = "If-Modified-Since";
                            str2 = this.f75g;
                        } else if (this.f72d != null) {
                            str = "If-Modified-Since";
                            str2 = this.f73e;
                        } else {
                            c0432c = new C0432c(this.f70b, null);
                        }
                        C0523u.a m853b = this.f70b.f645c.m853b();
                        AbstractC0429a.f60a.mo54a(m853b, str, str2);
                        c0432c2 = new C0432c(this.f70b.m587c().m597a(m853b.m861a()).m606d(), this.f71c);
                        c0432c = c0432c2;
                    }
                }
                c0432c = new C0432c(this.f70b, null);
            } else {
                c0432c = new C0432c(this.f70b, null);
            }
            return (c0432c.f67a == null || !this.f70b.m588d().f754k) ? c0432c : new C0432c(null, null);
        }

        /* renamed from: a */
        private static boolean m67a(C0494ac c0494ac) {
            return (c0494ac.m585a("If-Modified-Since") == null && c0494ac.m585a("If-None-Match") == null) ? false : true;
        }

        /* renamed from: b */
        private C0432c m68b() {
            String sb;
            long j;
            String str;
            String str2;
            if (this.f71c == null) {
                return new C0432c(this.f70b, null);
            }
            if ((!this.f70b.f643a.m904b() || this.f71c.f666e != null) && C0432c.m65a(this.f71c, this.f70b)) {
                C0506d m588d = this.f70b.m588d();
                if (!m588d.f746c) {
                    C0494ac c0494ac = this.f70b;
                    if (!((c0494ac.m585a("If-Modified-Since") == null && c0494ac.m585a("If-None-Match") == null) ? false : true)) {
                        long j2 = 0;
                        long max = this.f72d != null ? Math.max(0L, this.f78j - this.f72d.getTime()) : 0L;
                        if (this.f80l != -1) {
                            max = Math.max(max, TimeUnit.SECONDS.toMillis(this.f80l));
                        }
                        long j3 = max + (this.f78j - this.f77i) + (this.f69a - this.f78j);
                        if (this.f71c.m627f().f748e != -1) {
                            j = TimeUnit.SECONDS.toMillis(r9.f748e);
                        } else if (this.f76h != null) {
                            long time = this.f76h.getTime() - (this.f72d != null ? this.f72d.getTime() : this.f78j);
                            if (time > 0) {
                                j = time;
                            }
                            j = 0;
                        } else {
                            if (this.f74f != null) {
                                C0524v c0524v = this.f71c.f662a.f643a;
                                if (c0524v.f972n == null) {
                                    sb = null;
                                } else {
                                    StringBuilder sb2 = new StringBuilder();
                                    C0524v.m882b(sb2, c0524v.f972n);
                                    sb = sb2.toString();
                                }
                                if (sb == null) {
                                    long time2 = (this.f72d != null ? this.f72d.getTime() : this.f77i) - this.f74f.getTime();
                                    if (time2 > 0) {
                                        j = time2 / 10;
                                    }
                                }
                            }
                            j = 0;
                        }
                        if (m588d.f748e != -1) {
                            j = Math.min(j, TimeUnit.SECONDS.toMillis(m588d.f748e));
                        }
                        long millis = m588d.f753j != -1 ? TimeUnit.SECONDS.toMillis(m588d.f753j) : 0L;
                        C0506d m627f = this.f71c.m627f();
                        if (!m627f.f751h && m588d.f752i != -1) {
                            j2 = TimeUnit.SECONDS.toMillis(m588d.f752i);
                        }
                        if (!m627f.f746c) {
                            long j4 = j3 + millis;
                            if (j4 < j + j2) {
                                C0496ae.a m626e = this.f71c.m626e();
                                if (j4 >= j) {
                                    m626e.m643a("Warning", "110 HttpURLConnection \"Response is stale\"");
                                }
                                if (j3 > 86400000) {
                                    if (this.f71c.m627f().f748e == -1 && this.f76h == null) {
                                        m626e.m643a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                                    }
                                }
                                return new C0432c(null, m626e.m644a());
                            }
                        }
                        if (this.f79k != null) {
                            str = "If-None-Match";
                            str2 = this.f79k;
                        } else if (this.f74f != null) {
                            str = "If-Modified-Since";
                            str2 = this.f75g;
                        } else {
                            if (this.f72d == null) {
                                return new C0432c(this.f70b, null);
                            }
                            str = "If-Modified-Since";
                            str2 = this.f73e;
                        }
                        C0523u.a m853b = this.f70b.f645c.m853b();
                        AbstractC0429a.f60a.mo54a(m853b, str, str2);
                        return new C0432c(this.f70b.m587c().m597a(m853b.m861a()).m606d(), this.f71c);
                    }
                }
                return new C0432c(this.f70b, null);
            }
            return new C0432c(this.f70b, null);
        }

        /* renamed from: c */
        private long m69c() {
            String sb;
            if (this.f71c.m627f().f748e != -1) {
                return TimeUnit.SECONDS.toMillis(r0.f748e);
            }
            if (this.f76h != null) {
                long time = this.f76h.getTime() - (this.f72d != null ? this.f72d.getTime() : this.f78j);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.f74f != null) {
                C0524v c0524v = this.f71c.f662a.f643a;
                if (c0524v.f972n == null) {
                    sb = null;
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    C0524v.m882b(sb2, c0524v.f972n);
                    sb = sb2.toString();
                }
                if (sb == null) {
                    long time2 = (this.f72d != null ? this.f72d.getTime() : this.f77i) - this.f74f.getTime();
                    if (time2 > 0) {
                        return time2 / 10;
                    }
                }
            }
            return 0L;
        }

        /* renamed from: d */
        private long m70d() {
            long max = this.f72d != null ? Math.max(0L, this.f78j - this.f72d.getTime()) : 0L;
            if (this.f80l != -1) {
                max = Math.max(max, TimeUnit.SECONDS.toMillis(this.f80l));
            }
            return max + (this.f78j - this.f77i) + (this.f69a - this.f78j);
        }

        /* renamed from: e */
        private boolean m71e() {
            return this.f71c.m627f().f748e == -1 && this.f76h == null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0432c(C0494ac c0494ac, C0496ae c0496ae) {
        this.f67a = c0494ac;
        this.f68b = c0496ae;
    }

    /* renamed from: a */
    public static boolean m65a(C0496ae c0496ae, C0494ac c0494ac) {
        switch (c0496ae.f664c) {
            case 200:
            case SET_BOTTON_VALUE:
            case SET_RADIO_GROUP_VALUE:
            case 300:
            case SET_ENABLED_VALUE:
            case 308:
            case GET_TEXT_VALUE:
            case GET_BACKCOLOR_VALUE:
            case GET_FW_VISIBLE_VALUE:
            case 414:
            case SET_WINDOW_GRAVITY_VALUE:
                break;
            case SET_VISIBLE_VALUE:
            case 307:
                if (c0496ae.m622a("Expires") == null && c0496ae.m627f().f748e == -1 && !c0496ae.m627f().f750g && !c0496ae.m627f().f749f) {
                    return false;
                }
                break;
            default:
                return false;
        }
        return (c0496ae.m627f().f747d || c0494ac.m588d().f747d) ? false : true;
    }
}
