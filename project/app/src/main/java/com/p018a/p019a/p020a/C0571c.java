package com.p018a.p019a.p020a;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;

/* renamed from: com.a.a.a.c */
/* loaded from: classes.dex */
public final class C0571c extends Thread {

    /* renamed from: a */
    private final BufferedReader f1204a;

    /* renamed from: b */
    private List<String> f1205b;

    /* renamed from: c */
    private InterfaceC0572d f1206c;

    public C0571c(InputStream inputStream, List<String> list) {
        this.f1204a = new BufferedReader(new InputStreamReader(inputStream));
        this.f1205b = list;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                String readLine = this.f1204a.readLine();
                if (readLine != null) {
                    if (this.f1205b != null) {
                        this.f1205b.add(readLine);
                    }
                    InterfaceC0572d interfaceC0572d = this.f1206c;
                }
            } catch (IOException unused) {
            }
            try {
                this.f1204a.close();
                return;
            } catch (IOException unused2) {
                return;
            }
        }
    }
}
