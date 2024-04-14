package com.bumptech.glide.util.p057a;

import android.support.annotation.NonNull;

/* renamed from: com.bumptech.glide.util.a.c */
/* loaded from: classes.dex */
public abstract class AbstractC1076c {

    /* renamed from: a */
    private static final boolean f3440a = false;

    /* renamed from: com.bumptech.glide.util.a.c$a */
    /* loaded from: classes.dex */
    private static class a extends AbstractC1076c {

        /* renamed from: a */
        private volatile RuntimeException f3441a;

        a() {
            super((byte) 0);
        }

        @Override // com.bumptech.glide.util.p057a.AbstractC1076c
        /* renamed from: a */
        public final void mo3441a() {
            if (this.f3441a != null) {
                throw new IllegalStateException("Already released", this.f3441a);
            }
        }

        @Override // com.bumptech.glide.util.p057a.AbstractC1076c
        /* renamed from: a */
        final void mo3442a(boolean z) {
            this.f3441a = z ? new RuntimeException("Released") : null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.util.a.c$b */
    /* loaded from: classes.dex */
    public static class b extends AbstractC1076c {

        /* renamed from: a */
        private volatile boolean f3442a;

        public b() {
            super((byte) 0);
        }

        @Override // com.bumptech.glide.util.p057a.AbstractC1076c
        /* renamed from: a */
        public final void mo3441a() {
            if (this.f3442a) {
                throw new IllegalStateException("Already released");
            }
        }

        @Override // com.bumptech.glide.util.p057a.AbstractC1076c
        /* renamed from: a */
        public final void mo3442a(boolean z) {
            this.f3442a = z;
        }
    }

    private AbstractC1076c() {
    }

    /* synthetic */ AbstractC1076c(byte b2) {
        this();
    }

    @NonNull
    /* renamed from: b */
    private static AbstractC1076c m3440b() {
        return new b();
    }

    /* renamed from: a */
    public abstract void mo3441a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void mo3442a(boolean z);
}
