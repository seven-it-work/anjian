package com.p058c;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.Gallery;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RatingBar;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.TextView;
import com.hlzn.socketclient.p163b.C2146a;
import com.p058c.AbstractC1094b;
import com.p058c.p059a.AbstractC1089a;
import com.p058c.p060b.AbstractRunnableC1095a;
import com.p058c.p060b.C1096b;
import com.p058c.p060b.C1098d;
import com.p058c.p060b.C1099e;
import com.p058c.p060b.InterfaceC1102h;
import com.p058c.p062d.C1105a;
import com.p058c.p062d.C1112h;
import com.p058c.p062d.InterfaceC1108d;
import com.p058c.p062d.ViewOnClickListenerC1107c;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.nio.channels.FileChannel;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.entity.StringEntity;
import org.json.JSONObject;

/* renamed from: com.c.b */
/* loaded from: classes.dex */
public abstract class AbstractC1094b<T extends AbstractC1094b<T>> implements InterfaceC1108d {

    /* renamed from: Y */
    private static final Class<?>[] f3516Y = {View.class};

    /* renamed from: Z */
    private static Class<?>[] f3517Z = {AdapterView.class, View.class, Integer.TYPE, Long.TYPE};

    /* renamed from: aa */
    private static Class<?>[] f3518aa = {AbsListView.class, Integer.TYPE};

    /* renamed from: ab */
    private static final Class<?>[] f3519ab = {CharSequence.class, Integer.TYPE, Integer.TYPE, Integer.TYPE};

    /* renamed from: ac */
    private static Class<?>[] f3520ac = {Integer.TYPE, Integer.TYPE};

    /* renamed from: ad */
    private static final Class<?>[] f3521ad = {Integer.TYPE};

    /* renamed from: ae */
    private static Class<?>[] f3522ae = {Integer.TYPE, Paint.class};

    /* renamed from: af */
    private static WeakHashMap<Dialog, Void> f3523af = new WeakHashMap<>();

    /* renamed from: R */
    private View f3524R;

    /* renamed from: S */
    private Activity f3525S;

    /* renamed from: T */
    private Context f3526T;

    /* renamed from: U */
    private InterfaceC1102h f3527U;

    /* renamed from: V */
    private int f3528V = 0;

    /* renamed from: W */
    private HttpHost f3529W;

    /* renamed from: X */
    private Constructor<T> f3530X;

    /* renamed from: a */
    protected View f3531a;

    /* renamed from: b */
    protected Object f3532b;

    /* renamed from: c */
    protected AbstractC1089a f3533c;

    public AbstractC1094b(Activity activity) {
        this.f3525S = activity;
    }

    public AbstractC1094b(Activity activity, View view) {
        this.f3524R = view;
        this.f3531a = view;
        this.f3525S = activity;
    }

    public AbstractC1094b(Context context) {
        this.f3526T = context;
    }

    public AbstractC1094b(View view) {
        this.f3524R = view;
        this.f3531a = view;
    }

    /* renamed from: A */
    private Object m3591A() {
        if (this.f3531a instanceof AdapterView) {
            return ((AdapterView) this.f3531a).getSelectedItem();
        }
        return null;
    }

    /* renamed from: B */
    private int m3592B() {
        if (this.f3531a instanceof AdapterView) {
            return ((AdapterView) this.f3531a).getSelectedItemPosition();
        }
        return -1;
    }

    /* renamed from: C */
    private ViewOnClickListenerC1107c m3593C() {
        AbsListView absListView = (AbsListView) this.f3531a;
        ViewOnClickListenerC1107c viewOnClickListenerC1107c = (ViewOnClickListenerC1107c) absListView.getTag(InterfaceC1108d.f3763z);
        if (viewOnClickListenerC1107c != null) {
            return viewOnClickListenerC1107c;
        }
        ViewOnClickListenerC1107c viewOnClickListenerC1107c2 = new ViewOnClickListenerC1107c();
        absListView.setOnScrollListener(viewOnClickListenerC1107c2);
        absListView.setTag(InterfaceC1108d.f3763z, viewOnClickListenerC1107c2);
        C1105a.m4041a((Object) "set scroll listenr");
        return viewOnClickListenerC1107c2;
    }

    /* renamed from: D */
    private T m3594D() {
        if (this.f3531a != null) {
            C1105a.m4027a((Object) this.f3531a, "setLayerType", false, false, f3522ae, 1, null);
        }
        return this;
    }

    /* renamed from: E */
    private T m3595E() {
        if (this.f3525S != null) {
            this.f3525S.getWindow().setFlags(16777216, 16777216);
        }
        return this;
    }

    /* renamed from: F */
    private T m3596F() {
        if (this.f3531a != null) {
            if (this.f3531a instanceof ImageView) {
                ImageView imageView = (ImageView) this.f3531a;
                imageView.setImageBitmap(null);
                imageView.setTag(InterfaceC1108d.f3762y, null);
                return this;
            }
            if (this.f3531a instanceof WebView) {
                WebView webView = (WebView) this.f3531a;
                webView.stopLoading();
                webView.clearView();
                webView.setTag(InterfaceC1108d.f3762y, null);
                return this;
            }
            if (this.f3531a instanceof TextView) {
                ((TextView) this.f3531a).setText("");
            }
        }
        return this;
    }

    /* renamed from: G */
    private Context m3597G() {
        return this.f3525S != null ? this.f3525S : this.f3524R != null ? this.f3524R.getContext() : this.f3526T;
    }

    /* renamed from: H */
    private void m3598H() {
        this.f3533c = null;
        this.f3532b = null;
        this.f3527U = null;
        this.f3528V = 0;
        this.f3529W = null;
    }

    /* renamed from: I */
    private T m3599I() {
        C1096b.m3790c();
        return this;
    }

    /* renamed from: J */
    private T m3600J() {
        if (this.f3531a != null) {
            this.f3531a.performClick();
        }
        return this;
    }

