package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.C0607t;
import com.android.volley.InterfaceC0589b;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* renamed from: com.android.volley.toolbox.f */
/* loaded from: classes.dex */
public final class C0615f implements InterfaceC0589b {

    /* renamed from: e */
    private static final int f1331e = 5242880;

    /* renamed from: f */
    private static final float f1332f = 0.9f;

    /* renamed from: g */
    private static final int f1333g = 538248467;

    /* renamed from: a */
    private final Map<String, a> f1334a;

    /* renamed from: b */
    private long f1335b;

    /* renamed from: c */
    private final File f1336c;

    /* renamed from: d */
    private final int f1337d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.volley.toolbox.f$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        public long f1338a;

        /* renamed from: b */
        public String f1339b;

        /* renamed from: c */
        public String f1340c;

        /* renamed from: d */
        public long f1341d;

        /* renamed from: e */
        public long f1342e;

        /* renamed from: f */
        public long f1343f;

        /* renamed from: g */
        public long f1344g;

        /* renamed from: h */
        public Map<String, String> f1345h;

        private a() {
        }

        public a(String str, InterfaceC0589b.a aVar) {
            this.f1339b = str;
            this.f1338a = aVar.f1210a.length;
            this.f1340c = aVar.f1211b;
            this.f1341d = aVar.f1212c;
            this.f1342e = aVar.f1213d;
            this.f1343f = aVar.f1214e;
            this.f1344g = aVar.f1215f;
            this.f1345h = aVar.f1216g;
        }

        /* renamed from: a */
        private InterfaceC0589b.a m1456a(byte[] bArr) {
            InterfaceC0589b.a aVar = new InterfaceC0589b.a();
            aVar.f1210a = bArr;
            aVar.f1211b = this.f1340c;
            aVar.f1212c = this.f1341d;
            aVar.f1213d = this.f1342e;
            aVar.f1214e = this.f1343f;
            aVar.f1215f = this.f1344g;
            aVar.f1216g = this.f1345h;
            return aVar;
        }

        /* renamed from: a */
        public static a m1457a(InputStream inputStream) throws IOException {
            a aVar = new a();
            if (C0615f.m1441a(inputStream) != C0615f.f1333g) {
                throw new IOException();
            }
            aVar.f1339b = C0615f.m1450c(inputStream);
            aVar.f1340c = C0615f.m1450c(inputStream);
            if (aVar.f1340c.equals("")) {
                aVar.f1340c = null;
            }
            aVar.f1341d = C0615f.m1449b(inputStream);
            aVar.f1342e = C0615f.m1449b(inputStream);
            aVar.f1343f = C0615f.m1449b(inputStream);
            aVar.f1344g = C0615f.m1449b(inputStream);
            aVar.f1345h = C0615f.m1453d(inputStream);
            return aVar;
        }

