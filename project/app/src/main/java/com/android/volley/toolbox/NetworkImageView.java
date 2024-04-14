package com.android.volley.toolbox;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.android.volley.C0606s;
import com.android.volley.toolbox.C0620k;
import com.android.volley.toolbox.C0621l;

/* loaded from: classes.dex */
public class NetworkImageView extends ImageView {

    /* renamed from: a */
    private String f1304a;

    /* renamed from: b */
    private int f1305b;

    /* renamed from: c */
    private int f1306c;

    /* renamed from: d */
    private C0620k f1307d;

    /* renamed from: e */
    private InterfaceC0609a f1308e;

    /* renamed from: f */
    private C0621l.a f1309f;

    /* renamed from: g */
    private C0620k.c f1310g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.volley.toolbox.NetworkImageView$1 */
    /* loaded from: classes.dex */
    public final class C06081 implements C0620k.d {

        /* renamed from: a */
        final /* synthetic */ boolean f1311a;

        C06081(boolean z) {
            this.f1311a = z;
        }

        @Override // com.android.volley.C0601n.a
        /* renamed from: a */
        public final void mo1407a(C0606s c0606s) {
            if (NetworkImageView.this.f1306c != 0) {
                NetworkImageView.this.setImageResource(NetworkImageView.this.f1306c);
            }
        }

        @Override // com.android.volley.toolbox.C0620k.d
        /* renamed from: a */
        public final void mo1426a(final C0620k.c cVar, boolean z) {
            if (z && this.f1311a) {
                NetworkImageView.this.post(new Runnable() { // from class: com.android.volley.toolbox.NetworkImageView.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        C06081.this.mo1426a(cVar, false);
                    }
                });
            } else if (cVar.f1373a != null) {
                NetworkImageView.this.setImageBitmap(cVar.f1373a);
            } else if (NetworkImageView.this.f1305b != 0) {
                NetworkImageView.this.setImageResource(NetworkImageView.this.f1305b);
            }
        }
    }

    /* renamed from: com.android.volley.toolbox.NetworkImageView$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0609a {
        /* renamed from: a */
        String m1427a();
    }

    public NetworkImageView(Context context) {
        this(context, null);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    private void m1421a() {
        if (this.f1305b != 0) {
            setImageResource(this.f1305b);
        } else {
            setImageBitmap(null);
        }
    }

    /* renamed from: a */
    private void m1422a(String str, C0620k c0620k) {
        this.f1304a = str;
        this.f1307d = c0620k;
        this.f1308e = null;
        m1423a(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0051  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m1423a(boolean r10) {
        /*
            r9 = this;
            int r0 = r9.getWidth()
            int r1 = r9.getHeight()
            android.widget.ImageView$ScaleType r7 = r9.getScaleType()
            android.view.ViewGroup$LayoutParams r2 = r9.getLayoutParams()
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L2a
            android.view.ViewGroup$LayoutParams r2 = r9.getLayoutParams()
            int r2 = r2.width
            r5 = -2
            if (r2 != r5) goto L1f
            r2 = 1
            goto L20
        L1f:
            r2 = 0
        L20:
            android.view.ViewGroup$LayoutParams r6 = r9.getLayoutParams()
            int r6 = r6.height
            if (r6 != r5) goto L2b
            r5 = 1
            goto L2c
        L2a:
            r2 = 0
        L2b:
            r5 = 0
        L2c:
            if (r2 == 0) goto L31
            if (r5 == 0) goto L31
            goto L32
        L31:
            r3 = 0
        L32:
            if (r0 != 0) goto L39
            if (r1 != 0) goto L39
            if (r3 != 0) goto L39
            return
        L39:
            java.lang.String r3 = r9.f1304a
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 == 0) goto L51
            com.android.volley.toolbox.k$c r10 = r9.f1310g
            if (r10 == 0) goto L4d
            com.android.volley.toolbox.k$c r10 = r9.f1310g
            r10.m1507a()
            r10 = 0
            r9.f1310g = r10
        L4d:
            r9.m1421a()
            return
        L51:
            if (r2 == 0) goto L54
            r0 = 0
        L54:
            if (r5 == 0) goto L58
            r6 = 0
            goto L59
        L58:
            r6 = r1
        L59:
            java.lang.String r1 = r9.f1304a
            com.android.volley.toolbox.NetworkImageView$a r2 = r9.f1308e
            if (r2 == 0) goto L6f
            com.android.volley.toolbox.NetworkImageView$a r1 = r9.f1308e
            r9.getScaleType()
            android.content.Context r2 = r9.getContext()
            r2.getApplicationContext()
            java.lang.String r1 = r1.m1427a()
        L6f:
            r3 = r1
            com.android.volley.toolbox.k$c r1 = r9.f1310g
            if (r1 == 0) goto L8d
            com.android.volley.toolbox.k$c r1 = r9.f1310g
            java.lang.String r1 = r1.f1375c
            if (r1 == 0) goto L8d
            com.android.volley.toolbox.k$c r1 = r9.f1310g
            java.lang.String r1 = r1.f1375c
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L85
            return
        L85:
            com.android.volley.toolbox.k$c r1 = r9.f1310g
            r1.m1507a()
            r9.m1421a()
        L8d:
            com.android.volley.toolbox.k r2 = r9.f1307d
            com.android.volley.toolbox.NetworkImageView$1 r4 = new com.android.volley.toolbox.NetworkImageView$1
            r4.<init>(r10)
            com.android.volley.toolbox.l$a r8 = r9.f1309f
            r5 = r0
            com.android.volley.toolbox.k$c r10 = r2.m1492a(r3, r4, r5, r6, r7, r8)
            r9.f1310g = r10
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.volley.toolbox.NetworkImageView.m1423a(boolean):void");
    }

    /* renamed from: b */
    private void m1425b(String str, C0620k c0620k) {
        this.f1304a = str;
        this.f1307d = c0620k;
        this.f1308e = null;
        m1423a(false);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        if (this.f1310g != null) {
            this.f1310g.m1507a();
            setImageBitmap(null);
            this.f1310g = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m1423a(true);
    }

    public void setDefaultImageResId(int i) {
        this.f1305b = i;
    }

    public void setErrorImageResId(int i) {
        this.f1306c = i;
    }

    public void setTransformation(C0621l.a aVar) {
        this.f1309f = aVar;
    }
}
