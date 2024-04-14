package org.litepal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.umeng.analytics.pro.C2428c;
import java.io.File;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.litepal.p235b.C3009c;
import org.litepal.p235b.C3012e;
import org.litepal.p235b.C3016i;
import org.litepal.p235b.C3017j;
import org.litepal.p235b.C3018k;
import org.litepal.p235b.p236a.C2996b;
import org.litepal.p235b.p236a.C2997c;
import org.litepal.p235b.p236a.C2998d;
import org.litepal.p235b.p236a.C2999e;
import org.litepal.p235b.p236a.C3000f;
import org.litepal.p235b.p236a.C3001g;
import org.litepal.p239c.C3024e;
import org.litepal.p241e.C3029a;
import org.litepal.p241e.C3032d;
import org.litepal.p242f.C3041c;
import org.litepal.p242f.p243a.InterfaceC3035a;
import org.litepal.p246g.C3054a;
import org.litepal.p246g.C3058c;
import org.litepal.p246g.C3060e;
import org.litepal.p246g.InterfaceC3057b;
import org.litepal.p246g.p247a.C3056b;

/* renamed from: org.litepal.f */
/* loaded from: classes.dex */
public final class C3033f {

    /* renamed from: a */
    private static Handler f11079a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    private static InterfaceC3035a f11080b;

    /* renamed from: a */
    public static double m13746a(Class<?> cls, String str) {
        return m13747a(C3054a.m13930a(C3058c.m13951a(cls.getName())), str);
    }

    /* renamed from: a */
    public static double m13747a(String str, String str2) {
        double m13439a;
        synchronized (C3012e.class) {
            m13439a = new C2993b().m13439a(str, str2);
        }
        return m13439a;
    }

    /* renamed from: a */
    public static int m13748a(Class<?> cls) {
        return m13799d(C3054a.m13930a(C3058c.m13951a(cls.getName())));
    }

    /* renamed from: a */
    public static int m13749a(Class<?> cls, ContentValues contentValues, long j) {
        int m13607a;
        synchronized (C3012e.class) {
            m13607a = new C3018k(C3041c.m13891a()).m13607a(cls, j, contentValues);
        }
        return m13607a;
    }

    /* renamed from: a */
    public static int m13750a(Class<?> cls, ContentValues contentValues, String... strArr) {
        return m13752a(C3054a.m13930a(C3058c.m13951a(cls.getName())), contentValues, strArr);
    }

    /* renamed from: a */
    public static int m13751a(Class<?> cls, String... strArr) {
        int m13531a;
        synchronized (C3012e.class) {
            m13531a = new C3009c(C3041c.m13891a()).m13531a(cls, strArr);
        }
        return m13531a;
    }

    /* renamed from: a */
    public static int m13752a(String str, ContentValues contentValues, String... strArr) {
        int m13608a;
        synchronized (C3012e.class) {
            C3018k c3018k = new C3018k(C3041c.m13891a());
            C3054a.m13931a(strArr);
            if (strArr != null && strArr.length > 0) {
                strArr[0] = C3058c.m13966e(strArr[0]);
            }
            C3018k.m13600a(contentValues);
            m13608a = c3018k.m13608a(str, contentValues, strArr);
        }
        return m13608a;
    }

    /* renamed from: a */
    public static int m13753a(String str, String... strArr) {
        int m13532a;
        synchronized (C3012e.class) {
            m13532a = new C3009c(C3041c.m13891a()).m13532a(str, strArr);
        }
        return m13532a;
    }

    /* renamed from: a */
    public static Handler m13754a() {
        return f11079a;
    }

    /* renamed from: a */
    public static <T> T m13755a(Class<T> cls, long j) {
        return (T) m13756a((Class) cls, j, false);
    }

    /* renamed from: a */
    public static <T> T m13756a(Class<T> cls, long j, boolean z) {
        T t;
        synchronized (C3012e.class) {
            t = (T) new C3016i(C3041c.m13891a()).m13570a(cls, j, z);
        }
        return t;
    }

    /* renamed from: a */
    public static <T> T m13757a(Class<?> cls, String str, Class<T> cls2) {
        return (T) m13759a(C3054a.m13930a(C3058c.m13951a(cls.getName())), str, cls2);
    }

