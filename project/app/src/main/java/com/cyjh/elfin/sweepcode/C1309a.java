package com.cyjh.elfin.sweepcode;

import android.hardware.Camera;
import android.util.Log;
import java.io.PrintStream;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.cyjh.elfin.sweepcode.a */
/* loaded from: classes.dex */
public final class C1309a {

    /* renamed from: b */
    private static final String f5015b = "yanzi";

    /* renamed from: c */
    private static C1309a f5016c;

    /* renamed from: a */
    a f5017a = new a();

    /* renamed from: com.cyjh.elfin.sweepcode.a$a */
    /* loaded from: classes.dex */
    public class a implements Comparator<Camera.Size> {
        public a() {
        }

        /* renamed from: a */
        private static int m6133a(Camera.Size size, Camera.Size size2) {
            if (size.width == size2.width) {
                return 0;
            }
            return size.width < size2.width ? 1 : -1;
        }

        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(Camera.Size size, Camera.Size size2) {
            Camera.Size size3 = size;
            Camera.Size size4 = size2;
            if (size3.width == size4.width) {
                return 0;
            }
            return size3.width < size4.width ? 1 : -1;
        }
    }

    private C1309a() {
    }

    /* renamed from: a */
    private Camera.Size m6126a(List<Camera.Size> list, float f, int i) {
        Collections.sort(list, this.f5017a);
        Iterator<Camera.Size> it = list.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Camera.Size next = it.next();
            Log.i(f5015b, "ratioPreview:" + (next.width / next.height));
            Log.i(f5015b, "PreviewSize:w = " + next.width + "h = " + next.height);
            if (next.height >= i && m6129a(next, f)) {
                Log.i(f5015b, "ratioPreview2:" + f + "   minH:" + i);
                Log.i(f5015b, "PreviewSize:w = " + next.width + "h = " + next.height);
                break;
            }
            i2++;
        }
        return list.get(i2 != list.size() ? i2 : 0);
    }

    /* renamed from: a */
    public static C1309a m6127a() {
        if (f5016c != null) {
            return f5016c;
        }
        C1309a c1309a = new C1309a();
        f5016c = c1309a;
        return c1309a;
    }

    /* renamed from: a */
    public static void m6128a(Camera.Parameters parameters) {
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        for (int i = 0; i < supportedPreviewSizes.size(); i++) {
            supportedPreviewSizes.get(i);
        }
    }

    /* renamed from: a */
    public static boolean m6129a(Camera.Size size, float f) {
        float f2 = size.width / size.height;
        System.out.println("r:" + f2);
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder("r2:");
        float f3 = f2 - f;
        sb.append(Math.abs(f3));
        printStream.println(sb.toString());
        return ((double) Math.abs(f3)) <= 0.2d;
    }

    /* renamed from: b */
    private Camera.Size m6130b(List<Camera.Size> list, float f, int i) {
        Collections.sort(list, this.f5017a);
        Iterator<Camera.Size> it = list.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Camera.Size next = it.next();
            if (next.width >= i && m6129a(next, f)) {
                Log.i(f5015b, "PictureSize : w = " + next.width + "h = " + next.height);
                break;
            }
            i2++;
        }
        return list.get(i2 != list.size() ? i2 : 0);
    }

    /* renamed from: b */
    public static void m6131b(Camera.Parameters parameters) {
        List<Camera.Size> supportedPictureSizes = parameters.getSupportedPictureSizes();
        for (int i = 0; i < supportedPictureSizes.size(); i++) {
            Camera.Size size = supportedPictureSizes.get(i);
            Log.i(f5015b, "pictureSizes:width = " + size.width + " height = " + size.height);
        }
    }

    /* renamed from: c */
    private static void m6132c(Camera.Parameters parameters) {
        Iterator<String> it = parameters.getSupportedFocusModes().iterator();
        while (it.hasNext()) {
            Log.i(f5015b, "focusModes--" + it.next());
        }
    }
}
