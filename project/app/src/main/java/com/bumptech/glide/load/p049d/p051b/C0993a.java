package com.bumptech.glide.load.p049d.p051b;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.p040a.InterfaceC0859e;
import java.io.IOException;
import java.nio.ByteBuffer;

/* renamed from: com.bumptech.glide.load.d.b.a */
/* loaded from: classes.dex */
public final class C0993a implements InterfaceC0859e<ByteBuffer> {

    /* renamed from: a */
    private final ByteBuffer f3109a;

    /* renamed from: com.bumptech.glide.load.d.b.a$a */
    /* loaded from: classes.dex */
    public static class a implements InterfaceC0859e.a<ByteBuffer> {
        @NonNull
        /* renamed from: a, reason: avoid collision after fix types in other method */
        private static InterfaceC0859e<ByteBuffer> a2(ByteBuffer byteBuffer) {
            return new C0993a(byteBuffer);
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0859e.a
        @NonNull
        /* renamed from: a */
        public final /* synthetic */ InterfaceC0859e<ByteBuffer> mo2413a(ByteBuffer byteBuffer) {
            return new C0993a(byteBuffer);
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0859e.a
        @NonNull
        /* renamed from: a */
        public final Class<ByteBuffer> mo2414a() {
            return ByteBuffer.class;
        }
    }

    public C0993a(ByteBuffer byteBuffer) {
        this.f3109a = byteBuffer;
    }

    @NonNull
    /* renamed from: c */
    private ByteBuffer m2963c() {
        this.f3109a.position(0);
        return this.f3109a;
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0859e
    @NonNull
    /* renamed from: a */
    public final /* synthetic */ ByteBuffer mo2411a() throws IOException {
        this.f3109a.position(0);
        return this.f3109a;
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0859e
    /* renamed from: b */
    public final void mo2412b() {
    }
}
