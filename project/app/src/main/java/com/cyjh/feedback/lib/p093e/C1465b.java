package com.cyjh.feedback.lib.p093e;

import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

/* renamed from: com.cyjh.feedback.lib.e.b */
/* loaded from: classes.dex */
public final class C1465b {

    /* renamed from: a */
    private final Properties f5680a = new Properties();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1465b() throws IOException {
        this.f5680a.load(new FileInputStream(new File(Environment.getRootDirectory(), "build.prop")));
    }

    /* renamed from: a */
    private Set<Map.Entry<Object, Object>> m6791a() {
        return this.f5680a.entrySet();
    }

    /* renamed from: a */
    private boolean m6792a(Object obj) {
        return this.f5680a.containsKey(obj);
    }

    /* renamed from: b */
    private String m6793b(String str) {
        return this.f5680a.getProperty(str);
    }

    /* renamed from: b */
    private boolean m6794b() {
        return this.f5680a.isEmpty();
    }

    /* renamed from: b */
    private boolean m6795b(Object obj) {
        return this.f5680a.containsValue(obj);
    }

    /* renamed from: c */
    private Enumeration<Object> m6796c() {
        return this.f5680a.keys();
    }

    /* renamed from: d */
    private Set<Object> m6797d() {
        return this.f5680a.keySet();
    }

    /* renamed from: e */
    private int m6798e() {
        return this.f5680a.size();
    }

    /* renamed from: f */
    private Collection<Object> m6799f() {
        return this.f5680a.values();
    }

    /* renamed from: g */
    private static C1465b m6800g() throws IOException {
        return new C1465b();
    }

    /* renamed from: a */
    public final String m6801a(String str) {
        return this.f5680a.getProperty(str, null);
    }
}
