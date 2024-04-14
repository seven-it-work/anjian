package com.cyjh.elfin.p085ui.p086a;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import com.hjol.R;

/* renamed from: com.cyjh.elfin.ui.a.d */
/* loaded from: classes.dex */
public final class DialogC1316d extends DialogC1313a {

    /* renamed from: a */
    private Button f5046a;

    public DialogC1316d(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.elfin.p085ui.p086a.DialogC1313a, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_no_root);
        m6175a(0.8f, 0.4f);
        m6174a(0.5f);
        setCanceledOnTouchOutside(false);
        this.f5046a = (Button) findViewById(R.id.id_btn_sure);
        this.f5046a.setOnClickListener(new View.OnClickListener() { // from class: com.cyjh.elfin.ui.a.d.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogC1316d.this.dismiss();
            }
        });
    }
}
