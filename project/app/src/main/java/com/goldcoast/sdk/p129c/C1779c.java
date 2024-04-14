package com.goldcoast.sdk.p129c;

import android.content.Context;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONException;

/* renamed from: com.goldcoast.sdk.c.c */
/* loaded from: classes.dex */
public final class C1779c {

    /* renamed from: c */
    private static C1779c f7004c;

    /* renamed from: d */
    private static Context f7005d;

    /* renamed from: b */
    private String f7007b = "noend.ini";

    /* renamed from: a */
    private String f7006a = f7005d.getFilesDir().getAbsolutePath();

    private C1779c() {
        File file = new File(this.f7006a);
        if (!file.exists()) {
            try {
                file.mkdirs();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        File file2 = new File(this.f7006a, this.f7007b);
        if (file2.exists()) {
            return;
        }
        try {
            file2.createNewFile();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    public static C1779c m8102a(Context context) {
        if (f7004c == null) {
            f7005d = context;
            f7004c = new C1779c();
        }
        return f7004c;
    }

    /* renamed from: a */
    public final String m8103a() {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(this.f7006a, this.f7007b)));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
            }
            bufferedReader.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sb.toString();
    }

    /* renamed from: a */
    public final void m8104a(String str) {
        try {
            FileWriter fileWriter = new FileWriter(new File(this.f7006a, this.f7007b));
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public final void m8105b(String str) {
        String m8103a = m8103a();
        if (TextUtils.isEmpty(m8103a)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(m8103a);
            if (jSONArray.length() > 0) {
                JSONArray jSONArray2 = new JSONArray();
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (!str.equals(jSONArray.get(i).toString())) {
                        jSONArray2.put(jSONArray.get(i).toString());
                    }
                }
                if (jSONArray2.length() > 0) {
                    m8104a(jSONArray2.toString());
                } else {
                    m8104a("");
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public final boolean m8106c(String str) {
        String m8103a = m8103a();
        if (TextUtils.isEmpty(m8103a)) {
            return false;
        }
        try {
            JSONArray jSONArray = new JSONArray(m8103a);
            if (jSONArray.length() > 0) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (str.equals(jSONArray.get(i).toString())) {
                        return true;
                    }
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return false;
    }
}
