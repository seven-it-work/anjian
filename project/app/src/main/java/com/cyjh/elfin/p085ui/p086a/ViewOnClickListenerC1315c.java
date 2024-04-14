package com.cyjh.elfin.p085ui.p086a;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import com.hjol.R;

/* renamed from: com.cyjh.elfin.ui.a.c */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC1315c extends DialogC1313a implements View.OnClickListener {

    /* renamed from: a */
    public a f5044a;

    /* renamed from: b */
    private Button f5045b;

    /* renamed from: com.cyjh.elfin.ui.a.c$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo5567a();
    }

    public ViewOnClickListenerC1315c(Context context) {
        super(context);
    }

    /* renamed from: a */
    private void m6183a() {
        this.f5045b = (Button) findViewById(R.id.dialog_miuiguide_button_open);
        this.f5045b.setOnClickListener(this);
    }

    /* renamed from: a */
    private void m6184a(a aVar) {
        this.f5044a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view.getId() == R.id.dialog_miuiguide_button_open && this.f5044a != null) {
            this.f5044a.mo5567a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.elfin.p085ui.p086a.DialogC1313a, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_float_guide);
        m6175a(0.8f, 0.4f);
        this.f5045b = (Button) findViewById(R.id.dialog_miuiguide_button_open);
        this.f5045b.setOnClickListener(this);
    }
}
