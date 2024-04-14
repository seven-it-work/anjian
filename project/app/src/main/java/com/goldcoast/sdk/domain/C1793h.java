package com.goldcoast.sdk.domain;

import android.os.ConditionVariable;
import android.text.TextUtils;
import com.goldcoast.sdk.p129c.C1777a;
import com.goldcoast.sdk.p129c.C1783g;
import com.p021b.p022a.C0746as;
import com.p021b.p022a.InterfaceC0758h;
import java.io.IOException;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.goldcoast.sdk.domain.h */
/* loaded from: classes.dex */
public final class C1793h implements InterfaceC0758h {

    /* renamed from: a */
    final /* synthetic */ int f7069a;

    /* renamed from: b */
    final /* synthetic */ String f7070b;

    /* renamed from: c */
    final /* synthetic */ ConditionVariable f7071c;

    /* renamed from: d */
    final /* synthetic */ int f7072d;

    /* renamed from: e */
    final /* synthetic */ EntryPoint f7073e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1793h(EntryPoint entryPoint, int i, String str, ConditionVariable conditionVariable, int i2) {
        this.f7073e = entryPoint;
        this.f7069a = i;
        this.f7070b = str;
        this.f7071c = conditionVariable;
        this.f7072d = i2;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00b1 -> B:25:0x0046). Please submit an issue!!! */
    @Override // com.p021b.p022a.InterfaceC0758h
    /* renamed from: a */
    public final void mo1958a(C0746as c0746as) {
        String str;
        String m1940d = c0746as.m1919e().m1940d();
        HashMap hashMap = new HashMap();
        C1783g.m8120a();
        C1783g.m8123b("######\n" + String.format("<feedBackP.Enc>:%s\n", m1940d));
        if (TextUtils.isEmpty(m1940d) && this.f7069a == 1) {
            hashMap.put("message", "response is null");
        } else {
            try {
                str = C1777a.m8097b(new JSONObject(m1940d).optString("body", ""));
            } catch (JSONException e) {
                hashMap.put("message", this.f7073e.getStackString(e));
                str = null;
            }
            if (!TextUtils.isEmpty(str) || c0746as.m1916b() == 200 || this.f7069a != 1) {
                try {
                    if (new JSONObject(str).optString("code", "").equals("200")) {
                        if (this.f7069a == 2) {
                            EntryPoint.m8136a(this.f7072d);
                        }
                    } else if (this.f7069a == 1) {
                        EntryPoint.m8141a(this.f7070b);
                        hashMap.put("message", "code not equals 200");
                    }
                } catch (Exception e2) {
                    hashMap.put("stack", this.f7073e.getStackString(e2));
                }
                this.f7071c.open();
            }
        }
        EntryPoint.m8141a(this.f7070b);
        this.f7071c.open();
    }

    @Override // com.p021b.p022a.InterfaceC0758h
    /* renamed from: a */
    public final void mo1959a(IOException iOException) {
        new HashMap();
        if (this.f7069a == 1) {
            EntryPoint.m8141a(this.f7070b);
        }
        this.f7073e.m8152b(this.f7073e.getStackString(iOException), 3);
        this.f7071c.open();
    }
}
