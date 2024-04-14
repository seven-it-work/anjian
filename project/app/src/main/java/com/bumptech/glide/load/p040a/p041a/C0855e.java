package com.bumptech.glide.load.p040a.p041a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.List;

/* renamed from: com.bumptech.glide.load.a.a.e */
/* loaded from: classes.dex */
final class C0855e {

    /* renamed from: a */
    private static final String f2435a = "ThumbStreamOpener";

    /* renamed from: b */
    private static final C0851a f2436b = new C0851a();

    /* renamed from: c */
    private final C0851a f2437c;

    /* renamed from: d */
    private final InterfaceC0854d f2438d;

    /* renamed from: e */
    private final InterfaceC0872b f2439e;

    /* renamed from: f */
    private final ContentResolver f2440f;

    /* renamed from: g */
    private final List<ImageHeaderParser> f2441g;

    private C0855e(List<ImageHeaderParser> list, C0851a c0851a, InterfaceC0854d interfaceC0854d, InterfaceC0872b interfaceC0872b, ContentResolver contentResolver) {
        this.f2437c = c0851a;
        this.f2438d = interfaceC0854d;
        this.f2439e = interfaceC0872b;
        this.f2440f = contentResolver;
        this.f2441g = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0855e(List<ImageHeaderParser> list, InterfaceC0854d interfaceC0854d, InterfaceC0872b interfaceC0872b, ContentResolver contentResolver) {
        this(list, f2436b, interfaceC0854d, interfaceC0872b, contentResolver);
    }

    /* renamed from: a */
    private static boolean m2400a(File file) {
        return file.exists() && 0 < file.length();
    }

    @Nullable
    /* renamed from: c */
    private String m2401c(@NonNull Uri uri) {
        Cursor mo2399a = this.f2438d.mo2399a(uri);
        if (mo2399a != null) {
            try {
                if (mo2399a.moveToFirst()) {
                    String string = mo2399a.getString(0);
                    if (mo2399a != null) {
                        mo2399a.close();
                    }
                    return string;
                }
            } finally {
                if (mo2399a != null) {
                    mo2399a.close();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0044 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int m2402a(android.net.Uri r7) {
        /*
            r6 = this;
            r0 = 0
            android.content.ContentResolver r1 = r6.f2440f     // Catch: java.lang.Throwable -> L17 java.lang.Throwable -> L1a
            java.io.InputStream r1 = r1.openInputStream(r7)     // Catch: java.lang.Throwable -> L17 java.lang.Throwable -> L1a
            java.util.List<com.bumptech.glide.load.ImageHeaderParser> r0 = r6.f2441g     // Catch: java.lang.Throwable -> L15 java.lang.Throwable -> L41
            com.bumptech.glide.load.b.a.b r2 = r6.f2439e     // Catch: java.lang.Throwable -> L15 java.lang.Throwable -> L41
            int r0 = com.bumptech.glide.load.C1021f.m3053b(r0, r1, r2)     // Catch: java.lang.Throwable -> L15 java.lang.Throwable -> L41
            if (r1 == 0) goto L14
            r1.close()     // Catch: java.io.IOException -> L14
        L14:
            return r0
        L15:
            r0 = move-exception
            goto L1e
        L17:
            r7 = move-exception
            r1 = r0
            goto L42
        L1a:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L1e:
            java.lang.String r2 = "ThumbStreamOpener"
            r3 = 3
            boolean r2 = android.util.Log.isLoggable(r2, r3)     // Catch: java.lang.Throwable -> L41
            if (r2 == 0) goto L3a
            java.lang.String r2 = "ThumbStreamOpener"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L41
            java.lang.String r4 = "Failed to open uri: "
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L41
            r3.append(r7)     // Catch: java.lang.Throwable -> L41
            java.lang.String r7 = r3.toString()     // Catch: java.lang.Throwable -> L41
            android.util.Log.d(r2, r7, r0)     // Catch: java.lang.Throwable -> L41
        L3a:
            if (r1 == 0) goto L3f
            r1.close()     // Catch: java.io.IOException -> L3f
        L3f:
            r7 = -1
            return r7
        L41:
            r7 = move-exception
        L42:
            if (r1 == 0) goto L47
            r1.close()     // Catch: java.io.IOException -> L47
        L47:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p040a.p041a.C0855e.m2402a(android.net.Uri):int");
    }

    /* renamed from: b */
    public final InputStream m2403b(Uri uri) throws FileNotFoundException {
        String m2401c = m2401c(uri);
        if (TextUtils.isEmpty(m2401c)) {
            return null;
        }
        File file = new File(m2401c);
        if (!(file.exists() && 0 < file.length())) {
            return null;
        }
        Uri fromFile = Uri.fromFile(file);
        try {
            return this.f2440f.openInputStream(fromFile);
        } catch (NullPointerException e) {
            throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + fromFile).initCause(e));
        }
    }
}
