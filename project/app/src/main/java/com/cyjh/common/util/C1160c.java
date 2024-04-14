package com.cyjh.common.util;

import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

/* renamed from: com.cyjh.common.util.c */
/* loaded from: classes.dex */
public final class C1160c {

    /* renamed from: a */
    private final Properties f4070a = new Properties();

    private C1160c() throws IOException {
        this.f4070a.load(new FileInputStream(new File(Environment.getRootDirectory(), "build.prop")));
    }

    /* renamed from: a */
    private String m4354a(String str) {
        return this.f4070a.getProperty(str);
    }

    /* renamed from: a */
    private String m4355a(String str, String str2) {
        return this.f4070a.getProperty(str, str2);
    }

    /* renamed from: a */
    private Set<Map.Entry<Object, Object>> m4356a() {
        return this.f4070a.entrySet();
    }

    /* renamed from: a */
    private boolean m4357a(Object obj) {
        return this.f4070a.containsKey(obj);
    }

    /* renamed from: b */
    private boolean m4358b() {
        return this.f4070a.isEmpty();
    }

    /* renamed from: b */
    private boolean m4359b(Object obj) {
        return this.f4070a.containsValue(obj);
    }

    /* renamed from: c */
    private Enumeration<Object> m4360c() {
        return this.f4070a.keys();
    }

    /* renamed from: d */
    private Set<Object> m4361d() {
        return this.f4070a.keySet();
    }

    /* renamed from: e */
    private int m4362e() {
        return this.f4070a.size();
    }

    /* renamed from: f */
    private Collection<Object> m4363f() {
        return this.f4070a.values();
    }

    /* renamed from: g */
    private static C1160c m4364g() throws IOException {
        return new C1160c();
    }
}
