package com.googlecode.tesseract.android;

import android.util.Log;
import android.util.Pair;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ResultIterator extends PageIterator {

    /* renamed from: a */
    private final long f8026a;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
        System.loadLibrary("tess");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ResultIterator(long j) {
        super(j);
        this.f8026a = j;
    }

    /* renamed from: a */
    private String m9402a(int i) {
        return nativeGetUTF8Text(this.f8026a, i);
    }

    /* renamed from: a */
    private List<Pair<String, Double>> m9403a() {
        String str;
        String[] nativeGetSymbolChoices = nativeGetSymbolChoices(this.f8026a);
        ArrayList arrayList = new ArrayList();
        for (String str2 : nativeGetSymbolChoices) {
            int lastIndexOf = str2.lastIndexOf(124);
            Double valueOf = Double.valueOf(0.0d);
            if (lastIndexOf > 0) {
                str = str2.substring(0, lastIndexOf);
                try {
                    valueOf = Double.valueOf(Double.parseDouble(str2.substring(lastIndexOf + 1)));
                } catch (NumberFormatException unused) {
                    Log.e("ResultIterator", "Invalid confidence level for " + str2);
                }
            } else {
                str = str2;
            }
            arrayList.add(new Pair(str, valueOf));
        }
        return arrayList;
    }

    /* renamed from: a */
    private boolean m9404a(int i, int i2) {
        return nativeIsAtFinalElement(this.f8026a, i, i2);
    }

    /* renamed from: b */
    private float m9405b(int i) {
        return nativeConfidence(this.f8026a, i);
    }

    /* renamed from: b */
    private void m9406b() {
        nativeDelete(this.f8026a);
    }

    /* renamed from: c */
    private boolean m9407c(int i) {
        return nativeIsAtBeginningOf(this.f8026a, i);
    }

    private static native float nativeConfidence(long j, int i);

    private static native void nativeDelete(long j);

    private static native String[] nativeGetSymbolChoices(long j);

    private static native String nativeGetUTF8Text(long j, int i);

    private static native boolean nativeIsAtBeginningOf(long j, int i);

    private static native boolean nativeIsAtFinalElement(long j, int i, int i2);
}
