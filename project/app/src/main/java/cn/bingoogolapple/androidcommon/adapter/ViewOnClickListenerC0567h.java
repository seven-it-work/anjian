package cn.bingoogolapple.androidcommon.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.IdRes;
import android.support.annotation.StringRes;
import android.support.v7.widget.RecyclerView;
import android.text.Html;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;

/* renamed from: cn.bingoogolapple.androidcommon.adapter.h */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC0567h implements View.OnClickListener, View.OnLongClickListener, CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    protected final SparseArray<View> f1183a = new SparseArray<>();

    /* renamed from: b */
    protected InterfaceC0563d f1184b;

    /* renamed from: c */
    protected InterfaceC0564e f1185c;

    /* renamed from: d */
    protected InterfaceC0562c f1186d;

    /* renamed from: e */
    protected View f1187e;

    /* renamed from: f */
    protected Context f1188f;

    /* renamed from: g */
    protected int f1189g;

    /* renamed from: h */
    protected BGARecyclerViewHolder f1190h;

    /* renamed from: i */
    protected RecyclerView f1191i;

    /* renamed from: j */
    protected ViewGroup f1192j;

    /* renamed from: k */
    protected Object f1193k;

    public ViewOnClickListenerC0567h(RecyclerView recyclerView, View view) {
        this.f1191i = recyclerView;
        this.f1187e = view;
        this.f1188f = view.getContext();
    }

    public ViewOnClickListenerC0567h(ViewGroup viewGroup, View view) {
        this.f1192j = viewGroup;
        this.f1187e = view;
        this.f1188f = view.getContext();
    }

    /* renamed from: a */
    private BGARecyclerViewHolder m1295a() {
        return this.f1190h;
    }

    /* renamed from: a */
    private ViewOnClickListenerC0567h m1296a(@IdRes int i, @StringRes int i2) {
        ((TextView) m1325b(i)).setText(i2);
        return this;
    }

    /* renamed from: a */
    private ViewOnClickListenerC0567h m1297a(@IdRes int i, int i2, Object obj) {
        m1325b(i).setTag(i2, obj);
        return this;
    }

    /* renamed from: a */
    private ViewOnClickListenerC0567h m1298a(@IdRes int i, Bitmap bitmap) {
        ((ImageView) m1325b(i)).setImageBitmap(bitmap);
        return this;
    }

    /* renamed from: a */
    private ViewOnClickListenerC0567h m1299a(@IdRes int i, Drawable drawable) {
        ((ImageView) m1325b(i)).setImageDrawable(drawable);
        return this;
    }

    /* renamed from: a */
    private ViewOnClickListenerC0567h m1300a(@IdRes int i, Object obj) {
        m1325b(i).setTag(obj);
        return this;
    }

    /* renamed from: a */
    private ViewOnClickListenerC0567h m1301a(@IdRes int i, String str) {
        ((TextView) m1325b(i)).setText(Html.fromHtml(str));
        return this;
    }

    /* renamed from: a */
    private ViewOnClickListenerC0567h m1302a(@IdRes int i, boolean z) {
        ((Checkable) m1325b(i)).setChecked(z);
        return this;
    }

    /* renamed from: a */
    private void m1303a(Object obj) {
        this.f1193k = obj;
    }

    /* renamed from: b */
    private int m1304b() {
        return this.f1190h != null ? this.f1190h.getAdapterPosition() : this.f1189g;
    }

    /* renamed from: b */
    private ViewOnClickListenerC0567h m1305b(@IdRes int i, int i2) {
        m1325b(i).setVisibility(i2);
        return this;
    }

    /* renamed from: c */
    private View m1306c() {
        return this.f1187e;
    }

    /* renamed from: c */
    private ViewOnClickListenerC0567h m1307c(@IdRes int i, @ColorRes int i2) {
        ((TextView) m1325b(i)).setTextColor(this.f1188f.getResources().getColor(i2));
        return this;
    }

    /* renamed from: c */
    private void m1308c(@IdRes int i) {
        m1325b(i).setOnClickListener(this);
    }

    /* renamed from: d */
    private ViewOnClickListenerC0567h m1309d(@IdRes int i, int i2) {
        ((TextView) m1325b(i)).setTextColor(i2);
        return this;
    }

    /* renamed from: d */
    private Object m1310d() {
        return this.f1193k;
    }

    /* renamed from: d */
    private void m1311d(@IdRes int i) {
        m1325b(i).setOnLongClickListener(this);
    }

    /* renamed from: e */
    private ViewOnClickListenerC0567h m1312e(@IdRes int i, int i2) {
        m1325b(i).setBackgroundResource(i2);
        return this;
    }

    /* renamed from: e */
    private void m1313e(@IdRes int i) {
        if (m1325b(i) instanceof CompoundButton) {
            ((CompoundButton) m1325b(i)).setOnCheckedChangeListener(this);
        }
    }

    /* renamed from: f */
    private ImageView m1314f(@IdRes int i) {
        return (ImageView) m1325b(i);
    }

    /* renamed from: f */
    private ViewOnClickListenerC0567h m1315f(@IdRes int i, int i2) {
        m1325b(i).setBackgroundColor(i2);
        return this;
    }

    /* renamed from: g */
    private TextView m1316g(@IdRes int i) {
        return (TextView) m1325b(i);
    }

    /* renamed from: g */
    private ViewOnClickListenerC0567h m1317g(@IdRes int i, @ColorRes int i2) {
        m1325b(i).setBackgroundColor(this.f1188f.getResources().getColor(i2));
        return this;
    }

    /* renamed from: h */
    private ViewOnClickListenerC0567h m1318h(@IdRes int i, @DrawableRes int i2) {
        ((ImageView) m1325b(i)).setImageResource(i2);
        return this;
    }

    /* renamed from: a */
    public final ViewOnClickListenerC0567h m1319a(@IdRes int i, CharSequence charSequence) {
        ((TextView) m1325b(i)).setText(charSequence);
        return this;
    }

    /* renamed from: a */
    public final void m1320a(int i) {
        this.f1189g = i;
    }

    /* renamed from: a */
    public final void m1321a(BGARecyclerViewHolder bGARecyclerViewHolder) {
        this.f1190h = bGARecyclerViewHolder;
    }

    /* renamed from: a */
    public final void m1322a(InterfaceC0562c interfaceC0562c) {
        this.f1186d = interfaceC0562c;
    }

    /* renamed from: a */
    public final void m1323a(InterfaceC0563d interfaceC0563d) {
        this.f1184b = interfaceC0563d;
    }

    /* renamed from: a */
    public final void m1324a(InterfaceC0564e interfaceC0564e) {
        this.f1185c = interfaceC0564e;
    }

    /* renamed from: b */
    public final <T extends View> T m1325b(@IdRes int i) {
        T t = (T) this.f1183a.get(i);
        if (t != null) {
            return t;
        }
        T t2 = (T) this.f1187e.findViewById(i);
        this.f1183a.put(i, t2);
        return t2;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (this.f1186d != null) {
            if (this.f1191i != null) {
                m1304b();
            } else if (this.f1192j != null) {
                m1304b();
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f1184b != null) {
            if (this.f1191i != null) {
                m1304b();
            } else if (this.f1192j != null) {
                m1304b();
            }
        }
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        if (this.f1185c == null) {
            return false;
        }
        if (this.f1191i == null && this.f1192j == null) {
            return false;
        }
        InterfaceC0564e interfaceC0564e = this.f1185c;
        m1304b();
        return interfaceC0564e.m1292a();
    }
}
