package com.bumptech.glide.load.p047c;

import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC0961d;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.c.t */
/* loaded from: classes.dex */
public final class C0956t implements InterfaceC0961d<InputStream> {

    /* renamed from: a */
    private static final String f2973a = "StreamEncoder";

    /* renamed from: b */
    private final InterfaceC0872b f2974b;

    public C0956t(InterfaceC0872b interfaceC0872b) {
        this.f2974b = interfaceC0872b;
    }

    /* renamed from: a */
    private boolean m2840a(@NonNull InputStream inputStream, @NonNull File file) {
        byte[] bArr = (byte[]) this.f2974b.mo2443a(65536, byte[].class);
        boolean z = false;
        FileOutputStream fileOutputStream = null;
        try {
            try {
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    while (true) {
                        try {
                            int read = inputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            fileOutputStream2.write(bArr, 0, read);
                        } catch (IOException e) {
                            e = e;
                            fileOutputStream = fileOutputStream2;
                            if (Log.isLoggable(f2973a, 3)) {
                                Log.d(f2973a, "Failed to encode data onto the OutputStream", e);
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            this.f2974b.mo2448b(bArr);
                            return z;
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException unused) {
                                }
                            }
                            this.f2974b.mo2448b(bArr);
                            throw th;
                        }
                    }
                    fileOutputStream2.close();
                    z = true;
                    fileOutputStream2.close();
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (IOException unused2) {
            }
            this.f2974b.mo2448b(bArr);
            return z;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.bumptech.glide.load.InterfaceC0961d
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo2770a(@NonNull InputStream inputStream, @NonNull File file, @NonNull C1025j c1025j) {
        return m2840a(inputStream, file);
    }
}
