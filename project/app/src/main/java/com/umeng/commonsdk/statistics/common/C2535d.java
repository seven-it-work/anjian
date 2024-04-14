package com.umeng.commonsdk.statistics.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.C2451b;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Locale;

/* renamed from: com.umeng.commonsdk.statistics.common.d */
/* loaded from: classes.dex */
public final class C2535d {

    /* renamed from: a */
    private static C2535d f9749a = null;

    /* renamed from: b */
    private static Context f9750b = null;

    /* renamed from: c */
    private static String f9751c = null;

    /* renamed from: e */
    private static final String f9752e = "mobclick_agent_user_";

    /* renamed from: f */
    private static final String f9753f = "mobclick_agent_header_";

    /* renamed from: g */
    private static final String f9754g = "mobclick_agent_cached_";

    /* renamed from: d */
    private a f9755d;

    /* renamed from: com.umeng.commonsdk.statistics.common.d$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        private final int f9756a;

        /* renamed from: b */
        private File f9757b;

        /* renamed from: c */
        private FilenameFilter f9758c;

        public a(Context context) {
            this(context, ".um");
        }

        public a(Context context, String str) {
            this.f9756a = 10;
            this.f9758c = new FilenameFilter() { // from class: com.umeng.commonsdk.statistics.common.d.a.1
                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str2) {
                    return str2.startsWith("um");
                }
            };
            this.f9757b = new File(context.getFilesDir(), str);
            if (this.f9757b.exists() && this.f9757b.isDirectory()) {
                return;
            }
            this.f9757b.mkdir();
        }

        /* renamed from: a */
        public void m11317a(b bVar) {
            File file;
            File[] listFiles = this.f9757b.listFiles(this.f9758c);
            if (listFiles != null && listFiles.length >= 10) {
                Arrays.sort(listFiles);
                int length = listFiles.length - 10;
                for (int i = 0; i < length; i++) {
                    listFiles[i].delete();
                }
            }
            if (listFiles == null || listFiles.length <= 0) {
                return;
            }
            bVar.m11322a(this.f9757b);
            int length2 = listFiles.length;
            for (int i2 = 0; i2 < length2; i2++) {
                try {
                } catch (Throwable unused) {
                    file = listFiles[i2];
                }
                if (bVar.m11323b(listFiles[i2])) {
                    file = listFiles[i2];
                    file.delete();
                }
            }
            bVar.m11324c(this.f9757b);
        }

        /* renamed from: a */
        public void m11318a(byte[] bArr) {
            if (bArr == null || bArr.length == 0) {
                return;
            }
            try {
                HelperUtils.writeFile(new File(this.f9757b, String.format(Locale.US, "um_cache_%d.env", Long.valueOf(System.currentTimeMillis()))), bArr);
            } catch (Exception unused) {
            }
        }

        /* renamed from: a */
        public boolean m11319a() {
            File[] listFiles = this.f9757b.listFiles();
            return listFiles != null && listFiles.length > 0;
        }

        /* renamed from: b */
        public void m11320b() {
            File[] listFiles = this.f9757b.listFiles(this.f9758c);
            if (listFiles == null || listFiles.length <= 0) {
                return;
            }
            for (File file : listFiles) {
                file.delete();
            }
        }

        /* renamed from: c */
        public int m11321c() {
            File[] listFiles = this.f9757b.listFiles(this.f9758c);
            if (listFiles == null || listFiles.length <= 0) {
                return 0;
            }
            return listFiles.length;
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.common.d$b */
    /* loaded from: classes.dex */
    public interface b {
        /* renamed from: a */
        void m11322a(File file);

        /* renamed from: b */
        boolean m11323b(File file);

        /* renamed from: c */
        void m11324c(File file);
    }

    public C2535d(Context context) {
        this.f9755d = new a(context);
    }

    /* renamed from: a */
    public static synchronized C2535d m11307a(Context context) {
        C2535d c2535d;
        synchronized (C2535d.class) {
            f9750b = context.getApplicationContext();
            f9751c = context.getPackageName();
            if (f9749a == null) {
                f9749a = new C2535d(context);
            }
            c2535d = f9749a;
        }
        return c2535d;
    }

    /* renamed from: f */
    private SharedPreferences m11308f() {
        return f9750b.getSharedPreferences(f9752e + f9751c, 0);
    }

    /* renamed from: a */
    public final int m11309a() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f9750b);
        if (sharedPreferences != null) {
            return sharedPreferences.getInt("vt", 0);
        }
        return 0;
    }

    /* renamed from: a */
    public final void m11310a(int i) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f9750b);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putInt("vt", i).commit();
        }
    }

    /* renamed from: a */
    public final void m11311a(String str) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f9750b);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString("st", str).commit();
        }
    }

    /* renamed from: a */
    public final void m11312a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        SharedPreferences.Editor edit = m11308f().edit();
        edit.putString("au_p", str);
        edit.putString("au_u", str2);
        edit.commit();
    }

    /* renamed from: b */
    public final String m11313b() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f9750b);
        if (sharedPreferences != null) {
            return sharedPreferences.getString("st", null);
        }
        return null;
    }

    /* renamed from: c */
    public final boolean m11314c() {
        return C2451b.m10654c(f9750b) > 0;
    }

    /* renamed from: d */
    public final String[] m11315d() {
        try {
            SharedPreferences m11308f = m11308f();
            String string = m11308f.getString("au_p", null);
            String string2 = m11308f.getString("au_u", null);
            if (string != null && string2 != null) {
                return new String[]{string, string2};
            }
        } catch (Exception unused) {
        }
        return null;
    }

    /* renamed from: e */
    public final void m11316e() {
        m11308f().edit().remove("au_p").remove("au_u").commit();
    }
}
