package com.elfin.engin.p124b;

import android.content.Context;
import android.util.Log;
import android.widget.LinearLayout;
import com.cyjh.mobileanjian.ipc.uip.UipHelper;
import com.cyjh.mqm.MiscUtilities;
import com.elfin.engin.p124b.p125a.InterfaceC1747a;
import java.io.File;
import java.io.IOException;
import org.apache.commons.io.FileUtils;
import org.json.JSONException;

/* renamed from: com.elfin.engin.b.c */
/* loaded from: classes.dex */
public final class C1749c implements InterfaceC1747a {

    /* renamed from: a */
    private Context f6887a;

    /* renamed from: b */
    private File f6888b;

    /* renamed from: c */
    private File f6889c;

    /* renamed from: d */
    private UipHelper f6890d;

    public C1749c(Context context, String str, String str2) {
        this.f6888b = new File(str);
        this.f6889c = new File(str2);
        this.f6887a = context;
        this.f6890d = new UipHelper(context);
        Log.e("a111111", "ScriptUipModel " + str);
    }

    /* renamed from: a */
    private void m8003a(File file) throws JSONException {
        if (file == null || !file.exists() || file.isDirectory() || file.length() == 0) {
            return;
        }
        try {
            this.f6890d.configViewFromJson(FileUtils.readFileToString(file, "UTF-8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    private String m8004b(File file) throws Exception {
        if (file == null || file.isDirectory()) {
            return null;
        }
        this.f6890d.saveToConfigFile(file.getAbsolutePath());
        return FileUtils.readFileToString(file, "UTF-8");
    }

    @Override // com.elfin.engin.p124b.p125a.InterfaceC1747a
    /* renamed from: a */
    public final LinearLayout mo7987a() throws Exception {
        if (!this.f6888b.exists()) {
            return new LinearLayout(this.f6887a);
        }
        return this.f6890d.parseLayoutFromJson(new MiscUtilities().LoadUIFile(this.f6888b.getAbsolutePath(), true), null);
    }

    @Override // com.elfin.engin.p124b.p125a.InterfaceC1747a
    /* renamed from: a */
    public final void mo7988a(String str) {
    }

    @Override // com.elfin.engin.p124b.p125a.InterfaceC1747a
    /* renamed from: b */
    public final String mo7989b() {
        if (this.f6890d != null) {
            return this.f6890d.saveConfigToJson();
        }
        return null;
    }

    @Override // com.elfin.engin.p124b.p125a.InterfaceC1747a
    /* renamed from: b */
    public final void mo7990b(String str) {
        if (this.f6890d != null) {
            this.f6890d.configViewFromJson(str);
        }
    }

    @Override // com.elfin.engin.p124b.p125a.InterfaceC1747a
    /* renamed from: c */
    public final void mo7991c() throws JSONException {
        try {
            File file = this.f6889c;
            if (file == null || !file.exists() || file.isDirectory() || file.length() == 0) {
                return;
            }
            try {
                this.f6890d.configViewFromJson(FileUtils.readFileToString(file, "UTF-8"));
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.elfin.engin.p124b.p125a.InterfaceC1747a
    /* renamed from: d */
    public final String mo7992d() throws Exception {
        File file;
        if (!this.f6888b.exists() || (file = this.f6889c) == null || file.isDirectory()) {
            return null;
        }
        this.f6890d.saveToConfigFile(file.getAbsolutePath());
        return FileUtils.readFileToString(file, "UTF-8");
    }
}
