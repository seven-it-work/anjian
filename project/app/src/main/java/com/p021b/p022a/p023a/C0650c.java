package com.p021b.p022a.p023a;

import android.support.v4.media.session.PlaybackStateCompat;
import com.p021b.p022a.AbstractC0744aq;
import com.p021b.p022a.AbstractC0748au;
import com.p021b.p022a.C0730ac;
import com.p021b.p032b.C0783f;
import com.p021b.p032b.C0786i;
import com.p021b.p032b.InterfaceC0785h;
import com.p021b.p032b.InterfaceC0801x;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Array;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* renamed from: com.b.a.a.c */
/* loaded from: classes.dex */
public final class C0650c {

    /* renamed from: a */
    public static final byte[] f1499a = new byte[0];

    /* renamed from: b */
    public static final String[] f1500b = new String[0];

    /* renamed from: c */
    public static final AbstractC0748au f1501c = AbstractC0748au.m1939a(f1499a);

    /* renamed from: d */
    public static final AbstractC0744aq f1502d = AbstractC0744aq.m1910a(f1499a);

    /* renamed from: g */
    private static final C0786i f1505g = C0786i.m2073b("efbbbf");

    /* renamed from: h */
    private static final C0786i f1506h = C0786i.m2073b("feff");

    /* renamed from: i */
    private static final C0786i f1507i = C0786i.m2073b("fffe");

    /* renamed from: j */
    private static final C0786i f1508j = C0786i.m2073b("0000ffff");

    /* renamed from: k */
    private static final C0786i f1509k = C0786i.m2073b("ffff0000");

    /* renamed from: e */
    public static final Charset f1503e = Charset.forName("UTF-8");

    /* renamed from: l */
    private static final Charset f1510l = Charset.forName("UTF-16BE");

    /* renamed from: m */
    private static final Charset f1511m = Charset.forName("UTF-16LE");

    /* renamed from: n */
    private static final Charset f1512n = Charset.forName("UTF-32BE");

    /* renamed from: o */
    private static final Charset f1513o = Charset.forName("UTF-32LE");

    /* renamed from: f */
    public static final TimeZone f1504f = TimeZone.getTimeZone("GMT");

