package com.cyjh.feedback.lib.p090b;

import android.content.Context;
import android.os.Bundle;
import com.cyjh.feedback.lib.base.DialogC1457a;
import com.cyjh.feedback.libraryfeedbackinfo.C1478R;

/* renamed from: com.cyjh.feedback.lib.b.c */
/* loaded from: classes.dex */
public final class DialogC1456c extends DialogC1457a {
    public DialogC1456c(Context context) {
        super(context, C1478R.style.Theme_Dialog);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.feedback.lib.base.DialogC1457a, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1478R.layout.dialog_loading);
        m6720a(0.3f);
        m6721a(1.0f, 1.0f);
    }
}