    /* renamed from: K */
    private T m3601K() {
        if (this.f3531a != null) {
            this.f3531a.performLongClick();
        }
        return this;
    }

    /* renamed from: L */
    private T m3602L() {
        Iterator<Dialog> it = f3523af.keySet().iterator();
        while (it.hasNext()) {
            try {
                it.next().dismiss();
            } catch (Exception unused) {
            }
            it.remove();
        }
        return this;
    }

    /* renamed from: a */
    private View m3603a(View view, int i, ViewGroup viewGroup) {
        Integer num;
        if (view != null && (num = (Integer) view.getTag(InterfaceC1108d.f3724A)) != null && num.intValue() == i) {
            return view;
        }
        View inflate = (this.f3525S != null ? this.f3525S.getLayoutInflater() : (LayoutInflater) m3597G().getSystemService("layout_inflater")).inflate(i, viewGroup, false);
        inflate.setTag(InterfaceC1108d.f3724A, Integer.valueOf(i));
        return inflate;
    }

    /* renamed from: a */
    private View m3604a(String str) {
        View childAt;
        if (this.f3524R != null) {
            childAt = this.f3524R;
        } else if (this.f3525S == null || (childAt = ((ViewGroup) this.f3525S.findViewById(R.id.content)).getChildAt(0)) == null) {
            return null;
        }
        return childAt.findViewWithTag(str);
    }

    /* renamed from: a */
    private View m3605a(int... iArr) {
        View m3658b = m3658b(iArr[0]);
        for (int i = 1; i < iArr.length && m3658b != null; i++) {
            m3658b = m3658b.findViewById(iArr[i]);
        }
        return m3658b;
    }

    /* renamed from: a */
    private T m3606a(float f) {
        if (this.f3531a instanceof RatingBar) {
            ((RatingBar) this.f3531a).setRating(f);
        }
        return this;
    }