        /* renamed from: a */
        public final boolean m1458a(OutputStream outputStream) {
            try {
                C0615f.m1443a(outputStream, (int) C0615f.f1333g);
                C0615f.m1445a(outputStream, this.f1339b);
                C0615f.m1445a(outputStream, this.f1340c == null ? "" : this.f1340c);
                C0615f.m1444a(outputStream, this.f1341d);
                C0615f.m1444a(outputStream, this.f1342e);
                C0615f.m1444a(outputStream, this.f1343f);
                C0615f.m1444a(outputStream, this.f1344g);
                Map<String, String> map = this.f1345h;
                if (map != null) {
                    C0615f.m1443a(outputStream, map.size());
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        C0615f.m1445a(outputStream, entry.getKey());
                        C0615f.m1445a(outputStream, entry.getValue());
                    }
                } else {
                    C0615f.m1443a(outputStream, 0);
                }
                outputStream.flush();
                return true;
            } catch (IOException e) {
                C0607t.m1412b("%s", e.toString());
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.android.volley.toolbox.f$b */
    /* loaded from: classes.dex */
    public static class b extends FilterInputStream {

        /* renamed from: a */
        private int f1346a;

        private b(InputStream inputStream) {
            super(inputStream);
            this.f1346a = 0;
        }

        /* synthetic */ b(InputStream inputStream, byte b2) {
            this(inputStream);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read() throws IOException {
            int read = super.read();
            if (read != -1) {
                this.f1346a++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.f1346a += read;
            }
            return read;
        }
    }

    private C0615f(File file) {
        this.f1334a = new LinkedHashMap(16, 0.75f, true);
        this.f1335b = 0L;
        this.f1336c = file;
        this.f1337d = f1331e;
    }

    public C0615f(File file, byte b2) {
        this(file);
    }

    /* renamed from: a */
    static int m1441a(InputStream inputStream) throws IOException {
        return (m1454e(inputStream) << 24) | (m1454e(inputStream) << 0) | 0 | (m1454e(inputStream) << 8) | (m1454e(inputStream) << 16);
    }

    /* renamed from: a */
    private void m1442a(int i) {
        long j;
        long j2;
        long j3 = i;
        if (this.f1335b + j3 < this.f1337d) {
            return;
        }
        if (C0607t.f1296b) {
            C0607t.m1410a("Pruning old cache entries.", new Object[0]);
        }
        long j4 = this.f1335b;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Iterator<Map.Entry<String, a>> it = this.f1334a.entrySet().iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                j = elapsedRealtime;
                break;
            }
            a value = it.next().getValue();
            if (m1452d(value.f1339b).delete()) {
                j2 = j3;
                j = elapsedRealtime;
                this.f1335b -= value.f1338a;
            } else {
                j2 = j3;
                j = elapsedRealtime;
                C0607t.m1412b("Could not delete cache entry for key=%s, filename=%s", value.f1339b, m1451c(value.f1339b));
            }
            it.remove();
            i2++;
            if (((float) (this.f1335b + j2)) < this.f1337d * f1332f) {
                break;
            }
            j3 = j2;
            elapsedRealtime = j;
        }
        if (C0607t.f1296b) {
            C0607t.m1410a("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.f1335b - j4), Long.valueOf(SystemClock.elapsedRealtime() - j));
        }
    }

    /* renamed from: a */
    static void m1443a(OutputStream outputStream, int i) throws IOException {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    /* renamed from: a */
    static void m1444a(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) (j >>> 0));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    /* renamed from: a */
    static void m1445a(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        m1444a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    /* renamed from: a */
    private void m1446a(String str, a aVar) {
        if (this.f1334a.containsKey(str)) {
            this.f1335b += aVar.f1338a - this.f1334a.get(str).f1338a;
        } else {
            this.f1335b += aVar.f1338a;
        }
        this.f1334a.put(str, aVar);
    }

    /* renamed from: a */
    private static void m1447a(Map<String, String> map, OutputStream outputStream) throws IOException {
        if (map == null) {
            m1443a(outputStream, 0);
            return;
        }
        m1443a(outputStream, map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            m1445a(outputStream, entry.getKey());
            m1445a(outputStream, entry.getValue());
        }
    }

    /* renamed from: a */
    private static byte[] m1448a(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read == -1) {
                break;
            }
            i2 += read;
        }
        if (i2 == i) {
            return bArr;
        }
        throw new IOException("Expected " + i + " bytes, read " + i2 + " bytes");
    }

    /* renamed from: b */
    static long m1449b(InputStream inputStream) throws IOException {
        return ((m1454e(inputStream) & 255) << 0) | 0 | ((m1454e(inputStream) & 255) << 8) | ((m1454e(inputStream) & 255) << 16) | ((m1454e(inputStream) & 255) << 24) | ((m1454e(inputStream) & 255) << 32) | ((m1454e(inputStream) & 255) << 40) | ((m1454e(inputStream) & 255) << 48) | ((m1454e(inputStream) & 255) << 56);
    }

    /* renamed from: c */
    static String m1450c(InputStream inputStream) throws IOException {
        return new String(m1448a(inputStream, (int) m1449b(inputStream)), "UTF-8");
    }

