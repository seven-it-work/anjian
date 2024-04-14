package p017c;

import android.support.v4.media.session.PlaybackStateCompat;
import javax.annotation.Nullable;

/* renamed from: c.v */
/* loaded from: classes.dex */
final class C0554v {

    /* renamed from: a */
    static final long f1154a = 65536;

    /* renamed from: b */
    @Nullable
    static C0553u f1155b;

    /* renamed from: c */
    static long f1156c;

    private C0554v() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C0553u m1241a() {
        synchronized (C0554v.class) {
            if (f1155b == null) {
                return new C0553u();
            }
            C0553u c0553u = f1155b;
            f1155b = c0553u.f1152h;
            c0553u.f1152h = null;
            f1156c -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            return c0553u;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1242a(C0553u c0553u) {
        if (c0553u.f1152h != null || c0553u.f1153i != null) {
            throw new IllegalArgumentException();
        }
        if (c0553u.f1150f) {
            return;
        }
        synchronized (C0554v.class) {
            if (f1156c + PlaybackStateCompat.ACTION_PLAY_FROM_URI > 65536) {
                return;
            }
            f1156c += PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            c0553u.f1152h = f1155b;
            c0553u.f1149e = 0;
            c0553u.f1148d = 0;
            f1155b = c0553u;
        }
    }
}
