package com.p058c.p062d;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AlphaAnimation;
import com.cyjh.elfin.p073a.C1225b;
import com.p058c.C1088a;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.Thread;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.IOUtils;

/* renamed from: com.c.d.a */
/* loaded from: classes.dex */
public final class C1105a {

    /* renamed from: a */
    public static boolean f3689a = false;

    /* renamed from: b */
    private static boolean f3690b = false;

    /* renamed from: c */
    private static Object f3691c = null;

    /* renamed from: d */
    private static Thread.UncaughtExceptionHandler f3692d = null;

    /* renamed from: f */
    private static Handler f3694f = null;

    /* renamed from: g */
    private static final int f3695g = 4096;

    /* renamed from: h */
    private static ScheduledExecutorService f3696h;

    /* renamed from: i */
    private static File f3697i;

    /* renamed from: j */
    private static File f3698j;

    /* renamed from: k */
    private static Context f3699k;

    /* renamed from: m */
    private static final byte[] f3701m;

    /* renamed from: e */
    private static Map<String, Long> f3693e = new HashMap();

    /* renamed from: l */
    private static final char[] f3700l = new char[64];

    /* renamed from: com.c.d.a$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements Runnable {

        /* renamed from: a */
        private final /* synthetic */ Object f3702a;

        /* renamed from: b */
        private final /* synthetic */ String f3703b;

        /* renamed from: c */
        private final /* synthetic */ Class[] f3704c;

        /* renamed from: d */
        private final /* synthetic */ Object[] f3705d;