    /* renamed from: c */
    private static String m1451c(String str) {
        int length = str.length() / 2;
        return String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode());
    }

    /* renamed from: d */
    private File m1452d(String str) {
        return new File(this.f1336c, m1451c(str));
    }

    /* renamed from: d */
    static Map<String, String> m1453d(InputStream inputStream) throws IOException {
        int m1441a = m1441a(inputStream);
        Map<String, String> emptyMap = m1441a == 0 ? Collections.emptyMap() : new HashMap<>(m1441a);
        for (int i = 0; i < m1441a; i++) {
            emptyMap.put(m1450c(inputStream).intern(), m1450c(inputStream).intern());
        }
        return emptyMap;
    }

    /* renamed from: e */
    private static int m1454e(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read == -1) {
            throw new EOFException();
        }
        return read;
    }

    /* renamed from: e */
    private void m1455e(String str) {
        a aVar = this.f1334a.get(str);
        if (aVar != null) {
            this.f1335b -= aVar.f1338a;
            this.f1334a.remove(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.android.volley.InterfaceC0589b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized com.android.volley.InterfaceC0589b.a mo1329a(java.lang.String r12) {
        /*
            r11 = this;
            monitor-enter(r11)
            java.util.Map<java.lang.String, com.android.volley.toolbox.f$a> r0 = r11.f1334a     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r0 = r0.get(r12)     // Catch: java.lang.Throwable -> L8e
            com.android.volley.toolbox.f$a r0 = (com.android.volley.toolbox.C0615f.a) r0     // Catch: java.lang.Throwable -> L8e
            r1 = 0
            if (r0 != 0) goto Le
            monitor-exit(r11)
            return r1
        Le:
            java.io.File r2 = r11.m1452d(r12)     // Catch: java.lang.Throwable -> L8e
            r3 = 0
            com.android.volley.toolbox.f$b r4 = new com.android.volley.toolbox.f$b     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L60
            java.io.BufferedInputStream r5 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L60
            java.io.FileInputStream r6 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L60
            r6.<init>(r2)     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L60
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L60
            r4.<init>(r5, r3)     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L60
            com.android.volley.toolbox.C0615f.a.m1457a(r4)     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            long r5 = r2.length()     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            int r7 = com.android.volley.toolbox.C0615f.b.m1459a(r4)     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            long r7 = (long) r7     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            long r9 = r5 - r7
            int r5 = (int) r9     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            byte[] r5 = m1448a(r4, r5)     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            com.android.volley.b$a r6 = new com.android.volley.b$a     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            r6.<init>()     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            r6.f1210a = r5     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            java.lang.String r5 = r0.f1340c     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            r6.f1211b = r5     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            long r7 = r0.f1341d     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            r6.f1212c = r7     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            long r7 = r0.f1342e     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            r6.f1213d = r7     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            long r7 = r0.f1343f     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            r6.f1214e = r7     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            long r7 = r0.f1344g     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            r6.f1215f = r7     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.f1345h     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            r6.f1216g = r0     // Catch: java.io.IOException -> L5b java.lang.Throwable -> L84
            r4.close()     // Catch: java.io.IOException -> L59 java.lang.Throwable -> L8e
            monitor-exit(r11)
            return r6
        L59:
            monitor-exit(r11)
            return r1
        L5b:
            r0 = move-exception
            goto L62
        L5d:
            r12 = move-exception
            r4 = r1
            goto L85
        L60:
            r0 = move-exception
            r4 = r1
        L62:
            java.lang.String r5 = "%s: %s"
            r6 = 2
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L84
            java.lang.String r2 = r2.getAbsolutePath()     // Catch: java.lang.Throwable -> L84
            r6[r3] = r2     // Catch: java.lang.Throwable -> L84
            r2 = 1
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L84
            r6[r2] = r0     // Catch: java.lang.Throwable -> L84
            com.android.volley.C0607t.m1412b(r5, r6)     // Catch: java.lang.Throwable -> L84
            r11.mo1334b(r12)     // Catch: java.lang.Throwable -> L84
            if (r4 == 0) goto L82
            r4.close()     // Catch: java.io.IOException -> L80 java.lang.Throwable -> L8e
            goto L82
        L80:
            monitor-exit(r11)
            return r1
        L82:
            monitor-exit(r11)
            return r1
        L84:
            r12 = move-exception
        L85:
            if (r4 == 0) goto L8d
            r4.close()     // Catch: java.io.IOException -> L8b java.lang.Throwable -> L8e
            goto L8d
        L8b:
            monitor-exit(r11)
            return r1
        L8d:
            throw r12     // Catch: java.lang.Throwable -> L8e
        L8e:
            r12 = move-exception
            monitor-exit(r11)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.volley.toolbox.C0615f.mo1329a(java.lang.String):com.android.volley.b$a");
    }

    @Override // com.android.volley.InterfaceC0589b
    /* renamed from: a */
    public final synchronized void mo1330a() {
        if (!this.f1336c.exists()) {
            if (!this.f1336c.mkdirs()) {
                C0607t.m1414c("Unable to create cache dir %s", this.f1336c.getAbsolutePath());
            }
            return;
        }
        File[] listFiles = this.f1336c.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            BufferedInputStream bufferedInputStream = null;
            try {
                try {
                    BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
                    try {
                        a m1457a = a.m1457a(bufferedInputStream2);
                        m1457a.f1338a = file.length();
                        m1446a(m1457a.f1339b, m1457a);
                        try {
                            bufferedInputStream2.close();
                        } catch (IOException unused) {
                        }
                    } catch (IOException unused2) {
                        bufferedInputStream = bufferedInputStream2;
                        if (file != null) {
                            file.delete();
                        }
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        bufferedInputStream = bufferedInputStream2;
                        if (bufferedInputStream != null) {
                            try {
                                bufferedInputStream.close();
                            } catch (IOException unused3) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException unused4) {
            }
        }
    }

    @Override // com.android.volley.InterfaceC0589b
    /* renamed from: a */
    public final synchronized void mo1331a(String str, InterfaceC0589b.a aVar) {
        long j;
        Iterator<Map.Entry<String, a>> it;
        long length = aVar.f1210a.length;
        if (this.f1335b + length >= this.f1337d) {
            if (C0607t.f1296b) {
                C0607t.m1410a("Pruning old cache entries.", new Object[0]);
            }
            long j2 = this.f1335b;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Iterator<Map.Entry<String, a>> it2 = this.f1334a.entrySet().iterator();
            int i = 0;
            while (true) {
                if (!it2.hasNext()) {
                    j = elapsedRealtime;
                    break;
                }
                a value = it2.next().getValue();
                if (m1452d(value.f1339b).delete()) {
                    it = it2;
                    j = elapsedRealtime;
                    this.f1335b -= value.f1338a;
                } else {
                    it = it2;
                    j = elapsedRealtime;
                    C0607t.m1412b("Could not delete cache entry for key=%s, filename=%s", value.f1339b, m1451c(value.f1339b));
                }
                Iterator<Map.Entry<String, a>> it3 = it;
                it3.remove();
                i++;
                if (((float) (this.f1335b + length)) < this.f1337d * f1332f) {
                    break;
                }
                it2 = it3;
                elapsedRealtime = j;
            }
            if (C0607t.f1296b) {
                C0607t.m1410a("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.f1335b - j2), Long.valueOf(SystemClock.elapsedRealtime() - j));
            }
        }
        File m1452d = m1452d(str);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(m1452d));
            a aVar2 = new a(str, aVar);
            if (!aVar2.m1458a(bufferedOutputStream)) {
                bufferedOutputStream.close();
                C0607t.m1412b("Failed to write header for %s", m1452d.getAbsolutePath());
                throw new IOException();
            }
            bufferedOutputStream.write(aVar.f1210a);
            bufferedOutputStream.close();
            m1446a(str, aVar2);
        } catch (IOException unused) {
            if (m1452d.delete()) {
                return;
            }
            C0607t.m1412b("Could not clean up file %s", m1452d.getAbsolutePath());
        }
    }

    @Override // com.android.volley.InterfaceC0589b
    /* renamed from: a */
    public final synchronized void mo1332a(String str, boolean z) {
        InterfaceC0589b.a mo1329a = mo1329a(str);
        if (mo1329a != null) {
            mo1329a.f1215f = 0L;
            if (z) {
                mo1329a.f1214e = 0L;
            }
            mo1331a(str, mo1329a);
        }
    }

    @Override // com.android.volley.InterfaceC0589b
    /* renamed from: b */
    public final synchronized void mo1333b() {
        File[] listFiles = this.f1336c.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                file.delete();
            }
        }
        this.f1334a.clear();
        this.f1335b = 0L;
        C0607t.m1412b("Cache cleared.", new Object[0]);
    }

    @Override // com.android.volley.InterfaceC0589b
    /* renamed from: b */
    public final synchronized void mo1334b(String str) {
        boolean delete = m1452d(str).delete();
        a aVar = this.f1334a.get(str);
        if (aVar != null) {
            this.f1335b -= aVar.f1338a;
            this.f1334a.remove(str);
        }
        if (!delete) {
            C0607t.m1412b("Could not delete cache entry for key=%s, filename=%s", str, m1451c(str));
        }
    }
}
