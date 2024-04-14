package com.goldcoast.sdk.p127a;

import android.os.Build;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.goldcoast.sdk.a.f */
/* loaded from: classes.dex */
public final class C1773f extends AbstractC1770c<C1773f> {

    /* renamed from: a */
    private String f6981a;

    /* renamed from: b */
    private String f6982b;

    /* renamed from: c */
    private String f6983c;

    /* renamed from: d */
    private String f6984d;

    /* renamed from: e */
    private String f6985e;

    public C1773f() {
    }

    public C1773f(String[] strArr) {
        if (strArr != null) {
            Map m8074a = m8074a(strArr);
            Iterator it = m8074a.keySet().iterator();
            if (it == null || !it.hasNext()) {
                return;
            }
            while (it.hasNext()) {
                String str = (String) it.next();
                if (str.equals(".vendor")) {
                    this.f6981a = (String) m8074a.get(str);
                } else if (str.equals(".product")) {
                    this.f6982b = (String) m8074a.get(str);
                } else if (str.equals(".uname_r")) {
                    this.f6983c = (String) m8074a.get(str);
                } else if (str.equals(".uname_v")) {
                    this.f6984d = (String) m8074a.get(str);
                }
            }
        }
    }

    /* renamed from: a */
    private static Map m8074a(String[] strArr) {
        HashMap hashMap = new HashMap();
        for (String str : strArr) {
            try {
                if (str.contains("=")) {
                    String[] split = str.split("=");
                    hashMap.put(split[0].trim(), split[1].trim());
                }
            } catch (Exception unused) {
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static String[] m8075a() {
        String[] strArr = new String[4];
        strArr[0] = ".vendor=" + Build.BRAND;
        strArr[1] = ".product=" + Build.MODEL;
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/version"), 8192);
            String readLine = bufferedReader.readLine();
            String[] split = readLine.split("\\s+");
            strArr[2] = ".uname_v=" + readLine.substring(readLine.lastIndexOf("#"), readLine.length());
            strArr[3] = ".uname_r=" + split[2];
            bufferedReader.close();
        } catch (IOException unused) {
        }
        return strArr;
    }

    /* renamed from: a */
    public final void m8076a(String str) {
        this.f6985e = str;
    }

    /* renamed from: b */
    public final JSONObject m8077b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(".vendor", this.f6981a);
            jSONObject.put(".product", this.f6982b);
            jSONObject.put(".uname_r", this.f6983c);
            jSONObject.put(".uname_v", this.f6984d);
            jSONObject.put(".uname_v_utc", this.f6985e);
            return jSONObject;
        } catch (JSONException e) {
            e.printStackTrace();
            return jSONObject;
        }
    }
}
