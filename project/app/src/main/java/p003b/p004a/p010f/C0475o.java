package p003b.p004a.p010f;

import java.io.IOException;

/* renamed from: b.a.f.o */
/* loaded from: classes.dex */
public final class C0475o extends IOException {
    public final EnumC0462b errorCode;

    public C0475o(EnumC0462b enumC0462b) {
        super("stream was reset: " + enumC0462b);
        this.errorCode = enumC0462b;
    }
}
