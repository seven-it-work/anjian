package com.cyjh.http.p094a;

import android.content.Context;
import android.text.TextUtils;
import com.cyjh.common.util.C1151ad;
import com.cyjh.http.bean.response.PhoneConfig;
import com.cyjh.http.p104e.C1579a;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.cyjh.http.a.c */
/* loaded from: classes.dex */
public class C1484c {

    /* renamed from: a */
    public static int f5788a = 1;

    /* renamed from: b */
    public static int f5789b = 2;

    /* renamed from: c */
    public static int f5790c = 1;

    /* renamed from: d */
    public static int f5791d = 0;

    /* renamed from: f */
    private static String f5792f = "c";

    /* renamed from: g */
    private static C1484c f5793g;

    /* renamed from: e */
    public int f5794e;

    private C1484c() {
    }

    /* renamed from: a */
    public static C1484c m6867a() {
        if (f5793g == null) {
            synchronized (C1484c.class) {
                if (f5793g == null) {
                    f5793g = new C1484c();
                }
            }
        }
        return f5793g;
    }

    /* renamed from: a */
    private static boolean m6868a(Context context, int i, String[] strArr) {
        boolean z;
        C1151ad.m4325c(f5792f, "getRecognitionResult --> mode=" + i);
        if (strArr != null) {
            boolean z2 = true;
            boolean z3 = false;
            z = false;
            for (String str : strArr) {
                boolean m7022a = C1579a.m7022a(context, str);
                C1151ad.m4325c(f5792f, "getRecognitionResult --> packageName=" + str + ",isInstall=" + m7022a);
                if (i == f5788a) {
                    z2 &= m7022a;
                    z = z2;
                } else if (i == f5789b) {
                    z3 |= m7022a;
                    z = z3;
                }
                if (!z2 || z3) {
                    break;
                }
            }
        } else {
            z = false;
        }
        C1151ad.m4325c(f5792f, "getRecognitionResult --> result=" + z);
        return z;
    }

    /* renamed from: a */
    private static String[] m6869a(String str) {
        C1151ad.m4325c(f5792f, "getPackageArr --> packageNames=" + str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.contains(",") ? str.split(",") : new String[]{str};
    }

    /* renamed from: b */
    private int m6870b() {
        return this.f5794e;
    }

    /* renamed from: a */
    public final PhoneConfig m6871a(Context context, List<PhoneConfig> list) {
        Iterator<PhoneConfig> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            PhoneConfig next = it.next();
            int judgeMode = next.getJudgeMode();
            String str = next.getPackage();
            C1151ad.m4325c(f5792f, "getPackageArr --> packageNames=" + str);
            boolean m6868a = m6868a(context, judgeMode, !TextUtils.isEmpty(str) ? str.contains(",") ? str.split(",") : new String[]{str} : null);
            C1151ad.m4325c(f5792f, "init --> recognitionResult=" + m6868a);
            if (m6868a) {
                this.f5794e = next.getCloudPhoneType();
                if (next.getActive() == f5791d) {
                    return next;
                }
            }
        }
        return null;
    }
}
