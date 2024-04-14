package com.cyjh.elfin.floatingwindowprocess.p081a;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import com.cyjh.elfin.p085ui.p086a.DialogC1313a;
import com.hjol.R;

/* renamed from: com.cyjh.elfin.floatingwindowprocess.a.a */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC1278a extends DialogC1313a implements View.OnClickListener {

    /* renamed from: a */
    public b f4788a;

    /* renamed from: b */
    public a f4789b;

    /* renamed from: c */
    private Button f4790c;

    /* renamed from: e */
    private Button f4791e;

    /* renamed from: com.cyjh.elfin.floatingwindowprocess.a.a$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo5905a();
    }

    /* renamed from: com.cyjh.elfin.floatingwindowprocess.a.a$b */
    /* loaded from: classes.dex */
    public interface b {
        /* renamed from: a */
        void mo5906a();
    }

    public ViewOnClickListenerC1278a(Context context) {
        super(context);
        Window window;
        int i;
        if (Build.VERSION.SDK_INT >= 26) {
            window = getWindow();
            i = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            window = getWindow();
            i = 2002;
        } else {
            window = getWindow();
            i = 2005;
        }
        window.setType(i);
    }

    /* renamed from: a */
    private void m5902a() {
        this.f4790c = (Button) findViewById(R.id.hidefw_button_ok);
        this.f4791e = (Button) findViewById(R.id.hidefw_button_cancel);
        this.f4790c.setOnClickListener(this);
        this.f4791e.setOnClickListener(this);
    }

    /* renamed from: a */
    private void m5903a(a aVar) {
        this.f4789b = aVar;
    }

    /* renamed from: a */
    private void m5904a(b bVar) {
        this.f4788a = bVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (view.getId()) {
            case R.id.hidefw_button_cancel /* 2131755339 */:
                if (this.f4789b != null) {
                    this.f4789b.mo5905a();
                    break;
                }
                break;
            case R.id.hidefw_button_ok /* 2131755340 */:
                if (this.f4788a != null) {
                    this.f4788a.mo5906a();
                    break;
                }
                break;
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.elfin.p085ui.p086a.DialogC1313a, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_hidefw);
        m6174a(0.1f);
        m6175a(0.8f, 0.3f);
        this.f4790c = (Button) findViewById(R.id.hidefw_button_ok);
        this.f4791e = (Button) findViewById(R.id.hidefw_button_cancel);
        this.f4790c.setOnClickListener(this);
        this.f4791e.setOnClickListener(this);
    }
}
