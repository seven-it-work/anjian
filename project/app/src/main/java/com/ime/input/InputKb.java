package com.ime.input;

import android.inputmethodservice.InputMethodService;
import android.inputmethodservice.KeyboardView;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.EditorInfo;

/* loaded from: classes.dex */
public class InputKb extends InputMethodService {

    /* renamed from: b */
    public static Handler f8820b;

    /* renamed from: a */
    EditorInfo f8821a;

    /* renamed from: c */
    private KeyboardView f8822c;

    @Override // android.inputmethodservice.InputMethodService, android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.i("InputKb", "InputKb - onCreate()");
        C2351a.m10315a().f8824a = this;
    }

    @Override // android.inputmethodservice.InputMethodService
    public View onCreateInputView() {
        return this.f8822c;
    }

    @Override // android.inputmethodservice.InputMethodService, android.inputmethodservice.AbstractInputMethodService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        C2351a.m10315a().f8824a = null;
    }

    @Override // android.inputmethodservice.InputMethodService
    public boolean onEvaluateFullscreenMode() {
        if (getResources().getConfiguration().orientation == 2 && this.f8821a != null && (this.f8821a.imeOptions & 268435456) != 0) {
        }
        return false;
    }

    @Override // android.inputmethodservice.InputMethodService
    public void onFinishInputView(boolean z) {
        super.onFinishInputView(z);
    }
}
