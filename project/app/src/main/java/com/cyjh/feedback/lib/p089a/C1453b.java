package com.cyjh.feedback.lib.p089a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.cyjh.feedback.lib.p093e.C1466c;
import com.cyjh.feedback.libraryfeedbackinfo.C1478R;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.cyjh.feedback.lib.a.b */
/* loaded from: classes.dex */
public final class C1453b extends BaseAdapter {

    /* renamed from: d */
    private static final int f5608d = 4;

    /* renamed from: e */
    private static final int f5609e = 1;

    /* renamed from: a */
    public List<String> f5610a;

    /* renamed from: b */
    public a f5611b;

    /* renamed from: c */
    private LayoutInflater f5612c;

    /* renamed from: com.cyjh.feedback.lib.a.b$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo6705a(int i);
    }

    /* renamed from: com.cyjh.feedback.lib.a.b$b */
    /* loaded from: classes.dex */
    class b {

        /* renamed from: a */
        ImageView f5615a;

        /* renamed from: b */
        ImageView f5616b;

        b() {
        }
    }

    public C1453b(Context context) {
        this.f5610a = new ArrayList();
        this.f5612c = LayoutInflater.from(context);
        this.f5610a = null;
    }

    /* renamed from: a */
    private void m6702a(a aVar) {
        this.f5611b = aVar;
    }

    /* renamed from: a */
    private void m6703a(List<String> list) {
        this.f5610a = list;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        if (this.f5610a == null) {
            return 1;
        }
        if (this.f5610a.size() < 4) {
            return this.f5610a.size() + 1;
        }
        return 4;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        if (this.f5610a == null || this.f5610a.size() <= 0) {
            return null;
        }
        return this.f5610a.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(final int i, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = this.f5612c.inflate(C1478R.layout.grid_view_item, viewGroup, false);
            bVar = new b();
            bVar.f5615a = (ImageView) view.findViewById(C1478R.id.id_iv_grid_item);
            bVar.f5616b = (ImageView) view.findViewById(C1478R.id.id_img_delete_select);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        bVar.f5615a.setImageResource(C1478R.mipmap.img_add_img_select);
        bVar.f5616b.setVisibility(4);
        if (this.f5610a != null && i < getCount() - 1) {
            C1466c.m6809a().m6823a(this.f5610a.get(i), bVar.f5615a);
            bVar.f5616b.setVisibility(0);
        }
        if (this.f5610a != null && this.f5610a.size() == 4) {
            C1466c.m6809a().m6823a(this.f5610a.get(i), bVar.f5615a);
            bVar.f5616b.setVisibility(0);
        }
        bVar.f5616b.setOnClickListener(new View.OnClickListener() { // from class: com.cyjh.feedback.lib.a.b.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C1453b.this.f5610a.remove(C1453b.this.f5610a.get(i));
                C1453b.this.notifyDataSetChanged();
                if (C1453b.this.f5611b != null) {
                    C1453b.this.f5611b.mo6705a(C1453b.this.f5610a.size());
                }
            }
        });
        return view;
    }
}