    /* renamed from: a */
    private T m3607a(float f, float f2, float f3, float f4) {
        if (this.f3531a != null) {
            ViewGroup.LayoutParams layoutParams = this.f3531a.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                Context m3597G = m3597G();
                ((ViewGroup.MarginLayoutParams) layoutParams).setMargins(C1105a.m4021a(m3597G, f), C1105a.m4021a(m3597G, f2), C1105a.m4021a(m3597G, f3), C1105a.m4021a(m3597G, f4));
                this.f3531a.setLayoutParams(layoutParams);
            }
        }
        return this;
    }

    /* renamed from: a */
    private T m3608a(int i, int i2) {
        if (this.f3525S != null) {
            C1105a.m4027a((Object) this.f3525S, "overridePendingTransition", false, false, f3520ac, Integer.valueOf(i), Integer.valueOf(i2));
        }
        return this;
    }

    /* renamed from: a */
    private T m3609a(int i, Object obj) {
        if (this.f3531a != null) {
            this.f3531a.setTag(i, obj);
        }
        return this;
    }

    /* renamed from: a */
    private T m3610a(int i, boolean z) {
        m3654a(true, i, z);
        return this;
    }

    /* renamed from: a */
    private T m3611a(int i, Object... objArr) {
        Context m3597G = m3597G();
        if (m3597G != null) {
            m3630a((CharSequence) m3597G.getString(i, objArr));
        }
        return this;
    }

    /* renamed from: a */
    private T m3612a(Bitmap bitmap) {
        if (this.f3531a instanceof ImageView) {
            ImageView imageView = (ImageView) this.f3531a;
            imageView.setTag(InterfaceC1108d.f3762y, null);
            imageView.setImageBitmap(bitmap);
        }
        return this;
    }

    /* renamed from: a */
    private T m3613a(Bitmap bitmap, float f) {
        C1098d c1098d = new C1098d();
        c1098d.f3638y = f;
        c1098d.f3637x = bitmap;
        return m3627a(c1098d);
    }

    /* renamed from: a */
    private T m3614a(Typeface typeface) {
        if (this.f3531a instanceof TextView) {
            ((TextView) this.f3531a).setTypeface(typeface);
        }
        return this;
    }

    /* renamed from: a */
    private T m3615a(Drawable drawable) {
        if (this.f3531a instanceof ImageView) {
            ImageView imageView = (ImageView) this.f3531a;
            imageView.setTag(InterfaceC1108d.f3762y, null);
            imageView.setImageDrawable(drawable);
        }
        return this;
    }

    /* renamed from: a */
    private T m3616a(Spanned spanned) {
        if (this.f3531a instanceof TextView) {
            ((TextView) this.f3531a).setText(spanned);
        }
        return this;
    }

    /* renamed from: a */
    private T m3617a(View.OnClickListener onClickListener) {
        if (this.f3531a != null) {
            this.f3531a.setOnClickListener(onClickListener);
        }
        return this;
    }

    /* renamed from: a */
    private T m3618a(View.OnLongClickListener onLongClickListener) {
        if (this.f3531a != null) {
            this.f3531a.setOnLongClickListener(onLongClickListener);
        }
        return this;
    }

    /* renamed from: a */
    private T m3619a(View view) {
        T t = null;
        try {
            T newInstance = m3653a().newInstance(view);
            try {
                newInstance.f3525S = this.f3525S;
                return newInstance;
            } catch (Exception e) {
                t = newInstance;
                e = e;
                e.printStackTrace();
                return t;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* renamed from: a */
    private T m3620a(Animation animation) {
        if (this.f3531a != null && animation != null) {
            this.f3531a.startAnimation(animation);
        }
        return this;
    }

    /* renamed from: a */
    private T m3621a(AbsListView.OnScrollListener onScrollListener) {
        if (this.f3531a instanceof AbsListView) {
            m3593C().f3713c = onScrollListener;
        }
        return this;
    }

    /* renamed from: a */
    private T m3622a(Adapter adapter) {
        if (this.f3531a instanceof AdapterView) {
            ((AdapterView) this.f3531a).setAdapter(adapter);
        }
        return this;
    }

    /* renamed from: a */
    private T m3623a(AdapterView.OnItemClickListener onItemClickListener) {
        if (this.f3531a instanceof AdapterView) {
            ((AdapterView) this.f3531a).setOnItemClickListener(onItemClickListener);
        }
        return this;
    }

    /* renamed from: a */
    private T m3624a(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        if (this.f3531a instanceof AdapterView) {
            ((AdapterView) this.f3531a).setOnItemSelectedListener(onItemSelectedListener);
        }
        return this;
    }

    /* renamed from: a */
    private T m3625a(ExpandableListAdapter expandableListAdapter) {
        if (this.f3531a instanceof ExpandableListView) {
            ((ExpandableListView) this.f3531a).setAdapter(expandableListAdapter);
        }
        return this;
    }

    /* renamed from: a */
    private <K> T m3626a(AbstractRunnableC1095a<?, K> abstractRunnableC1095a) {
        if (this.f3533c != null) {
            abstractRunnableC1095a.m3836a(this.f3533c);
        }
        if (this.f3532b != null) {
            abstractRunnableC1095a.m3838a(this.f3532b);
        }
        if (this.f3527U != null) {
            abstractRunnableC1095a.f3571h = this.f3527U;
        }
        abstractRunnableC1095a.f3573j = this.f3528V;
        if (this.f3529W != null) {
            abstractRunnableC1095a.m3840a(this.f3529W.getHostName(), this.f3529W.getPort());
        }
        if (this.f3525S != null) {
            abstractRunnableC1095a.m3848a(this.f3525S);
        } else {
            abstractRunnableC1095a.mo3849a(m3597G());
        }
        m3598H();
        return this;
    }

    /* renamed from: a */
    private T m3627a(C1098d c1098d) {
        if (this.f3531a instanceof ImageView) {
            c1098d.m3948a((ImageView) this.f3531a);
            m3626a((AbstractRunnableC1095a) c1098d);
        }
        return this;
    }

    /* renamed from: a */
    private T m3628a(InterfaceC1102h interfaceC1102h) {
        this.f3527U = interfaceC1102h;
        return this;
    }

    /* renamed from: a */
    private T m3629a(File file, int i) {
        C1098d c1098d = new C1098d();
        c1098d.f3636w = file;
        String absolutePath = file != null ? file.getAbsolutePath() : null;
        c1098d.f3634u = i;
        c1098d.f3635v = 0;
        c1098d.f3566c = absolutePath;
        c1098d.m3854b(true).m3844a(true);
        return m3627a(c1098d);
    }

    /* renamed from: a */
    private T m3630a(CharSequence charSequence) {
        if (this.f3531a instanceof TextView) {
            ((TextView) this.f3531a).setText(charSequence);
        }
        return this;
    }

    /* renamed from: a */
    private T m3631a(CharSequence charSequence, boolean z) {
        return (z && (charSequence == null || charSequence.length() == 0)) ? m3713k(8) : m3630a(charSequence);
    }

    /* renamed from: a */
    private T m3632a(Object obj) {
        this.f3532b = obj;
        return this;
    }

    /* renamed from: a */
    private T m3633a(Object obj, String str) {
        ViewOnClickListenerC1107c m4095a = new ViewOnClickListenerC1107c().m4095a(obj, str, f3516Y);
        if (this.f3531a != null) {
            this.f3531a.setOnClickListener(m4095a);
        }
        return this;
    }

    /* renamed from: a */
    private T m3634a(String str, int i) {
        this.f3529W = new HttpHost(str, i);
        return this;
    }

    /* renamed from: a */
    private T m3635a(String str, long j) {
        C1096b c1096b = new C1096b();
        c1096b.f3565b = byte[].class;
        c1096b.m3839a((Object) null, (String) null).m3844a(true).f3579p = j;
        return m3669b(str, byte[].class, c1096b);
    }

    /* renamed from: a */
    private T m3636a(String str, C1099e c1099e) {
        if (this.f3531a instanceof ImageView) {
            C1098d.m3910a(this.f3525S, m3597G(), (ImageView) this.f3531a, str, this.f3532b, this.f3533c, c1099e, this.f3529W);
            m3598H();
        }
        return this;
    }

    /* renamed from: a */
    private T m3637a(String str, File file, C1096b<File> c1096b) {
        c1096b.f3566c = str;
        C1096b<File> c1096b2 = c1096b;
        c1096b2.f3565b = File.class;
        c1096b2.f3574k = file;
        return m3626a((AbstractRunnableC1095a) c1096b);
    }

    /* renamed from: a */
    private T m3638a(String str, File file, Object obj, String str2) {
        C1096b c1096b = new C1096b();
        c1096b.m3839a(obj, str2);
        c1096b.f3566c = str;
        C1096b c1096b2 = c1096b;
        c1096b2.f3565b = File.class;
        c1096b2.f3574k = file;
        return m3626a((AbstractRunnableC1095a) c1096b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private <K> T m3639a(String str, Class<K> cls, long j) {
        C1096b<K> c1096b = new C1096b<>();
        c1096b.f3565b = cls;
        c1096b.m3839a((Object) null, (String) null).m3844a(true).f3579p = j;
        return m3669b(str, cls, c1096b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private <K> T m3640a(String str, Class<K> cls, Object obj, String str2) {
        C1096b<K> c1096b = new C1096b<>();
        c1096b.f3565b = cls;
        c1096b.m3839a(obj, str2);
        return m3669b(str, cls, c1096b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private <K> T m3641a(String str, String str2, HttpEntity httpEntity, Class<K> cls, C1096b<K> c1096b) {
        c1096b.f3566c = str;
        C1096b<K> c1096b2 = c1096b;
        c1096b2.f3565b = cls;
        C1096b<K> c1096b3 = c1096b2;
        c1096b3.f3580q = 3;
        c1096b3.m3842a("Content-Type", str2).m3841a(InterfaceC1108d.f3739P, httpEntity);
        return m3626a((AbstractRunnableC1095a) c1096b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private <K> T m3642a(String str, Map<String, ?> map, Class<K> cls, C1096b<K> c1096b) {
        c1096b.f3565b = cls;
        C1096b<K> c1096b2 = c1096b;
        c1096b2.f3566c = str;
        c1096b2.m3843a(map);
        return m3626a((AbstractRunnableC1095a) c1096b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private <K> T m3643a(String str, Map<String, ?> map, Class<K> cls, Object obj, String str2) {
        C1096b c1096b = new C1096b();
        c1096b.f3565b = cls;
        C1096b c1096b2 = c1096b;
        c1096b2.m3839a(obj, str2);
        c1096b.f3565b = cls;
        c1096b2.f3566c = str;
        c1096b2.m3843a(map);
        return m3626a((AbstractRunnableC1095a) c1096b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private <K> T m3644a(String str, JSONObject jSONObject, Class<K> cls, C1096b<K> c1096b) {
        try {
            StringEntity stringEntity = new StringEntity(jSONObject.toString(), "UTF-8");
            c1096b.f3566c = str;
            C1096b<K> c1096b2 = c1096b;
            c1096b2.f3565b = cls;
            C1096b<K> c1096b3 = c1096b2;
            c1096b3.f3580q = 1;
            c1096b3.m3842a("Content-Type", "application/json").m3841a(InterfaceC1108d.f3739P, stringEntity);
            return m3626a((AbstractRunnableC1095a) c1096b);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: a */
    private T m3645a(String str, boolean z, int i, C1098d c1098d) {
        c1098d.f3634u = i;
        c1098d.f3635v = 0;
        c1098d.f3566c = str;
        c1098d.m3854b(z).m3844a(true);
        return m3627a(c1098d);
    }

    /* renamed from: a */
    private T m3646a(String str, boolean z, boolean z2) {
        return m3673b(str, z, z2);
    }

    /* renamed from: a */
    private T m3647a(String str, boolean z, boolean z2, int i, int i2) {
        if (this.f3531a instanceof ImageView) {
            C1098d.m3911a(this.f3525S, m3597G(), (ImageView) this.f3531a, str, z, z2, i, i2, null, 0, 0.0f, Float.MAX_VALUE, this.f3532b, this.f3533c, this.f3528V, 0, this.f3529W);
            m3598H();
        }
        return this;
    }

    /* renamed from: a */
    private T m3648a(String str, boolean z, boolean z2, int i, int i2, Bitmap bitmap, int i3) {
        if (this.f3531a instanceof ImageView) {
            C1098d.m3911a(this.f3525S, m3597G(), (ImageView) this.f3531a, str, z, z2, i, i2, bitmap, i3, 0.0f, Float.MAX_VALUE, this.f3532b, this.f3533c, this.f3528V, 0, this.f3529W);
            m3598H();
        }
        return this;
    }

    /* renamed from: a */
    private T m3649a(String str, boolean z, boolean z2, int i, int i2, Bitmap bitmap, int i3, float f) {
        if (this.f3531a instanceof ImageView) {
            C1098d.m3911a(this.f3525S, m3597G(), (ImageView) this.f3531a, str, z, z2, i, i2, bitmap, i3, f, Float.MAX_VALUE, this.f3532b, this.f3533c, this.f3528V, 0, this.f3529W);
            m3598H();
        }
        return this;
    }

    /* renamed from: a */
    private T m3650a(boolean z) {
        if (this.f3531a != null) {
            C1105a.m4034a(this.f3531a, z);
        }
        return this;
    }

    /* renamed from: a */
    private File m3651a(String str, String str2) {
        File m4068c;
        File file = null;
        try {
            File m3690d = m3690d(str);
            if (m3690d != null && (m4068c = C1105a.m4068c()) != null) {
                File file2 = new File(m4068c, str2);
                try {
                    file2.createNewFile();
                    FileInputStream fileInputStream = new FileInputStream(m3690d);
                    FileOutputStream fileOutputStream = new FileOutputStream(file2);
                    FileChannel channel = fileInputStream.getChannel();
                    FileChannel channel2 = fileOutputStream.getChannel();
                    try {
                        channel.transferTo(0L, channel.size(), channel2);
                        return file2;
                    } finally {
                        C1105a.m4035a((Closeable) fileInputStream);
                        C1105a.m4035a((Closeable) fileOutputStream);
                        C1105a.m4035a((Closeable) channel);
                        C1105a.m4035a((Closeable) channel2);
                    }
                } catch (Exception e) {
                    e = e;
                    file = file2;
                    C1105a.m4049a((Throwable) e);
                    return file;
                }
            }
        } catch (Exception e2) {
            e = e2;
        }
        return file;
    }

    /* renamed from: a */
    private Object m3652a(String str, Class<?>[] clsArr, Object... objArr) {
        Object obj = this.f3531a;
        if (obj == null) {
            obj = this.f3525S;
        }
        return C1105a.m4027a(obj, str, false, false, clsArr, objArr);
    }

    /* renamed from: a */
    private Constructor<T> m3653a() {
        if (this.f3530X == null) {
            try {
                this.f3530X = (Constructor<T>) getClass().getConstructor(View.class);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this.f3530X;
    }

    /* renamed from: a */
    private void m3654a(boolean z, int i, boolean z2) {
        if (this.f3531a != null) {
            ViewGroup.LayoutParams layoutParams = this.f3531a.getLayoutParams();
            Context m3597G = m3597G();
            if (i > 0 && z2) {
                i = C1105a.m4021a(m3597G, i);
            }
            if (z) {
                layoutParams.width = i;
            } else {
                layoutParams.height = i;
            }
            this.f3531a.setLayoutParams(layoutParams);
        }
    }

    /* renamed from: a */
    private static boolean m3655a(int i, int i2, View view, ViewGroup viewGroup, String str) {
        return ViewOnClickListenerC1107c.m4089a(i, i2, view, viewGroup, str);
    }

    /* renamed from: a */
    private static boolean m3656a(int i, View view, ViewGroup viewGroup, String str) {
        return ViewOnClickListenerC1107c.m4089a(i, -1, view, viewGroup, str);
    }

    @Deprecated
    /* renamed from: a */
    private static boolean m3657a(View view, ViewGroup viewGroup, String str) {
        return ViewOnClickListenerC1107c.m4091a(view, viewGroup, str);
    }

    /* renamed from: b */
    private View m3658b(int i) {
        if (this.f3524R != null) {
            return this.f3524R.findViewById(i);
        }
        if (this.f3525S != null) {
            return this.f3525S.findViewById(i);
        }
        return null;
    }

    /* renamed from: b */
    private T m3659b() {
        return this;
    }

    /* renamed from: b */
    private T m3660b(float f) {
        if (this.f3531a instanceof TextView) {
            ((TextView) this.f3531a).setTextSize(f);
        }
        return this;
    }

    /* renamed from: b */
    private T m3661b(int i, boolean z) {
        m3654a(false, i, z);
        return this;
    }

    /* renamed from: b */
    private T m3662b(View view) {
        this.f3524R = view;
        this.f3531a = view;
        m3598H();
        this.f3526T = null;
        return this;
    }

    /* renamed from: b */
    private <K> T m3663b(C1096b<K> c1096b) {
        m3626a((AbstractRunnableC1095a) c1096b);
        if (C1105a.m4067b()) {
            throw new IllegalStateException("Cannot block UI thread.");
        }
        if (!c1096b.f3581r) {
            try {
                synchronized (c1096b) {
                    c1096b.f3582s = true;
                    c1096b.wait(AbstractRunnableC1095a.f3543a + C2146a.f8101t);
                }
                return this;
            } catch (Exception unused) {
            }
        }
        return this;
    }

    /* renamed from: b */
    private T m3664b(File file, int i) {
        C1098d c1098d = new C1098d();
        c1098d.f3636w = file;
        String absolutePath = file != null ? file.getAbsolutePath() : null;
        c1098d.f3634u = i;
        c1098d.f3635v = 0;
        c1098d.f3566c = absolutePath;
        c1098d.m3854b(true).m3844a(true);
        return m3627a(c1098d);
    }

    /* renamed from: b */
    private T m3665b(Object obj) {
        if (this.f3531a != null) {
            this.f3531a.setTag(obj);
        }
        return this;
    }

    /* renamed from: b */
    private T m3666b(Object obj, String str) {
        ViewOnClickListenerC1107c m4095a = new ViewOnClickListenerC1107c().m4095a(obj, str, f3516Y);
        if (this.f3531a != null) {
            this.f3531a.setOnLongClickListener(m4095a);
        }
        return this;
    }

    /* renamed from: b */
    private T m3667b(String str) {
        View view;
        View childAt;
        if (this.f3524R != null) {
            childAt = this.f3524R;
        } else if (this.f3525S == null || (childAt = ((ViewGroup) this.f3525S.findViewById(R.id.content)).getChildAt(0)) == null) {
            view = null;
            return m3682c(view);
        }
        view = childAt.findViewWithTag(str);
        return m3682c(view);
    }

    /* renamed from: b */
    private T m3668b(String str, C1099e c1099e) {
        if (this.f3531a instanceof ImageView) {
            C1098d.m3910a(this.f3525S, m3597G(), (ImageView) this.f3531a, str, this.f3532b, this.f3533c, c1099e, this.f3529W);
            m3598H();
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private <K> T m3669b(String str, Class<K> cls, C1096b<K> c1096b) {
        c1096b.f3565b = cls;
        c1096b.f3566c = str;
        return m3626a((AbstractRunnableC1095a) c1096b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private <K> T m3670b(String str, Class<K> cls, Object obj, String str2) {
        C1096b c1096b = new C1096b();
        c1096b.m3839a(obj, str2);
        c1096b.f3566c = str;
        C1096b c1096b2 = c1096b;
        c1096b2.f3565b = cls;
        c1096b2.f3580q = 2;
        return m3626a((AbstractRunnableC1095a) c1096b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private <K> T m3671b(String str, String str2, HttpEntity httpEntity, Class<K> cls, C1096b<K> c1096b) {
        c1096b.f3566c = str;
        C1096b<K> c1096b2 = c1096b;
        c1096b2.f3565b = cls;
        C1096b<K> c1096b3 = c1096b2;
        c1096b3.f3580q = 1;
        c1096b3.m3842a("Content-Type", str2).m3841a(InterfaceC1108d.f3739P, httpEntity);
        return m3626a((AbstractRunnableC1095a) c1096b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private <K> T m3672b(String str, JSONObject jSONObject, Class<K> cls, C1096b<K> c1096b) {
        try {
            StringEntity stringEntity = new StringEntity(jSONObject.toString(), "UTF-8");
            c1096b.f3566c = str;
            C1096b<K> c1096b2 = c1096b;
            c1096b2.f3565b = cls;
            C1096b<K> c1096b3 = c1096b2;
            c1096b3.f3580q = 3;
            c1096b3.m3842a("Content-Type", "application/json").m3841a(InterfaceC1108d.f3739P, stringEntity);
            return m3626a((AbstractRunnableC1095a) c1096b);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: b */
    private T m3673b(String str, boolean z, boolean z2) {
        if (this.f3531a instanceof ImageView) {
            C1098d.m3911a(this.f3525S, m3597G(), (ImageView) this.f3531a, str, z, z2, 0, 0, null, 0, 0.0f, Float.MAX_VALUE, this.f3532b, this.f3533c, this.f3528V, 0, this.f3529W);
            m3598H();
        }
        return this;
    }

    /* renamed from: b */
    private T m3674b(boolean z) {
        if (this.f3531a != null) {
            this.f3531a.setEnabled(z);
        }
        return this;
    }

    /* renamed from: b */
    private T m3675b(int... iArr) {
        View m3658b = m3658b(iArr[0]);
        for (int i = 1; i < iArr.length && m3658b != null; i++) {
            m3658b = m3658b.findViewById(iArr[i]);
        }
        return m3682c(m3658b);
    }

    /* renamed from: b */
    private static boolean m3676b(int i, View view, ViewGroup viewGroup, String str) {
        if (viewGroup instanceof ExpandableListView) {
            throw new IllegalArgumentException("Please use the other shouldDelay methods for expandable list.");
        }
        return ViewOnClickListenerC1107c.m4090a(i, view, viewGroup, str);
    }

    @Deprecated
    /* renamed from: b */
    private static boolean m3677b(View view, ViewGroup viewGroup, String str) {
        return ViewOnClickListenerC1107c.m4091a(view, viewGroup, str);
    }

    /* renamed from: c */
    private View m3678c() {
        return this.f3531a;
    }

    /* renamed from: c */
    private T m3679c(int i) {
        return m3619a(m3658b(i));
    }

    /* renamed from: c */
    private T m3680c(int i, boolean z) {
        if (this.f3531a instanceof ExpandableListView) {
            ExpandableListView expandableListView = (ExpandableListView) this.f3531a;
            if (z) {
                expandableListView.expandGroup(i);
                return this;
            }
            expandableListView.collapseGroup(i);
        }
        return this;
    }

    /* renamed from: c */
    private T m3681c(Dialog dialog) {
        this.f3532b = dialog;
        return this;
    }

    /* renamed from: c */
    private T m3682c(View view) {
        this.f3531a = view;
        m3598H();
        return this;
    }

    /* renamed from: c */
    private T m3683c(Object obj, String str) {
        ViewOnClickListenerC1107c m4095a = new ViewOnClickListenerC1107c().m4095a(obj, str, f3517Z);
        if (this.f3531a instanceof AdapterView) {
            ((AdapterView) this.f3531a).setOnItemClickListener(m4095a);
        }
        return this;
    }

    /* renamed from: c */
    private T m3684c(String str) {
        return m3673b(str, true, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    private <K> T m3685c(String str, Class<K> cls, C1096b<K> c1096b) {
        c1096b.f3566c = str;
        C1096b<K> c1096b2 = c1096b;
        c1096b2.f3565b = cls;
        c1096b2.f3580q = 2;
        return m3626a((AbstractRunnableC1095a) c1096b);
    }

    /* renamed from: c */
    private T m3686c(boolean z) {
        if (this.f3531a instanceof CompoundButton) {
            ((CompoundButton) this.f3531a).setChecked(z);
        }
        return this;
    }

    /* renamed from: d */
    private T m3687d(int i) {
        View view = this.f3531a;
        while (view != null) {
            if (view.getId() != i) {
                Object parent = view.getParent();
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                break;
            }
        }
        view = null;
        return m3619a(view);
    }

    /* renamed from: d */
    private T m3688d(Object obj, String str) {
        ViewOnClickListenerC1107c m4095a = new ViewOnClickListenerC1107c().m4095a(obj, str, f3517Z);
        if (this.f3531a instanceof AdapterView) {
            ((AdapterView) this.f3531a).setOnItemSelectedListener(m4095a);
        }
        return this;
    }

    /* renamed from: d */
    private T m3689d(boolean z) {
        if (this.f3531a != null) {
            this.f3531a.setClickable(z);
        }
        return this;
    }

    /* renamed from: d */
    private File m3690d(String str) {
        File m4056b = C1105a.m4056b(C1105a.m4024a(m3597G(), 1), str);
        return m4056b == null ? C1105a.m4056b(C1105a.m4024a(m3597G(), 0), str) : m4056b;
    }

    /* renamed from: d */
    private boolean m3691d() {
        if (this.f3531a instanceof CompoundButton) {
            return ((CompoundButton) this.f3531a).isChecked();
        }
        return false;
    }

    /* renamed from: e */
    private T m3692e() {
        return m3713k(8);
    }

    /* renamed from: e */
    private T m3693e(int i) {
        return m3682c(m3658b(i));
    }

    /* renamed from: e */
    private T m3694e(Object obj, String str) {
        if (this.f3531a instanceof AbsListView) {
            m3593C().m4095a(obj, str, f3518aa);
        }
        return this;
    }

    /* renamed from: e */
    private T m3695e(String str) {
        File m3690d = m3690d(str);
        if (m3690d != null) {
            m3690d.delete();
        }
        return this;
    }

    /* renamed from: e */
    private T m3696e(boolean z) {
        ExpandableListView expandableListView;
        ExpandableListAdapter expandableListAdapter;
        if (!(this.f3531a instanceof ExpandableListView) || (expandableListAdapter = (expandableListView = (ExpandableListView) this.f3531a).getExpandableListAdapter()) == null) {
            return this;
        }
        int groupCount = expandableListAdapter.getGroupCount();
        for (int i = 0; i < groupCount; i++) {
            if (z) {
                expandableListView.expandGroup(i);
            } else {
                expandableListView.collapseGroup(i);
            }
        }
        return this;
    }

    /* renamed from: f */
    private Bitmap m3697f(String str) {
        File m3690d;
        Bitmap m3933e = C1098d.m3933e(str);
        return (m3933e != null || (m3690d = m3690d(str)) == null) ? m3933e : C1098d.m3926c(m3690d.getAbsolutePath());
    }

    /* renamed from: f */
    private T m3698f() {
        return m3713k(4);
    }

    /* renamed from: f */
    private T m3699f(int i) {
        this.f3528V = i;
        return this;
    }

    /* renamed from: f */
    private T m3700f(Object obj, String str) {
        if (this.f3531a instanceof TextView) {
            ((TextView) this.f3531a).addTextChangedListener(new ViewOnClickListenerC1107c().m4095a(obj, str, f3519ab));
        }
        return this;
    }

    /* renamed from: g */
    private Bitmap m3701g(String str) {
        File m3690d;
        Bitmap m3933e = C1098d.m3933e(str);
        return (m3933e != null || (m3690d = m3690d(str)) == null) ? m3933e : C1098d.m3926c(m3690d.getAbsolutePath());
    }

    /* renamed from: g */
    private T m3702g() {
        return m3713k(0);
    }

    /* renamed from: g */
    private T m3703g(int i) {
        if (this.f3531a instanceof TextView) {
            ((TextView) this.f3531a).setText(i);
        }
        return this;
    }

    /* renamed from: h */
    private T m3704h() {
        if (this.f3531a instanceof AdapterView) {
            Adapter adapter = ((AdapterView) this.f3531a).getAdapter();
            if (adapter instanceof BaseAdapter) {
                ((BaseAdapter) adapter).notifyDataSetChanged();
            }
        }
        return this;
    }

    /* renamed from: h */
    private T m3705h(int i) {
        if (this.f3531a instanceof TextView) {
            ((TextView) this.f3531a).setTextColor(i);
        }
        return this;
    }

    /* renamed from: h */
    private T m3706h(String str) {
        if (this.f3531a instanceof WebView) {
            if (this.f3531a != null) {
                C1105a.m4027a((Object) this.f3531a, "setLayerType", false, false, f3522ae, 1, null);
            }
            C1112h c1112h = new C1112h((WebView) this.f3531a, str, this.f3532b);
            if (!c1112h.f3783c.equals(c1112h.f3782b.getTag(InterfaceC1108d.f3762y))) {
                c1112h.f3782b.setTag(InterfaceC1108d.f3762y, c1112h.f3783c);
                if (Build.VERSION.SDK_INT <= 10) {
                    c1112h.f3782b.setDrawingCacheEnabled(true);
                }
                C1112h.m4111a(c1112h.f3782b.getContext());
                WebSettings settings = c1112h.f3782b.getSettings();
                settings.setSupportZoom(c1112h.f3784d);
                settings.setBuiltInZoomControls(c1112h.f3784d);
                if (!c1112h.f3785e) {
                    C1112h.m4112a(c1112h.f3782b);
                }
                settings.setJavaScriptEnabled(true);
                c1112h.f3782b.setBackgroundColor(c1112h.f3786f);
                if (c1112h.f3781a != null) {
                    ViewOnClickListenerC1107c.m4088a(c1112h.f3781a, c1112h.f3783c, true);
                }
                if (c1112h.f3782b.getWidth() > 0) {
                    c1112h.m4118a();
                } else {
                    c1112h.f3782b.setPictureListener(new C1112h.AnonymousClass1());
                    c1112h.f3782b.loadData("<html></html>", "text/html", "utf-8");
                    c1112h.f3782b.setBackgroundColor(c1112h.f3786f);
                }
            }
            this.f3532b = null;
        }
        return this;
    }

    /* renamed from: i */
    private T m3707i(int i) {
        int color = m3597G().getResources().getColor(i);
        if (this.f3531a instanceof TextView) {
            ((TextView) this.f3531a).setTextColor(color);
        }
        return this;
    }

    /* renamed from: i */
    private T m3708i(String str) {
        if (this.f3531a instanceof WebView) {
            if (this.f3531a != null) {
                C1105a.m4027a((Object) this.f3531a, "setLayerType", false, false, f3522ae, 1, null);
            }
            C1112h c1112h = new C1112h((WebView) this.f3531a, str, this.f3532b);
            if (!c1112h.f3783c.equals(c1112h.f3782b.getTag(InterfaceC1108d.f3762y))) {
                c1112h.f3782b.setTag(InterfaceC1108d.f3762y, c1112h.f3783c);
                if (Build.VERSION.SDK_INT <= 10) {
                    c1112h.f3782b.setDrawingCacheEnabled(true);
                }
                C1112h.m4111a(c1112h.f3782b.getContext());
                WebSettings settings = c1112h.f3782b.getSettings();
                settings.setSupportZoom(c1112h.f3784d);
                settings.setBuiltInZoomControls(c1112h.f3784d);
                if (!c1112h.f3785e) {
                    C1112h.m4112a(c1112h.f3782b);
                }
                settings.setJavaScriptEnabled(true);
                c1112h.f3782b.setBackgroundColor(c1112h.f3786f);
                if (c1112h.f3781a != null) {
                    ViewOnClickListenerC1107c.m4088a(c1112h.f3781a, c1112h.f3783c, true);
                }
                if (c1112h.f3782b.getWidth() > 0) {
                    c1112h.m4118a();
                } else {
                    c1112h.f3782b.setPictureListener(new C1112h.AnonymousClass1());
                    c1112h.f3782b.loadData("<html></html>", "text/html", "utf-8");
                    c1112h.f3782b.setBackgroundColor(c1112h.f3786f);
                }
            }
            this.f3532b = null;
        }
        return this;
    }

    /* renamed from: i */
    private boolean m3709i() {
        return this.f3531a != null;
    }

    /* renamed from: j */
    private T m3710j(int i) {
        if (this.f3531a instanceof ImageView) {
            ImageView imageView = (ImageView) this.f3531a;
            imageView.setTag(InterfaceC1108d.f3762y, null);
            if (i == 0) {
                imageView.setImageBitmap(null);
                return this;
            }
            imageView.setImageResource(i);
        }
        return this;
    }

    /* renamed from: j */
    private Object m3711j() {
        if (this.f3531a != null) {
            return this.f3531a.getTag();
        }
        return null;
    }

    /* renamed from: k */
    private ImageView m3712k() {
        return (ImageView) this.f3531a;
    }

    /* renamed from: k */
    private T m3713k(int i) {
        if (this.f3531a != null && this.f3531a.getVisibility() != i) {
            this.f3531a.setVisibility(i);
        }
        return this;
    }

    /* renamed from: l */
    private Gallery m3714l() {
        return (Gallery) this.f3531a;
    }

    /* renamed from: l */
    private T m3715l(int i) {
        if (this.f3531a != null) {
            if (i != 0) {
                this.f3531a.setBackgroundResource(i);
                return this;
            }
            this.f3531a.setBackgroundDrawable(null);
        }
        return this;
    }

    /* renamed from: m */
    private TextView m3716m() {
        return (TextView) this.f3531a;
    }

    /* renamed from: m */
    private T m3717m(int i) {
        if (this.f3531a != null) {
            this.f3531a.setBackgroundColor(i);
        }
        return this;
    }

    /* renamed from: n */
    private EditText m3718n() {
        return (EditText) this.f3531a;
    }

    /* renamed from: n */
    private T m3719n(int i) {
        if (this.f3531a != null) {
            this.f3531a.setBackgroundColor(m3597G().getResources().getColor(i));
        }
        return this;
    }

    /* renamed from: o */
    private ProgressBar m3720o() {
        return (ProgressBar) this.f3531a;
    }

    /* renamed from: o */
    private Object m3721o(int i) {
        if (this.f3531a != null) {
            return this.f3531a.getTag(i);
        }
        return null;
    }

    /* renamed from: p */
    private SeekBar m3722p() {
        return (SeekBar) this.f3531a;
    }

    /* renamed from: p */
    private T m3723p(int i) {
        if (this.f3531a instanceof AdapterView) {
            ((AdapterView) this.f3531a).setSelection(i);
        }
        return this;
    }

    /* renamed from: q */
    private Button m3724q() {
        return (Button) this.f3531a;
    }

    /* renamed from: q */
    private T m3725q(int i) {
        if (this.f3531a instanceof AbsListView) {
            C1105a.m4027a((Object) this.f3531a, "setOverScrollMode", false, false, f3521ad, Integer.valueOf(i));
        }
        return this;
    }

    /* renamed from: r */
    private CheckBox m3726r() {
        return (CheckBox) this.f3531a;
    }

    /* renamed from: r */
    private T m3727r(int i) {
        m3654a(true, i, true);
        return this;
    }

    /* renamed from: s */
    private ListView m3728s() {
        return (ListView) this.f3531a;
    }

    /* renamed from: s */
    private T m3729s(int i) {
        m3654a(false, i, true);
        return this;
    }

    /* renamed from: t */
    private Bitmap m3730t(int i) {
        return C1098d.m3896a(m3597G(), i);
    }

    /* renamed from: t */
    private ExpandableListView m3731t() {
        return (ExpandableListView) this.f3531a;
    }

    /* renamed from: u */
    private GridView m3732u() {
        return (GridView) this.f3531a;
    }

    /* renamed from: u */
    private T m3733u(int i) {
        Animation loadAnimation = AnimationUtils.loadAnimation(m3597G(), i);
        loadAnimation.setAnimationListener(null);
        if (this.f3531a != null && loadAnimation != null) {
            this.f3531a.startAnimation(loadAnimation);
        }
        return this;
    }

    /* renamed from: v */
    private RatingBar m3734v() {
        return (RatingBar) this.f3531a;
    }

    /* renamed from: v */
    private T m3735v(int i) {
        Animation loadAnimation = AnimationUtils.loadAnimation(m3597G(), i);
        loadAnimation.setAnimationListener(null);
        if (this.f3531a != null && loadAnimation != null) {
            this.f3531a.startAnimation(loadAnimation);
        }
        return this;
    }

    /* renamed from: w */
    private WebView m3736w() {
        return (WebView) this.f3531a;
    }

    /* renamed from: x */
    private Spinner m3737x() {
        return (Spinner) this.f3531a;
    }

    /* renamed from: y */
    private Editable m3738y() {
        if (this.f3531a instanceof EditText) {
            return ((EditText) this.f3531a).getEditableText();
        }
        return null;
    }

    /* renamed from: z */
    private CharSequence m3739z() {
        if (this.f3531a instanceof TextView) {
            return ((TextView) this.f3531a).getText();
        }
        return null;
    }

    /* renamed from: a */
    public final T m3740a(int i) {
        this.f3532b = m3658b(i);
        return this;
    }

    /* renamed from: a */
    public final T m3741a(Dialog dialog) {
        if (dialog != null) {
            try {
                dialog.show();
                f3523af.put(dialog, null);
            } catch (Exception unused) {
            }
        }
        return this;
    }

    /* renamed from: a */
    public final T m3742a(AbstractC1089a abstractC1089a) {
        this.f3533c = abstractC1089a;
        return this;
    }

    /* renamed from: a */
    public final <K> T m3743a(C1096b<K> c1096b) {
        return m3626a((AbstractRunnableC1095a) c1096b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final <K> T m3744a(String str, Class<K> cls, C1096b<K> c1096b) {
        c1096b.f3565b = cls;
        C1096b<K> c1096b2 = c1096b;
        c1096b2.f3566c = str;
        c1096b2.m3844a(true).f3579p = 0L;
        return m3626a((AbstractRunnableC1095a) c1096b);
    }

    /* renamed from: b */
    public final T m3745b(Dialog dialog) {
        if (dialog != null) {
            try {
                f3523af.remove(dialog);
                dialog.dismiss();
            } catch (Exception unused) {
            }
        }
        return this;
    }
}
