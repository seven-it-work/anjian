package p003b.p004a.p005a;

import com.cyjh.common.util.C1176s;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.NoSuchElementException;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import org.apache.commons.io.FilenameUtils;
import p003b.p004a.C0439c;
import p003b.p004a.p011g.InterfaceC0476a;
import p003b.p004a.p012h.C0481e;
import p017c.C0548p;
import p017c.InterfaceC0536d;
import p017c.InterfaceC0537e;
import p017c.InterfaceC0556x;
import p017c.InterfaceC0557y;

/* renamed from: b.a.a.d */
/* loaded from: classes.dex */
public final class C0433d implements Closeable, Flushable {

    /* renamed from: a */
    static final String f81a = "journal";

    /* renamed from: b */
    static final String f82b = "journal.tmp";

    /* renamed from: c */
    static final String f83c = "journal.bkp";

    /* renamed from: d */
    static final String f84d = "libcore.io.DiskLruCache";

    /* renamed from: e */
    static final String f85e = "1";

    /* renamed from: f */
    static final long f86f = -1;

    /* renamed from: g */
    static final Pattern f87g = Pattern.compile("[a-z0-9_-]{1,120}");

    /* renamed from: s */
    static final /* synthetic */ boolean f88s = true;

    /* renamed from: t */
    private static final String f89t = "CLEAN";

    /* renamed from: u */
    private static final String f90u = "DIRTY";

    /* renamed from: v */
    private static final String f91v = "REMOVE";

    /* renamed from: w */
    private static final String f92w = "READ";

    /* renamed from: B */
    private long f94B;

    /* renamed from: E */
    private final Executor f97E;

    /* renamed from: h */
    final InterfaceC0476a f99h;

    /* renamed from: i */
    public final File f100i;

    /* renamed from: k */
    InterfaceC0536d f102k;

    /* renamed from: m */
    int f104m;

    /* renamed from: n */
    boolean f105n;

    /* renamed from: o */
    boolean f106o;

    /* renamed from: p */
    boolean f107p;

    /* renamed from: q */
    boolean f108q;

    /* renamed from: r */
    boolean f109r;

    /* renamed from: x */
    private final File f110x;

    /* renamed from: y */
    private final File f111y;

    /* renamed from: z */
    private final File f112z;

    /* renamed from: C */
    private long f95C = 0;

    /* renamed from: l */
    final LinkedHashMap<String, b> f103l = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: D */
    private long f96D = 0;

