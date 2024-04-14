package mobi.oneway.export.p201g;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

/* renamed from: mobi.oneway.export.g.t */
/* loaded from: classes2.dex */
public class C2708t {
    /* renamed from: a */
    public static int m12280a(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[4096];
        int i = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                outputStream.flush();
                return i;
            }
            outputStream.write(bArr, 0, read);
            i += read;
        }
    }

    /* renamed from: a */
    public static List<String> m12281a(InputStream inputStream) {
        return m12282a(inputStream, Charset.defaultCharset().name());
    }

    /* renamed from: a */
    public static List<String> m12282a(InputStream inputStream, String str) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, str));
        ArrayList arrayList = new ArrayList();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return arrayList;
            }
            arrayList.add(readLine);
        }
    }

    /* renamed from: b */
    public static InputStreamReader m12283b(InputStream inputStream, String str) {
        return str == null ? new InputStreamReader(inputStream) : new InputStreamReader(inputStream, str);
    }

    /* renamed from: c */
    public static String m12284c(InputStream inputStream, String str) {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(str == null ? new InputStreamReader(inputStream) : new InputStreamReader(inputStream, str));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return sb.toString();
            }
            sb.append(readLine);
        }
    }
}
