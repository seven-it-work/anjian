package com.google.p130a.p140d.p143c;

import android.support.v4.view.InputDeviceCompat;
import android.support.v7.widget.helper.ItemTouchHelper;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.a.d.c.b */
/* loaded from: classes.dex */
public final class C1878b implements InterfaceC1883g {
    /* renamed from: a */
    private static char m8608a(char c2, int i) {
        int i2 = c2 + ((i * 149) % 255) + 1;
        return i2 <= 255 ? (char) i2 : (char) (i2 + InputDeviceCompat.SOURCE_ANY);
    }

    @Override // com.google.p130a.p140d.p143c.InterfaceC1883g
    /* renamed from: a */
    public final int mo8606a() {
        return 5;
    }

    @Override // com.google.p130a.p140d.p143c.InterfaceC1883g
    /* renamed from: a */
    public final void mo8607a(C1884h c1884h) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) 0);
        while (true) {
            if (!c1884h.m8649b()) {
                break;
            }
            sb.append(c1884h.m8645a());
            c1884h.f7363f++;
            if (C1886j.m8657a(c1884h.f7358a, c1884h.f7363f, 5) != 5) {
                c1884h.f7364g = 0;
                break;
            }
        }
        int length = sb.length() - 1;
        int length2 = c1884h.f7362e.length() + length + 1;
        c1884h.m8647a(length2);
        boolean z = c1884h.f7365h.f7394b - length2 > 0;
        if (c1884h.m8649b() || z) {
            if (length <= 249) {
                sb.setCharAt(0, (char) length);
            } else {
                if (length > 1555) {
                    throw new IllegalStateException("Message length not in valid ranges: ".concat(String.valueOf(length)));
                }
                sb.setCharAt(0, (char) ((length / ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION) + 249));
                sb.insert(1, (char) (length % ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION));
            }
        }
        int length3 = sb.length();
        for (int i = 0; i < length3; i++) {
            int charAt = sb.charAt(i) + (((c1884h.f7362e.length() + 1) * 149) % 255) + 1;
            if (charAt > 255) {
                charAt += InputDeviceCompat.SOURCE_ANY;
            }
            c1884h.m8646a((char) charAt);
        }
    }
}