    /* renamed from: a */
    public static <T> T m13758a(Class<T> cls, boolean z) {
        T t;
        synchronized (C3012e.class) {
            t = (T) new C3016i(C3041c.m13891a()).m13571a(cls, z);
        }
        return t;
    }

    /* renamed from: a */
    public static <T> T m13759a(String str, String str2, Class<T> cls) {
        T t;
        synchronized (C3012e.class) {
            t = (T) new C2993b().m13441a(str, str2, cls);
        }
        return t;
    }

    /* renamed from: a */
    public static <T> List<T> m13760a(Class<T> cls, boolean z, long... jArr) {
        List<T> m13573a;
        synchronized (C3012e.class) {
            m13573a = new C3016i(C3041c.m13891a()).m13573a(cls, z, jArr);
        }
        return m13573a;
    }

    /* renamed from: a */
    public static <T> List<T> m13761a(Class<T> cls, long... jArr) {
        return m13760a((Class) cls, false, jArr);
    }

    /* renamed from: a */
    public static C2993b m13762a(int i) {
        C2993b c2993b = new C2993b();
        c2993b.f10943d = String.valueOf(i);
        return c2993b;
    }

    /* renamed from: a */
    public static C2993b m13763a(String... strArr) {
        C2993b c2993b = new C2993b();
        c2993b.f10940a = strArr;
        return c2993b;
    }

    /* renamed from: a */
    public static void m13764a(Context context) {
        LitePalApplication.f10932a = context;
    }

    /* renamed from: a */
    public static <T extends C3012e> void m13765a(Collection<T> collection) {
        synchronized (C3012e.class) {
            SQLiteDatabase m13891a = C3041c.m13891a();
            m13891a.beginTransaction();
            try {
                try {
                    new C3017j(m13891a).m13597b(collection);
                    m13891a.setTransactionSuccessful();
                } catch (Exception e) {
                    throw new C3024e(e.getMessage(), e);
                }
            } finally {
                m13891a.endTransaction();
            }
        }
    }

    /* renamed from: a */
    public static void m13766a(C3028e c3028e) {
        synchronized (C3012e.class) {
            C3029a m13714a = C3029a.m13714a();
            m13714a.f11059b = c3028e.f11053b;
            m13714a.f11058a = c3028e.f11052a;
            m13714a.f11061d = c3028e.f11054c;
            m13714a.f11062e = c3028e.m13713a();
            if (!m13814g(c3028e.f11053b)) {
                m13714a.f11063f = c3028e.f11053b;
                m13714a.f11060c = InterfaceC3057b.a.f11201c;
            }
            C3041c.m13892b();
        }
    }

    /* renamed from: a */
    public static void m13767a(InterfaceC3035a interfaceC3035a) {
        f11080b = interfaceC3035a;
    }

