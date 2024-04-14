package com.umeng.commonsdk.framework;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.proguard.C2501e;
import com.umeng.commonsdk.proguard.C2518v;
import com.umeng.commonsdk.statistics.common.C2536e;
import com.umeng.commonsdk.statistics.internal.C2561a;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* renamed from: com.umeng.commonsdk.framework.b */
/* loaded from: classes.dex */
public class C2451b {

    /* renamed from: a */
    private static final String f9196a = "last_successful_build_time";

    /* renamed from: c */
    private static String f9198c = "envelope";

    /* renamed from: d */
    private static String f9199d;

    /* renamed from: b */
    private static Object f9197b = new Object();

    /* renamed from: e */
    private static Object f9200e = new Object();

    /* renamed from: a */
    public static int m10645a(Context context, String str, byte[] bArr) {
        if (bArr == null) {
            return 101;
        }
        File file = new File(m10660h(context) + "/" + str);
        synchronized (f9200e) {
            FileOutputStream fileOutputStream = null;
            try {
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    try {
                        fileOutputStream2.write(bArr);
                        fileOutputStream2.close();
                        if (C2561a.m11423a(context).m11427a(str)) {
                            m10662j(context);
                        }
                        return 0;
                    } catch (IOException e) {
                        e = e;
                        fileOutputStream = fileOutputStream2;
                        C2501e.m10904a(context, e);
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th) {
                                C2501e.m10904a(context, th);
                            }
                        }
                        return 101;
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th3) {
                                C2501e.m10904a(context, th3);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (IOException e2) {
                e = e2;
            }
        }
    }

    /* renamed from: a */
    private static long m10646a(long j, long j2) {
        return (j < j2 ? j2 - j : j - j2) / 86400000;
    }

