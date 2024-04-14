package com.umeng.commonsdk.proguard;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;

/* renamed from: com.umeng.commonsdk.proguard.m */
/* loaded from: classes.dex */
public class C2509m {

    /* renamed from: com.umeng.commonsdk.proguard.m$a */
    /* loaded from: classes.dex */
    public enum a {
        check_su_binary(new String[]{"/system/xbin/which", "su"});


        /* renamed from: b */
        String[] f9442b;

        a(String[] strArr) {
            this.f9442b = strArr;
        }
    }

    /* renamed from: a */
    public ArrayList m10967a(a aVar) {
        ArrayList arrayList = new ArrayList();
        try {
            Process exec = Runtime.getRuntime().exec(aVar.f9442b);
            new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    arrayList.add(readLine);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return arrayList;
        } catch (Exception unused) {
            return null;
        }
    }
}
