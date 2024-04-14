package com.cyjh.feedback.lib.p090b;

import android.content.Context;
import android.os.Bundle;
import android.view.MotionEvent;
import com.cyjh.feedback.lib.base.DialogC1457a;
import com.cyjh.feedback.libraryfeedbackinfo.C1478R;

/* renamed from: com.cyjh.feedback.lib.b.a */
/* loaded from: classes.dex */
public final class DialogC1454a extends DialogC1457a {
    public DialogC1454a(Context context) {
        super(context, C1478R.style.Theme_Dialog);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.feedback.lib.base.DialogC1457a, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1478R.layout.dialog_feedback_commit);
        m6720a(0.5f);
        m6721a(1.0f, 1.0f);
    }

    @Override // android.app.Dialog
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        dismiss();
        return true;
    }
}