    /* renamed from: a */
    public static String m10647a(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            int myPid = Process.myPid();
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null && runningAppProcesses.size() > 0) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.pid == myPid) {
                        return runningAppProcessInfo.processName;
                    }
                }
            }
        } catch (Throwable th) {
            C2501e.m10904a(context.getApplicationContext(), th);
        }
        return "";
    }

    /* renamed from: a */
    public static boolean m10648a(Context context, UMLogDataProtocol.UMBusinessType uMBusinessType) {
        File[] listFiles;
        String str = "a";
        if (uMBusinessType == UMLogDataProtocol.UMBusinessType.U_DPLUS) {
            str = "d";
        } else if (uMBusinessType == UMLogDataProtocol.UMBusinessType.U_INTERNAL) {
            str = C2518v.f9546am;
        }
        File file = new File(m10660h(context));
        synchronized (f9200e) {
            try {
                try {
                    listFiles = file.listFiles();
                } catch (Throwable th) {
                    C2501e.m10904a(context, th);
                }
                if (listFiles != null && listFiles.length != 0) {
                    for (File file2 : listFiles) {
                        if (file2.getName().startsWith(str)) {
                            return true;
                        }
                    }
                    return false;
                }
                return false;
            } finally {
            }
        }
    }

    /* renamed from: a */
    private static boolean m10649a(Context context, String str) {
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            try {
                if (Build.VERSION.SDK_INT >= 23) {
                    if (((Integer) Class.forName("android.content.Context").getMethod("checkSelfPermission", String.class).invoke(context, str)).intValue() == 0) {
                        return true;
                    }
                } else if (applicationContext.getPackageManager().checkPermission(str, applicationContext.getPackageName()) == 0) {
                    return true;
                }
            } catch (Throwable th) {
                C2501e.m10904a(applicationContext, th);
                return false;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m10650a(File file) {
        Context m10665a = C2452c.m10665a();
        synchronized (f9200e) {
            try {
                if (file != null) {
                    try {
                        if (file.exists()) {
                            return file.delete();
                        }
                    } catch (Throwable th) {
                        C2501e.m10904a(m10665a, th);
                    }
                }
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* renamed from: a */
    public static byte[] m10651a(String str) throws IOException {
        IOException e;
        FileChannel channel;
        byte[] bArr;
        Context m10665a = C2452c.m10665a();
        synchronized (f9200e) {
            try {
                try {
                    channel = new RandomAccessFile(str, "r").getChannel();
                } catch (IOException e2) {
                    e = e2;
                } catch (Throwable th) {
                    th = th;
                    str = 0;
                    try {
                        str.close();
                    } catch (Throwable th2) {
                        C2501e.m10904a(m10665a, th2);
                    }
                    throw th;
                }
                try {
                    MappedByteBuffer load = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size()).load();
                    System.out.println(load.isLoaded());
                    bArr = new byte[(int) channel.size()];
                    if (load.remaining() > 0) {
                        load.get(bArr, 0, load.remaining());
                    }
                    try {
                        channel.close();
                    } catch (Throwable th3) {
                        C2501e.m10904a(m10665a, th3);
                    }
                } catch (IOException e3) {
                    e = e3;
                    C2501e.m10904a(m10665a, e);
                    throw e;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
        return bArr;
    }

    /* renamed from: b */
    public static boolean m10653b(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        try {
            if (!m10649a(context, "android.permission.ACCESS_NETWORK_STATE") || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return false;
            }
            return activeNetworkInfo.isConnectedOrConnecting();
        } catch (Throwable th) {
            C2501e.m10904a(context.getApplicationContext(), th);
            return false;
        }
    }

    /* renamed from: c */
    public static int m10654c(Context context) {
        String[] list;
        if (context != null) {
            try {
                File file = new File(m10660h(context));
                synchronized (f9200e) {
                    if (!file.isDirectory() || (list = file.list()) == null) {
                        return 0;
                    }
                    return list.length;
                }
            } catch (Throwable th) {
                C2501e.m10904a(context, th);
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static String m10655c(String str) {
        Context m10665a = C2452c.m10665a();
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int indexOf = str.indexOf(95) + 1;
        try {
            return str.substring(indexOf, str.indexOf(95, indexOf));
        } catch (IndexOutOfBoundsException e) {
            C2501e.m10904a(m10665a, e);
            return "";
        }
    }

    /* renamed from: d */
    public static void m10656d(final Context context) {
        File file = new File(m10660h(context));
        synchronized (f9200e) {
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length > 100) {
                Arrays.sort(listFiles, new Comparator<File>() { // from class: com.umeng.commonsdk.framework.b.1
                    @Override // java.util.Comparator
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public final int compare(File file2, File file3) {
                        String name = file2.getName();
                        String name2 = file3.getName();
                        String m10655c = C2451b.m10655c(name);
                        String m10655c2 = C2451b.m10655c(name2);
                        if (!TextUtils.isEmpty(m10655c) && !TextUtils.isEmpty(m10655c2)) {
                            try {
                                long longValue = Long.valueOf(m10655c).longValue() - Long.valueOf(m10655c2).longValue();
                                if (longValue > 0) {
                                    return 1;
                                }
                                return longValue == 0 ? 0 : -1;
                            } catch (NumberFormatException e) {
                                C2501e.m10904a(context, e);
                            }
                        }
                        return 1;
                    }
                });
                if (listFiles.length > 100) {
                    try {
                        C2536e.m11332b("--->>> biger than 10");
                        for (int i = 0; i < listFiles.length - 100; i++) {
                            if (!listFiles[i].delete()) {
                                C2536e.m11332b("--->>> remove [" + i + "] file fail.");
                            }
                        }
                    } catch (Throwable th) {
                        C2501e.m10904a(context, th);
                    }
                }
            }
        }
    }

    /* renamed from: e */
    public static File m10657e(final Context context) {
        if (context == null) {
            return null;
        }
        File file = new File(m10660h(context));
        synchronized (f9200e) {
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length != 0) {
                Arrays.sort(listFiles, new Comparator<File>() { // from class: com.umeng.commonsdk.framework.b.2
                    @Override // java.util.Comparator
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public final int compare(File file2, File file3) {
                        String name = file2.getName();
                        String name2 = file3.getName();
                        String m10655c = C2451b.m10655c(name);
                        String m10655c2 = C2451b.m10655c(name2);
                        if (!TextUtils.isEmpty(m10655c) && !TextUtils.isEmpty(m10655c2)) {
                            try {
                                long longValue = Long.valueOf(m10655c).longValue() - Long.valueOf(m10655c2).longValue();
                                if (longValue > 0) {
                                    return 1;
                                }
                                return longValue == 0 ? 0 : -1;
                            } catch (NumberFormatException e) {
                                C2501e.m10904a(context, e);
                            }
                        }
                        return 1;
                    }
                });
                return listFiles[0];
            }
            return null;
        }
    }

    /* renamed from: f */
    public static void m10658f(Context context) {
        String m10659g;
        if (context == null) {
            return;
        }
        try {
            m10659g = m10659g(context);
        } catch (Throwable th) {
            C2501e.m10904a(context, th);
        }
        if (TextUtils.isEmpty(m10659g) || m10659g.equals(f9198c)) {
            return;
        }
        File file = new File(context.getFilesDir().getAbsolutePath() + "/." + m10659g);
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null || listFiles.length == 0) {
                try {
                    if (file.isDirectory()) {
                        file.delete();
                        return;
                    }
                    return;
                } catch (Throwable th2) {
                    C2501e.m10904a(context, th2);
                    return;
                }
            }
            try {
                String m10660h = m10660h(context);
                for (int i = 0; i < listFiles.length; i++) {
                    listFiles[i].renameTo(new File(m10660h + "/" + listFiles[i].getName()));
                }
                if (file.isDirectory()) {
                    file.delete();
                    return;
                }
                return;
            } catch (Throwable th3) {
                C2501e.m10904a(context, th3);
                return;
            }
            C2501e.m10904a(context, th);
        }
    }

    /* renamed from: g */
    public static String m10659g(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager != null) {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                C2536e.m11332b("--->>> getEnvelopeDir: can't get process name, use default envelope directory.");
                return f9198c;
            }
            if (runningAppProcesses.size() == 0) {
                return f9198c;
            }
            try {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.pid == Process.myPid()) {
                        String replace = runningAppProcessInfo.processName.replace(':', '_');
                        C2536e.m11332b("--->>> getEnvelopeDir: use current process name as envelope directory.");
                        return replace;
                    }
                }
            } catch (Throwable th) {
                C2501e.m10904a(context, th);
            }
        }
        return f9198c;
    }

    /* renamed from: h */
    public static String m10660h(Context context) {
        String str;
        synchronized (f9200e) {
            try {
                if (f9199d == null) {
                    f9199d = context.getFilesDir().getAbsolutePath() + "/." + f9198c;
                }
                File file = new File(f9199d);
                if (!file.exists() && !file.mkdir()) {
                    C2536e.m11332b("--->>> Create Envelope Directory failed!!!");
                }
            } catch (Throwable th) {
                C2501e.m10904a(context, th);
            }
            str = f9199d;
        }
        return str;
    }

    /* renamed from: i */
    public static long m10661i(Context context) {
        long j;
        synchronized (f9197b) {
            j = PreferenceWrapper.getDefault(context).getLong(f9196a, 0L);
        }
        return j;
    }

    /* renamed from: j */
    private static void m10662j(Context context) {
        synchronized (f9197b) {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            sharedPreferences.edit().putLong(f9196a, System.currentTimeMillis()).commit();
        }
    }
}
