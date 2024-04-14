package com.cyjh.elfin.p085ui.adpter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.cyjh.elfin.entity.ScriptLog;
import com.hjol.R;
import java.util.ArrayList;

/* renamed from: com.cyjh.elfin.ui.adpter.a */
/* loaded from: classes.dex */
public final class C1390a extends BaseAdapter {

    /* renamed from: a */
    public boolean f5337a;

    /* renamed from: b */
    private ArrayList<ScriptLog> f5338b;

    /* renamed from: c */
    private LayoutInflater f5339c;

    /* renamed from: com.cyjh.elfin.ui.adpter.a$a */
    /* loaded from: classes.dex */
    private class a implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: b */
        private int f5341b;

        public a(int i) {
            this.f5341b = i;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            ((ScriptLog) C1390a.this.f5338b.get(this.f5341b)).setSelect(z);
        }
    }

    /* renamed from: com.cyjh.elfin.ui.adpter.a$b */
    /* loaded from: classes.dex */
    static class b {

        /* renamed from: a */
        TextView f5342a;

        /* renamed from: b */
        TextView f5343b;

        /* renamed from: c */
        CheckBox f5344c;

        /* renamed from: d */
        ImageView f5345d;

        b() {
        }
    }

    public C1390a(Context context, ArrayList<ScriptLog> arrayList) {
        this.f5338b = arrayList;
        this.f5339c = LayoutInflater.from(context);
    }

    /* renamed from: a */
    private void m6419a(boolean z) {
        this.f5337a = z;
    }

    /* renamed from: a */
    private boolean m6420a() {
        return this.f5337a;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f5338b.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return this.f5338b.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = this.f5339c.inflate(R.layout.litview_item_scriptlog, (ViewGroup) null);
            bVar = new b();
            bVar.f5342a = (TextView) view.findViewById(R.id.tv_listviewitem_scriptlog_size);
            bVar.f5343b = (TextView) view.findViewById(R.id.tv_listviewitem_scriptlog_name);
            bVar.f5344c = (CheckBox) view.findViewById(R.id.cb_listviewitem_scriptlog_select);
            bVar.f5345d = (ImageView) view.findViewById(R.id.img_listviewitem_scriptlog_select);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        ScriptLog scriptLog = this.f5338b.get(i);
        if (this.f5337a) {
            bVar.f5344c.setVisibility(0);
            bVar.f5345d.setVisibility(8);
        } else {
            bVar.f5344c.setVisibility(8);
            bVar.f5345d.setVisibility(0);
        }
        bVar.f5342a.setText(scriptLog.getSize());
        bVar.f5343b.setText(scriptLog.getName());
        bVar.f5344c.setOnCheckedChangeListener(new a(i));
        bVar.f5344c.setChecked(scriptLog.isSelect());
        return view;
    }
}
