package p003b;

import com.lidroid.xutils.util.CharsetUtils;
import java.nio.charset.Charset;
import p017c.C0538f;

/* renamed from: b.o */
/* loaded from: classes.dex */
public final class C0517o {
    private C0517o() {
    }

    /* renamed from: a */
    private static String m789a(String str, String str2) {
        return "Basic " + C0538f.m1177of((str + ":" + str2).getBytes(Charset.forName(CharsetUtils.DEFAULT_ENCODING_CHARSET))).base64();
    }

    /* renamed from: a */
    private static String m790a(String str, String str2, Charset charset) {
        return "Basic " + C0538f.m1177of((str + ":" + str2).getBytes(charset)).base64();
    }
}
