package p003b.p004a;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import p003b.AbstractC0495ad;
import p003b.AbstractC0497af;
import p003b.C0524v;
import p003b.C0526x;
import p017c.C0535c;
import p017c.C0538f;
import p017c.InterfaceC0537e;
import p017c.InterfaceC0557y;

/* renamed from: b.a.c */
/* loaded from: classes.dex */
public final class C0439c {

    /* renamed from: a */
    public static final byte[] f163a = new byte[0];

    /* renamed from: b */
    public static final String[] f164b = new String[0];

    /* renamed from: c */
    public static final AbstractC0497af f165c = AbstractC0497af.create((C0526x) null, f163a);

    /* renamed from: d */
    public static final AbstractC0495ad f166d = AbstractC0495ad.create((C0526x) null, f163a);

    /* renamed from: h */
    private static final C0538f f170h = C0538f.decodeHex("efbbbf");

    /* renamed from: i */
    private static final C0538f f171i = C0538f.decodeHex("feff");

    /* renamed from: j */
    private static final C0538f f172j = C0538f.decodeHex("fffe");

    /* renamed from: k */
    private static final C0538f f173k = C0538f.decodeHex("0000ffff");

    /* renamed from: l */
    private static final C0538f f174l = C0538f.decodeHex("ffff0000");

    /* renamed from: e */
    public static final Charset f167e = Charset.forName("UTF-8");

    /* renamed from: m */
    private static final Charset f175m = Charset.forName("UTF-16BE");

    /* renamed from: n */
    private static final Charset f176n = Charset.forName("UTF-16LE");

    /* renamed from: o */
    private static final Charset f177o = Charset.forName("UTF-32BE");

    /* renamed from: p */
    private static final Charset f178p = Charset.forName("UTF-32LE");

    /* renamed from: f */
    public static final TimeZone f168f = TimeZone.getTimeZone("GMT");

