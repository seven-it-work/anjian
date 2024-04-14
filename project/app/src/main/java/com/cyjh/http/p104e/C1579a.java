package com.cyjh.http.p104e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1148aa;
import com.cyjh.common.util.C1162e;
import com.cyjh.common.util.C1176s;
import com.cyjh.common.util.C1198u;
import com.cyjh.http.bean.LocalApplication;
import com.cyjh.http.bean.request.DeviceInfo;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;

/* renamed from: com.cyjh.http.e.a */
/* loaded from: classes.dex */
public final class C1579a {

    /* renamed from: a */
    public static final String f5888a = "yyyy-MM-dd HH:mm:ss";

    /* renamed from: b */
    public static final String f5889b = "yyyy-MM-dd";

    /* renamed from: com.cyjh.http.e.a$a */
    /* loaded from: classes.dex */
    class a implements FileFilter {
        a() {
        }

        @Override // java.io.FileFilter
        public final boolean accept(File file) {
            return Pattern.matches("cpu[0-9]", file.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.http.e.a$b */
    /* loaded from: classes.dex */
    public final class b {
        b() {
        }

        /* renamed from: a */
        private static String m7052a(String str) {
            String upperCase;
            char charAt;
            if (TextUtils.isEmpty(str) || Character.isDigit(str.toLowerCase().charAt(0))) {
                return "#";
            }
            C1176s m4528a = C1176s.m4528a();
            String substring = str.substring(0, 1);
            ArrayList arrayList = new ArrayList();
            if (m4528a.f4107c && !TextUtils.isEmpty(substring)) {
                int length = substring.length();
                StringBuilder sb = new StringBuilder();
                int i = 1;
                for (int i2 = 0; i2 < length; i2++) {
                    char charAt2 = substring.charAt(i2);
                    if (charAt2 == ' ') {
                        if (sb.length() > 0) {
                            C1176s.m4530a(sb, arrayList, i);
                        }
                    } else if (charAt2 < 256) {
                        if (i != 1 && sb.length() > 0) {
                            C1176s.m4530a(sb, arrayList, i);
                        }
                        sb.append(charAt2);
                        i = 1;
                    } else {
                        C1176s.a m4527a = C1176s.m4527a(charAt2);
                        if (m4527a.f4112e == 2) {
                            if (sb.length() > 0) {
                                C1176s.m4530a(sb, arrayList, i);
                            }
                            arrayList.add(m4527a);
                            i = 2;
                        } else {
                            if (i != m4527a.f4112e && sb.length() > 0) {
                                C1176s.m4530a(sb, arrayList, i);
                            }
                            i = m4527a.f4112e;
                            sb.append(charAt2);
                        }
                    }
                }
                if (sb.length() > 0) {
                    C1176s.m4530a(sb, arrayList, i);
                }
            }
            return (arrayList.size() <= 0 || ((C1176s.a) arrayList.get(0)).f4114g.length() <= 0 || (charAt = (upperCase = ((C1176s.a) arrayList.get(0)).f4114g.substring(0, 1).toUpperCase()).charAt(0)) < 'A' || charAt > 'Z') ? "#" : upperCase;
        }
    }

    /* renamed from: a */
    private static int m7011a(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: a */
    public static long m7012a() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 2048);
            String readLine = bufferedReader.readLine();
            String substring = readLine.substring(readLine.indexOf("MemTotal:"));
            bufferedReader.close();
            return Integer.parseInt(substring.replaceAll("\\D+", "")) * 1024;
        } catch (IOException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    /* renamed from: a */
    public static long m7013a(String str) {
        try {
            Date parse = new SimpleDateFormat(f5889b, Locale.getDefault()).parse(str);
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(parse);
            calendar.set(calendar.get(1), calendar.get(2), calendar.get(5) + 1, 0, 0);
            return calendar.getTimeInMillis();
        } catch (ParseException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    /* renamed from: a */
    public static File m7014a(Context context) {
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + context.getPackageName());
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* renamed from: a */
    public static String m7015a(long j, String str) {
        if (str.isEmpty()) {
            str = "yyyy-MM-dd HH:mm:ss";
        }
        return new SimpleDateFormat(str, Locale.getDefault()).format(new Date(j * 1000));
    }

    /* renamed from: a */
    public static String m7016a(String str, Context context) {
        File file = new File(m7014a(context), str);
        return !file.exists() ? "" : m7027b(file.getAbsolutePath());
    }

    /* renamed from: a */
    private static String m7017a(String str, String str2) {
        String str3 = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(str).getInputStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null || readLine.contains(str2)) {
                    return readLine;
                }
                str3 = str3 + readLine;
            }
        } catch (Exception e) {
            String str4 = str3;
            e.printStackTrace();
            return str4;
        }
    }

    /* renamed from: a */
    public static void m7018a(Context context, String str, String str2) {
        try {
            File file = new File(m7014a(context), str);
            if (!file.exists()) {
                file.createNewFile();
            }
            m7028b(file, str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00d8, code lost:
    
        if (r1 <= 'Z') goto L51;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m7019a(com.cyjh.http.bean.LocalApplication r12) {
        /*
            java.lang.String r0 = "#"
            java.lang.String r1 = r12.getApplicationName()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto Le0
            com.cyjh.http.e.a$b r0 = new com.cyjh.http.e.a$b
            r0.<init>()
            java.lang.String r0 = r12.getApplicationName()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto Lda
            java.lang.String r1 = r0.toLowerCase()
            r2 = 0
            char r1 = r1.charAt(r2)
            boolean r1 = java.lang.Character.isDigit(r1)
            if (r1 != 0) goto Lda
            com.cyjh.common.util.s r1 = com.cyjh.common.util.C1176s.m4528a()
            r3 = 1
            java.lang.String r0 = r0.substring(r2, r3)
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            boolean r1 = r1.f4107c
            if (r1 == 0) goto Laa
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto Laa
            int r1 = r0.length()
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r6 = 0
            r7 = 1
        L4d:
            if (r6 >= r1) goto La1
            char r8 = r0.charAt(r6)
            r9 = 32
            r10 = 2
            if (r8 != r9) goto L62
            int r8 = r5.length()
            if (r8 <= 0) goto L9e
            com.cyjh.common.util.C1176s.m4530a(r5, r4, r7)
            goto L9e
        L62:
            r9 = 256(0x100, float:3.59E-43)
            if (r8 >= r9) goto L76
            if (r7 == r3) goto L71
            int r9 = r5.length()
            if (r9 <= 0) goto L71
            com.cyjh.common.util.C1176s.m4530a(r5, r4, r7)
        L71:
            r5.append(r8)
            r7 = 1
            goto L9e
        L76:
            com.cyjh.common.util.s$a r9 = com.cyjh.common.util.C1176s.m4527a(r8)
            int r11 = r9.f4112e
            if (r11 != r10) goto L8c
            int r8 = r5.length()
            if (r8 <= 0) goto L87
            com.cyjh.common.util.C1176s.m4530a(r5, r4, r7)
        L87:
            r4.add(r9)
            r7 = 2
            goto L9e
        L8c:
            int r10 = r9.f4112e
            if (r7 == r10) goto L99
            int r10 = r5.length()
            if (r10 <= 0) goto L99
            com.cyjh.common.util.C1176s.m4530a(r5, r4, r7)
        L99:
            int r7 = r9.f4112e
            r5.append(r8)
        L9e:
            int r6 = r6 + 1
            goto L4d
        La1:
            int r0 = r5.length()
            if (r0 <= 0) goto Laa
            com.cyjh.common.util.C1176s.m4530a(r5, r4, r7)
        Laa:
            int r0 = r4.size()
            if (r0 <= 0) goto Lda
            java.lang.Object r0 = r4.get(r2)
            com.cyjh.common.util.s$a r0 = (com.cyjh.common.util.C1176s.a) r0
            java.lang.String r0 = r0.f4114g
            int r0 = r0.length()
            if (r0 <= 0) goto Lda
            java.lang.Object r0 = r4.get(r2)
            com.cyjh.common.util.s$a r0 = (com.cyjh.common.util.C1176s.a) r0
            java.lang.String r0 = r0.f4114g
            java.lang.String r0 = r0.substring(r2, r3)
            java.lang.String r0 = r0.toUpperCase()
            char r1 = r0.charAt(r2)
            r2 = 65
            if (r1 < r2) goto Lda
            r2 = 90
            if (r1 <= r2) goto Ldc
        Lda:
            java.lang.String r0 = "#"
        Ldc:
            r12.setInitialLetter(r0)
            return
        Le0:
            r12.setInitialLetter(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.http.p104e.C1579a.m7019a(com.cyjh.http.bean.LocalApplication):void");
    }

    /* renamed from: a */
    public static void m7020a(File file, String str) {
        try {
            FileWriter fileWriter = new FileWriter(file, true);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m7021a(String str, Context context, String str2) {
        try {
            File file = new File(m7014a(context), str);
            if (!file.exists()) {
                file.createNewFile();
            }
            m7028b(file, str2);
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("zzz", "AppUtils--writeDateToFile:" + e.getMessage());
        }
    }

    /* renamed from: a */
    public static boolean m7022a(Context context, String str) {
        PackageInfo packageInfo;
        if (str == null) {
            return false;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            packageInfo = null;
        }
        return packageInfo != null;
    }

    /* renamed from: b */
    private static int m7023b(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: b */
    public static Point m7024b(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    /* renamed from: b */
    public static String m7025b() {
        try {
            FileInputStream fileInputStream = new FileInputStream("/proc/version");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream), 8192);
            String str = "";
            while (true) {
                try {
                    try {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            str = str + readLine;
                        } catch (IOException e) {
                            e.printStackTrace();
                            bufferedReader.close();
                            fileInputStream.close();
                        }
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                            fileInputStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
            bufferedReader.close();
            fileInputStream.close();
            if (str != "") {
                try {
                    String substring = str.substring(str.indexOf("version ") + 8);
                    return substring.substring(0, substring.indexOf(C1176s.a.f4108a));
                } catch (IndexOutOfBoundsException e4) {
                    e4.printStackTrace();
                }
            }
            return "";
        } catch (FileNotFoundException e5) {
            e5.printStackTrace();
            return "";
        }
    }

    /* renamed from: b */
    private static String m7026b(long j, String str) {
        if (str == null || str.isEmpty()) {
            str = "yyyy-MM-dd HH:mm:ss";
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str);
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(j);
        return simpleDateFormat.format(gregorianCalendar.getTime());
    }

    /* renamed from: b */
    private static String m7027b(String str) {
        StringBuilder sb = new StringBuilder();
        File file = new File(str);
        try {
            byte[] bArr = new byte[1024];
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                sb.append(new String(bArr, 0, read, "utf-8"));
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return sb.toString();
    }

    /* renamed from: b */
    private static void m7028b(File file, String str) {
        try {
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m7029b(String str, Context context) {
        File file = new File(m7014a(context), str);
        if (file.exists()) {
            file.delete();
        }
    }

    /* renamed from: b */
    private static void m7030b(String str, Context context, String str2) {
        try {
            File file = new File(m7014a(context), str);
            if (!file.exists()) {
                file.createNewFile();
            }
            try {
                FileWriter fileWriter = new FileWriter(file, true);
                fileWriter.write(str2);
                fileWriter.flush();
                fileWriter.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: b */
    private static boolean m7031b(Context context, String str) {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            applicationInfo = null;
        }
        return applicationInfo != null;
    }

    /* renamed from: c */
    public static DeviceInfo m7032c(Context context) {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n\n\n");
        String deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        if (!TextUtils.isEmpty(deviceId)) {
            sb.append(deviceId);
            sb2.append("devicesId=" + deviceId);
            sb2.append(",");
        }
        String serial = Build.VERSION.SDK_INT >= 26 ? Build.getSerial() : Build.SERIAL;
        if (!TextUtils.isEmpty(serial)) {
            sb.append(serial);
            sb2.append("serial=" + serial);
            sb2.append(",");
        }
        DeviceInfo deviceInfo = new DeviceInfo();
        deviceInfo.DeviceCode = sb.toString();
        String str = "02:00:00:00:00:00";
        if (Build.VERSION.SDK_INT < 23) {
            str = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        } else if (Build.VERSION.SDK_INT >= 23 && Build.VERSION.SDK_INT < 24) {
            str = m7041g();
        } else if (Build.VERSION.SDK_INT >= 24) {
            str = m7043h();
            if ("02:00:00:00:00:00".equals(str)) {
                str = m7017a("busybox ifconfig", "HWaddr");
                if (str == null) {
                    str = "网络异常";
                } else if (str.length() > 0 && str.contains("HWaddr")) {
                    str = str.substring(str.indexOf("HWaddr") + 6, str.length() - 1);
                }
            }
            if ("02:00:00:00:00:00".equals(str)) {
                str = m7047j();
            }
        }
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            sb2.append("macAddress=" + str);
            sb2.append(",");
        }
        File m4367a = C1162e.m4367a(InterfaceC1133a.f3931aF, InterfaceC1133a.f3938aM);
        String m7027b = m4367a != null ? m7027b(m4367a.getAbsolutePath()) : null;
        if (TextUtils.isEmpty(m7027b)) {
            m7027b = Settings.Secure.getString(context.getContentResolver(), InterfaceC1133a.f3938aM);
            m7028b(m4367a, m7027b);
        }
        sb.append(m7027b);
        sb2.append("androidId=" + m7027b);
        sb2.append(",");
        File m4367a2 = C1162e.m4367a(InterfaceC1133a.f3931aF, InterfaceC1133a.f3932aG);
        String m7027b2 = m4367a2 != null ? m7027b(m4367a2.getAbsolutePath()) : "";
        if (TextUtils.isEmpty(m7027b2) || m4367a2 == null) {
            m7027b2 = UUID.randomUUID().toString();
            if (m4367a2 == null) {
                m4367a2 = C1162e.m4367a(InterfaceC1133a.f3931aF, InterfaceC1133a.f3932aG);
            }
            m7028b(m4367a2, m7027b2);
        }
        sb.append(m7027b2);
        sb2.append("uuid=" + m7027b2);
        sb2.append("\n\n\n");
        deviceInfo.DeviceId = C1198u.m5223a(sb.toString());
        return deviceInfo;
    }

    /* renamed from: c */
    private static String m7033c() {
        return Build.VERSION.SDK_INT >= 26 ? Build.getSerial() : Build.SERIAL;
    }

    /* renamed from: c */
    private static boolean m7034c(String str, Context context) {
        String m7016a = m7016a(str, context);
        return !TextUtils.isEmpty(m7016a) && m7016a.compareTo(m7015a(System.currentTimeMillis() / 1000, f5889b)) >= 0;
    }

    /* renamed from: d */
    private static int m7035d() {
        try {
            File[] listFiles = new File("/sys/devices/system/cpu/").listFiles(new a());
            Log.e("TAG", "CPU Count=" + listFiles.length);
            return listFiles.length;
        } catch (Exception e) {
            Log.e("TAG", "CPU Count: Failed.");
            e.printStackTrace();
            return 1;
        }
    }

    /* renamed from: d */
    private static String m7036d(Context context) {
        return Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + context.getPackageName();
    }

    /* renamed from: e */
    private static int m7037e(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.densityDpi;
    }

    /* renamed from: e */
    private static String m7038e() {
        String[] strArr = {"", ""};
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"), 8192);
            String[] split = bufferedReader.readLine().split("\\s+");
            for (int i = 2; i < split.length; i++) {
                strArr[0] = strArr[0] + split[i] + C1176s.a.f4108a;
            }
            bufferedReader.close();
        } catch (IOException unused) {
        }
        return strArr[0];
    }

    /* renamed from: f */
    private static String m7039f() {
        String m4294a = C1148aa.m4294a("ro.miui.ui.version.name");
        C1148aa.f4036h = m4294a;
        if (!TextUtils.isEmpty(m4294a)) {
            return C1148aa.f4029a;
        }
        String m4294a2 = C1148aa.m4294a("ro.build.version.emui");
        C1148aa.f4036h = m4294a2;
        if (!TextUtils.isEmpty(m4294a2)) {
            return C1148aa.f4030b;
        }
        String m4294a3 = C1148aa.m4294a("ro.build.version.opporom");
        C1148aa.f4036h = m4294a3;
        if (!TextUtils.isEmpty(m4294a3)) {
            return C1148aa.f4032d;
        }
        String m4294a4 = C1148aa.m4294a("ro.vivo.os.version");
        C1148aa.f4036h = m4294a4;
        if (!TextUtils.isEmpty(m4294a4)) {
            return C1148aa.f4034f;
        }
        String m4294a5 = C1148aa.m4294a("ro.smartisan.version");
        C1148aa.f4036h = m4294a5;
        if (!TextUtils.isEmpty(m4294a5)) {
            return C1148aa.f4033e;
        }
        String str = Build.DISPLAY;
        C1148aa.f4036h = str;
        if (str.toUpperCase().contains(C1148aa.f4031c)) {
            return C1148aa.f4031c;
        }
        C1148aa.f4036h = EnvironmentCompat.MEDIA_UNKNOWN;
        String upperCase = Build.MANUFACTURER.toUpperCase();
        return TextUtils.isEmpty(upperCase) ? "0" : upperCase;
    }

    /* renamed from: f */
    private static String m7040f(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
    }

    /* renamed from: g */
    private static String m7041g() {
        try {
            return new BufferedReader(new FileReader(new File("/sys/class/net/wlan0/address"))).readLine();
        } catch (IOException e) {
            e.printStackTrace();
            return "02:00:00:00:00:00";
        }
    }

    /* renamed from: g */
    private static String m7042g(Context context) {
        if (Build.VERSION.SDK_INT < 23) {
            return ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        }
        if (Build.VERSION.SDK_INT >= 23 && Build.VERSION.SDK_INT < 24) {
            return m7041g();
        }
        if (Build.VERSION.SDK_INT < 24) {
            return "02:00:00:00:00:00";
        }
        String m7043h = m7043h();
        if ("02:00:00:00:00:00".equals(m7043h)) {
            m7043h = m7017a("busybox ifconfig", "HWaddr");
            if (m7043h == null) {
                m7043h = "网络异常";
            } else if (m7043h.length() > 0 && m7043h.contains("HWaddr")) {
                m7043h = m7043h.substring(m7043h.indexOf("HWaddr") + 6, m7043h.length() - 1);
            }
        }
        String str = m7043h;
        return "02:00:00:00:00:00".equals(str) ? m7047j() : str;
    }

    /* renamed from: h */
    private static String m7043h() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (networkInterface.getName().equalsIgnoreCase("wlan0")) {
                    byte[] hardwareAddress = networkInterface.getHardwareAddress();
                    if (hardwareAddress == null) {
                        return "";
                    }
                    StringBuilder sb = new StringBuilder();
                    for (byte b2 : hardwareAddress) {
                        sb.append(String.format("%02X:", Byte.valueOf(b2)));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString();
                }
            }
            return "02:00:00:00:00:00";
        } catch (Exception e) {
            e.printStackTrace();
            return "02:00:00:00:00:00";
        }
    }

    /* renamed from: h */
    private static String m7044h(Context context) {
        return ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
    }

    /* renamed from: i */
    private static String m7045i() {
        String m7017a = m7017a("busybox ifconfig", "HWaddr");
        return m7017a == null ? "网络异常" : (m7017a.length() <= 0 || !m7017a.contains("HWaddr")) ? m7017a : m7017a.substring(m7017a.indexOf("HWaddr") + 6, m7017a.length() - 1);
    }

    /* renamed from: i */
    private static String m7046i(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: j */
    private static String m7047j() {
        try {
            byte[] hardwareAddress = NetworkInterface.getByInetAddress(m7049k()).getHardwareAddress();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < hardwareAddress.length; i++) {
                if (i != 0) {
                    stringBuffer.append(':');
                }
                String hexString = Integer.toHexString(hardwareAddress[i] & 255);
                if (hexString.length() == 1) {
                    hexString = "0" + hexString;
                }
                stringBuffer.append(hexString);
            }
            return stringBuffer.toString().toUpperCase();
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: j */
    private static String m7048j(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), InterfaceC1133a.f3938aM);
    }

    /* renamed from: k */
    private static InetAddress m7049k() {
        InetAddress inetAddress;
        SocketException e;
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            inetAddress = null;
            while (networkInterfaces.hasMoreElements()) {
                try {
                    Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                    while (true) {
                        if (!inetAddresses.hasMoreElements()) {
                            break;
                        }
                        InetAddress nextElement = inetAddresses.nextElement();
                        try {
                            if (!nextElement.isLoopbackAddress() && nextElement.getHostAddress().indexOf(":") == -1) {
                                inetAddress = nextElement;
                                break;
                            }
                            inetAddress = null;
                        } catch (SocketException e2) {
                            e = e2;
                            inetAddress = nextElement;
                            e.printStackTrace();
                            return inetAddress;
                        }
                    }
                    if (inetAddress != null) {
                        return inetAddress;
                    }
                } catch (SocketException e3) {
                    e = e3;
                }
            }
        } catch (SocketException e4) {
            inetAddress = null;
            e = e4;
        }
        return inetAddress;
    }

    /* renamed from: k */
    private static List<LocalApplication> m7050k(Context context) {
        PackageManager packageManager = context.getPackageManager();
        ArrayList arrayList = new ArrayList();
        try {
            for (PackageInfo packageInfo : packageManager.getInstalledPackages(0)) {
                if ((packageInfo.applicationInfo.flags & 1) == 0) {
                    LocalApplication localApplication = new LocalApplication();
                    localApplication.setApplicationName((String) packageInfo.applicationInfo.loadLabel(packageManager));
                    localApplication.setApplicationIcon(packageInfo.applicationInfo.loadIcon(packageManager));
                    localApplication.setApplicationPackageName(packageInfo.applicationInfo.packageName);
                    localApplication.setApplicationVersionName(packageInfo.versionName);
                    m7019a(localApplication);
                    arrayList.add(localApplication);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    @SuppressLint({"HardwareIds", "MissingPermission"})
    /* renamed from: l */
    private static String m7051l() {
        return Build.VERSION.SDK_INT >= 26 ? Build.getSerial() : Build.SERIAL;
    }
}
