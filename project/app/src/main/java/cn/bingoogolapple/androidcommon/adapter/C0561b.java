package cn.bingoogolapple.androidcommon.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: cn.bingoogolapple.androidcommon.adapter.b */
/* loaded from: classes.dex */
public final class C0561b {

    /* renamed from: a */
    protected View f1181a;

    /* renamed from: b */
    protected ViewOnClickListenerC0567h f1182b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0561b(ViewGroup viewGroup, int i) {
        this.f1181a = LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false);
        this.f1181a.setTag(this);
        this.f1182b = new ViewOnClickListenerC0567h(viewGroup, this.f1181a);
    }

    /* renamed from: a */
    private static C0561b m1287a(View view, ViewGroup viewGroup, int i) {
        return view == null ? new C0561b(viewGroup, i) : (C0561b) view.getTag();
    }

    /* renamed from: a */
    public final ViewOnClickListenerC0567h m1288a() {
        return this.f1182b;
    }

    /* renamed from: b */
    public final View m1289b() {
        return this.f1181a;
    }
}
