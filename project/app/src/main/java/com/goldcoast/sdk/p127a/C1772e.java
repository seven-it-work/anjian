package com.goldcoast.sdk.p127a;

import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.goldcoast.sdk.a.e */
/* loaded from: classes.dex */
public final class C1772e extends AbstractC1770c<C1772e> {

    /* renamed from: a */
    private String f6956a;

    /* renamed from: b */
    private String f6957b;

    /* renamed from: c */
    private String f6958c;

    /* renamed from: d */
    private String f6959d;

    /* renamed from: e */
    private String f6960e;

    /* renamed from: f */
    private String f6961f;

    /* renamed from: g */
    private String f6962g;

    /* renamed from: h */
    private String f6963h;

    /* renamed from: i */
    private String f6964i;

    /* renamed from: j */
    private String f6965j;

    /* renamed from: k */
    private String f6966k;

    /* renamed from: l */
    private String f6967l;

    /* renamed from: m */
    private String f6968m;

    /* renamed from: n */
    private String f6969n;

    /* renamed from: o */
    private String f6970o;

    /* renamed from: p */
    private String f6971p;

    /* renamed from: q */
    private String f6972q;

    /* renamed from: r */
    private String f6973r;

    /* renamed from: s */
    private String f6974s;

    /* renamed from: t */
    private String f6975t;

    /* renamed from: u */
    private String f6976u;

    /* renamed from: v */
    private String f6977v;

    /* renamed from: w */
    private String f6978w;

    /* renamed from: x */
    private String f6979x;

    /* renamed from: y */
    private String f6980y;

    public C1772e() {
    }

    public C1772e(Map<String, String> map) {
        Iterator<String> it = map.keySet().iterator();
        if (it == null || !it.hasNext()) {
            return;
        }
        while (it.hasNext()) {
            String next = it.next();
            if (next.equals("ro.product.brand")) {
                this.f6956a = map.get(next);
            } else if (next.equals("ro.product.name")) {
                this.f6957b = map.get(next);
            } else if (next.equals("ro.product.model")) {
                this.f6958c = map.get(next);
            } else if (next.equals("ro.build.fingerprint")) {
                this.f6959d = map.get(next);
            } else if (next.equals("ro.build.version.sdk")) {
                this.f6960e = map.get(next);
            } else if (next.equals("ro.build.version.release")) {
                this.f6961f = map.get(next);
            } else if (next.equals("ro.build.date")) {
                this.f6962g = map.get(next);
            } else if (next.equals("ro.build.date.utc")) {
                this.f6963h = map.get(next);
            } else if (next.equals("ro.boot.cpuid")) {
                this.f6964i = map.get(next);
            } else if (next.equals("ro.btconfig.vendor")) {
                this.f6965j = map.get(next);
            } else if (next.equals("persist.sys.timezone")) {
                this.f6966k = map.get(next);
            } else if (next.equals("persist.sys.country")) {
                this.f6967l = map.get(next);
            } else if (next.equals("persist.sys.language")) {
                this.f6968m = map.get(next);
            } else if (next.equals("persist.sys.dalvik.vm.lib")) {
                this.f6969n = map.get(next);
            } else if (next.equals("ro.build.description")) {
                this.f6970o = map.get(next);
            } else if (next.equals("ro.runtime.firstboot")) {
                this.f6971p = map.get(next);
            } else if (next.equals("ro.serialno")) {
                this.f6972q = map.get(next);
            } else if (next.equals("ro.hardware")) {
                this.f6973r = map.get(next);
            } else if (next.equals("ro.product.board")) {
                this.f6974s = map.get(next);
            } else if (next.equals("ro.product.locale.language")) {
                this.f6975t = map.get(next);
            } else if (next.equals("ro.product.locale.region")) {
                this.f6976u = map.get(next);
            } else if (next.equals("ro.product.cpu.abi")) {
                this.f6977v = map.get(next);
            } else if (next.equals("ro.board.platform")) {
                this.f6978w = map.get(next);
            } else if (next.equals("ro.build.selinux")) {
                this.f6979x = map.get(next);
            } else if (next.equals("ro.build.selinux.enforce")) {
                this.f6980y = map.get(next);
            }
        }
    }

    /* renamed from: a */
    public final JSONObject m8072a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ro.product.brand", this.f6956a);
            jSONObject.put("ro.product.name", this.f6957b);
            jSONObject.put("ro.product.model", this.f6958c);
            jSONObject.put("ro.build.fingerprint", this.f6959d);
            jSONObject.put("ro.build.version.sdk", this.f6960e);
            jSONObject.put("ro.build.version.release", this.f6961f);
            jSONObject.put("ro.build.date", this.f6962g);
            jSONObject.put("ro.build.date.utc", this.f6963h);
            jSONObject.put("ro.boot.cpuid", this.f6964i);
            jSONObject.put("ro.btconfig.vendor", this.f6965j);
            jSONObject.put("persist.sys.timezone", this.f6966k);
            jSONObject.put("persist.sys.country", this.f6967l);
            jSONObject.put("persist.sys.language", this.f6968m);
            jSONObject.put("persist.sys.dalvik.vm.lib", this.f6969n);
            jSONObject.put("ro.build.description", this.f6970o);
            jSONObject.put("ro.runtime.firstboot", this.f6971p);
            jSONObject.put("ro.serialno", this.f6972q);
            jSONObject.put("ro.hardware", this.f6973r);
            jSONObject.put("ro.product.board", this.f6974s);
            jSONObject.put("ro.product.locale.language", this.f6975t);
            jSONObject.put("ro.product.locale.region", this.f6976u);
            jSONObject.put("ro.product.cpu.abi", this.f6977v);
            jSONObject.put("ro.board.platform", this.f6978w);
            jSONObject.put("ro.build.selinux", this.f6979x);
            jSONObject.put("ro.build.selinux.enforce", this.f6980y);
            return jSONObject;
        } catch (JSONException e) {
            e.printStackTrace();
            return jSONObject;
        }
    }

    /* renamed from: b */
    public final String m8073b() {
        return this.f6963h;
    }
}
