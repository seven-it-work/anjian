package com.p021b.p022a.p023a.p029f;

import java.io.File;
import java.io.IOException;

/* renamed from: com.b.a.a.f.b */
/* loaded from: classes.dex */
final class C0712b implements InterfaceC0711a {
    @Override // com.p021b.p022a.p023a.p029f.InterfaceC0711a
    /* renamed from: a */
    public final void mo1778a(File file) {
        if (file.delete() || !file.exists()) {
            return;
        }
        throw new IOException("failed to delete " + file);
    }
}
