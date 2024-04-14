package com.cyjh.mobileanjian.ipc.log;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import com.cyjh.mobileanjian.ipc.utils.RomUtils;
import com.cyjh.mq.p110d.C1683e;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.commons.io.FileUtils;

/* renamed from: com.cyjh.mobileanjian.ipc.log.b */
/* loaded from: classes.dex */
public final class C1591b {

    /* renamed from: n */
    private static C1591b f5988n = null;

    /* renamed from: o */
    private static final File f5989o = new File(Environment.getExternalStorageDirectory(), ".oldmarkuser");

    /* renamed from: p */
    private static final String f5990p = "com.cyjh.mobileanjian";

    /* renamed from: a */
    public final String f5991a;

    /* renamed from: b */
    public final String f5992b = Build.VERSION.RELEASE;

    /* renamed from: c */
    public final String f5993c;

    /* renamed from: d */
    public final String f5994d;

    /* renamed from: e */
    public final String f5995e;

    /* renamed from: f */
    public final String f5996f;

    /* renamed from: g */
    public final String f5997g;

    /* renamed from: h */
    public final String f5998h;

    /* renamed from: i */
    public final boolean f5999i;

    /* renamed from: j */
    public final String f6000j;

    /* renamed from: k */
    public final String f6001k;

    /* renamed from: l */
    public final boolean f6002l;

    /* renamed from: m */
    public final boolean f6003m;

    private C1591b(Context context, String str, String str2) {
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
        this.f5993c = m7153a((connectionInfo == null || connectionInfo.getMacAddress() == null) ? "UNKNOWN" : connectionInfo.getMacAddress());
        this.f5994d = RomUtils.getKnownRomVersion();
        this.f5991a = RomUtils.isEmulator() ? this.f5994d : String.format("%s %s", Build.BRAND, Build.MODEL);
        this.f5997g = C1683e.m7698a(context);
        this.f6001k = C1683e.m7699b(context);
        this.f5996f = context.getPackageName();
        this.f6003m = "com.cyjh.mobileanjian".equals(this.f5996f);
        this.f5999i = false;
        this.f5998h = str;
        this.f6000j = str2;
        boolean z = !f5989o.exists();
        this.f6002l = z;
        if (z) {
            try {
                f5989o.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        String str3 = null;
        try {
            File file = new File("/proc/version");
            if (file.exists() && file.canRead()) {
                str3 = FileUtils.readFileToString(file);
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        this.f5995e = TextUtils.isEmpty(str3) ? "Unknown" : str3;
    }

    /* renamed from: a */
    public static C1591b m7151a() {
        return f5988n;
    }

    /* renamed from: a */
    private static String m7152a(Context context) {
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
        return (connectionInfo == null || connectionInfo.getMacAddress() == null) ? "UNKNOWN" : connectionInfo.getMacAddress();
    }

    /* renamed from: a */
    private static final String m7153a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                String hexString = Integer.toHexString(b2 & 255);
                while (hexString.length() < 2) {
                    hexString = "0" + hexString;
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return str;
        }
    }

    /* renamed from: a */
    public static void m7154a(Context context, String str, String str2) {
        if (f5988n != null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        C1591b c1591b = new C1591b(context, str, str2);
        f5988n = c1591b;
        c1591b.toString();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("手机型号: ");
        sb.append(this.f5991a);
        sb.append("\nLinux: ");
        sb.append(this.f5995e);
        sb.append("\nMAC的MD5: ");
        sb.append(this.f5993c);
        sb.append("\n安卓版本: ");
        sb.append(this.f5992b);
        sb.append("\n定制安卓: ");
        sb.append(this.f5994d);
        sb.append("\n应用名称: ");
        sb.append(this.f5997g);
        sb.append("\n应用包名: ");
        sb.append(this.f5996f);
        sb.append("\n应用版本: ");
        sb.append(this.f6001k);
        sb.append("\n唯一标识: ");
        sb.append(this.f5998h);
        sb.append("\n精灵版本: ");
        sb.append(this.f6000j);
        sb.append("\n产品形态: UNKNOWN\n是否付费: ");
        sb.append(this.f5999i ? "免费" : "收费");
        sb.append("\n");
        return sb.toString();
    }
}
