package com.bumptech.glide.load.p049d.p050a;

import android.annotation.TargetApi;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.load.C1024i;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC1026k;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* renamed from: com.bumptech.glide.load.d.a.ac */
/* loaded from: classes.dex */
public class C0966ac<T> implements InterfaceC1026k<T, Bitmap> {

    /* renamed from: a */
    public static final long f2990a = -1;

    /* renamed from: b */
    @VisibleForTesting
    static final int f2991b = 2;

    /* renamed from: e */
    private static final String f2994e = "VideoDecoder";

    /* renamed from: g */
    private final c<T> f2996g;

    /* renamed from: h */
    private final InterfaceC0875e f2997h;

    /* renamed from: i */
    private final b f2998i;

    /* renamed from: c */
    public static final C1024i<Long> f2992c = C1024i.m3057a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new C1024i.a<Long>() { // from class: com.bumptech.glide.load.d.a.ac.1

        /* renamed from: a */
        private final ByteBuffer f2999a = ByteBuffer.allocate(8);

        /* renamed from: a, reason: avoid collision after fix types in other method */
        private void a2(@NonNull byte[] bArr, @NonNull Long l, @NonNull MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.f2999a) {
                this.f2999a.position(0);
                messageDigest.update(this.f2999a.putLong(l.longValue()).array());
            }
        }

