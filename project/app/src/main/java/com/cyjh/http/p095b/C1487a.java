package com.cyjh.http.p095b;

import android.content.Context;
import android.text.TextUtils;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.util.C1162e;
import com.cyjh.common.util.C1165h;
import com.cyjh.common.util.C1175r;
import com.cyjh.http.bean.SignaClass;
import com.cyjh.http.bean.request.BaseRequestValueInfo;
import com.cyjh.http.bean.request.DeviceInfo;
import com.cyjh.http.bean.response.AliCloudServerResponse;
import com.cyjh.http.p094a.C1484c;
import com.cyjh.http.p104e.C1579a;
import com.cyjh.http.p104e.C1581c;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/* renamed from: com.cyjh.http.b.a */
/* loaded from: classes.dex */
public class C1487a {

    /* renamed from: b */
    public static long f5808b;

    /* renamed from: f */
    private static C1487a f5809f;

    /* renamed from: a */
    public Context f5810a;

    /* renamed from: c */
    public DeviceInfo f5811c = new DeviceInfo();

    /* renamed from: d */
    public AliCloudServerResponse f5812d;

    /* renamed from: e */
    public int f5813e;

    private C1487a() {
    }

    /* renamed from: a */
    public static C1487a m6886a() {
        if (f5809f == null) {
            synchronized (C1487a.class) {
                if (f5809f == null) {
                    f5809f = new C1487a();
                }
            }
        }
        return f5809f;
    }

    /* renamed from: a */
    private static String m6887a(String str, Object obj, int i) throws Exception {
        String m4523a = C1175r.m4523a(obj);
        return TextUtils.isEmpty(m4523a) ? "" : C1165h.m4426a(m4523a, C1581c.m7061a(str, i).getBytes());
    }

    /* renamed from: b */
    private Context m6888b() {
        return this.f5810a;
    }

    /* renamed from: c */
    private static int m6889c() {
        return new Random().nextInt(8);
    }

    /* renamed from: d */
    private boolean m6890d() {
        return this.f5813e == 1;
    }

    /* renamed from: a */
    public final Map<String, String> m6891a(String str, BaseRequestValueInfo baseRequestValueInfo) throws Exception {
        HashMap hashMap;
        synchronized (this) {
            SignaClass signaClass = new SignaClass();
            signaClass.SignContent = C1175r.m4523a(baseRequestValueInfo);
            signaClass.Signature = C1581c.m7060a(signaClass.SignContent);
            int nextInt = new Random().nextInt(8);
            String m4523a = C1175r.m4523a(signaClass);
            String m4426a = TextUtils.isEmpty(m4523a) ? "" : C1165h.m4426a(m4523a, C1581c.m7061a(str, nextInt).getBytes());
            hashMap = new HashMap();
            hashMap.put("Data", m4426a);
            hashMap.put("R", String.valueOf(nextInt));
            if (!TextUtils.isEmpty(C1132a.f3883b)) {
                hashMap.put("V", C1132a.f3883b);
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public final void m6892a(Context context) {
        this.f5810a = context.getApplicationContext();
    }

    /* renamed from: b */
    public final BaseRequestValueInfo m6893b(Context context) {
        BaseRequestValueInfo baseRequestValueInfo = new BaseRequestValueInfo();
        if (TextUtils.isEmpty(this.f5811c.DeviceCode) || TextUtils.isEmpty(this.f5811c.DeviceId)) {
            DeviceInfo m7032c = C1579a.m7032c(context);
            this.f5811c.DeviceId = m7032c.DeviceId;
            this.f5811c.DeviceCode = m7032c.DeviceCode;
        }
        baseRequestValueInfo.DeviceId = this.f5811c.DeviceId;
        baseRequestValueInfo.DeviceCode = this.f5811c.DeviceCode;
        baseRequestValueInfo.TemplateVersion = C1132a.m4198d();
        baseRequestValueInfo.AppId = C1132a.m4196c();
        baseRequestValueInfo.TemplateFileId = C1132a.m4194b();
        baseRequestValueInfo.AppVersion = C1162e.m4382b();
        baseRequestValueInfo.AppInfo = C1132a.m4202g();
        f5808b = System.currentTimeMillis() / 1000;
        baseRequestValueInfo.ClientTimestamp = f5808b;
        if (!TextUtils.isEmpty(C1132a.f3883b)) {
            baseRequestValueInfo.f5815V = C1132a.f3883b;
        }
        return baseRequestValueInfo;
    }

    /* renamed from: b */
    public final String m6894b(String str, BaseRequestValueInfo baseRequestValueInfo) {
        String stringBuffer;
        synchronized (this) {
            StringBuffer stringBuffer2 = new StringBuffer(str);
            try {
                stringBuffer2.append("?AppId=");
                stringBuffer2.append(baseRequestValueInfo.AppId);
                stringBuffer2.append("&AppVersion=");
                stringBuffer2.append(baseRequestValueInfo.AppVersion);
                stringBuffer2.append("&PlatformId=");
                stringBuffer2.append(C1484c.m6867a().f5794e);
            } catch (Exception e) {
                e.printStackTrace();
            }
            stringBuffer = stringBuffer2.toString();
        }
        return stringBuffer;
    }
}
