package android.support.v4.graphics;

import android.os.ParcelFileDescriptor;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;

@RequiresApi(21)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
class TypefaceCompatApi21Impl extends TypefaceCompatBaseImpl {
    private static final String TAG = "TypefaceCompatApi21Impl";

    private File getFile(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String readlink = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                return new File(readlink);
            }
        } catch (ErrnoException unused) {
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0058 A[Catch: all -> 0x005c, Throwable -> 0x005f, TryCatch #3 {Throwable -> 0x005f, blocks: (B:9:0x0017, B:11:0x001d, B:14:0x0024, B:18:0x002e, B:21:0x003b, B:34:0x005b, B:33:0x0058, B:40:0x0054), top: B:8:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x004f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[Catch: IOException -> 0x0076, SYNTHETIC, TRY_LEAVE, TryCatch #4 {IOException -> 0x0076, blocks: (B:7:0x000d, B:16:0x002a, B:23:0x0040, B:55:0x0069, B:52:0x0072, B:59:0x006e, B:53:0x0075), top: B:6:0x000d, inners: #1 }] */
    @Override // android.support.v4.graphics.TypefaceCompatBaseImpl, android.support.v4.graphics.TypefaceCompat.TypefaceCompatImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.graphics.Typeface createFromFontInfo(android.content.Context r4, android.os.CancellationSignal r5, @android.support.annotation.NonNull android.support.v4.provider.FontsContractCompat.FontInfo[] r6, int r7) {
        /*
            r3 = this;
            int r0 = r6.length
            r1 = 0
            if (r0 > 0) goto L5
            return r1
        L5:
            android.support.v4.provider.FontsContractCompat$FontInfo r6 = r3.findBestInfo(r6, r7)
            android.content.ContentResolver r7 = r4.getContentResolver()
            android.net.Uri r6 = r6.getUri()     // Catch: java.io.IOException -> L76
            java.lang.String r0 = "r"
            android.os.ParcelFileDescriptor r5 = r7.openFileDescriptor(r6, r0, r5)     // Catch: java.io.IOException -> L76
            java.io.File r6 = r3.getFile(r5)     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5f
            if (r6 == 0) goto L2e
            boolean r7 = r6.canRead()     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5f
            if (r7 != 0) goto L24
            goto L2e
        L24:
            android.graphics.Typeface r4 = android.graphics.Typeface.createFromFile(r6)     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5f
            if (r5 == 0) goto L2d
            r5.close()     // Catch: java.io.IOException -> L76
        L2d:
            return r4
        L2e:
            java.io.FileInputStream r6 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5f
            java.io.FileDescriptor r7 = r5.getFileDescriptor()     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5f
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5f
            android.graphics.Typeface r4 = super.createFromInputStream(r4, r6)     // Catch: java.lang.Throwable -> L44 java.lang.Throwable -> L47
            r6.close()     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5f
            if (r5 == 0) goto L43
            r5.close()     // Catch: java.io.IOException -> L76
        L43:
            return r4
        L44:
            r4 = move-exception
            r7 = r1
            goto L4d
        L47:
            r4 = move-exception
            throw r4     // Catch: java.lang.Throwable -> L49
        L49:
            r7 = move-exception
            r2 = r7
            r7 = r4
            r4 = r2
        L4d:
            if (r7 == 0) goto L58
            r6.close()     // Catch: java.lang.Throwable -> L53 java.lang.Throwable -> L5c
            goto L5b
        L53:
            r6 = move-exception
            r7.addSuppressed(r6)     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5f
            goto L5b
        L58:
            r6.close()     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5f
        L5b:
            throw r4     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5f
        L5c:
            r4 = move-exception
            r6 = r1
            goto L65
        L5f:
            r4 = move-exception
            throw r4     // Catch: java.lang.Throwable -> L61
        L61:
            r6 = move-exception
            r2 = r6
            r6 = r4
            r4 = r2
        L65:
            if (r5 == 0) goto L75
            if (r6 == 0) goto L72
            r5.close()     // Catch: java.lang.Throwable -> L6d java.io.IOException -> L76
            goto L75
        L6d:
            r5 = move-exception
            r6.addSuppressed(r5)     // Catch: java.io.IOException -> L76
            goto L75
        L72:
            r5.close()     // Catch: java.io.IOException -> L76
        L75:
            throw r4     // Catch: java.io.IOException -> L76
        L76:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatApi21Impl.createFromFontInfo(android.content.Context, android.os.CancellationSignal, android.support.v4.provider.FontsContractCompat$FontInfo[], int):android.graphics.Typeface");
    }
}
