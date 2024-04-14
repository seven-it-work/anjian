package mobi.oneway.export.p193b.p195b;

import com.umeng.commonsdk.amap.UMAmapConfig;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.p198e.C2670b;
import mobi.oneway.export.p201g.C2701m;

/* renamed from: mobi.oneway.export.b.b.b */
/* loaded from: classes2.dex */
public abstract class AbstractC2651b<T> implements InterfaceC2653d {

    /* renamed from: a */
    protected T f10202a;

    /* renamed from: b */
    protected AdType f10203b;

    /* renamed from: c */
    private long f10204c;

    /* renamed from: d */
    private Map<String, Boolean> f10205d;

    /* renamed from: e */
    private Map<String, Boolean> f10206e;

    /* renamed from: f */
    private volatile boolean f10207f;

    /* renamed from: g */
    private Timer f10208g;

    /* renamed from: h */
    private TimerTask f10209h;

    /* renamed from: i */
    private boolean f10210i;

    public AbstractC2651b(AdType adType, List<String> list, long j) {
        this.f10204c = UMAmapConfig.AMAP_CACHE_WRITE_TIME;
        if (j != 0) {
            this.f10204c = j;
        }
        this.f10203b = adType;
        this.f10205d = new ConcurrentHashMap();
        this.f10206e = new ConcurrentHashMap();
        m11959a(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m11954f() {
        C2701m.m12235a((Object) "load ad timeout");
        this.f10207f = true;
        m11957i();
        C2670b.m12055a().m12062c(new Runnable() { // from class: mobi.oneway.export.b.b.b.1
            @Override // java.lang.Runnable
            public void run() {
                if (AbstractC2651b.this.m11955g()) {
                    AbstractC2651b.this.m11960a(true);
                    AbstractC2651b.this.mo11942a();
                } else {
                    AbstractC2651b.this.m11960a(false);
                    AbstractC2651b.this.mo11943a("load ad timeout");
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public boolean m11955g() {
        Iterator<Map.Entry<String, Boolean>> it = this.f10205d.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getValue().booleanValue()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    private boolean m11956h() {
        Iterator<Map.Entry<String, Boolean>> it = this.f10206e.entrySet().iterator();
        while (it.hasNext()) {
            if (!it.next().getValue().booleanValue()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: i */
    private void m11957i() {
        if (this.f10209h != null) {
            this.f10209h.cancel();
            this.f10209h = null;
        }
        if (this.f10208g != null) {
            this.f10208g.cancel();
            this.f10208g = null;
        }
    }

    /* renamed from: a */
    protected abstract void mo11942a();

    /* renamed from: a */
    public void m11958a(T t) {
        this.f10202a = t;
    }

    /* renamed from: a */
    protected abstract void mo11943a(String str);

    /* renamed from: a */
    protected void m11959a(List<String> list) {
        if (list == null) {
            return;
        }
        for (String str : list) {
            this.f10205d.put(str, false);
            this.f10206e.put(str, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m11960a(boolean z) {
        this.f10210i = z;
    }

    /* renamed from: b */
    public boolean m11961b() {
        return this.f10210i;
    }

    /* renamed from: c */
    public void mo11962c() {
        Iterator<Map.Entry<String, Boolean>> it = this.f10205d.entrySet().iterator();
        while (it.hasNext()) {
            this.f10205d.put(it.next().getKey(), false);
        }
        Iterator<Map.Entry<String, Boolean>> it2 = this.f10206e.entrySet().iterator();
        while (it2.hasNext()) {
            this.f10206e.put(it2.next().getKey(), false);
        }
        if (this.f10208g == null) {
            this.f10207f = false;
            this.f10209h = new TimerTask() { // from class: mobi.oneway.export.b.b.b.2
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    AbstractC2651b.this.m11954f();
                }
            };
            this.f10208g = new Timer();
            this.f10208g.schedule(this.f10209h, this.f10204c);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public boolean m11963d() {
        if (!m11956h() || this.f10207f) {
            return false;
        }
        m11957i();
        m11960a(true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public boolean m11964e() {
        if (this.f10207f || !m11956h()) {
            return false;
        }
        m11957i();
        if (!m11955g()) {
            return true;
        }
        m11960a(true);
        mo11942a();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public void m11965f(String str) {
        this.f10205d.put(str, true);
        this.f10206e.put(str, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void m11966g(String str) {
        this.f10206e.put(str, true);
    }
}
