package mobi.oneway.export.p201g;

import java.io.PrintWriter;
import java.io.StringWriter;

/* renamed from: mobi.oneway.export.g.g */
/* loaded from: classes2.dex */
public class C2695g {
    /* renamed from: a */
    public static String m12190a(Exception exc) {
        return exc.getMessage();
    }

    /* renamed from: a */
    public static String m12191a(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        try {
            th.printStackTrace(printWriter);
            return stringWriter.toString();
        } finally {
            printWriter.close();
        }
    }
}
