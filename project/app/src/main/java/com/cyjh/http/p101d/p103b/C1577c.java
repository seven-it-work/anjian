package com.cyjh.http.p101d.p103b;

import android.content.Context;
import android.util.Log;
import com.android.volley.AbstractC0599l;
import com.android.volley.C0600m;
import com.android.volley.toolbox.C0629t;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.cyjh.http.d.b.c */
/* loaded from: classes.dex */
public final class C1577c {

    /* renamed from: a */
    public static final String f5880a = "VollerHttpManager";

    /* renamed from: c */
    private static C1577c f5881c;

    /* renamed from: b */
    public C0600m f5882b;

    /* renamed from: d */
    private Map<Context, HashSet<AbstractC0599l>> f5883d = new HashMap();

    private C1577c() {
    }

    /* renamed from: a */
    public static C1577c m7005a() {
        if (f5881c == null) {
            f5881c = new C1577c();
        }
        return f5881c;
    }

    /* renamed from: a */
    private void m7006a(Context context) {
        if (this.f5882b == null) {
            this.f5882b = C0629t.m1518a(context);
        }
    }

    /* renamed from: a */
    private void m7007a(Object obj, AbstractC0599l abstractC0599l) {
        if (this.f5882b == null) {
            Log.i(f5880a, "你应该在 application中初始化队列");
            return;
        }
        m7010a(obj);
        abstractC0599l.f1262l = obj;
        this.f5882b.m1399a(abstractC0599l);
        this.f5882b.m1400a();
    }

    /* renamed from: b */
    private void m7008b(Context context) {
        if (this.f5882b == null) {
            Log.i(f5880a, "你应该在 application中初始化队列");
            return;
        }
        HashSet<AbstractC0599l> hashSet = this.f5883d.get(context);
        if (hashSet != null) {
            Iterator<AbstractC0599l> it = hashSet.iterator();
            while (it.hasNext()) {
                this.f5882b.m1401a(it.next().f1262l);
            }
        }
    }

    /* renamed from: a */
    public final void m7009a(Context context, Object obj, AbstractC0599l abstractC0599l) {
        if (this.f5882b == null) {
            Log.i(f5880a, "你应该在 application中初始化队列");
            return;
        }
        if (context != null) {
            HashSet<AbstractC0599l> hashSet = this.f5883d.get(context);
            if (hashSet == null) {
                hashSet = new HashSet<>();
            }
            hashSet.add(abstractC0599l);
        }
        m7010a(obj);
        abstractC0599l.f1262l = obj;
        this.f5882b.m1399a(abstractC0599l);
    }

    /* renamed from: a */
    public final void m7010a(Object obj) {
        if (this.f5882b != null) {
            this.f5882b.m1401a(obj);
        } else {
            Log.i(f5880a, "你应该在 application中初始化队列");
        }
    }
}
