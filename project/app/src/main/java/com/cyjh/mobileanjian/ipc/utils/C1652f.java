package com.cyjh.mobileanjian.ipc.utils;

import android.os.Environment;
import android.text.format.DateFormat;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;

/* renamed from: com.cyjh.mobileanjian.ipc.utils.f */
/* loaded from: classes.dex */
public final class C1652f {

    /* renamed from: a */
    private File f6398a;

    /* renamed from: b */
    private FileWriter f6399b;

    private C1652f(String str) {
        this.f6398a = new File(Environment.getExternalStorageDirectory(), str);
        try {
            this.f6399b = new FileWriter(this.f6398a);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    private void m7485a(String str) {
        if (this.f6399b == null) {
            return;
        }
        String charSequence = DateFormat.format("yyyy-MM-hh HH:mm:ss", System.currentTimeMillis()).toString();
        try {
            this.f6399b.write(charSequence + "  " + str + "\n");
            this.f6399b.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
