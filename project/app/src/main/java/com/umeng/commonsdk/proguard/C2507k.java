package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.umeng.commonsdk.statistics.common.C2536e;

/* renamed from: com.umeng.commonsdk.proguard.k */
/* loaded from: classes.dex */
public class C2507k {

    /* renamed from: b */
    private static final String f9427b = "BaseStationUtils";

    /* renamed from: c */
    private static boolean f9428c;

    /* renamed from: d */
    private static Context f9429d;

    /* renamed from: a */
    PhoneStateListener f9430a;

    /* renamed from: e */
    private TelephonyManager f9431e;

    /* renamed from: com.umeng.commonsdk.proguard.k$a */
    /* loaded from: classes.dex */
    private static class a {

        /* renamed from: a */
        private static final C2507k f9433a = new C2507k(C2507k.f9429d);

        private a() {
        }
    }

    private C2507k(Context context) {
        this.f9430a = new PhoneStateListener() { // from class: com.umeng.commonsdk.proguard.k.1
            /* JADX WARN: Removed duplicated region for block: B:13:0x00e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // android.telephony.PhoneStateListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void onSignalStrengthsChanged(android.telephony.SignalStrength r8) {
                /*
                    Method dump skipped, instructions count: 279
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.proguard.C2507k.AnonymousClass1.onSignalStrengthsChanged(android.telephony.SignalStrength):void");
            }
        };
        if (context != null) {
            try {
                this.f9431e = (TelephonyManager) context.getSystemService("phone");
            } catch (Throwable unused) {
            }
        }
    }

    /* renamed from: a */
    public static C2507k m10953a(Context context) {
        if (f9429d == null && context != null) {
            f9429d = context.getApplicationContext();
        }
        return a.f9433a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public String m10956e() {
        String str;
        try {
            String simOperator = ((TelephonyManager) f9429d.getSystemService("phone")).getSimOperator();
            if (!TextUtils.isEmpty(simOperator)) {
                if (!simOperator.equals("46000") && !simOperator.equals("46002")) {
                    if (simOperator.equals("46001")) {
                        str = "中国联通";
                    } else if (simOperator.equals("46003")) {
                        str = "中国电信";
                    }
                    return str;
                }
                str = "中国移动";
                return str;
            }
        } catch (Throwable th) {
            C2501e.m10904a(f9429d, th);
        }
        return null;
    }

    /* renamed from: a */
    public synchronized boolean m10957a() {
        return f9428c;
    }

    /* renamed from: b */
    public synchronized void m10958b() {
        C2536e.m11341c(f9427b, "base station registerListener");
        try {
            if (this.f9431e != null) {
                this.f9431e.listen(this.f9430a, 256);
            }
            f9428c = true;
        } catch (Throwable th) {
            C2501e.m10904a(f9429d, th);
        }
    }

    /* renamed from: c */
    public synchronized void m10959c() {
        C2536e.m11341c(f9427b, "base station unRegisterListener");
        try {
            if (this.f9431e != null) {
                this.f9431e.listen(this.f9430a, 0);
            }
            f9428c = false;
        } catch (Throwable th) {
            C2501e.m10904a(f9429d, th);
        }
    }
}
