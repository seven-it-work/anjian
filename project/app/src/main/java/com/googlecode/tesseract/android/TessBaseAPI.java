package com.googlecode.tesseract.android;

import android.graphics.Bitmap;
import android.graphics.Rect;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.googlecode.leptonica.android.Pix;
import com.googlecode.leptonica.android.Pixa;
import com.googlecode.leptonica.android.ReadFile;
import java.io.File;

/* loaded from: classes.dex */
public class TessBaseAPI {

    /* renamed from: b */
    public static final String f8027b = "tessedit_char_whitelist";

    /* renamed from: c */
    public static final String f8028c = "tessedit_char_blacklist";

    /* renamed from: d */
    public static final String f8029d = "save_blob_choices";

    /* renamed from: e */
    public static final String f8030e = "T";

    /* renamed from: f */
    public static final String f8031f = "F";

    /* renamed from: g */
    public static final int f8032g = 0;

    /* renamed from: h */
    @Deprecated
    public static final int f8033h = 1;

    /* renamed from: i */
    @Deprecated
    public static final int f8034i = 2;

    /* renamed from: j */
    public static final int f8035j = 3;

    /* renamed from: a */
    long f8036a;

    /* renamed from: k */
    private InterfaceC2139c f8037k;

    /* renamed from: l */
    private boolean f8038l;

    /* renamed from: com.googlecode.tesseract.android.TessBaseAPI$a */
    /* loaded from: classes.dex */
    public static final class C2137a {

        /* renamed from: a */
        public static final int f8039a = 0;

        /* renamed from: b */
        public static final int f8040b = 1;

        /* renamed from: c */
        public static final int f8041c = 2;

        /* renamed from: d */
        public static final int f8042d = 3;

        /* renamed from: e */
        public static final int f8043e = 4;
    }

    /* renamed from: com.googlecode.tesseract.android.TessBaseAPI$b */
    /* loaded from: classes.dex */
    public static final class C2138b {

        /* renamed from: a */
        public static final int f8044a = 0;

        /* renamed from: b */
        public static final int f8045b = 1;

        /* renamed from: c */
        public static final int f8046c = 2;

        /* renamed from: d */
        public static final int f8047d = 3;

        /* renamed from: e */
        public static final int f8048e = 4;

        /* renamed from: f */
        public static final int f8049f = 5;

        /* renamed from: g */
        public static final int f8050g = 6;

        /* renamed from: h */
        public static final int f8051h = 7;

        /* renamed from: i */
        public static final int f8052i = 8;

        /* renamed from: j */
        public static final int f8053j = 9;

        /* renamed from: k */
        public static final int f8054k = 10;

        /* renamed from: l */
        public static final int f8055l = 11;

        /* renamed from: m */
        public static final int f8056m = 12;

        /* renamed from: n */
        public static final int f8057n = 13;
    }

    /* renamed from: com.googlecode.tesseract.android.TessBaseAPI$c */
    /* loaded from: classes.dex */
    public interface InterfaceC2139c {
        /* renamed from: a */
        void m9445a();
    }

    /* renamed from: com.googlecode.tesseract.android.TessBaseAPI$d */
    /* loaded from: classes.dex */
    public class C2140d {

        /* renamed from: b */
        private final int f8059b;

        /* renamed from: c */
        private final Rect f8060c;

        /* renamed from: d */
        private final Rect f8061d;

        public C2140d(int i, Rect rect, Rect rect2) {
            this.f8059b = i;
            this.f8060c = rect;
            this.f8061d = rect2;
        }

        /* renamed from: a */
        private int m9446a() {
            return this.f8059b;
        }

        /* renamed from: b */
        private Rect m9447b() {
            return this.f8060c;
        }

