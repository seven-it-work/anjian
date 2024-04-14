package com.bumptech.glide;

import android.support.annotation.NonNull;
import com.bumptech.glide.AbstractC1048p;
import com.bumptech.glide.request.p056a.C1054e;
import com.bumptech.glide.request.p056a.C1057h;
import com.bumptech.glide.request.p056a.C1058i;
import com.bumptech.glide.request.p056a.C1059j;
import com.bumptech.glide.request.p056a.InterfaceC1056g;
import com.bumptech.glide.util.C1084i;

/* renamed from: com.bumptech.glide.p */
/* loaded from: classes.dex */
public abstract class AbstractC1048p<CHILD extends AbstractC1048p<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* renamed from: a */
    InterfaceC1056g<? super TranscodeType> f3297a = C1054e.m3267a();

    @NonNull
    /* renamed from: a */
    private CHILD m3233a(int i) {
        return m3239a(new C1057h(i));
    }

    @NonNull
    /* renamed from: a */
    private CHILD m3234a(@NonNull C1059j.a aVar) {
        return m3239a(new C1058i(aVar));
    }

    @NonNull
    /* renamed from: b */
    private CHILD m3235b() {
        return m3239a(C1054e.m3267a());
    }

    /* renamed from: c */
    private InterfaceC1056g<? super TranscodeType> m3236c() {
        return this.f3297a;
    }

    /* renamed from: d */
    private CHILD m3237d() {
        return this;
    }

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final CHILD clone() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @NonNull
    /* renamed from: a */
    public final CHILD m3239a(@NonNull InterfaceC1056g<? super TranscodeType> interfaceC1056g) {
        this.f3297a = (InterfaceC1056g) C1084i.m3470a(interfaceC1056g, "Argument must not be null");
        return this;
    }
}
