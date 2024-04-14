package com.android.volley.toolbox;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import com.android.volley.AbstractC0599l;
import com.android.volley.C0600m;
import com.android.volley.C0601n;
import com.android.volley.C0606s;
import com.android.volley.toolbox.C0621l;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

/* renamed from: com.android.volley.toolbox.k */
/* loaded from: classes.dex */
public final class C0620k {

    /* renamed from: c */
    Runnable f1355c;

    /* renamed from: d */
    private final C0600m f1356d;

    /* renamed from: f */
    private final b f1358f;

    /* renamed from: e */
    private int f1357e = 100;

    /* renamed from: a */
    final HashMap<String, a> f1353a = new HashMap<>();

    /* renamed from: b */
    final HashMap<String, a> f1354b = new HashMap<>();

    /* renamed from: g */
    private final Handler f1359g = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.volley.toolbox.k$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements C0601n.b<Bitmap> {

        /* renamed from: a */
        final /* synthetic */ String f1363a;

        AnonymousClass2(String str) {
            this.f1363a = str;
        }

        /* renamed from: a, reason: avoid collision after fix types in other method */
        private void a2(Bitmap bitmap) {
            C0620k c0620k = C0620k.this;
            String str = this.f1363a;
            a remove = c0620k.f1353a.remove(str);
            if (remove != null) {
                remove.f1368a = bitmap;
                c0620k.m1493a(str, remove);
            }
        }

        @Override // com.android.volley.C0601n.b
        /* renamed from: a */
        public final /* synthetic */ void mo1408a(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            C0620k c0620k = C0620k.this;
            String str = this.f1363a;
            a remove = c0620k.f1353a.remove(str);
            if (remove != null) {
                remove.f1368a = bitmap2;
                c0620k.m1493a(str, remove);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.volley.toolbox.k$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 implements C0601n.a {

        /* renamed from: a */
        final /* synthetic */ String f1365a;

        AnonymousClass3(String str) {
            this.f1365a = str;
        }

        @Override // com.android.volley.C0601n.a
        /* renamed from: a */
        public final void mo1407a(C0606s c0606s) {
            C0620k c0620k = C0620k.this;
            String str = this.f1365a;
            a remove = c0620k.f1353a.remove(str);
            if (remove != null) {
                remove.f1369b = c0606s;
                c0620k.m1493a(str, remove);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.android.volley.toolbox.k$a */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a */
        Bitmap f1368a;

        /* renamed from: b */
        C0606s f1369b;

        /* renamed from: c */
        final LinkedList<c> f1370c = new LinkedList<>();

        /* renamed from: e */
        private final AbstractC0599l<?> f1372e;

        public a(AbstractC0599l<?> abstractC0599l, c cVar) {
            this.f1372e = abstractC0599l;
            this.f1370c.add(cVar);
        }

        /* renamed from: a */
        private C0606s m1495a() {
            return this.f1369b;
        }

        /* renamed from: a */
        private void m1497a(C0606s c0606s) {
            this.f1369b = c0606s;
        }

        /* renamed from: b */
        private void m1499b(c cVar) {
            this.f1370c.add(cVar);
        }

        /* renamed from: a */
        public final boolean m1500a(c cVar) {
            this.f1370c.remove(cVar);
            if (this.f1370c.size() != 0) {
                return false;
            }
            this.f1372e.f1258h = true;
            return true;
        }
    }

    /* renamed from: com.android.volley.toolbox.k$b */
    /* loaded from: classes.dex */
    public interface b {
        /* renamed from: a */
        Bitmap m1501a();

        /* renamed from: b */
        void m1502b();
    }

    /* renamed from: com.android.volley.toolbox.k$c */
    /* loaded from: classes.dex */
    public class c {

        /* renamed from: a */
        Bitmap f1373a;

        /* renamed from: b */
        final d f1374b;

        /* renamed from: c */
        final String f1375c;

        /* renamed from: e */
        private final String f1377e;

        public c(Bitmap bitmap, String str, String str2, d dVar) {
            this.f1373a = bitmap;
            this.f1375c = str;
            this.f1377e = str2;
            this.f1374b = dVar;
        }

        /* renamed from: b */
        private Bitmap m1505b() {
            return this.f1373a;
        }

        /* renamed from: c */
        private String m1506c() {
            return this.f1375c;
        }

        /* renamed from: a */
        public final void m1507a() {
            if (this.f1374b == null) {
                return;
            }
            a aVar = C0620k.this.f1353a.get(this.f1377e);
            if (aVar != null) {
                if (aVar.m1500a(this)) {
                    C0620k.this.f1353a.remove(this.f1377e);
                    return;
                }
                return;
            }
            a aVar2 = C0620k.this.f1354b.get(this.f1377e);
            if (aVar2 != null) {
                aVar2.m1500a(this);
                if (aVar2.f1370c.size() == 0) {
                    C0620k.this.f1354b.remove(this.f1377e);
                }
            }
        }
    }

    /* renamed from: com.android.volley.toolbox.k$d */
    /* loaded from: classes.dex */
    public interface d extends C0601n.a {
        /* renamed from: a */
        void mo1426a(c cVar, boolean z);
    }

    private C0620k(C0600m c0600m, b bVar) {
        this.f1356d = c0600m;
        this.f1358f = bVar;
    }

    /* renamed from: a */
    private AbstractC0599l<Bitmap> m1476a(String str, int i, int i2, ImageView.ScaleType scaleType, String str2, C0621l.a aVar) {
        return new C0621l(str, new AnonymousClass2(str2), i, i2, scaleType, Bitmap.Config.RGB_565, aVar, new AnonymousClass3(str2));
    }

    /* renamed from: a */
    private c m1477a(String str, d dVar) {
        return m1492a(str, dVar, 0, 0, ImageView.ScaleType.CENTER_INSIDE, (C0621l.a) null);
    }

    /* renamed from: a */
    private c m1478a(String str, d dVar, int i, int i2) {
        return m1492a(str, dVar, i, i2, ImageView.ScaleType.CENTER_INSIDE, (C0621l.a) null);
    }

    /* renamed from: a */
    private c m1479a(String str, d dVar, ImageView.ScaleType scaleType) {
        return m1492a(str, dVar, 0, 0, scaleType, (C0621l.a) null);
    }

    /* renamed from: a */
    private static d m1480a(final ImageView imageView, final int i, final int i2) {
        return new d() { // from class: com.android.volley.toolbox.k.1
            @Override // com.android.volley.C0601n.a
            /* renamed from: a */
            public final void mo1407a(C0606s c0606s) {
                if (i2 != 0) {
                    imageView.setImageResource(i2);
                }
            }

            @Override // com.android.volley.toolbox.C0620k.d
            /* renamed from: a */
            public final void mo1426a(c cVar, boolean z) {
                if (cVar.f1373a != null) {
                    imageView.setImageBitmap(cVar.f1373a);
                } else if (i != 0) {
                    imageView.setImageResource(i);
                }
            }
        };
    }

    /* renamed from: a */
    private static String m1481a(String str, int i, int i2, ImageView.ScaleType scaleType, C0621l.a aVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("#W");
        sb.append(i);
        sb.append("#H");
        sb.append(i2);
        sb.append("#S");
        sb.append(scaleType.toString());
        if (aVar != null) {
            sb.append("#T");
            sb.append(aVar.m1512b());
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static void m1483a() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("ImageLoader must be invoked from the main thread.");
        }
    }

    /* renamed from: a */
    private void m1484a(int i) {
        this.f1357e = i;
    }

    /* renamed from: a */
    private void m1485a(String str, Bitmap bitmap) {
        a remove = this.f1353a.remove(str);
        if (remove != null) {
            remove.f1368a = bitmap;
            m1493a(str, remove);
        }
    }

    /* renamed from: a */
    private void m1486a(String str, C0606s c0606s) {
        a remove = this.f1353a.remove(str);
        if (remove != null) {
            remove.f1369b = c0606s;
            m1493a(str, remove);
        }
    }

    /* renamed from: a */
    private boolean m1487a(String str, int i, int i2) {
        return m1490b(str, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    /* renamed from: a */
    private boolean m1488a(String str, int i, int i2, ImageView.ScaleType scaleType) {
        return m1490b(str, i, i2, scaleType);
    }

    /* renamed from: b */
    private boolean m1490b(String str, int i, int i2, ImageView.ScaleType scaleType) {
        m1483a();
        m1481a(str, i, i2, scaleType, null);
        return this.f1358f.m1501a() != null;
    }

    /* renamed from: c */
    private static /* synthetic */ Runnable m1491c(C0620k c0620k) {
        c0620k.f1355c = null;
        return null;
    }

    /* renamed from: a */
    public final c m1492a(String str, d dVar, int i, int i2, ImageView.ScaleType scaleType, C0621l.a aVar) {
        m1483a();
        String m1481a = m1481a(str, i, i2, scaleType, aVar);
        Bitmap m1501a = this.f1358f.m1501a();
        if (m1501a != null) {
            c cVar = new c(m1501a, str, null, null);
            dVar.mo1426a(cVar, true);
            return cVar;
        }
        c cVar2 = new c(null, str, m1481a, dVar);
        dVar.mo1426a(cVar2, true);
        a aVar2 = this.f1353a.get(m1481a);
        if (aVar2 != null) {
            aVar2.f1370c.add(cVar2);
            return cVar2;
        }
        C0621l c0621l = new C0621l(str, new AnonymousClass2(m1481a), i, i2, scaleType, Bitmap.Config.RGB_565, aVar, new AnonymousClass3(m1481a));
        this.f1356d.m1399a((AbstractC0599l) c0621l);
        this.f1353a.put(m1481a, new a(c0621l, cVar2));
        return cVar2;
    }

    /* renamed from: a */
    final void m1493a(String str, a aVar) {
        this.f1354b.put(str, aVar);
        if (this.f1355c == null) {
            this.f1355c = new Runnable() { // from class: com.android.volley.toolbox.k.4
                @Override // java.lang.Runnable
                public final void run() {
                    for (a aVar2 : C0620k.this.f1354b.values()) {
                        Iterator<c> it = aVar2.f1370c.iterator();
                        while (it.hasNext()) {
                            c next = it.next();
                            if (next.f1374b != null) {
                                if (aVar2.f1369b == null) {
                                    next.f1373a = aVar2.f1368a;
                                    next.f1374b.mo1426a(next, false);
                                } else {
                                    next.f1374b.mo1407a(aVar2.f1369b);
                                }
                            }
                        }
                    }
                    C0620k.this.f1354b.clear();
                    C0620k.this.f1355c = null;
                }
            };
            this.f1359g.postDelayed(this.f1355c, this.f1357e);
        }
    }
}