        /* renamed from: c */
        private Rect m9448c() {
            return this.f8061d;
        }
    }

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
        System.loadLibrary("tess");
        nativeClassInit();
    }

    public TessBaseAPI() {
        this.f8036a = nativeConstruct();
        if (this.f8036a == 0) {
            throw new RuntimeException("Can't create TessBaseApi object");
        }
        this.f8038l = false;
    }

    private TessBaseAPI(InterfaceC2139c interfaceC2139c) {
        this();
        this.f8037k = interfaceC2139c;
    }

    /* renamed from: a */
    private void m9408a(int i) {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        nativeSetPageSegMode(this.f8036a, i);
    }

    /* renamed from: a */
    private void m9409a(int i, int i2, int i3, int i4) {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        nativeSetRectangle(this.f8036a, i, i2, i3, i4);
    }

    /* renamed from: a */
    private void m9410a(Rect rect) {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        int i = rect.left;
        int i2 = rect.top;
        int width = rect.width();
        int height = rect.height();
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        nativeSetRectangle(this.f8036a, i, i2, width, height);
    }

    /* renamed from: a */
    private void m9411a(Pix pix) {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        nativeSetImagePix(this.f8036a, pix.m9349a());
    }

    /* renamed from: a */
    private void m9412a(File file) {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        Pix m9379a = ReadFile.m9379a(file);
        if (m9379a == null) {
            throw new RuntimeException("Failed to read image file");
        }
        nativeSetImagePix(this.f8036a, m9379a.m9349a());
        m9379a.m9350b();
    }

    /* renamed from: a */
    private void m9413a(String str) {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        nativeSetInputName(this.f8036a, str);
    }

    /* renamed from: a */
    private void m9414a(boolean z) {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        nativeSetDebug(this.f8036a, z);
    }

    /* renamed from: a */
    private void m9415a(byte[] bArr, int i, int i2, int i3, int i4) {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        nativeSetImageBytes(this.f8036a, bArr, i, i2, i3, i4);
    }

    /* renamed from: a */
    private boolean m9416a(Pix pix, String str, TessPdfRenderer tessPdfRenderer) {
        return nativeAddPageToDocument(this.f8036a, pix.m9349a(), str, tessPdfRenderer.m9450a());
    }

    /* renamed from: a */
    private boolean m9417a(TessPdfRenderer tessPdfRenderer) {
        return nativeBeginDocument(tessPdfRenderer.m9450a(), "");
    }

    /* renamed from: a */
    private boolean m9418a(TessPdfRenderer tessPdfRenderer, String str) {
        return nativeBeginDocument(tessPdfRenderer.m9450a(), str);
    }

    /* renamed from: b */
    private String m9419b() {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        return nativeGetInitLanguagesAsString(this.f8036a);
    }

    /* renamed from: b */
    private String m9420b(int i) {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        return nativeGetHOCRText(this.f8036a, i);
    }

    /* renamed from: b */
    private void m9421b(String str) {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        nativeSetOutputName(this.f8036a, str);
    }

    /* renamed from: b */
    private boolean m9422b(TessPdfRenderer tessPdfRenderer) {
        return nativeEndDocument(tessPdfRenderer.m9450a());
    }

    /* renamed from: b */
    private boolean m9423b(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Data path must not be null!");
        }
        if (!str.endsWith(File.separator)) {
            str = str + File.separator;
        }
        String str3 = str;
        if (!new File(str3).exists()) {
            throw new IllegalArgumentException("Data path does not exist!");
        }
        File file = new File(str3 + InterfaceC1133a.f3940aO);
        if (!file.exists() || !file.isDirectory()) {
            throw new IllegalArgumentException("Data path must contain subfolder tessdata!");
        }
        for (String str4 : str2.split("\\+")) {
            if (!str4.startsWith("~")) {
                File file2 = new File(file + File.separator + str4 + ".traineddata");
                if (!file2.exists()) {
                    throw new IllegalArgumentException("Data file not found at " + file2);
                }
            }
        }
        boolean nativeInitOem = nativeInitOem(this.f8036a, str3, str2, 3);
        if (nativeInitOem) {
            this.f8038l = false;
        }
        return nativeInitOem;
    }

    /* renamed from: c */
    private String m9424c(int i) {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        return nativeGetBoxText(this.f8036a, i);
    }

    /* renamed from: c */
    private void m9425c() {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        nativeClear(this.f8036a);
    }

    /* renamed from: c */
    private void m9426c(String str) {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        nativeReadConfigFile(this.f8036a, str);
    }

    /* renamed from: c */
    private boolean m9427c(String str, String str2) {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        return nativeSetVariable(this.f8036a, str, str2);
    }

    /* renamed from: d */
    private void m9428d() {
        if (this.f8038l) {
            return;
        }
        nativeEnd(this.f8036a);
        this.f8038l = true;
    }

    /* renamed from: e */
    private int m9429e() {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        return nativeGetPageSegMode(this.f8036a);
    }

    /* renamed from: f */
    private int m9430f() {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        return nativeMeanConfidence(this.f8036a);
    }

    /* renamed from: g */
    private int[] m9431g() {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        int[] nativeWordConfidences = nativeWordConfidences(this.f8036a);
        return nativeWordConfidences == null ? new int[0] : nativeWordConfidences;
    }

    /* renamed from: h */
    private Pix m9432h() {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        return new Pix(nativeGetThresholdedImage(this.f8036a));
    }

    /* renamed from: i */
    private Pixa m9433i() {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        return new Pixa(nativeGetRegions(this.f8036a), 0, 0);
    }

    /* renamed from: j */
    private Pixa m9434j() {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        return new Pixa(nativeGetTextlines(this.f8036a), 0, 0);
    }

    /* renamed from: k */
    private Pixa m9435k() {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        return new Pixa(nativeGetStrips(this.f8036a), 0, 0);
    }

    /* renamed from: l */
    private Pixa m9436l() {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        return new Pixa(nativeGetWords(this.f8036a), 0, 0);
    }

    /* renamed from: m */
    private Pixa m9437m() {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        return new Pixa(nativeGetConnectedComponents(this.f8036a), 0, 0);
    }

    /* renamed from: n */
    private ResultIterator m9438n() {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        long nativeGetResultIterator = nativeGetResultIterator(this.f8036a);
        if (nativeGetResultIterator == 0) {
            return null;
        }
        return new ResultIterator(nativeGetResultIterator);
    }

    private native boolean nativeAddPageToDocument(long j, long j2, String str, long j3);

    private native boolean nativeBeginDocument(long j, String str);

    private static native void nativeClassInit();

    private native void nativeClear(long j);

    private native long nativeConstruct();

    private native void nativeEnd(long j);

    private native boolean nativeEndDocument(long j);

    private native String nativeGetBoxText(long j, int i);

    private native long nativeGetConnectedComponents(long j);

    private native String nativeGetHOCRText(long j, int i);

    private native String nativeGetInitLanguagesAsString(long j);

    private native int nativeGetPageSegMode(long j);

    private native long nativeGetRegions(long j);

    private native long nativeGetResultIterator(long j);

    private native long nativeGetStrips(long j);

    private native long nativeGetTextlines(long j);

    private native long nativeGetThresholdedImage(long j);

    private native String nativeGetUTF8Text(long j);

    private native String nativeGetVersion(long j);

    private native long nativeGetWords(long j);

    private native boolean nativeInit(long j, String str, String str2);

    private native boolean nativeInitOem(long j, String str, String str2, int i);

    private native int nativeMeanConfidence(long j);

    private native void nativeReadConfigFile(long j, String str);

    private native void nativeSetDebug(long j, boolean z);

    private native void nativeSetImageBytes(long j, byte[] bArr, int i, int i2, int i3, int i4);

    private native void nativeSetImagePix(long j, long j2);

    private native void nativeSetInputName(long j, String str);

    private native void nativeSetOutputName(long j, String str);

    private native void nativeSetPageSegMode(long j, int i);

    private native void nativeSetRectangle(long j, int i, int i2, int i3, int i4);

    private native boolean nativeSetVariable(long j, String str, String str2);

    private native void nativeStop(long j);

    private native int[] nativeWordConfidences(long j);

    /* renamed from: o */
    private String m9439o() {
        return nativeGetVersion(this.f8036a);
    }

    /* renamed from: p */
    private void m9440p() {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        nativeStop(this.f8036a);
    }

    /* renamed from: q */
    private long m9441q() {
        return this.f8036a;
    }

    /* renamed from: a */
    public final String m9442a() {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        String nativeGetUTF8Text = nativeGetUTF8Text(this.f8036a);
        if (nativeGetUTF8Text != null) {
            return nativeGetUTF8Text.trim();
        }
        return null;
    }

    /* renamed from: a */
    public final void m9443a(Bitmap bitmap) {
        if (this.f8038l) {
            throw new IllegalStateException();
        }
        Pix m9378a = ReadFile.m9378a(bitmap);
        if (m9378a == null) {
            throw new RuntimeException("Failed to read bitmap");
        }
        nativeSetImagePix(this.f8036a, m9378a.m9349a());
        m9378a.m9350b();
    }

    /* renamed from: a */
    public final boolean m9444a(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Data path must not be null!");
        }
        if (!str.endsWith(File.separator)) {
            str = str + File.separator;
        }
        String str3 = str;
        if (!new File(str3).exists()) {
            throw new IllegalArgumentException("Data path does not exist!");
        }
        File file = new File(str3 + InterfaceC1133a.f3940aO);
        if (!file.exists() || !file.isDirectory()) {
            throw new IllegalArgumentException("Data path must contain subfolder tessdata!");
        }
        for (String str4 : str2.split("\\+")) {
            if (!str4.startsWith("~")) {
                File file2 = new File(file + File.separator + str4 + ".traineddata");
                if (!file2.exists()) {
                    throw new IllegalArgumentException("Data file not found at " + file2);
                }
            }
        }
        boolean nativeInitOem = nativeInitOem(this.f8036a, str3, str2, 3);
        if (nativeInitOem) {
            this.f8038l = false;
        }
        return nativeInitOem;
    }

    protected void onProgressValues(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        if (this.f8037k != null) {
            new C2140d(i, new Rect(i2, i8 - i4, i3, i8 - i5), new Rect(i6, i9, i7, i8));
        }
    }
}
