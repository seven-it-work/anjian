package com.bumptech.glide.load.p042b.p045c;

import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

/* renamed from: com.bumptech.glide.load.b.c.b */
/* loaded from: classes.dex */
final class C0903b {

    /* renamed from: a */
    private static final String f2644a = "GlideRuntimeCompat";

    /* renamed from: b */
    private static final String f2645b = "cpu[0-9]+";

    /* renamed from: c */
    private static final String f2646c = "/sys/devices/system/cpu/";

    private C0903b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2590a() {
        File[] fileArr;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                File file = new File(f2646c);
                final Pattern compile = Pattern.compile(f2645b);
                fileArr = file.listFiles(new FilenameFilter() { // from class: com.bumptech.glide.load.b.c.b.1
                    @Override // java.io.FilenameFilter
                    public final boolean accept(File file2, String str) {
                        return compile.matcher(str).matches();
                    }
                });
            } catch (Throwable th) {
                if (Log.isLoggable(f2644a, 6)) {
                    Log.e(f2644a, "Failed to calculate accurate cpu count", th);
                }
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                fileArr = null;
            }
            return Math.max(1, fileArr != null ? fileArr.length : 0);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* renamed from: b */
    private static int m2591b() {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        return Build.VERSION.SDK_INT < 17 ? Math.max(m2590a(), availableProcessors) : availableProcessors;
    }
}
