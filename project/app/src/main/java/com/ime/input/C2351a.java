package com.ime.input;

import android.inputmethodservice.InputMethodService;
import android.view.inputmethod.InputConnection;

/* renamed from: com.ime.input.a */
/* loaded from: classes.dex */
public final class C2351a {

    /* renamed from: b */
    private static C2351a f8823b;

    /* renamed from: a */
    public InputMethodService f8824a = null;

    private C2351a() {
    }

    /* renamed from: a */
    public static C2351a m10315a() {
        if (f8823b == null) {
            f8823b = new C2351a();
        }
        return f8823b;
    }

    /* renamed from: a */
    private void m10316a(InputMethodService inputMethodService) {
        this.f8824a = inputMethodService;
    }

    /* renamed from: a */
    private void m10317a(String str) {
        InputConnection currentInputConnection;
        if (this.f8824a == null || (currentInputConnection = this.f8824a.getCurrentInputConnection()) == null) {
            return;
        }
        currentInputConnection.commitText(str, str.length());
    }

    /* renamed from: b */
    private void m10318b() {
        this.f8824a = null;
    }

    /* renamed from: b */
    private void m10319b(String str) {
        if (this.f8824a != null) {
            this.f8824a.switchInputMethod(str);
        }
    }
}
