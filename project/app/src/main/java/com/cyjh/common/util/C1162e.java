package com.cyjh.common.util;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.media.projection.MediaProjectionManager;
import android.os.Build;
import android.os.Environment;
import android.support.annotation.RequiresApi;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.google.p130a.p137c.C1867l;
import com.lidroid.xutils.util.CharsetUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;

/* renamed from: com.cyjh.common.util.e */
/* loaded from: classes.dex */
public class C1162e {

    /* renamed from: a */
    private static final String f4071a = "e";

    /* renamed from: b */
    private static int f4072b = 1000;

    /* renamed from: a */
    public static File m4367a(String str, String str2) {
        File file;
        File file2 = null;
        try {
            File file3 = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + str);
            if (!file3.exists()) {
                file3.mkdirs();
            }
            file = new File(file3, str2);
        } catch (IOException e) {
            e = e;
        }
        try {
            if (file.exists()) {
                return file;
            }
            file.createNewFile();
            return file;
        } catch (IOException e2) {
            file2 = file;
            e = e2;
            e.printStackTrace();
            return file2;
        }
    }

    /* renamed from: a */
    public static String m4368a() {
        return C1171n.m4464b(m4367a(InterfaceC1133a.f3931aF, InterfaceC1133a.f3939aN));
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x004a: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:29:0x004a */
    /* JADX WARN: Removed duplicated region for block: B:32:0x004d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String m4369a(int r5) {
        /*
            r0 = 0
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            java.lang.String r4 = "/proc/"
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            r3.append(r5)     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            java.lang.String r5 = "/cmdline"
            r3.append(r5)     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            java.lang.String r5 = r3.toString()     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            java.lang.String r5 = r1.readLine()     // Catch: java.lang.Throwable -> L35 java.lang.Throwable -> L49
            boolean r2 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L35 java.lang.Throwable -> L49
            if (r2 != 0) goto L2c
            java.lang.String r5 = r5.trim()     // Catch: java.lang.Throwable -> L35 java.lang.Throwable -> L49
        L2c:
            r1.close()     // Catch: java.io.IOException -> L30
            return r5
        L30:
            r0 = move-exception
            r0.printStackTrace()
            return r5
        L35:
            r5 = move-exception
            goto L3b
        L37:
            r5 = move-exception
            goto L4b
        L39:
            r5 = move-exception
            r1 = r0
        L3b:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L49
            if (r1 == 0) goto L48
            r1.close()     // Catch: java.io.IOException -> L44
            return r0
        L44:
            r5 = move-exception
            r5.printStackTrace()
        L48:
            return r0
        L49:
            r5 = move-exception
            r0 = r1
        L4b:
            if (r0 == 0) goto L55
            r0.close()     // Catch: java.io.IOException -> L51
            goto L55
        L51:
            r0 = move-exception
            r0.printStackTrace()
        L55:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.common.util.C1162e.m4369a(int):java.lang.String");
    }

    /* renamed from: a */
    public static String m4370a(Context context) {
        try {
            File m4399i = m4399i(context);
            r0 = m4399i.exists() ? m4371a(m4399i) : null;
            if (r0 == null) {
                String str = Build.BRAND + UUID.randomUUID().toString().substring(0, 8);
                try {
                    m4376a(m4399i, str, false);
                    return str;
                } catch (Exception e) {
                    e = e;
                    r0 = str;
                    e.printStackTrace();
                    return r0;
                }
            }
        } catch (Exception e2) {
            e = e2;
        }
        return r0;
    }

    /* renamed from: a */
    private static String m4371a(File file) {
        try {
            ArrayList arrayList = new ArrayList();
            FileInputStream fileInputStream = new FileInputStream(file);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                arrayList.add(readLine);
            }
            fileInputStream.close();
            if (arrayList.size() > 0) {
                return (String) arrayList.get(0);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    /* renamed from: a */
    public static String m4372a(String str) {
        try {
            if (str.equals(new String(str.getBytes(C1867l.f7317b), C1867l.f7317b))) {
                return C1867l.f7317b;
            }
        } catch (Exception unused) {
        }
        try {
            if (str.equals(new String(str.getBytes(CharsetUtils.DEFAULT_ENCODING_CHARSET), CharsetUtils.DEFAULT_ENCODING_CHARSET))) {
                return CharsetUtils.DEFAULT_ENCODING_CHARSET;
            }
        } catch (Exception unused2) {
        }
        try {
            if (str.equals(new String(str.getBytes("UTF-8"), "UTF-8"))) {
                return "UTF-8";
            }
        } catch (Exception unused3) {
        }
        try {
            return str.equals(new String(str.getBytes("GBK"), "GBK")) ? "GBK" : "";
        } catch (Exception unused4) {
            return "";
        }
    }

    /* renamed from: a */
    public static List<String> m4373a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null && jSONArray.length() > 0) {
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    arrayList.add((String) jSONArray.get(i));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m4374a(Activity activity, int i) {
        BitmapFactory.decodeResource(activity.getResources(), i);
        activity.getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
    }

    /* renamed from: a */
    public static void m4375a(Context context, boolean z) {
        boolean z2;
        String packageName = context.getPackageName();
        String m4368a = m4368a();
        Log.i("jason", "operateElfinPackageNames --> isAdd=" + z + ",elfinFreePackageNames=" + m4368a);
        if (z) {
            if (TextUtils.isEmpty(m4368a)) {
                m4377a(packageName, true);
                return;
            } else {
                if (m4368a.contains(packageName)) {
                    return;
                }
                m4377a("," + packageName, true);
                return;
            }
        }
        String str = "," + packageName;
        String str2 = packageName + ",";
        if (TextUtils.isEmpty(m4368a)) {
            return;
        }
        if (m4368a.contains(str)) {
            m4368a = m4368a.replace(str, "");
            z2 = true;
        } else {
            z2 = false;
        }
        if (m4368a.contains(str2)) {
            m4368a = m4368a.replace(str2, "");
            z2 = true;
        }
        if (m4368a.contains(packageName)) {
            m4368a = m4368a.replace(packageName, "");
            z2 = true;
        }
        if (z2) {
            Log.i("jason", "operateElfinPackageNames --> hasReplace=true, result=" + m4368a);
            m4377a(m4368a, false);
        }
    }

    /* renamed from: a */
    private static void m4376a(File file, String str, boolean z) {
        try {
            if (!file.exists()) {
                file.createNewFile();
            }
            try {
                FileWriter fileWriter = new FileWriter(file, z);
                fileWriter.write(str);
                fileWriter.flush();
                fileWriter.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m4377a(String str, boolean z) {
        File m4367a = m4367a(InterfaceC1133a.f3931aF, InterfaceC1133a.f3939aN);
        if (z) {
            C1171n.m4467b(m4367a, str, "UTF-8");
        } else {
            C1171n.m4462a(m4367a, str, "UTF-8");
        }
    }

    /* renamed from: a */
    public static boolean m4378a(Context context, String str) {
        try {
            m4376a(m4399i(context), str, false);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m4379a(Context context, String str, String str2) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str2);
            InputStream open = context.getAssets().open(str);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = open.read(bArr);
                if (read <= 0) {
                    fileOutputStream.flush();
                    open.close();
                    fileOutputStream.close();
                    return true;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (Exception e) {
            C1151ad.m4325c(f4071a, "copyAssetsFile --> e =" + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m4380a(Bitmap bitmap, String str) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: b */
    public static File m4381b(Context context) {
        return m4395e() ? new File(Environment.getExternalStorageDirectory(), ".elfinError") : new File(context.getFilesDir(), ".elfinError");
    }

    /* renamed from: b */
    public static String m4382b() {
        String str;
        String m4191a = C1132a.m4191a();
        String m4337b = C1153af.m4332a().m4337b();
        if (!TextUtils.isEmpty(m4337b)) {
            try {
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (Long.valueOf(Long.parseLong(m4337b)).longValue() >= Long.valueOf(Long.parseLong(m4191a)).longValue()) {
                str = m4337b;
                C1151ad.m4324b("saveVersion ", "ownVersion:" + m4191a + " saveVersion:" + m4337b + "  get appVersion:" + str);
                return str;
            }
        }
        str = m4191a;
        C1151ad.m4324b("saveVersion ", "ownVersion:" + m4191a + " saveVersion:" + m4337b + "  get appVersion:" + str);
        return str;
    }

    /* renamed from: b */
    private static String m4383b(String str) {
        return str == null ? "" : str;
    }

    /* renamed from: b */
    private static String m4384b(String str, String str2) {
        if (TextUtils.isEmpty(null)) {
            str2 = "UTF-8";
        }
        try {
            return Base64.encodeToString(str.getBytes(str2), 2);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: b */
    private static void m4385b(File file, String str, boolean z) {
        try {
            FileWriter fileWriter = new FileWriter(file, z);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static Point m4386c(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    /* renamed from: c */
    private static String m4387c() {
        return UUID.randomUUID().toString();
    }

    /* renamed from: c */
    private static String m4388c(String str) {
        return m4384b(str, null);
    }

    /* renamed from: c */
    private static String m4389c(String str, String str2) {
        if (TextUtils.isEmpty(null)) {
            str2 = "UTF-8";
        }
        try {
            return new String(Base64.decode(str, 2), str2);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: d */
    private static String m4390d() {
        return Build.VERSION.RELEASE;
    }

    /* renamed from: d */
    private static String m4391d(String str) {
        return m4389c(str, null);
    }

    /* renamed from: d */
    private static boolean m4392d(Context context) {
        try {
            File file = m4395e() ? new File(Environment.getExternalStorageDirectory(), ".userMark") : new File(context.getFilesDir(), ".userMark");
            if (file.exists()) {
                return false;
            }
            file.createNewFile();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: e */
    private static File m4393e(Context context) {
        return m4395e() ? new File(Environment.getExternalStorageDirectory(), ".userMark") : new File(context.getFilesDir(), ".userMark");
    }

    /* renamed from: e */
    private static String m4394e(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (i != charArray.length - 1) {
                stringBuffer.append((int) charArray[i]);
                stringBuffer.append(",");
            } else {
                stringBuffer.append((int) charArray[i]);
            }
        }
        return stringBuffer.toString();
    }

    /* renamed from: e */
    private static boolean m4395e() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    /* renamed from: f */
    private static boolean m4396f(Context context) {
        try {
            File file = new File(context.getFilesDir(), ".stopScriptTips");
            if (file.exists()) {
                return false;
            }
            file.createNewFile();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    /* renamed from: g */
    private static File m4397g(Context context) {
        return m4395e() ? new File(Environment.getExternalStorageDirectory(), ".deviceInfo") : new File(context.getFilesDir(), ".deviceInfo");
    }

    /* renamed from: h */
    private static String m4398h(Context context) {
        try {
            File file = m4395e() ? new File(Environment.getExternalStorageDirectory(), ".deviceInfo") : new File(context.getFilesDir(), ".deviceInfo");
            r0 = file.exists() ? m4371a(file) : null;
            if (r0 == null) {
                String uuid = UUID.randomUUID().toString();
                try {
                    m4376a(file, uuid, true);
                    return uuid;
                } catch (Exception e) {
                    e = e;
                    r0 = uuid;
                    e.printStackTrace();
                    return r0;
                }
            }
        } catch (Exception e2) {
            e = e2;
        }
        return r0;
    }

    /* renamed from: i */
    private static File m4399i(Context context) {
        return m4395e() ? new File(Environment.getExternalStorageDirectory(), ".elfinDevice") : new File(context.getFilesDir(), ".elfinDevice");
    }

    /* renamed from: j */
    private static File m4400j(Context context) {
        return m4395e() ? new File(Environment.getExternalStorageDirectory(), "elfinParams.txt") : new File(context.getFilesDir(), "elfinParams.txt");
    }

    @RequiresApi(api = 21)
    /* renamed from: k */
    private static MediaProjectionManager m4401k(Context context) {
        MediaProjectionManager mediaProjectionManager = (MediaProjectionManager) context.getSystemService("media_projection");
        ((Activity) context).startActivityForResult(mediaProjectionManager.createScreenCaptureIntent(), f4072b);
        return mediaProjectionManager;
    }

    /* renamed from: l */
    private static int m4402l(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    /* renamed from: m */
    private static int m4403m(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    /* renamed from: n */
    private static int m4404n(Context context) {
        return (int) context.getResources().getDisplayMetrics().density;
    }
}