    /* renamed from: F */
    private final Runnable f98F = new Runnable() { // from class: b.a.a.d.1
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (C0433d.this) {
                if ((!C0433d.this.f106o) != false || C0433d.this.f107p) {
                    return;
                }
                try {
                    C0433d.this.m93g();
                } catch (IOException unused) {
                    C0433d.this.f108q = true;
                }
                try {
                    if (C0433d.this.m91e()) {
                        C0433d.this.m87b();
                        C0433d.this.f104m = 0;
                    }
                } catch (IOException unused2) {
                    C0433d.this.f109r = true;
                    C0433d.this.f102k = C0548p.m1216a(C0548p.m1218a());
                }
            }
        }
    };

    /* renamed from: A */
    private final int f93A = 201105;

    /* renamed from: j */
    final int f101j = 2;

    /* renamed from: b.a.a.d$a */
    /* loaded from: classes.dex */
    public final class a {

        /* renamed from: a */
        final b f120a;

        /* renamed from: b */
        final boolean[] f121b;

        /* renamed from: d */
        private boolean f123d;

        a(b bVar) {
            this.f120a = bVar;
            this.f121b = bVar.f129e ? null : new boolean[C0433d.this.f101j];
        }

        /* renamed from: b */
        private InterfaceC0557y m99b(int i) {
            synchronized (C0433d.this) {
                if (this.f123d) {
                    throw new IllegalStateException();
                }
                if (!this.f120a.f129e || this.f120a.f130f != this) {
                    return null;
                }
                try {
                    return C0433d.this.f99h.mo454a(this.f120a.f127c[i]);
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }
        }

        /* renamed from: d */
        private void m100d() {
            synchronized (C0433d.this) {
                if (!this.f123d && this.f120a.f130f == this) {
                    try {
                        C0433d.this.m85a(this, false);
                    } catch (IOException unused) {
                    }
                }
            }
        }

        /* renamed from: a */
        public final InterfaceC0556x m101a(int i) {
            synchronized (C0433d.this) {
                if (this.f123d) {
                    throw new IllegalStateException();
                }
                if (this.f120a.f130f != this) {
                    return C0548p.m1218a();
                }
                if (!this.f120a.f129e) {
                    this.f121b[i] = true;
                }
                try {
                    return new C0434e(C0433d.this.f99h.mo456b(this.f120a.f128d[i])) { // from class: b.a.a.d.a.1
                        @Override // p003b.p004a.p005a.C0434e
                        /* renamed from: a */
                        protected final void mo97a() {
                            synchronized (C0433d.this) {
                                a.this.m102a();
                            }
                        }
                    };
                } catch (FileNotFoundException unused) {
                    return C0548p.m1218a();
                }
            }
        }

        /* renamed from: a */
        final void m102a() {
            if (this.f120a.f130f == this) {
                for (int i = 0; i < C0433d.this.f101j; i++) {
                    try {
                        C0433d.this.f99h.mo458d(this.f120a.f128d[i]);
                    } catch (IOException unused) {
                    }
                }
                this.f120a.f130f = null;
            }
        }

        /* renamed from: b */
        public final void m103b() throws IOException {
            synchronized (C0433d.this) {
                if (this.f123d) {
                    throw new IllegalStateException();
                }
                if (this.f120a.f130f == this) {
                    C0433d.this.m85a(this, true);
                }
                this.f123d = true;
            }
        }

        /* renamed from: c */
        public final void m104c() throws IOException {
            synchronized (C0433d.this) {
                if (this.f123d) {
                    throw new IllegalStateException();
                }
                if (this.f120a.f130f == this) {
                    C0433d.this.m85a(this, false);
                }
                this.f123d = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.a.a.d$b */
    /* loaded from: classes.dex */
    public final class b {

        /* renamed from: a */
        final String f125a;

        /* renamed from: b */
        final long[] f126b;

        /* renamed from: c */
        final File[] f127c;

        /* renamed from: d */
        final File[] f128d;

        /* renamed from: e */
        boolean f129e;

        /* renamed from: f */
        a f130f;

        /* renamed from: g */
        long f131g;

        b(String str) {
            this.f125a = str;
            this.f126b = new long[C0433d.this.f101j];
            this.f127c = new File[C0433d.this.f101j];
            this.f128d = new File[C0433d.this.f101j];
            StringBuilder sb = new StringBuilder(str);
            sb.append(FilenameUtils.EXTENSION_SEPARATOR);
            int length = sb.length();
            for (int i = 0; i < C0433d.this.f101j; i++) {
                sb.append(i);
                this.f127c[i] = new File(C0433d.this.f100i, sb.toString());
                sb.append(".tmp");
                this.f128d[i] = new File(C0433d.this.f100i, sb.toString());
                sb.setLength(length);
            }
        }

        /* renamed from: b */
        private static IOException m105b(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: a */
        final c m106a() {
            if (!Thread.holdsLock(C0433d.this)) {
                throw new AssertionError();
            }
            InterfaceC0557y[] interfaceC0557yArr = new InterfaceC0557y[C0433d.this.f101j];
            long[] jArr = (long[]) this.f126b.clone();
            for (int i = 0; i < C0433d.this.f101j; i++) {
                try {
                    interfaceC0557yArr[i] = C0433d.this.f99h.mo454a(this.f127c[i]);
                } catch (FileNotFoundException unused) {
                    for (int i2 = 0; i2 < C0433d.this.f101j && interfaceC0557yArr[i2] != null; i2++) {
                        C0439c.m144a(interfaceC0557yArr[i2]);
                    }
                    try {
                        C0433d.this.m86a(this);
                        return null;
                    } catch (IOException unused2) {
                        return null;
                    }
                }
            }
            return new c(this.f125a, this.f131g, interfaceC0557yArr, jArr);
        }

        /* renamed from: a */
        final void m107a(InterfaceC0536d interfaceC0536d) throws IOException {
            for (long j : this.f126b) {
                interfaceC0536d.mo1157l(32).mo1162n(j);
            }
        }

        /* renamed from: a */
        final void m108a(String[] strArr) throws IOException {
            if (strArr.length != C0433d.this.f101j) {
                throw m105b(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.f126b[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    throw m105b(strArr);
                }
            }
        }
    }

    /* renamed from: b.a.a.d$c */
    /* loaded from: classes.dex */
    public final class c implements Closeable {

        /* renamed from: a */
        public final String f133a;

        /* renamed from: b */
        public final long f134b;

        /* renamed from: c */
        public final InterfaceC0557y[] f135c;

        /* renamed from: e */
        private final long[] f137e;

        c(String str, long j, InterfaceC0557y[] interfaceC0557yArr, long[] jArr) {
            this.f133a = str;
            this.f134b = j;
            this.f135c = interfaceC0557yArr;
            this.f137e = jArr;
        }

        /* renamed from: a */
        private InterfaceC0557y m109a(int i) {
            return this.f135c[i];
        }

        /* renamed from: a */
        private String m110a() {
            return this.f133a;
        }

        /* renamed from: b */
        private long m112b(int i) {
            return this.f137e[i];
        }

        @Nullable
        /* renamed from: b */
        private a m113b() throws IOException {
            return C0433d.this.m82a(this.f133a, this.f134b);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            for (InterfaceC0557y interfaceC0557y : this.f135c) {
                C0439c.m144a(interfaceC0557y);
            }
        }
    }

    private C0433d(InterfaceC0476a interfaceC0476a, File file, long j, Executor executor) {
        this.f99h = interfaceC0476a;
        this.f100i = file;
        this.f110x = new File(file, f81a);
        this.f111y = new File(file, f82b);
        this.f112z = new File(file, f83c);
        this.f94B = j;
        this.f97E = executor;
    }

    /* renamed from: a */
    public static C0433d m72a(InterfaceC0476a interfaceC0476a, File file, long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        return new C0433d(interfaceC0476a, file, j, new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), C0439c.m142a("OkHttp DiskLruCache", true)));
    }

    /* renamed from: a */
    private synchronized void m73a(long j) {
        this.f94B = j;
        if (this.f106o) {
            this.f97E.execute(this.f98F);
        }
    }

    /* renamed from: c */
    private void m74c(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(32, i);
        if (indexOf2 == -1) {
            substring = str.substring(i);
            if (indexOf == 6 && str.startsWith(f91v)) {
                this.f103l.remove(substring);
                return;
            }
        } else {
            substring = str.substring(i, indexOf2);
        }
        b bVar = this.f103l.get(substring);
        if (bVar == null) {
            bVar = new b(substring);
            this.f103l.put(substring, bVar);
        }
        if (indexOf2 != -1 && indexOf == 5 && str.startsWith(f89t)) {
            String[] split = str.substring(indexOf2 + 1).split(C1176s.a.f4108a);
            bVar.f129e = true;
            bVar.f130f = null;
            bVar.m108a(split);
            return;
        }
        if (indexOf2 == -1 && indexOf == 5 && str.startsWith(f90u)) {
            bVar.f130f = new a(bVar);
        } else {
            if (indexOf2 == -1 && indexOf == 4 && str.startsWith(f92w)) {
                return;
            }
            throw new IOException("unexpected journal line: " + str);
        }
    }

    @Nullable
    /* renamed from: d */
    private a m75d(String str) throws IOException {
        return m82a(str, -1L);
    }

    /* renamed from: e */
    private static void m76e(String str) {
        if (f87g.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    /* renamed from: k */
    private void m77k() throws IOException {
        String mo1169s;
        String substring;
        InterfaceC0537e m1217a = C0548p.m1217a(this.f99h.mo454a(this.f110x));
        try {
            String mo1169s2 = m1217a.mo1169s();
            String mo1169s3 = m1217a.mo1169s();
            String mo1169s4 = m1217a.mo1169s();
            String mo1169s5 = m1217a.mo1169s();
            String mo1169s6 = m1217a.mo1169s();
            if (!f84d.equals(mo1169s2) || !"1".equals(mo1169s3) || !Integer.toString(this.f93A).equals(mo1169s4) || !Integer.toString(this.f101j).equals(mo1169s5) || !"".equals(mo1169s6)) {
                throw new IOException("unexpected journal header: [" + mo1169s2 + ", " + mo1169s3 + ", " + mo1169s5 + ", " + mo1169s6 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    mo1169s = m1217a.mo1169s();
                    int indexOf = mo1169s.indexOf(32);
                    if (indexOf == -1) {
                        throw new IOException("unexpected journal line: " + mo1169s);
                    }
                    int i2 = indexOf + 1;
                    int indexOf2 = mo1169s.indexOf(32, i2);
                    if (indexOf2 == -1) {
                        substring = mo1169s.substring(i2);
                        if (indexOf == 6 && mo1169s.startsWith(f91v)) {
                            this.f103l.remove(substring);
                            i++;
                        }
                    } else {
                        substring = mo1169s.substring(i2, indexOf2);
                    }
                    b bVar = this.f103l.get(substring);
                    if (bVar == null) {
                        bVar = new b(substring);
                        this.f103l.put(substring, bVar);
                    }
                    if (indexOf2 != -1 && indexOf == 5 && mo1169s.startsWith(f89t)) {
                        String[] split = mo1169s.substring(indexOf2 + 1).split(C1176s.a.f4108a);
                        bVar.f129e = true;
                        bVar.f130f = null;
                        bVar.m108a(split);
                    } else if (indexOf2 != -1 || indexOf != 5 || !mo1169s.startsWith(f90u)) {
                        if (indexOf2 != -1 || indexOf != 4 || !mo1169s.startsWith(f92w)) {
                            break;
                        }
                    } else {
                        bVar.f130f = new a(bVar);
                    }
                    i++;
                } catch (EOFException unused) {
                    this.f104m = i - this.f103l.size();
                    if (m1217a.mo1131d()) {
                        this.f102k = m78l();
                    } else {
                        m87b();
                    }
                    C0439c.m144a(m1217a);
                    return;
                }
            }
            throw new IOException("unexpected journal line: " + mo1169s);
        } catch (Throwable th) {
            C0439c.m144a(m1217a);
            throw th;
        }
    }

    /* renamed from: l */
    private InterfaceC0536d m78l() throws FileNotFoundException {
        return C0548p.m1216a(new C0434e(this.f99h.mo457c(this.f110x)) { // from class: b.a.a.d.2

            /* renamed from: a */
            static final /* synthetic */ boolean f114a = true;

            @Override // p003b.p004a.p005a.C0434e
            /* renamed from: a */
            protected final void mo97a() {
                if (!f114a && !Thread.holdsLock(C0433d.this)) {
                    throw new AssertionError();
                }
                C0433d.this.f105n = true;
            }
        });
    }

    /* renamed from: m */
    private void m79m() throws IOException {
        this.f99h.mo458d(this.f111y);
        Iterator<b> it = this.f103l.values().iterator();
        while (it.hasNext()) {
            b next = it.next();
            int i = 0;
            if (next.f130f == null) {
                while (i < this.f101j) {
                    this.f95C += next.f126b[i];
                    i++;
                }
            } else {
                next.f130f = null;
                while (i < this.f101j) {
                    this.f99h.mo458d(next.f127c[i]);
                    this.f99h.mo458d(next.f128d[i]);
                    i++;
                }
                it.remove();
            }
        }
    }

    /* renamed from: n */
    private File m80n() {
        return this.f100i;
    }

    /* renamed from: o */
    private synchronized void m81o() {
        if (m92f()) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* renamed from: a */
    public final synchronized a m82a(String str, long j) throws IOException {
        m84a();
        m81o();
        m76e(str);
        b bVar = this.f103l.get(str);
        if (j != -1 && (bVar == null || bVar.f131g != j)) {
            return null;
        }
        if (bVar != null && bVar.f130f != null) {
            return null;
        }
        if (!this.f108q && !this.f109r) {
            this.f102k.mo1114b(f90u).mo1157l(32).mo1114b(str).mo1157l(10);
            this.f102k.flush();
            if (this.f105n) {
                return null;
            }
            if (bVar == null) {
                bVar = new b(str);
                this.f103l.put(str, bVar);
            }
            a aVar = new a(bVar);
            bVar.f130f = aVar;
            return aVar;
        }
        this.f97E.execute(this.f98F);
        return null;
    }

    /* renamed from: a */
    public final synchronized c m83a(String str) throws IOException {
        m84a();
        m81o();
        m76e(str);
        b bVar = this.f103l.get(str);
        if (bVar != null && bVar.f129e) {
            c m106a = bVar.m106a();
            if (m106a == null) {
                return null;
            }
            this.f104m++;
            this.f102k.mo1114b(f92w).mo1157l(32).mo1114b(str).mo1157l(10);
            if (m91e()) {
                this.f97E.execute(this.f98F);
            }
            return m106a;
        }
        return null;
    }

    /* renamed from: a */
    public final synchronized void m84a() throws IOException {
        if (!f88s && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (this.f106o) {
            return;
        }
        if (this.f99h.mo459e(this.f112z)) {
            if (this.f99h.mo459e(this.f110x)) {
                this.f99h.mo458d(this.f112z);
            } else {
                this.f99h.mo455a(this.f112z, this.f110x);
            }
        }
        if (this.f99h.mo459e(this.f110x)) {
            try {
                m77k();
                m79m();
                this.f106o = true;
                return;
            } catch (IOException e) {
                C0481e.m489b().mo467a(5, "DiskLruCache " + this.f100i + " is corrupt: " + e.getMessage() + ", removing", e);
                try {
                    m94h();
                    this.f107p = false;
                } catch (Throwable th) {
                    this.f107p = false;
                    throw th;
                }
            }
        }
        m87b();
        this.f106o = true;
    }

    /* renamed from: a */
    final synchronized void m85a(a aVar, boolean z) throws IOException {
        b bVar = aVar.f120a;
        if (bVar.f130f != aVar) {
            throw new IllegalStateException();
        }
        if (z && !bVar.f129e) {
            for (int i = 0; i < this.f101j; i++) {
                if (!aVar.f121b[i]) {
                    aVar.m104c();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!this.f99h.mo459e(bVar.f128d[i])) {
                    aVar.m104c();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.f101j; i2++) {
            File file = bVar.f128d[i2];
            if (!z) {
                this.f99h.mo458d(file);
            } else if (this.f99h.mo459e(file)) {
                File file2 = bVar.f127c[i2];
                this.f99h.mo455a(file, file2);
                long j = bVar.f126b[i2];
                long mo460f = this.f99h.mo460f(file2);
                bVar.f126b[i2] = mo460f;
                this.f95C = (this.f95C - j) + mo460f;
            }
        }
        this.f104m++;
        bVar.f130f = null;
        if (bVar.f129e || z) {
            bVar.f129e = true;
            this.f102k.mo1114b(f89t).mo1157l(32);
            this.f102k.mo1114b(bVar.f125a);
            bVar.m107a(this.f102k);
            this.f102k.mo1157l(10);
            if (z) {
                long j2 = this.f96D;
                this.f96D = j2 + 1;
                bVar.f131g = j2;
            }
        } else {
            this.f103l.remove(bVar.f125a);
            this.f102k.mo1114b(f91v).mo1157l(32);
            this.f102k.mo1114b(bVar.f125a);
            this.f102k.mo1157l(10);
        }
        this.f102k.flush();
        if (this.f95C > this.f94B || m91e()) {
            this.f97E.execute(this.f98F);
        }
    }

    /* renamed from: a */
    final boolean m86a(b bVar) throws IOException {
        if (bVar.f130f != null) {
            bVar.f130f.m102a();
        }
        for (int i = 0; i < this.f101j; i++) {
            this.f99h.mo458d(bVar.f127c[i]);
            this.f95C -= bVar.f126b[i];
            bVar.f126b[i] = 0;
        }
        this.f104m++;
        this.f102k.mo1114b(f91v).mo1157l(32).mo1114b(bVar.f125a).mo1157l(10);
        this.f103l.remove(bVar.f125a);
        if (m91e()) {
            this.f97E.execute(this.f98F);
        }
        return true;
    }

    /* renamed from: b */
    final synchronized void m87b() throws IOException {
        if (this.f102k != null) {
            this.f102k.close();
        }
        InterfaceC0536d m1216a = C0548p.m1216a(this.f99h.mo456b(this.f111y));
        try {
            m1216a.mo1114b(f84d).mo1157l(10);
            m1216a.mo1114b("1").mo1157l(10);
            m1216a.mo1162n(this.f93A).mo1157l(10);
            m1216a.mo1162n(this.f101j).mo1157l(10);
            m1216a.mo1157l(10);
            for (b bVar : this.f103l.values()) {
                if (bVar.f130f != null) {
                    m1216a.mo1114b(f90u).mo1157l(32);
                    m1216a.mo1114b(bVar.f125a);
                } else {
                    m1216a.mo1114b(f89t).mo1157l(32);
                    m1216a.mo1114b(bVar.f125a);
                    bVar.m107a(m1216a);
                }
                m1216a.mo1157l(10);
            }
            m1216a.close();
            if (this.f99h.mo459e(this.f110x)) {
                this.f99h.mo455a(this.f110x, this.f112z);
            }
            this.f99h.mo455a(this.f111y, this.f110x);
            this.f99h.mo458d(this.f112z);
            this.f102k = m78l();
            this.f105n = false;
            this.f109r = false;
        } catch (Throwable th) {
            m1216a.close();
            throw th;
        }
    }

    /* renamed from: b */
    public final synchronized boolean m88b(String str) throws IOException {
        m84a();
        m81o();
        m76e(str);
        b bVar = this.f103l.get(str);
        if (bVar == null) {
            return false;
        }
        m86a(bVar);
        if (this.f95C <= this.f94B) {
            this.f108q = false;
        }
        return true;
    }

    /* renamed from: c */
    public final synchronized long m89c() {
        return this.f94B;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        if (this.f106o && !this.f107p) {
            for (b bVar : (b[]) this.f103l.values().toArray(new b[this.f103l.size()])) {
                if (bVar.f130f != null) {
                    bVar.f130f.m104c();
                }
            }
            m93g();
            this.f102k.close();
            this.f102k = null;
            this.f107p = true;
            return;
        }
        this.f107p = true;
    }

    /* renamed from: d */
    public final synchronized long m90d() throws IOException {
        m84a();
        return this.f95C;
    }

    /* renamed from: e */
    final boolean m91e() {
        return this.f104m >= 2000 && this.f104m >= this.f103l.size();
    }

    /* renamed from: f */
    public final synchronized boolean m92f() {
        return this.f107p;
    }

    @Override // java.io.Flushable
    public final synchronized void flush() throws IOException {
        if (this.f106o) {
            m81o();
            m93g();
            this.f102k.flush();
        }
    }

    /* renamed from: g */
    final void m93g() throws IOException {
        while (this.f95C > this.f94B) {
            m86a(this.f103l.values().iterator().next());
        }
        this.f108q = false;
    }

    /* renamed from: h */
    public final void m94h() throws IOException {
        close();
        this.f99h.mo461g(this.f100i);
    }

    /* renamed from: i */
    public final synchronized void m95i() throws IOException {
        m84a();
        for (b bVar : (b[]) this.f103l.values().toArray(new b[this.f103l.size()])) {
            m86a(bVar);
        }
        this.f108q = false;
    }

    /* renamed from: j */
    public final synchronized Iterator<c> m96j() throws IOException {
        m84a();
        return new Iterator<c>() { // from class: b.a.a.d.3

            /* renamed from: a */
            final Iterator<b> f116a;

            /* renamed from: b */
            c f117b;

            /* renamed from: c */
            c f118c;

            {
                this.f116a = new ArrayList(C0433d.this.f103l.values()).iterator();
            }

            /* renamed from: a */
            private c m98a() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                this.f118c = this.f117b;
                this.f117b = null;
                return this.f118c;
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                if (this.f117b != null) {
                    return true;
                }
                synchronized (C0433d.this) {
                    if (C0433d.this.f107p) {
                        return false;
                    }
                    while (this.f116a.hasNext()) {
                        c m106a = this.f116a.next().m106a();
                        if (m106a != null) {
                            this.f117b = m106a;
                            return true;
                        }
                    }
                    return false;
                }
            }

            @Override // java.util.Iterator
            public final /* synthetic */ c next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                this.f118c = this.f117b;
                this.f117b = null;
                return this.f118c;
            }

            @Override // java.util.Iterator
            public final void remove() {
                if (this.f118c == null) {
                    throw new IllegalStateException("remove() before next()");
                }
                try {
                    C0433d.this.m88b(this.f118c.f133a);
                } catch (IOException unused) {
                } finally {
                    this.f118c = null;
                }
            }
        };
    }
}
