package cn.bingoogolapple.androidcommon.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* loaded from: classes.dex */
public class BGARecyclerViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener, View.OnLongClickListener {

    /* renamed from: a */
    protected Context f1170a;

    /* renamed from: b */
    protected InterfaceC0565f f1171b;

    /* renamed from: c */
    protected InterfaceC0566g f1172c;

    /* renamed from: d */
    protected ViewOnClickListenerC0567h f1173d;

    /* renamed from: e */
    protected RecyclerView f1174e;

    public BGARecyclerViewHolder(RecyclerView recyclerView, View view, InterfaceC0565f interfaceC0565f, InterfaceC0566g interfaceC0566g) {
        super(view);
        this.f1174e = recyclerView;
        this.f1170a = this.f1174e.getContext();
        this.f1171b = interfaceC0565f;
        this.f1172c = interfaceC0566g;
        view.setOnClickListener(this);
        view.setOnLongClickListener(this);
        this.f1173d = new ViewOnClickListenerC0567h(this.f1174e, this.itemView);
        this.f1173d.m1321a(this);
    }

    /* renamed from: a */
    public final ViewOnClickListenerC0567h m1268a() {
        return this.f1173d;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != this.itemView.getId() || this.f1171b == null) {
            return;
        }
        this.f1171b.mo1293a(getAdapterPosition());
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (view.getId() != this.itemView.getId() || this.f1172c == null) {
            return false;
        }
        InterfaceC0566g interfaceC0566g = this.f1172c;
        getAdapterPosition();
        return interfaceC0566g.m1294a();
    }
}
