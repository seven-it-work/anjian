package com.cyjh.common.util;

import android.os.Environment;
import java.io.File;

/* renamed from: com.cyjh.common.util.y */
/* loaded from: classes.dex */
public final class C1202y {

    /* renamed from: a */
    private static final String f4273a = "MobileAnJian";

    /* renamed from: b */
    private static final String f4274b = "Script";

    /* renamed from: c */
    private static final String f4275c = "CSTemp";

    /* renamed from: d */
    private static final String f4276d = "MQTemp";

    /* renamed from: e */
    private static final String f4277e = "UIConfig";

    /* renamed from: a */
    private static String m5246a() {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    /* renamed from: a */
    private static String m5247a(String str) {
        File file = new File(str);
        try {
            if (!file.exists()) {
                file.mkdirs();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return file.getAbsolutePath();
    }

    /* renamed from: a */
    private static String m5248a(String str, String str2) {
        StringBuilder sb;
        if (str.endsWith(File.separator)) {
            sb = new StringBuilder();
        } else {
            sb = new StringBuilder();
            sb.append(str);
            str = File.separator;
        }
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: b */
    private static String m5249b() {
        return m5248a(Environment.getExternalStorageDirectory().getAbsolutePath(), f4273a);
    }

    /* renamed from: c */
    private static String m5250c() {
        return m5248a(m5249b(), "Script");
    }

    /* renamed from: d */
    private static String m5251d() {
        return m5247a(m5248a(m5249b(), f4275c));
    }

    /* renamed from: e */
    private static String m5252e() {
        return m5247a(m5248a(m5249b(), f4276d));
    }

    /* renamed from: f */
    private static String m5253f() {
        return m5247a(m5248a(m5249b(), f4277e));
    }
}