        @Override // com.bumptech.glide.load.C1024i.a
        /* renamed from: a */
        public final /* synthetic */ void mo2857a(@NonNull byte[] bArr, @NonNull Long l, @NonNull MessageDigest messageDigest) {
            Long l2 = l;
            messageDigest.update(bArr);
            synchronized (this.f2999a) {
                this.f2999a.position(0);
                messageDigest.update(this.f2999a.putLong(l2.longValue()).array());
            }
        }
    });

    /* renamed from: d */
    public static final C1024i<Integer> f2993d = C1024i.m3057a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new C1024i.a<Integer>() { // from class: com.bumptech.glide.load.d.a.ac.2

        /* renamed from: a */
        private final ByteBuffer f3000a = ByteBuffer.allocate(4);

        /* renamed from: a, reason: avoid collision after fix types in other method */
        private void a2(@NonNull byte[] bArr, @NonNull Integer num, @NonNull MessageDigest messageDigest) {
            if (num == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.f3000a) {
                this.f3000a.position(0);
                messageDigest.update(this.f3000a.putInt(num.intValue()).array());
            }
        }

        @Override // com.bumptech.glide.load.C1024i.a
        /* renamed from: a */
        public final /* synthetic */ void mo2857a(@NonNull byte[] bArr, @NonNull Integer num, @NonNull MessageDigest messageDigest) {
            Integer num2 = num;
            if (num2 != null) {
                messageDigest.update(bArr);
                synchronized (this.f3000a) {
                    this.f3000a.position(0);
                    messageDigest.update(this.f3000a.putInt(num2.intValue()).array());
                }
            }
        }
    });

    /* renamed from: f */
    private static final b f2995f = new b();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.d.a.ac$a */
    /* loaded from: classes.dex */
    public static final class a implements c<AssetFileDescriptor> {
        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        /* renamed from: a, reason: avoid collision after fix types in other method */
        private static void a2(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }

        @Override // com.bumptech.glide.load.p049d.p050a.C0966ac.c
        /* renamed from: a */
        public final /* synthetic */ void mo2858a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            AssetFileDescriptor assetFileDescriptor2 = assetFileDescriptor;
            mediaMetadataRetriever.setDataSource(assetFileDescriptor2.getFileDescriptor(), assetFileDescriptor2.getStartOffset(), assetFileDescriptor2.getLength());
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.d.a.ac$b */
    /* loaded from: classes.dex */
    static class b {
        b() {
        }

        /* renamed from: a */
        private static MediaMetadataRetriever m2859a() {
            return new MediaMetadataRetriever();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.d.a.ac$c */
    /* loaded from: classes.dex */
    public interface c<T> {
        /* renamed from: a */
        void mo2858a(MediaMetadataRetriever mediaMetadataRetriever, T t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.d.a.ac$d */
    /* loaded from: classes.dex */
    public static final class d implements c<ParcelFileDescriptor> {
        /* renamed from: a, reason: avoid collision after fix types in other method */
        private static void a2(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }

        @Override // com.bumptech.glide.load.p049d.p050a.C0966ac.c
        /* renamed from: a */
        public final /* synthetic */ void mo2858a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0966ac(InterfaceC0875e interfaceC0875e, c<T> cVar) {
        this(interfaceC0875e, cVar, f2995f);
    }

    @VisibleForTesting
    private C0966ac(InterfaceC0875e interfaceC0875e, c<T> cVar, b bVar) {
        this.f2997h = interfaceC0875e;
        this.f2996g = cVar;
        this.f2998i = bVar;
    }

    /* renamed from: a */
    private static Bitmap m2852a(MediaMetadataRetriever mediaMetadataRetriever, long j, int i) {
        return mediaMetadataRetriever.getFrameAtTime(j, i);
    }

    @Nullable
    /* renamed from: a */
    private static Bitmap m2853a(MediaMetadataRetriever mediaMetadataRetriever, long j, int i, int i2, int i3, AbstractC0979n abstractC0979n) {
        Bitmap m2855b = (Build.VERSION.SDK_INT < 27 || i2 == Integer.MIN_VALUE || i3 == Integer.MIN_VALUE || abstractC0979n == AbstractC0979n.f3050f) ? null : m2855b(mediaMetadataRetriever, j, i, i2, i3, abstractC0979n);
        return m2855b == null ? mediaMetadataRetriever.getFrameAtTime(j, i) : m2855b;
    }

    /* renamed from: a */
    public static InterfaceC1026k<AssetFileDescriptor, Bitmap> m2854a(InterfaceC0875e interfaceC0875e) {
        return new C0966ac(interfaceC0875e, new a((byte) 0));
    }

    @TargetApi(27)
    /* renamed from: b */
    private static Bitmap m2855b(MediaMetadataRetriever mediaMetadataRetriever, long j, int i, int i2, int i3, AbstractC0979n abstractC0979n) {
        try {
            int parseInt = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            int parseInt2 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            int parseInt3 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (parseInt3 == 90 || parseInt3 == 270) {
                parseInt2 = parseInt;
                parseInt = parseInt2;
            }
            float mo2900a = abstractC0979n.mo2900a(parseInt, parseInt2, i2, i3);
            return mediaMetadataRetriever.getScaledFrameAtTime(j, i, Math.round(parseInt * mo2900a), Math.round(mo2900a * parseInt2));
        } catch (Throwable th) {
            if (!Log.isLoggable(f2994e, 3)) {
                return null;
            }
            Log.d(f2994e, "Exception trying to decode frame on oreo+", th);
            return null;
        }
    }

    /* renamed from: b */
    public static InterfaceC1026k<ParcelFileDescriptor, Bitmap> m2856b(InterfaceC0875e interfaceC0875e) {
        return new C0966ac(interfaceC0875e, new d());
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final InterfaceC0925u<Bitmap> mo2847a(@NonNull T t, int i, int i2, @NonNull C1025j c1025j) throws IOException {
        long longValue = ((Long) c1025j.m3064a(f2992c)).longValue();
        if (longValue < 0 && longValue != -1) {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + longValue);
        }
        Integer num = (Integer) c1025j.m3064a(f2993d);
        if (num == null) {
            num = 2;
        }
        AbstractC0979n abstractC0979n = (AbstractC0979n) c1025j.m3064a(AbstractC0979n.f3052h);
        if (abstractC0979n == null) {
            abstractC0979n = AbstractC0979n.f3051g;
        }
        AbstractC0979n abstractC0979n2 = abstractC0979n;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                this.f2996g.mo2858a(mediaMetadataRetriever, t);
                int intValue = num.intValue();
                Bitmap bitmap = null;
                if (Build.VERSION.SDK_INT >= 27 && i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE && abstractC0979n2 != AbstractC0979n.f3050f) {
                    bitmap = m2855b(mediaMetadataRetriever, longValue, intValue, i, i2, abstractC0979n2);
                }
                if (bitmap == null) {
                    bitmap = mediaMetadataRetriever.getFrameAtTime(longValue, intValue);
                }
                mediaMetadataRetriever.release();
                return C0971f.m2867a(bitmap, this.f2997h);
            } catch (RuntimeException e) {
                throw new IOException(e);
            }
        } catch (Throwable th) {
            mediaMetadataRetriever.release();
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final boolean mo2848a(@NonNull T t, @NonNull C1025j c1025j) {
        return true;
    }
}
