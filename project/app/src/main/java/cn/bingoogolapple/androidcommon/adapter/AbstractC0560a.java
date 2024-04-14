package cn.bingoogolapple.androidcommon.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: cn.bingoogolapple.androidcommon.adapter.a */
/* loaded from: classes.dex */
public abstract class AbstractC0560a<M> extends BaseAdapter {

    /* renamed from: a */
    protected final int f1175a;

    /* renamed from: b */
    protected Context f1176b;

    /* renamed from: c */
    protected List<M> f1177c = new ArrayList();

    /* renamed from: d */
    protected InterfaceC0563d f1178d;

    /* renamed from: e */
    protected InterfaceC0564e f1179e;

    /* renamed from: f */
    protected InterfaceC0562c f1180f;

    private AbstractC0560a(Context context, int i) {
        this.f1176b = context;
        this.f1175a = i;
    }

    /* renamed from: a */
    private void m1269a(int i) {
        this.f1177c.remove(i);
        notifyDataSetChanged();
    }

    /* renamed from: a */
    private void m1270a(int i, int i2) {
        Collections.swap(this.f1177c, i, i2);
        notifyDataSetChanged();
    }

    /* renamed from: a */
    private void m1271a(int i, M m) {
        this.f1177c.add(i, m);
        notifyDataSetChanged();
    }

    /* renamed from: a */
    private void m1272a(InterfaceC0562c interfaceC0562c) {
        this.f1180f = interfaceC0562c;
    }

    /* renamed from: a */
    private void m1273a(InterfaceC0563d interfaceC0563d) {
        this.f1178d = interfaceC0563d;
    }

    /* renamed from: a */
    private void m1274a(InterfaceC0564e interfaceC0564e) {
        this.f1179e = interfaceC0564e;
    }

    /* renamed from: a */
    private void m1275a(M m) {
        this.f1177c.remove(m);
        notifyDataSetChanged();
    }

    /* renamed from: a */
    private void m1276a(M m, M m2) {
        this.f1177c.set(this.f1177c.indexOf(m), m2);
        notifyDataSetChanged();
    }

    /* renamed from: a */
    private void m1277a(List<M> list) {
        if (list != null) {
            this.f1177c.addAll(0, list);
            notifyDataSetChanged();
        }
    }

    /* renamed from: b */
    private static void m1278b() {
    }

    /* renamed from: b */
    private void m1279b(int i, M m) {
        this.f1177c.set(i, m);
        notifyDataSetChanged();
    }

    /* renamed from: b */
    private void m1280b(M m) {
        m1271a(0, (int) m);
    }

    /* renamed from: b */
    private void m1281b(List<M> list) {
        if (list != null) {
            this.f1177c.addAll(this.f1177c.size(), list);
            notifyDataSetChanged();
        }
    }

    /* renamed from: c */
    private List<M> m1282c() {
        return this.f1177c;
    }

    /* renamed from: c */
    private void m1283c(M m) {
        m1271a(this.f1177c.size(), (int) m);
    }

    /* renamed from: c */
    private void m1284c(List<M> list) {
        if (list != null) {
            this.f1177c = list;
        } else {
            this.f1177c.clear();
        }
        notifyDataSetChanged();
    }

    /* renamed from: d */
    private void m1285d() {
        this.f1177c.clear();
        notifyDataSetChanged();
    }

    /* renamed from: a */
    protected abstract void m1286a();

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f1177c.size();
    }

    @Override // android.widget.Adapter
    public M getItem(int i) {
        return this.f1177c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C0561b c0561b = view == null ? new C0561b(viewGroup, this.f1175a) : (C0561b) view.getTag();
        c0561b.m1288a().m1320a(i);
        c0561b.m1288a().m1323a(this.f1178d);
        c0561b.m1288a().m1324a(this.f1179e);
        c0561b.m1288a().m1322a(this.f1180f);
        getItem(i);
        return c0561b.m1289b();
    }
}
