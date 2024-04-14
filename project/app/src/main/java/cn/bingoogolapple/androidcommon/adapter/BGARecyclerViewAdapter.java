package cn.bingoogolapple.androidcommon.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BGARecyclerViewAdapter<M> extends RecyclerView.Adapter<BGARecyclerViewHolder> {

    /* renamed from: b */
    protected Context f1162b;

    /* renamed from: d */
    protected InterfaceC0563d f1164d;

    /* renamed from: e */
    protected InterfaceC0564e f1165e;

    /* renamed from: f */
    protected InterfaceC0562c f1166f;

    /* renamed from: g */
    protected InterfaceC0565f f1167g;

    /* renamed from: h */
    protected InterfaceC0566g f1168h;

    /* renamed from: i */
    protected RecyclerView f1169i;

    /* renamed from: a */
    protected final int f1161a = com.hjol.R.layout.adapter_msg_notify;

    /* renamed from: c */
    protected List<M> f1163c = new ArrayList();

    public BGARecyclerViewAdapter(RecyclerView recyclerView) {
        this.f1169i = recyclerView;
        this.f1162b = this.f1169i.getContext();
    }

    /* renamed from: a */
    private BGARecyclerViewHolder m1245a(ViewGroup viewGroup) {
        BGARecyclerViewHolder bGARecyclerViewHolder = new BGARecyclerViewHolder(this.f1169i, LayoutInflater.from(this.f1162b).inflate(this.f1161a, viewGroup, false), this.f1167g, this.f1168h);
        bGARecyclerViewHolder.m1268a().m1323a(this.f1164d);
        bGARecyclerViewHolder.m1268a().m1324a(this.f1165e);
        bGARecyclerViewHolder.m1268a().m1322a(this.f1166f);
        bGARecyclerViewHolder.m1268a();
        return bGARecyclerViewHolder;
    }

    /* renamed from: a */
    private void m1246a(int i, int i2) {
        this.f1163c.add(i2, this.f1163c.remove(i));
        notifyItemMoved(i, i2);
    }

    /* renamed from: a */
    private void m1247a(int i, M m) {
        this.f1163c.add(i, m);
        notifyItemInserted(i);
    }

    /* renamed from: a */
    private void m1248a(BGARecyclerViewHolder bGARecyclerViewHolder, int i) {
        mo1266a(bGARecyclerViewHolder.m1268a(), (ViewOnClickListenerC0567h) m1263a(i));
    }

    /* renamed from: a */
    private void m1249a(InterfaceC0562c interfaceC0562c) {
        this.f1166f = interfaceC0562c;
    }

    /* renamed from: a */
    private void m1250a(InterfaceC0563d interfaceC0563d) {
        this.f1164d = interfaceC0563d;
    }

    /* renamed from: a */
    private void m1251a(InterfaceC0564e interfaceC0564e) {
        this.f1165e = interfaceC0564e;
    }

    /* renamed from: a */
    private void m1252a(InterfaceC0566g interfaceC0566g) {
        this.f1168h = interfaceC0566g;
    }

    /* renamed from: a */
    private void m1253a(M m) {
        int indexOf = this.f1163c.indexOf(m);
        this.f1163c.remove(indexOf);
        notifyItemRemoved(indexOf);
    }

    /* renamed from: a */
    private void m1254a(M m, M m2) {
        int indexOf = this.f1163c.indexOf(m);
        this.f1163c.set(indexOf, m2);
        notifyItemChanged(indexOf);
    }

    /* renamed from: b */
    private static void m1255b() {
    }

    /* renamed from: b */
    private void m1256b(int i) {
        this.f1163c.remove(i);
        notifyItemRemoved(i);
    }

    /* renamed from: b */
    private void m1257b(int i, M m) {
        this.f1163c.set(i, m);
        notifyItemChanged(i);
    }

    /* renamed from: b */
    private void m1258b(M m) {
        m1247a(0, (int) m);
    }

    /* renamed from: b */
    private void m1259b(List<M> list) {
        if (list != null) {
            this.f1163c.addAll(0, list);
            notifyItemRangeInserted(0, list.size());
        }
    }

    /* renamed from: c */
    private List<M> m1260c() {
        return this.f1163c;
    }

    /* renamed from: c */
    private void m1261c(M m) {
        m1247a(this.f1163c.size(), (int) m);
    }

    /* renamed from: c */
    private void m1262c(List<M> list) {
        if (list != null) {
            this.f1163c.addAll(this.f1163c.size(), list);
            notifyItemRangeInserted(this.f1163c.size(), list.size());
        }
    }

    /* renamed from: a */
    public final M m1263a(int i) {
        return this.f1163c.get(i);
    }

    /* renamed from: a */
    public final void m1264a() {
        this.f1163c.clear();
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public final void m1265a(InterfaceC0565f interfaceC0565f) {
        this.f1167g = interfaceC0565f;
    }

    /* renamed from: a */
    public abstract void mo1266a(ViewOnClickListenerC0567h viewOnClickListenerC0567h, M m);

    /* renamed from: a */
    public final void m1267a(List<M> list) {
        if (list != null) {
            this.f1163c = list;
        } else {
            this.f1163c.clear();
        }
        notifyDataSetChanged();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f1163c.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public /* synthetic */ void onBindViewHolder(BGARecyclerViewHolder bGARecyclerViewHolder, int i) {
        mo1266a(bGARecyclerViewHolder.m1268a(), (ViewOnClickListenerC0567h) m1263a(i));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public /* synthetic */ BGARecyclerViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        BGARecyclerViewHolder bGARecyclerViewHolder = new BGARecyclerViewHolder(this.f1169i, LayoutInflater.from(this.f1162b).inflate(this.f1161a, viewGroup, false), this.f1167g, this.f1168h);
        bGARecyclerViewHolder.m1268a().m1323a(this.f1164d);
        bGARecyclerViewHolder.m1268a().m1324a(this.f1165e);
        bGARecyclerViewHolder.m1268a().m1322a(this.f1166f);
        bGARecyclerViewHolder.m1268a();
        return bGARecyclerViewHolder;
    }
}
