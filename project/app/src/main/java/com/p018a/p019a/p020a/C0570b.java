package com.p018a.p019a.p020a;

import android.support.annotation.NonNull;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: com.a.a.a.b */
/* loaded from: classes.dex */
public final class C0570b {

    /* renamed from: a */
    static final String[] f1203a = {"echo -BOC-", "id"};

    /* renamed from: a */
    public static C0569a m1327a(@NonNull String str, @NonNull String... strArr) {
        return m1328b(str, strArr);
    }

    /* renamed from: b */
    private static C0569a m1328b(@NonNull String str, @NonNull String[] strArr) {
        int i;
        List synchronizedList = Collections.synchronizedList(new ArrayList());
        List synchronizedList2 = Collections.synchronizedList(new ArrayList());
        try {
            try {
                Process exec = Runtime.getRuntime().exec(str, (String[]) null);
                DataOutputStream dataOutputStream = new DataOutputStream(exec.getOutputStream());
                C0571c c0571c = new C0571c(exec.getInputStream(), synchronizedList);
                C0571c c0571c2 = new C0571c(exec.getErrorStream(), synchronizedList2);
                c0571c.start();
                c0571c2.start();
                try {
                    for (String str2 : strArr) {
                        dataOutputStream.write((str2 + "\n").getBytes("UTF-8"));
                        dataOutputStream.flush();
                    }
                    dataOutputStream.write("exit\n".getBytes("UTF-8"));
                    dataOutputStream.flush();
                } catch (IOException e) {
                    if (!e.getMessage().contains("EPIPE")) {
                        throw e;
                    }
                }
                i = exec.waitFor();
                try {
                    dataOutputStream.close();
                } catch (IOException unused) {
                }
                c0571c.join();
                c0571c2.join();
                exec.destroy();
            } catch (IOException unused2) {
                i = -4;
            }
        } catch (InterruptedException unused3) {
            i = -1;
        }
        return new C0569a(synchronizedList, synchronizedList2, i);
    }
}