        AnonymousClass1(Object obj, String str, Class[] clsArr, Object[] objArr) {
            this.f3702a = obj;
            this.f3703b = str;
            this.f3704c = clsArr;
            this.f3705d = objArr;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C1105a.m4027a(this.f3702a, this.f3703b, false, true, (Class<?>[]) this.f3704c, this.f3705d);
        }
    }

    /* renamed from: com.c.d.a$2, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass2 extends AsyncTask<Void, Void, String> {

        /* renamed from: a */
        private final /* synthetic */ Runnable f3706a;

        AnonymousClass2(Runnable runnable) {
            this.f3706a = runnable;
        }

        /* renamed from: a */
        private String m4080a() {
            try {
                this.f3706a.run();
                return null;
            } catch (Exception e) {
                C1105a.m4065b(e);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ String doInBackground(Void... voidArr) {
            return m4080a();
        }
    }

    /* renamed from: com.c.d.a$3, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass3 implements Runnable {

        /* renamed from: a */
        private final /* synthetic */ Object f3707a;

        /* renamed from: b */
        private final /* synthetic */ String f3708b;

        /* renamed from: c */
        private final /* synthetic */ Class[] f3709c;

        /* renamed from: d */
        private final /* synthetic */ Object[] f3710d;

        AnonymousClass3(Object obj, String str, Class[] clsArr, Object[] objArr) {
            this.f3707a = obj;
            this.f3708b = str;
            this.f3709c = clsArr;
            this.f3710d = objArr;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C1105a.m4027a(this.f3707a, this.f3708b, false, true, (Class<?>[]) this.f3709c, this.f3710d);
        }
    }

    static {
        char c2 = 'A';
        int i = 0;
        while (c2 <= 'Z') {
            f3700l[i] = c2;
            c2 = (char) (c2 + 1);
            i++;
        }
        char c3 = 'a';
        while (c3 <= 'z') {
            f3700l[i] = c3;
            c3 = (char) (c3 + 1);
            i++;
        }
        char c4 = '0';
        while (c4 <= '9') {
            f3700l[i] = c4;
            c4 = (char) (c4 + 1);
            i++;
        }
        f3700l[i] = '+';
        f3700l[i + 1] = IOUtils.DIR_SEPARATOR_UNIX;
        f3701m = new byte[128];
        for (int i2 = 0; i2 < f3701m.length; i2++) {
            f3701m[i2] = -1;
        }
        for (int i3 = 0; i3 < 64; i3++) {
            f3701m[f3700l[i3]] = (byte) i3;
        }
    }

    /* renamed from: a */
    public static int m4021a(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    /* renamed from: a */
    private static long m4022a(String str, long j) {
        Long l = f3693e.get(str);
        if (l == null) {
            return 0L;
        }
        long currentTimeMillis = System.currentTimeMillis() - l.longValue();
        if (j == 0 || currentTimeMillis > j) {
            m4061b(str, Long.valueOf(currentTimeMillis));
        }
        return currentTimeMillis;
    }

    /* renamed from: a */
    private static File m4023a(Context context) {
        if (f3697i == null) {
            File file = new File(context.getCacheDir(), "aquery");
            f3697i = file;
            file.mkdirs();
        }
        return f3697i;
    }

    /* renamed from: a */
    public static File m4024a(Context context, int i) {
        if (i != 1) {
            return m4023a(context);
        }
        if (f3698j != null) {
            return f3698j;
        }
        File file = new File(m4023a(context), "persistent");
        f3698j = file;
        file.mkdirs();
        return f3698j;
    }

    /* renamed from: a */
    public static File m4025a(File file, String str) {
        if (str == null) {
            return null;
        }
        return str.startsWith(File.separator) ? new File(str) : new File(file, new BigInteger(m4053a(str.getBytes())).abs().toString(36));
    }

    /* renamed from: a */
    public static Object m4026a(Object obj, String str, boolean z, boolean z2, Class<?>[] clsArr, Class<?>[] clsArr2, Object... objArr) {
        try {
            return m4028a(obj, str, z, clsArr, clsArr2, objArr);
        } catch (Exception e) {
            if (z2) {
                m4065b(e);
                return null;
            }
            m4049a((Throwable) e);
            return null;
        }
    }

    /* renamed from: a */
    public static Object m4027a(Object obj, String str, boolean z, boolean z2, Class<?>[] clsArr, Object... objArr) {
        return m4026a(obj, str, z, z2, clsArr, null, objArr);
    }

    /* renamed from: a */
    private static Object m4028a(Object obj, String str, boolean z, Class<?>[] clsArr, Class<?>[] clsArr2, Object... objArr) throws Exception {
        if (obj == null || str == null) {
            return null;
        }
        if (clsArr == null) {
            try {
                clsArr = new Class[0];
            } catch (NoSuchMethodException unused) {
                if (z) {
                    try {
                        return clsArr2 == null ? obj.getClass().getMethod(str, new Class[0]).invoke(obj, new Object[0]) : obj.getClass().getMethod(str, clsArr2).invoke(obj, objArr);
                    } catch (NoSuchMethodException unused2) {
                        return null;
                    }
                }
                return null;
            }
        }
        return obj.getClass().getMethod(str, clsArr).invoke(obj, objArr);
    }

    /* renamed from: a */
    public static void m4029a() {
        if (!f3690b || f3691c == null) {
            return;
        }
        synchronized (f3691c) {
            f3691c.notifyAll();
        }
    }

    /* renamed from: a */
    private static void m4030a(long j) {
        if (f3690b) {
            if (f3691c == null) {
                f3691c = new Object();
            }
            synchronized (f3691c) {
                try {
                    f3691c.wait(j);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: a */
    private static void m4031a(Application application) {
        f3699k = application.getApplicationContext();
    }

    /* renamed from: a */
    public static void m4032a(SharedPreferences.Editor editor) {
        if (C1088a.f3740Q >= 9) {
            m4027a((Object) editor, "apply", false, true, (Class<?>[]) null, (Object[]) null);
        } else {
            editor.commit();
        }
    }

    /* renamed from: a */
    private static void m4033a(View view, float f) {
        if (f == 1.0f) {
            view.clearAnimation();
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f);
        alphaAnimation.setDuration(0L);
        alphaAnimation.setFillAfter(true);
        view.startAnimation(alphaAnimation);
    }

    /* renamed from: a */
    public static void m4034a(View view, boolean z) {
        if ((z ? 0.5f : 1.0f) == 1.0f) {
            view.clearAnimation();
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.5f, 0.5f);
        alphaAnimation.setDuration(0L);
        alphaAnimation.setFillAfter(true);
        view.startAnimation(alphaAnimation);
    }

    /* renamed from: a */
    public static void m4035a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: a */
    private static void m4036a(File file) {
        f3697i = file;
        if (file != null) {
            f3697i.mkdirs();
        }
    }

    /* renamed from: a */
    public static void m4037a(File file, long j, long j2) {
        try {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return;
            }
            Arrays.sort(listFiles, new ViewOnClickListenerC1107c());
            int length = listFiles.length;
            boolean z = false;
            long j3 = 0;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                long length2 = j3 + listFiles[i].length();
                if (length2 > j) {
                    z = true;
                    break;
                } else {
                    i++;
                    j3 = length2;
                }
            }
            if (z) {
                m4066b(listFiles, j2);
            }
            File m4068c = m4068c();
            if (m4068c == null || !m4068c.exists()) {
                return;
            }
            m4066b(m4068c.listFiles(), 0L);
        } catch (Exception e) {
            m4065b(e);
        }
    }

    /* renamed from: a */
    public static void m4038a(File file, byte[] bArr) {
        m4078g().schedule(new ViewOnClickListenerC1107c().m4094a(1, file, bArr), 0L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: a */
    public static void m4039a(InputStream inputStream, OutputStream outputStream) throws IOException {
        m4040a(inputStream, outputStream, 0, (RunnableC1110f) null);
    }

    /* renamed from: a */
    public static void m4040a(InputStream inputStream, OutputStream outputStream, int i, RunnableC1110f runnableC1110f) throws IOException {
        int i2;
        if (runnableC1110f != null) {
            runnableC1110f.m4103a();
            if (i <= 0) {
                runnableC1110f.f3767d = true;
                i = C1225b.f4496ak;
            }
            runnableC1110f.f3768e = i;
            if (runnableC1110f.f3764a != null) {
                runnableC1110f.f3764a.setProgress(0);
                runnableC1110f.f3764a.setMax(i);
            }
            if (runnableC1110f.f3765b != null) {
                runnableC1110f.f3765b.setProgress(0);
                runnableC1110f.f3765b.setMax(i);
            }
        }
        byte[] bArr = new byte[4096];
        int i3 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                if (runnableC1110f != null) {
                    if (runnableC1110f.f3764a != null) {
                        runnableC1110f.f3764a.setProgress(runnableC1110f.f3764a.getMax());
                    }
                    if (runnableC1110f.f3765b != null) {
                        runnableC1110f.f3765b.setProgress(runnableC1110f.f3765b.getMax());
                    }
                    if (runnableC1110f.f3766c != null) {
                        runnableC1110f.f3766c.setProgress(9999);
                        return;
                    }
                    return;
                }
                return;
            }
            outputStream.write(bArr, 0, read);
            i3++;
            if (f3689a && i3 > 2) {
                m4041a((Object) "simulating internet error");
                throw new IOException();
            }
            if (runnableC1110f != null) {
                if (runnableC1110f.f3764a != null) {
                    runnableC1110f.f3764a.incrementProgressBy(runnableC1110f.f3767d ? 1 : read);
                }
                if (runnableC1110f.f3765b != null) {
                    runnableC1110f.f3765b.incrementProgressBy(runnableC1110f.f3767d ? 1 : read);
                }
                if (runnableC1110f.f3766c != null) {
                    if (runnableC1110f.f3767d) {
                        i2 = runnableC1110f.f3769f;
                        runnableC1110f.f3769f = i2 + 1;
                    } else {
                        runnableC1110f.f3769f += read;
                        i2 = (runnableC1110f.f3769f * C1225b.f4496ak) / runnableC1110f.f3768e;
                    }
                    if (i2 > 9999) {
                        i2 = 9999;
                    }
                    runnableC1110f.f3766c.setProgress(i2);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m4041a(Object obj) {
        if (f3690b) {
            Log.w("AQuery", String.valueOf(obj));
        }
    }

    /* renamed from: a */
    public static void m4042a(Object obj, Object obj2) {
        Log.w("AQuery", obj + ":" + obj2);
    }

    /* renamed from: a */
    private static void m4043a(Object obj, String str) {
        m4045a((Runnable) new AnonymousClass1(obj, str, new Class[0], new Object[0]));
    }

    /* renamed from: a */
    private static void m4044a(Object obj, String str, Class<?>[] clsArr, Object... objArr) {
        m4045a((Runnable) new AnonymousClass1(obj, str, clsArr, objArr));
    }

    /* renamed from: a */
    public static void m4045a(Runnable runnable) {
        m4077f().post(runnable);
    }

    /* renamed from: a */
    private static void m4046a(Runnable runnable, long j) {
        m4077f().postDelayed(runnable, j);
    }

    /* renamed from: a */
    private static void m4047a(String str) {
        f3693e.put(str, Long.valueOf(System.currentTimeMillis()));
    }

    /* renamed from: a */
    private static void m4048a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        f3692d = uncaughtExceptionHandler;
    }

    /* renamed from: a */
    public static void m4049a(Throwable th) {
        if (f3690b) {
            Log.w("AQuery", Log.getStackTraceString(th));
        }
    }

    /* renamed from: a */
    private static void m4050a(boolean z) {
        f3690b = z;
    }

    /* renamed from: a */
    private static boolean m4051a(File[] fileArr, long j) {
        int length = fileArr.length;
        long j2 = 0;
        int i = 0;
        while (i < length) {
            long length2 = j2 + fileArr[i].length();
            if (length2 > j) {
                return true;
            }
            i++;
            j2 = length2;
        }
        return false;
    }

    /* renamed from: a */
    public static byte[] m4052a(InputStream inputStream) {
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            m4039a(inputStream, (OutputStream) byteArrayOutputStream);
            bArr = byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            m4065b(e);
            bArr = null;
        }
        m4035a((Closeable) inputStream);
        return bArr;
    }

    /* renamed from: a */
    private static byte[] m4053a(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            m4065b(e);
            return null;
        }
    }

    /* renamed from: a */
    public static char[] m4054a(byte[] bArr, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = ((i * 4) + 2) / 3;
        char[] cArr = new char[((i + 2) / 3) * 4];
        int i7 = i + 0;
        int i8 = 0;
        int i9 = 0;
        while (i8 < i7) {
            int i10 = i8 + 1;
            int i11 = bArr[i8] & 255;
            if (i10 < i7) {
                i2 = i10 + 1;
                i3 = bArr[i10] & 255;
            } else {
                i2 = i10;
                i3 = 0;
            }
            if (i2 < i7) {
                i4 = i2 + 1;
                i5 = bArr[i2] & 255;
            } else {
                i4 = i2;
                i5 = 0;
            }
            int i12 = i11 >>> 2;
            int i13 = ((i11 & 3) << 4) | (i3 >>> 4);
            int i14 = ((i3 & 15) << 2) | (i5 >>> 6);
            int i15 = i5 & 63;
            int i16 = i9 + 1;
            cArr[i9] = f3700l[i12];
            int i17 = i16 + 1;
            cArr[i16] = f3700l[i13];
            char c2 = '=';
            cArr[i17] = i17 < i6 ? f3700l[i14] : '=';
            int i18 = i17 + 1;
            if (i18 < i6) {
                c2 = f3700l[i15];
            }
            cArr[i18] = c2;
            i9 = i18 + 1;
            i8 = i4;
        }
        return cArr;
    }

    /* renamed from: b */
    private static float m4055b(Context context, float f) {
        return f / (context.getResources().getDisplayMetrics().densityDpi / 160.0f);
    }

    /* renamed from: b */
    public static File m4056b(File file, String str) {
        File m4025a = m4025a(file, str);
        if (m4025a == null || !m4025a.exists() || m4025a.length() == 0) {
            return null;
        }
        return m4025a;
    }

    /* renamed from: b */
    private static String m4057b(String str) {
        return new BigInteger(m4053a(str.getBytes())).abs().toString(36);
    }

    /* renamed from: b */
    private static void m4058b(Context context) {
        try {
            m4078g().schedule(new ViewOnClickListenerC1107c().m4094a(2, m4023a(context), 3000000L, 2000000L), 0L, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            m4065b(e);
        }
    }

    /* renamed from: b */
    private static void m4059b(File file) {
        file.setLastModified(System.currentTimeMillis());
    }

    /* renamed from: b */
    public static void m4060b(File file, byte[] bArr) {
        if (file != null) {
            try {
                if (!file.exists()) {
                    try {
                        file.createNewFile();
                    } catch (Exception e) {
                        m4061b("file create fail", file);
                        m4065b(e);
                    }
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(bArr);
                fileOutputStream.close();
            } catch (Exception e2) {
                try {
                    m4065b(e2);
                } catch (Exception e3) {
                    m4065b(e3);
                }
            }
        }
    }

    /* renamed from: b */
    public static void m4061b(Object obj, Object obj2) {
        if (f3690b) {
            Log.w("AQuery", obj + ":" + obj2);
        }
    }

    /* renamed from: b */
    private static void m4062b(Object obj, String str) {
        new AnonymousClass2(new AnonymousClass3(obj, str, new Class[0], new Object[0])).execute(new Void[0]);
    }

    /* renamed from: b */
    private static void m4063b(Object obj, String str, Class<?>[] clsArr, Object... objArr) {
        new AnonymousClass2(new AnonymousClass3(obj, str, clsArr, objArr)).execute(new Void[0]);
    }

    /* renamed from: b */
    private static void m4064b(Runnable runnable) {
        new AnonymousClass2(runnable).execute(new Void[0]);
    }

    /* renamed from: b */
    public static void m4065b(Throwable th) {
        try {
            m4042a((Object) "reporting", (Object) Log.getStackTraceString(th));
            if (f3692d != null) {
                f3692d.uncaughtException(Thread.currentThread(), th);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    private static void m4066b(File[] fileArr, long j) {
        long j2 = 0;
        int i = 0;
        for (File file : fileArr) {
            if (file.isFile()) {
                long length = j2 + file.length();
                if (length >= j) {
                    file.delete();
                    i++;
                }
                j2 = length;
            }
        }
        m4061b("deleted", Integer.valueOf(i));
    }

    /* renamed from: b */
    public static boolean m4067b() {
        return Looper.getMainLooper().getThread().getId() == Thread.currentThread().getId();
    }

    /* renamed from: c */
    public static File m4068c() {
        File file = new File(Environment.getExternalStorageDirectory(), "aquery/temp");
        file.mkdirs();
        if (file.exists() && file.canWrite()) {
            return file;
        }
        return null;
    }

    /* renamed from: c */
    private static File m4069c(File file, String str) {
        return new File(file, str);
    }

    /* renamed from: c */
    private static String m4070c(String str) {
        return new BigInteger(m4053a(str.getBytes())).abs().toString(36);
    }

    /* renamed from: c */
    private static void m4071c(Context context) {
        try {
            m4078g().schedule(new ViewOnClickListenerC1107c().m4094a(2, m4023a(context), 3000000L, 2000000L), 0L, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            m4065b(e);
        }
    }

    /* renamed from: c */
    private static void m4072c(File file, byte[] bArr) {
        try {
            if (!file.exists()) {
                try {
                    file.createNewFile();
                } catch (Exception e) {
                    m4061b("file create fail", file);
                    m4065b(e);
                }
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(bArr);
            fileOutputStream.close();
        } catch (Exception e2) {
            m4065b(e2);
        }
    }

    /* renamed from: c */
    private static void m4073c(Runnable runnable) {
        m4077f().removeCallbacks(runnable);
    }

    /* renamed from: d */
    private static File m4074d(File file, String str) {
        File m4056b = m4056b(file, str);
        if (m4056b != null) {
            m4056b.setLastModified(System.currentTimeMillis());
        }
        return m4056b;
    }

    /* renamed from: d */
    private static boolean m4075d() {
        return f3690b;
    }

    /* renamed from: e */
    private static void m4076e() {
        if (m4067b()) {
            return;
        }
        m4065b(new IllegalStateException("Not UI Thread"));
    }

    /* renamed from: f */
    private static Handler m4077f() {
        if (f3694f == null) {
            f3694f = new Handler(Looper.getMainLooper());
        }
        return f3694f;
    }

    /* renamed from: g */
    private static ScheduledExecutorService m4078g() {
        if (f3696h == null) {
            f3696h = Executors.newSingleThreadScheduledExecutor();
        }
        return f3696h;
    }

    /* renamed from: h */
    private static Context m4079h() {
        if (f3699k == null) {
            m4042a((Object) "warn", (Object) "getContext with null");
            m4049a((Throwable) new IllegalStateException());
        }
        return f3699k;
    }
}
