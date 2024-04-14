package com.umeng.commonsdk.amap;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.C2536e;
import com.umeng.commonsdk.statistics.common.MLog;
import java.lang.reflect.Method;

/* renamed from: com.umeng.commonsdk.amap.a */
/* loaded from: classes.dex */
public class C2448a {

    /* renamed from: a */
    private Context f9183a;

    /* renamed from: b */
    private Class<?> f9184b;

    /* renamed from: c */
    private Object f9185c;

    public C2448a(Context context) {
        C2536e.m11329a("ContentValues", "new UMAmapLocation");
        if (context == null) {
            MLog.m11269e("Context参数不能为null");
            return;
        }
        this.f9183a = context.getApplicationContext();
        try {
            this.f9184b = Class.forName("com.amap.api.netlocation.AMapNetworkLocationClient");
            if (this.f9184b != null) {
                this.f9185c = this.f9184b.getConstructor(Context.class).newInstance(this.f9183a);
            }
        } catch (Exception e) {
            C2536e.m11329a("ContentValues", "new UMAmapLocation e is " + e);
        }
    }

    /* renamed from: a */
    public Class<?> m10637a() {
        return this.f9184b;
    }

    /* renamed from: b */
    public synchronized byte[] m10638b() {
        byte[] bArr;
        Method method;
        C2536e.m11329a("ContentValues", "UMAmapLocation getNetworkLocationParameter");
        bArr = null;
        try {
            if (this.f9184b != null && this.f9185c != null && (method = this.f9184b.getMethod("getNetworkLocationParameter", new Class[0])) != null) {
                bArr = (byte[]) method.invoke(this.f9185c, new Object[0]);
            }
        } catch (Exception e) {
            C2536e.m11329a("ContentValues", "getNetworkLocationParameter e is " + e);
        }
        return bArr;
    }

    /* renamed from: c */
    public synchronized void m10639c() {
        Method method;
        C2536e.m11329a("ContentValues", "UMAmapLocation destory");
        try {
            if (this.f9184b != null && this.f9185c != null && (method = this.f9184b.getMethod("destroy", new Class[0])) != null) {
                method.invoke(this.f9185c, new Object[0]);
            }
        } catch (Exception e) {
            C2536e.m11329a("ContentValues", "UMAmapLocation destory e is " + e);
        }
    }
}
