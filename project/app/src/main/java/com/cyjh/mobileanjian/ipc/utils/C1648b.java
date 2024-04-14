package com.cyjh.mobileanjian.ipc.utils;

import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

/* renamed from: com.cyjh.mobileanjian.ipc.utils.b */
/* loaded from: classes.dex */
public final class C1648b {

    /* renamed from: a */
    private final Properties f6392a = new Properties();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1648b() {
        try {
            this.f6392a.load(new FileInputStream(new File(Environment.getRootDirectory(), "build.prop")));
        } catch (IOException unused) {
        }
    }

    /* renamed from: a */
    private Set<Map.Entry<Object, Object>> m7468a() {
        return this.f6392a.entrySet();
    }

    /* renamed from: b */
    private boolean m7469b() {
        return this.f6392a.isEmpty();
    }

    /* renamed from: b */
    private boolean m7470b(Object obj) {
        return this.f6392a.containsValue(obj);
    }

    /* renamed from: c */
    private Enumeration<Object> m7471c() {
        return this.f6392a.keys();
    }

    /* renamed from: d */
    private Set<Object> m7472d() {
        return this.f6392a.keySet();
    }

    /* renamed from: e */
    private int m7473e() {
        return this.f6392a.size();
    }

    /* renamed from: f */
    private Collection<Object> m7474f() {
        return this.f6392a.values();
    }

    /* renamed from: g */
    private static C1648b m7475g() {
        return new C1648b();
    }

    /* renamed from: a */
    public final String m7476a(String str) {
        return this.f6392a.getProperty(str);
    }

    /* renamed from: a */
    public final String m7477a(String str, String str2) {
        return this.f6392a.getProperty(str, str2);
    }

    /* renamed from: a */
    public final boolean m7478a(Object obj) {
        return this.f6392a.containsKey(obj);
    }
}
