package com.umeng.commonsdk.proguard;

import java.io.PrintWriter;
import java.io.StringWriter;

/* renamed from: com.umeng.commonsdk.proguard.f */
/* loaded from: classes.dex */
public class C2502f {
    /* renamed from: a */
    public static String m10905a(Throwable th) {
        if (th == null) {
            return null;
        }
        try {
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            do {
                th.printStackTrace(printWriter);
                th = th.getCause();
            } while (th != null);
            String obj = stringWriter.toString();
            try {
                printWriter.close();
                stringWriter.close();
                return obj;
            } catch (Exception unused) {
                return obj;
            }
        } catch (Exception unused2) {
            return null;
        }
    }
}
