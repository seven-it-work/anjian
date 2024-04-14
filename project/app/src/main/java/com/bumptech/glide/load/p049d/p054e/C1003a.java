package com.bumptech.glide.load.p049d.p054e;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.ComponentCallbacks2C0838f;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.EnumC0869b;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.InterfaceC1026k;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.load.p049d.C0992b;
import com.bumptech.glide.p036c.C0820d;
import com.bumptech.glide.p036c.C0821e;
import com.bumptech.glide.p036c.C0823g;
import com.bumptech.glide.p036c.InterfaceC0818b;
import com.bumptech.glide.util.C1080e;
import com.bumptech.glide.util.C1086k;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;

/* renamed from: com.bumptech.glide.load.d.e.a */
/* loaded from: classes.dex */
public final class C1003a implements InterfaceC1026k<ByteBuffer, C1005c> {

    /* renamed from: a */
    private static final String f3119a = "BufferGifDecoder";

    /* renamed from: b */
    private static final a f3120b = new a();

    /* renamed from: c */
    private static final b f3121c = new b();

    /* renamed from: d */
    private final Context f3122d;

    /* renamed from: e */
    private final List<ImageHeaderParser> f3123e;

    /* renamed from: f */
    private final b f3124f;

    /* renamed from: g */
    private final a f3125g;

    /* renamed from: h */
    private final C1004b f3126h;

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.d.e.a$a */
    /* loaded from: classes.dex */
    static class a {
        a() {
        }

        /* renamed from: a */
        private static InterfaceC0818b m2991a(InterfaceC0818b.a aVar, C0820d c0820d, ByteBuffer byteBuffer, int i) {
            return new C0823g(aVar, c0820d, byteBuffer, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.d.e.a$b */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a */
        private final Queue<C0821e> f3127a = C1086k.m3484a(0);

        b() {
        }

        /* renamed from: a */
        final synchronized C0821e m2992a(ByteBuffer byteBuffer) {
            C0821e poll;
            poll = this.f3127a.poll();
            if (poll == null) {
                poll = new C0821e();
            }
            return poll.m2249a(byteBuffer);
        }

        /* renamed from: a */
        final synchronized void m2993a(C0821e c0821e) {
            c0821e.f2311c = null;
            c0821e.f2312d = null;
            this.f3127a.offer(c0821e);
        }
    }

    private C1003a(Context context) {
        this(context, ComponentCallbacks2C0838f.m2307b(context).f2369c.m3089a(), ComponentCallbacks2C0838f.m2307b(context).f2367a, ComponentCallbacks2C0838f.m2307b(context).f2370d);
    }

    public C1003a(Context context, List<ImageHeaderParser> list, InterfaceC0875e interfaceC0875e, InterfaceC0872b interfaceC0872b) {
        this(context, list, interfaceC0875e, interfaceC0872b, f3121c, f3120b);
    }

    @VisibleForTesting
    private C1003a(Context context, List<ImageHeaderParser> list, InterfaceC0875e interfaceC0875e, InterfaceC0872b interfaceC0872b, b bVar, a aVar) {
        this.f3122d = context.getApplicationContext();
        this.f3123e = list;
        this.f3125g = aVar;
        this.f3126h = new C1004b(interfaceC0875e, interfaceC0872b);
        this.f3124f = bVar;
    }

    /* renamed from: a */
    private static int m2989a(C0820d c0820d, int i, int i2) {
        int min = Math.min(c0820d.f2284i / i2, c0820d.f2283h / i);
        int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
        if (Log.isLoggable(f3119a, 2) && max > 1) {
            Log.v(f3119a, "Downsampling GIF, sampleSize: " + max + ", target dimens: [" + i + "x" + i2 + "], actual dimens: [" + c0820d.f2283h + "x" + c0820d.f2284i + "]");
        }
        return max;
    }

    @Nullable
    /* renamed from: a */
    private C1007e m2990a(ByteBuffer byteBuffer, int i, int i2, C0821e c0821e, C1025j c1025j) {
        long m3453a = C1080e.m3453a();
        try {
            C0820d m2248a = c0821e.m2248a();
            if (m2248a.f2280e > 0 && m2248a.f2279d == 0) {
                Bitmap.Config config = c1025j.m3064a(C1011i.f3170a) == EnumC0869b.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                int min = Math.min(m2248a.f2284i / i2, m2248a.f2283h / i);
                int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
                if (Log.isLoggable(f3119a, 2) && max > 1) {
                    Log.v(f3119a, "Downsampling GIF, sampleSize: " + max + ", target dimens: [" + i + "x" + i2 + "], actual dimens: [" + m2248a.f2283h + "x" + m2248a.f2284i + "]");
                }
                C0823g c0823g = new C0823g(this.f3126h, m2248a, byteBuffer, max);
                c0823g.mo2202a(config);
                c0823g.mo2209e();
                Bitmap mo2218n = c0823g.mo2218n();
                if (mo2218n == null) {
                    if (Log.isLoggable(f3119a, 2)) {
                        Log.v(f3119a, "Decoded GIF from stream in " + C1080e.m3452a(m3453a));
                    }
                    return null;
                }
                C1007e c1007e = new C1007e(new C1005c(this.f3122d, c0823g, C0992b.m2962a(), i, i2, mo2218n, (byte) 0));
                if (Log.isLoggable(f3119a, 2)) {
                    Log.v(f3119a, "Decoded GIF from stream in " + C1080e.m3452a(m3453a));
                }
                return c1007e;
            }
            if (Log.isLoggable(f3119a, 2)) {
                Log.v(f3119a, "Decoded GIF from stream in " + C1080e.m3452a(m3453a));
            }
            return null;
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public C1007e mo2847a(@NonNull ByteBuffer byteBuffer, int i, int i2, @NonNull C1025j c1025j) {
        C0821e m2992a = this.f3124f.m2992a(byteBuffer);
        try {
            return m2990a(byteBuffer, i, i2, m2992a, c1025j);
        } finally {
            this.f3124f.m2993a(m2992a);
        }
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private boolean a2(@NonNull ByteBuffer byteBuffer, @NonNull C1025j c1025j) throws IOException {
        ImageHeaderParser.ImageType imageType;
        if (!((Boolean) c1025j.m3064a(C1011i.f3171b)).booleanValue()) {
            List<ImageHeaderParser> list = this.f3123e;
            if (byteBuffer != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    imageType = list.get(i).mo2378a(byteBuffer);
                    if (imageType != ImageHeaderParser.ImageType.UNKNOWN) {
                        break;
                    }
                }
            }
            imageType = ImageHeaderParser.ImageType.UNKNOWN;
            if (imageType == ImageHeaderParser.ImageType.GIF) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final /* synthetic */ boolean mo2848a(@NonNull ByteBuffer byteBuffer, @NonNull C1025j c1025j) throws IOException {
        ImageHeaderParser.ImageType imageType;
        ByteBuffer byteBuffer2 = byteBuffer;
        if (!((Boolean) c1025j.m3064a(C1011i.f3171b)).booleanValue()) {
            List<ImageHeaderParser> list = this.f3123e;
            if (byteBuffer2 != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    imageType = list.get(i).mo2378a(byteBuffer2);
                    if (imageType != ImageHeaderParser.ImageType.UNKNOWN) {
                        break;
                    }
                }
            }
            imageType = ImageHeaderParser.ImageType.UNKNOWN;
            if (imageType == ImageHeaderParser.ImageType.GIF) {
                return true;
            }
        }
        return false;
    }
}