    /* renamed from: p */
    private static final Pattern f1514p = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    /* renamed from: a */
    public static int m1600a(String str, int i, int i2) {
        while (i < i2) {
            switch (str.charAt(i)) {
                case '\t':
                case '\n':
                case '\f':
                case '\r':
                case ' ':
                    i++;
                default:
                    return i;
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static int m1601a(String str, int i, int i2, char c2) {
        while (i < i2) {
            if (str.charAt(i) == c2) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m1602a(String str, int i, int i2, String str2) {
        while (i < i2) {
            if (str2.indexOf(str.charAt(i)) != -1) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: a */
    public static <T> int m1603a(T[] tArr, T t) {
        int length = tArr.length;
        for (int i = 0; i < length; i++) {
            if (m1617a(tArr[i], t)) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static String m1604a(C0730ac c0730ac, boolean z) {
        String m1847f;
        if (c0730ac.m1847f().contains(":")) {
            m1847f = "[" + c0730ac.m1847f() + "]";
        } else {
            m1847f = c0730ac.m1847f();
        }
        if (!z && c0730ac.m1848g() == C0730ac.m1829a(c0730ac.m1841b())) {
            return m1847f;
        }
        return m1847f + ":" + c0730ac.m1848g();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0038, code lost:
    
        return null;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String m1605a(java.lang.String r6) {
        /*
            r0 = 0
            java.lang.String r6 = java.net.IDN.toASCII(r6)     // Catch: java.lang.IllegalArgumentException -> L3a
            java.util.Locale r1 = java.util.Locale.US     // Catch: java.lang.IllegalArgumentException -> L3a
            java.lang.String r6 = r6.toLowerCase(r1)     // Catch: java.lang.IllegalArgumentException -> L3a
            boolean r1 = r6.isEmpty()     // Catch: java.lang.IllegalArgumentException -> L3a
            if (r1 == 0) goto L12
            return r0
        L12:
            r1 = 0
            r2 = 0
        L14:
            int r3 = r6.length()     // Catch: java.lang.IllegalArgumentException -> L3a
            r4 = 1
            if (r2 >= r3) goto L35
            char r3 = r6.charAt(r2)     // Catch: java.lang.IllegalArgumentException -> L3a
            r5 = 31
            if (r3 <= r5) goto L36
            r5 = 127(0x7f, float:1.78E-43)
            if (r3 < r5) goto L28
            goto L36
        L28:
            java.lang.String r5 = " #%/:?@[\\]"
            int r3 = r5.indexOf(r3)     // Catch: java.lang.IllegalArgumentException -> L3a
            r5 = -1
            if (r3 == r5) goto L32
            goto L36
        L32:
            int r2 = r2 + 1
            goto L14
        L35:
            r4 = 0
        L36:
            if (r4 == 0) goto L39
            return r0
        L39:
            return r6
        L3a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p021b.p022a.p023a.C0650c.m1605a(java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public static String m1606a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* renamed from: a */
    public static Charset m1607a(InterfaceC0785h interfaceC0785h, Charset charset) {
        if (interfaceC0785h.mo2041b(f1505g)) {
            interfaceC0785h.mo2053f(f1505g.mo2086g());
            return f1503e;
        }
        if (interfaceC0785h.mo2041b(f1506h)) {
            interfaceC0785h.mo2053f(f1506h.mo2086g());
            return f1510l;
        }
        if (interfaceC0785h.mo2041b(f1507i)) {
            interfaceC0785h.mo2053f(f1507i.mo2086g());
            return f1511m;
        }
        if (interfaceC0785h.mo2041b(f1508j)) {
            interfaceC0785h.mo2053f(f1508j.mo2086g());
            return f1512n;
        }
        if (!interfaceC0785h.mo2041b(f1509k)) {
            return charset;
        }
        interfaceC0785h.mo2053f(f1509k.mo2086g());
        return f1513o;
    }

    /* renamed from: a */
    public static <T> List<T> m1608a(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    /* renamed from: a */
    public static <T> List<T> m1609a(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    /* renamed from: a */
    public static ThreadFactory m1610a(String str, boolean z) {
        return new ThreadFactoryC0664d(str, z);
    }

    /* renamed from: a */
    public static void m1611a(long j, long j2) {
        if ((j2 | 0) < 0 || 0 > j || j - 0 < j2) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    /* renamed from: a */
    public static void m1612a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: a */
    public static void m1613a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e) {
                if (!m1616a(e)) {
                    throw e;
                }
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m1614a(InterfaceC0801x interfaceC0801x, int i, TimeUnit timeUnit) {
        long nanoTime = System.nanoTime();
        long mo2094d = interfaceC0801x.mo1544a().mo2093c_() ? interfaceC0801x.mo1544a().mo2094d() - nanoTime : Long.MAX_VALUE;
        interfaceC0801x.mo1544a().mo2090a(nanoTime + Math.min(mo2094d, timeUnit.toNanos(i)));
        try {
            C0783f c0783f = new C0783f();
            while (interfaceC0801x.mo1543a(c0783f, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                c0783f.m2068o();
            }
            if (mo2094d == Long.MAX_VALUE) {
                interfaceC0801x.mo1544a().mo2096e_();
                return true;
            }
            interfaceC0801x.mo1544a().mo2090a(nanoTime + mo2094d);
            return true;
        } catch (InterruptedIOException unused) {
            if (mo2094d == Long.MAX_VALUE) {
                interfaceC0801x.mo1544a().mo2096e_();
                return false;
            }
            interfaceC0801x.mo1544a().mo2090a(nanoTime + mo2094d);
            return false;
        } catch (Throwable th) {
            if (mo2094d == Long.MAX_VALUE) {
                interfaceC0801x.mo1544a().mo2096e_();
            } else {
                interfaceC0801x.mo1544a().mo2090a(nanoTime + mo2094d);
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static boolean m1615a(InterfaceC0801x interfaceC0801x, TimeUnit timeUnit) {
        try {
            return m1614a(interfaceC0801x, 100, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m1616a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: a */
    public static boolean m1617a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <T> T[] m1618a(Class<T> cls, T[] tArr, T[] tArr2) {
        ArrayList arrayList = new ArrayList();
        for (Object[] objArr : tArr) {
            int length = tArr2.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    T t = tArr2[i];
                    if (objArr.equals(t)) {
                        arrayList.add(t);
                        break;
                    }
                    i++;
                }
            }
        }
        return (T[]) arrayList.toArray((Object[]) Array.newInstance((Class<?>) cls, arrayList.size()));
    }

    /* renamed from: a */
    public static String[] m1619a(String[] strArr, String str) {
        String[] strArr2 = new String[strArr.length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[strArr2.length - 1] = str;
        return strArr2;
    }

    /* renamed from: b */
    public static int m1620b(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt <= 31 || charAt >= 127) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: b */
    public static int m1621b(String str, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            switch (str.charAt(i3)) {
                case '\t':
                case '\n':
                case '\f':
                case '\r':
                case ' ':
                default:
                    return i3 + 1;
            }
        }
        return i;
    }

    /* renamed from: c */
    public static String m1622c(String str, int i, int i2) {
        int m1600a = m1600a(str, i, i2);
        return str.substring(m1600a, m1621b(str, m1600a, i2));
    }

    /* renamed from: c */
    public static boolean m1623c(String str) {
        return f1514p.matcher(str).matches();
    }
}