    /* renamed from: a */
    public static boolean m13768a(String str) {
        synchronized (C3012e.class) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            if (!str.endsWith(InterfaceC3057b.a.f11199a)) {
                str = str + InterfaceC3057b.a.f11199a;
            }
            File databasePath = LitePalApplication.m13404a().getDatabasePath(str);
            if (databasePath.exists()) {
                boolean delete = databasePath.delete();
                if (delete) {
                    m13813f(str);
                    C3041c.m13892b();
                }
                return delete;
            }
            boolean delete2 = new File((LitePalApplication.m13404a().getExternalFilesDir("") + C2428c.f9004b) + str).delete();
            if (delete2) {
                m13813f(str);
                C3041c.m13892b();
            }
            return delete2;
        }
    }

    /* renamed from: b */
    public static SQLiteDatabase m13769b() {
        SQLiteDatabase m13891a;
        synchronized (C3012e.class) {
            m13891a = C3041c.m13891a();
        }
        return m13891a;
    }

    /* renamed from: b */
    public static C2996b m13770b(Class<?> cls, String str) {
        return m13771b(C3054a.m13930a(C3058c.m13951a(cls.getName())), str);
    }

    /* renamed from: b */
    public static C2996b m13771b(final String str, final String str2) {
        final C2996b c2996b = new C2996b();
        c2996b.f10995a = new Runnable() { // from class: org.litepal.f.8
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final double m13747a = C3033f.m13747a(str, str2);
                    if (c2996b.f10996b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.f.8.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c2996b;
    }

    /* renamed from: b */
    public static C2997c m13772b(Class<?> cls) {
        return m13809e(C3054a.m13930a(C3058c.m13951a(cls.getName())));
    }

    /* renamed from: b */
    public static <T> C2998d<T> m13773b(Class<T> cls, long j) {
        return m13774b((Class) cls, j, false);
    }

    /* renamed from: b */
    public static <T> C2998d<T> m13774b(final Class<T> cls, final long j, final boolean z) {
        final C2998d<T> c2998d = new C2998d<>();
        c2998d.f10995a = new Runnable() { // from class: org.litepal.f.12
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final Object m13756a = C3033f.m13756a((Class<Object>) cls, j, z);
                    if (c2998d.f10998b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.f.12.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c2998d;
    }

    /* renamed from: b */
    public static <T> C2998d<T> m13775b(Class<?> cls, String str, Class<T> cls2) {
        return m13777b(C3054a.m13930a(C3058c.m13951a(cls.getName())), str, cls2);
    }

    /* renamed from: b */
    public static <T> C2998d<T> m13776b(final Class<T> cls, final boolean z) {
        final C2998d<T> c2998d = new C2998d<>();
        c2998d.f10995a = new Runnable() { // from class: org.litepal.f.13
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final Object m13758a = C3033f.m13758a((Class<Object>) cls, z);
                    if (c2998d.f10998b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.f.13.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c2998d;
    }

    /* renamed from: b */
    public static <T> C2998d<T> m13777b(final String str, final String str2, final Class<T> cls) {
        final C2998d<T> c2998d = new C2998d<>();
        c2998d.f10995a = new Runnable() { // from class: org.litepal.f.9
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final Object m13759a = C3033f.m13759a(str, str2, (Class<Object>) cls);
                    if (c2998d.f10998b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.f.9.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c2998d;
    }

    /* renamed from: b */
    public static <T> C2999e<T> m13778b(final Class<T> cls, final boolean z, final long... jArr) {
        final C2999e<T> c2999e = new C2999e<>();
        c2999e.f10995a = new Runnable() { // from class: org.litepal.f.15
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final List m13760a = C3033f.m13760a(cls, z, jArr);
                    if (c2999e.f10999b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.f.15.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c2999e;
    }

    /* renamed from: b */
    public static <T> C2999e<T> m13779b(Class<T> cls, long... jArr) {
        return m13778b((Class) cls, false, jArr);
    }

    /* renamed from: b */
    public static <T extends C3012e> C3000f m13780b(final Collection<T> collection) {
        final C3000f c3000f = new C3000f();
        c3000f.f10995a = new Runnable() { // from class: org.litepal.f.7
            @Override // java.lang.Runnable
            public final void run() {
                final boolean z;
                synchronized (C3012e.class) {
                    try {
                        C3033f.m13765a(collection);
                        z = true;
                    } catch (Exception unused) {
                        z = false;
                    }
                    if (c3000f.f11000b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.f.7.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c3000f;
    }

    /* renamed from: b */
    public static C3001g m13781b(final Class<?> cls, final ContentValues contentValues, final long j) {
        final C3001g c3001g = new C3001g();
        c3001g.f10995a = new Runnable() { // from class: org.litepal.f.5
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final int m13749a = C3033f.m13749a((Class<?>) cls, contentValues, j);
                    if (c3001g.f11001b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.f.5.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c3001g;
    }

    /* renamed from: b */
    public static C3001g m13782b(Class<?> cls, ContentValues contentValues, String... strArr) {
        return m13784b(C3054a.m13930a(C3058c.m13951a(cls.getName())), contentValues, strArr);
    }

    /* renamed from: b */
    public static C3001g m13783b(final Class<?> cls, final String... strArr) {
        final C3001g c3001g = new C3001g();
        c3001g.f10995a = new Runnable() { // from class: org.litepal.f.3
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final int m13751a = C3033f.m13751a((Class<?>) cls, strArr);
                    if (c3001g.f11001b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.f.3.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c3001g;
    }

    /* renamed from: b */
    public static C3001g m13784b(final String str, final ContentValues contentValues, final String... strArr) {
        final C3001g c3001g = new C3001g();
        c3001g.f10995a = new Runnable() { // from class: org.litepal.f.6
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final int m13752a = C3033f.m13752a(str, contentValues, strArr);
                    if (c3001g.f11001b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.f.6.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c3001g;
    }

    /* renamed from: b */
    public static C3001g m13785b(final String str, final String... strArr) {
        final C3001g c3001g = new C3001g();
        c3001g.f10995a = new Runnable() { // from class: org.litepal.f.4
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final int m13753a = C3033f.m13753a(str, strArr);
                    if (c3001g.f11001b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.f.4.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c3001g;
    }

    /* renamed from: b */
    public static C2993b m13786b(int i) {
        C2993b c2993b = new C2993b();
        c2993b.f10944e = String.valueOf(i);
        return c2993b;
    }

    /* renamed from: b */
    public static C2993b m13787b(String... strArr) {
        C2993b c2993b = new C2993b();
        c2993b.f10941b = strArr;
        return c2993b;
    }

    /* renamed from: b */
    public static void m13788b(String str) {
        C3056b.f11197a = str;
    }

    /* renamed from: c */
    public static int m13789c(Class<?> cls, long j) {
        int m13530a;
        synchronized (C3012e.class) {
            SQLiteDatabase m13891a = C3041c.m13891a();
            m13891a.beginTransaction();
            try {
                m13530a = new C3009c(m13891a).m13530a(cls, j);
                m13891a.setTransactionSuccessful();
            } finally {
                m13891a.endTransaction();
            }
        }
        return m13530a;
    }

    /* renamed from: c */
    public static Cursor m13790c(String... strArr) {
        synchronized (C3012e.class) {
            C3054a.m13931a(strArr);
            String[] strArr2 = null;
            if (strArr == null) {
                return null;
            }
            if (strArr.length <= 0) {
                return null;
            }
            if (strArr.length != 1) {
                strArr2 = new String[strArr.length - 1];
                System.arraycopy(strArr, 1, strArr2, 0, strArr.length - 1);
            }
            return C3041c.m13891a().rawQuery(strArr[0], strArr2);
        }
    }

    /* renamed from: c */
    public static <T> T m13791c(Class<T> cls) {
        return (T) m13758a((Class) cls, false);
    }

    /* renamed from: c */
    public static <T> T m13792c(Class<?> cls, String str, Class<T> cls2) {
        return (T) m13794c(C3054a.m13930a(C3058c.m13951a(cls.getName())), str, cls2);
    }

    /* renamed from: c */
    public static <T> T m13793c(Class<T> cls, boolean z) {
        T t;
        synchronized (C3012e.class) {
            t = (T) new C3016i(C3041c.m13891a()).m13575b(cls, z);
        }
        return t;
    }

    /* renamed from: c */
    public static <T> T m13794c(String str, String str2, Class<T> cls) {
        T t;
        synchronized (C3012e.class) {
            t = (T) new C2993b().m13444b(str, str2, cls);
        }
        return t;
    }

    /* renamed from: c */
    public static C2993b m13795c(String str) {
        C2993b c2993b = new C2993b();
        c2993b.f10942c = str;
        return c2993b;
    }

    /* renamed from: c */
    public static void m13796c() {
        synchronized (C3012e.class) {
            C3029a.m13720c();
            C3041c.m13892b();
        }
    }

    /* renamed from: c */
    public static <T extends C3012e> void m13797c(Collection<T> collection) {
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            it.next().clearSavedState();
        }
    }

    /* renamed from: c */
    public static <T> boolean m13798c(Class<T> cls, String... strArr) {
        return strArr != null && m13787b(strArr).m13440a(C3054a.m13930a(cls.getSimpleName())) > 0;
    }

    /* renamed from: d */
    public static int m13799d(String str) {
        int m13440a;
        synchronized (C3012e.class) {
            m13440a = new C2993b().m13440a(str);
        }
        return m13440a;
    }

    /* renamed from: d */
    public static <T> C2998d<T> m13800d(Class<T> cls) {
        return m13776b((Class) cls, false);
    }

    /* renamed from: d */
    public static <T> C2998d<T> m13801d(Class<?> cls, String str, Class<T> cls2) {
        return m13803d(C3054a.m13930a(C3058c.m13951a(cls.getName())), str, cls2);
    }

    /* renamed from: d */
    public static <T> C2998d<T> m13802d(final Class<T> cls, final boolean z) {
        final C2998d<T> c2998d = new C2998d<>();
        c2998d.f10995a = new Runnable() { // from class: org.litepal.f.14
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final Object m13793c = C3033f.m13793c((Class<Object>) cls, z);
                    if (c2998d.f10998b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.f.14.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c2998d;
    }

    /* renamed from: d */
    public static <T> C2998d<T> m13803d(final String str, final String str2, final Class<T> cls) {
        final C2998d<T> c2998d = new C2998d<>();
        c2998d.f10995a = new Runnable() { // from class: org.litepal.f.10
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final Object m13794c = C3033f.m13794c(str, str2, (Class<Object>) cls);
                    if (c2998d.f10998b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.f.10.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c2998d;
    }

    /* renamed from: d */
    public static C3001g m13804d(final Class<?> cls, final long j) {
        final C3001g c3001g = new C3001g();
        c3001g.f10995a = new Runnable() { // from class: org.litepal.f.2
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final int m13789c = C3033f.m13789c((Class<?>) cls, j);
                    if (c3001g.f11001b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.f.2.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c3001g;
    }

    /* renamed from: d */
    public static InterfaceC3035a m13805d() {
        return f11080b;
    }

    /* renamed from: e */
    public static <T> T m13806e(Class<T> cls) {
        return (T) m13793c((Class) cls, false);
    }

    /* renamed from: e */
    public static <T> T m13807e(Class<?> cls, String str, Class<T> cls2) {
        return (T) m13808e(C3054a.m13930a(C3058c.m13951a(cls.getName())), str, cls2);
    }

    /* renamed from: e */
    public static <T> T m13808e(String str, String str2, Class<T> cls) {
        T t;
        synchronized (C3012e.class) {
            t = (T) new C2993b().m13446c(str, str2, cls);
        }
        return t;
    }

    /* renamed from: e */
    public static C2997c m13809e(final String str) {
        final C2997c c2997c = new C2997c();
        c2997c.f10995a = new Runnable() { // from class: org.litepal.f.1
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final int m13799d = C3033f.m13799d(str);
                    if (c2997c.f10997b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.f.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c2997c;
    }

    /* renamed from: f */
    public static <T> C2998d<T> m13810f(Class<T> cls) {
        return m13802d((Class) cls, false);
    }

    /* renamed from: f */
    public static <T> C2998d<T> m13811f(Class<?> cls, String str, Class<T> cls2) {
        return m13812f(C3054a.m13930a(C3058c.m13951a(cls.getName())), str, cls2);
    }

    /* renamed from: f */
    public static <T> C2998d<T> m13812f(final String str, final String str2, final Class<T> cls) {
        final C2998d<T> c2998d = new C2998d<>();
        c2998d.f10995a = new Runnable() { // from class: org.litepal.f.11
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final Object m13808e = C3033f.m13808e(str, str2, (Class<Object>) cls);
                    if (c2998d.f10998b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.f.11.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c2998d;
    }

    /* renamed from: f */
    private static void m13813f(String str) {
        if (m13814g(str)) {
            C3060e.m13973a(null);
        } else {
            C3060e.m13973a(str);
        }
    }

    /* renamed from: g */
    private static boolean m13814g(String str) {
        if (!C3054a.m13932a()) {
            return false;
        }
        if (!str.endsWith(InterfaceC3057b.a.f11199a)) {
            str = str + InterfaceC3057b.a.f11199a;
        }
        String str2 = C3032d.m13742a().f11065b;
        if (!str2.endsWith(InterfaceC3057b.a.f11199a)) {
            str2 = str2 + InterfaceC3057b.a.f11199a;
        }
        return str.equalsIgnoreCase(str2);
    }
}
