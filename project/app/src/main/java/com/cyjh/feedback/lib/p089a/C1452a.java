package com.cyjh.feedback.lib.p089a;

import android.content.Context;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.Toast;
import com.cyjh.feedback.lib.p093e.C1466c;
import com.cyjh.feedback.libraryfeedbackinfo.C1478R;
import java.io.File;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* renamed from: com.cyjh.feedback.lib.a.a */
/* loaded from: classes.dex */
public final class C1452a extends BaseAdapter {

    /* renamed from: a */
    public Set<String> f5597a = new HashSet();

    /* renamed from: b */
    public a f5598b;

    /* renamed from: c */
    private Context f5599c;

    /* renamed from: d */
    private LayoutInflater f5600d;

    /* renamed from: e */
    private List<String> f5601e;

    /* renamed from: com.cyjh.feedback.lib.a.a$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo6700a(int i);
    }

    /* renamed from: com.cyjh.feedback.lib.a.a$b */
    /* loaded from: classes.dex */
    class b {

        /* renamed from: a */
        ImageView f5605a;

        /* renamed from: b */
        ImageButton f5606b;

        b() {
        }
    }

    public C1452a(Context context, List<String> list) {
        this.f5599c = context;
        this.f5600d = LayoutInflater.from(context);
        this.f5601e = list;
    }

    /* renamed from: a */
    private Set<String> m6696a() {
        return this.f5597a;
    }

    /* renamed from: a */
    private void m6697a(a aVar) {
        this.f5598b = aVar;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f5601e.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return this.f5601e.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        final b bVar;
        if (view == null) {
            bVar = new b();
            view2 = this.f5600d.inflate(C1478R.layout.image_adapter_item, viewGroup, false);
            bVar.f5606b = (ImageButton) view2.findViewById(C1478R.id.id_img_select_grid_item);
            bVar.f5605a = (ImageView) view2.findViewById(C1478R.id.id_img_grid_item);
            view2.setTag(bVar);
        } else {
            view2 = view;
            bVar = (b) view.getTag();
        }
        bVar.f5605a.setImageResource(C1478R.mipmap.pictures_no);
        final String str = this.f5601e.get(i);
        C1466c.m6810a(C1466c.c.FILO$789f335a).m6823a(str, bVar.f5605a);
        bVar.f5605a.setColorFilter((ColorFilter) null);
        bVar.f5606b.setVisibility(4);
        if (this.f5597a.contains(str)) {
            bVar.f5605a.setColorFilter(Color.parseColor("#77000000"));
            bVar.f5606b.setVisibility(0);
        }
        bVar.f5605a.setOnClickListener(new View.OnClickListener() { // from class: com.cyjh.feedback.lib.a.a.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                ImageButton imageButton;
                int i2;
                Context context;
                Context context2;
                int i3;
                if ((new File(str).length() / 1024) - PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH <= 0) {
                    if (C1452a.this.f5597a.contains(str)) {
                        C1452a.this.f5597a.remove(str);
                        bVar.f5605a.setColorFilter((ColorFilter) null);
                        imageButton = bVar.f5606b;
                        i2 = 4;
                    } else if (C1452a.this.f5597a.size() > 3) {
                        context = C1452a.this.f5599c;
                        context2 = C1452a.this.f5599c;
                        i3 = C1478R.string.img_count_more;
                    } else {
                        C1452a.this.f5597a.add(str);
                        bVar.f5605a.setColorFilter(Color.parseColor("#77000000"));
                        imageButton = bVar.f5606b;
                        i2 = 0;
                    }
                    imageButton.setVisibility(i2);
                    if (C1452a.this.f5598b != null) {
                        C1452a.this.f5598b.mo6700a(C1452a.this.f5597a.size());
                        return;
                    }
                    return;
                }
                context = C1452a.this.f5599c;
                context2 = C1452a.this.f5599c;
                i3 = C1478R.string.img_content_too_large;
                Toast.makeText(context, context2.getString(i3), 1).show();
            }
        });
        return view2;
    }
}
