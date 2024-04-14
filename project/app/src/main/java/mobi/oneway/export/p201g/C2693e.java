package mobi.oneway.export.p201g;

import android.text.TextUtils;
import java.util.zip.CRC32;

/* renamed from: mobi.oneway.export.g.e */
/* loaded from: classes2.dex */
public class C2693e {
    /* renamed from: a */
    public static Long m12176a(String str) {
        long value;
        if (TextUtils.isEmpty(str)) {
            value = 0;
        } else {
            CRC32 crc32 = new CRC32();
            crc32.update(str.getBytes());
            value = crc32.getValue();
        }
        return Long.valueOf(value);
    }
}
