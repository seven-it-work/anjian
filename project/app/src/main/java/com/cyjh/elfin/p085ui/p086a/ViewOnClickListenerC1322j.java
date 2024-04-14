package com.cyjh.elfin.p085ui.p086a;

import android.view.View;
import java.io.File;

/* renamed from: com.cyjh.elfin.ui.a.j */
/* loaded from: classes.dex */
final /* synthetic */ class ViewOnClickListenerC1322j implements View.OnClickListener {

    /* renamed from: a */
    private final ViewOnClickListenerC1320h f5090a;

    /* renamed from: b */
    private final File f5091b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewOnClickListenerC1322j(ViewOnClickListenerC1320h viewOnClickListenerC1320h, File file) {
        this.f5090a = viewOnClickListenerC1320h;
        this.f5091b = file;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f5090a.m6205d(this.f5091b);
    }
}