    /* renamed from: g */
    public static final Comparator<String> f169g = new Comparator<String>() { // from class: b.a.c.1
        /* renamed from: a */
        private static int m160a(String str, String str2) {
            return str.compareTo(str2);
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    };

    /* renamed from: q */
    private static final Pattern f179q = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    private C0439c() {
    }

    /* renamed from: a */
    public static int m132a(String str, int i, int i2) {
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
    public static int m133a(String str, int i, int i2, char c2) {
        while (i < i2) {
            if (str.charAt(i) == c2) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m134a(String str, int i, int i2, String str2) {
        while (i < i2) {
            if (str2.indexOf(str.charAt(i)) != -1) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m135a(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (comparator.compare(strArr[i], str) == 0) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static String m136a(C0524v c0524v, boolean z) {
        String str;
        if (c0524v.f970l.contains(":")) {
            str = "[" + c0524v.f970l + "]";
        } else {
            str = c0524v.f970l;
        }
        if (!z && c0524v.f971m == C0524v.m867a(c0524v.f969k)) {
            return str;
        }
        return str + ":" + c0524v.f971m;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0038, code lost:
    
        return null;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String m137a(java.lang.String r6) {
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
        throw new UnsupportedOperationException("Method not decompiled: p003b.p004a.C0439c.m137a(java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public static String m138a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* renamed from: a */
    public static Charset m139a(InterfaceC0537e interfaceC0537e, Charset charset) throws IOException {
        if (interfaceC0537e.mo1132d(f170h)) {
            interfaceC0537e.mo1145h(f170h.size());
            return f167e;
        }
        if (interfaceC0537e.mo1132d(f171i)) {
            interfaceC0537e.mo1145h(f171i.size());
            return f175m;
        }
        if (interfaceC0537e.mo1132d(f172j)) {
            interfaceC0537e.mo1145h(f172j.size());
            return f176n;
        }
        if (interfaceC0537e.mo1132d(f173k)) {
            interfaceC0537e.mo1145h(f173k.size());
            return f177o;
        }
        if (!interfaceC0537e.mo1132d(f174l)) {
            return charset;
        }
        interfaceC0537e.mo1145h(f174l.size());
        return f178p;
    }

    /* renamed from: a */
    public static <T> List<T> m140a(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    /* renamed from: a */
    public static <T> List<T> m141a(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    /* renamed from: a */
    public static ThreadFactory m142a(final String str, final boolean z) {
        return new ThreadFactory() { // from class: b.a.c.2
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, str);
                thread.setDaemon(z);
                return thread;
            }
        };
    }

    /* renamed from: a */
    public static void m143a(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    /* renamed from: a */
    public static void m144a(Closeable closeable) {
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
    private static void m145a(ServerSocket serverSocket) {
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: a */
    public static void m146a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e) {
                if (!m149a(e)) {
                    throw e;
                }
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m147a(InterfaceC0557y interfaceC0557y, int i, TimeUnit timeUnit) throws IOException {
        long nanoTime = System.nanoTime();
        long mo1186c = interfaceC0557y.timeout().mo1190m_() ? interfaceC0557y.timeout().mo1186c() - nanoTime : Long.MAX_VALUE;
        interfaceC0557y.timeout().mo1184a(nanoTime + Math.min(mo1186c, timeUnit.toNanos(i)));
        try {
            C0535c c0535c = new C0535c();
            while (interfaceC0557y.read(c0535c, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                c0535c.m1173w();
            }
            if (mo1186c == Long.MAX_VALUE) {
                interfaceC0557y.timeout().mo1191n_();
                return true;
            }
            interfaceC0557y.timeout().mo1184a(nanoTime + mo1186c);
            return true;
        } catch (InterruptedIOException unused) {
            if (mo1186c == Long.MAX_VALUE) {
                interfaceC0557y.timeout().mo1191n_();
                return false;
            }
            interfaceC0557y.timeout().mo1184a(nanoTime + mo1186c);
            return false;
        } catch (Throwable th) {
            if (mo1186c == Long.MAX_VALUE) {
                interfaceC0557y.timeout().mo1191n_();
            } else {
                interfaceC0557y.timeout().mo1184a(nanoTime + mo1186c);
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static boolean m148a(InterfaceC0557y interfaceC0557y, TimeUnit timeUnit) {
        try {
            return m147a(interfaceC0557y, 100, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m149a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: a */
    public static boolean m150a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: a */
    public static String[] m151a(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i++;
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: a */
    public static String[] m152a(String[] strArr, String str) {
        String[] strArr2 = new String[strArr.length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[strArr2.length - 1] = str;
        return strArr2;
    }

    /* renamed from: b */
    public static int m153b(String str) {
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
    public static int m154b(String str, int i, int i2) {
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

    /* renamed from: b */
    public static boolean m155b(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length == 0 || strArr2.length == 0) {
            return false;
        }
        for (String str : strArr) {
            for (String str2 : strArr2) {
                if (comparator.compare(str, str2) == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: c */
    public static String m156c(String str, int i, int i2) {
        int m132a = m132a(str, i, i2);
        return str.substring(m132a, m154b(str, m132a, i2));
    }

    /* renamed from: c */
    public static boolean m157c(String str) {
        return f179q.matcher(str).matches();
    }

    /* renamed from: d */
    private static String m158d(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt <= 31 || codePointAt >= 127) {
                C0535c c0535c = new C0535c();
                c0535c.mo1115b(str, 0, i);
                while (i < length) {
                    int codePointAt2 = str.codePointAt(i);
                    c0535c.mo1159m((codePointAt2 <= 31 || codePointAt2 >= 127) ? 63 : codePointAt2);
                    i += Character.charCount(codePointAt2);
                }
                return c0535c.mo1167q();
            }
            i += Character.charCount(codePointAt);
        }
        return str;
    }

    /* renamed from: e */
    private static boolean m159e(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt <= 31 || charAt >= 127 || " #%/:?@[\\]".indexOf(charAt) != -1) {
                return true;
            }
        }
        return false;
    }
}
