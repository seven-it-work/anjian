package com.bumptech.glide.load.p049d.p050a;

import android.support.annotation.NonNull;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.MotionEventCompat;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import com.bumptech.glide.util.C1084i;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* renamed from: com.bumptech.glide.load.d.a.m */
/* loaded from: classes.dex */
public final class C0978m implements ImageHeaderParser {

    /* renamed from: b */
    static final int f3019b = 65496;

    /* renamed from: d */
    static final int f3021d = 255;

    /* renamed from: e */
    static final int f3022e = 225;

    /* renamed from: f */
    private static final String f3023f = "DfltImageHeaderParser";

    /* renamed from: g */
    private static final int f3024g = 4671814;

    /* renamed from: h */
    private static final int f3025h = -1991225785;

    /* renamed from: i */
    private static final int f3026i = 19789;

    /* renamed from: j */
    private static final int f3027j = 18761;

    /* renamed from: l */
    private static final int f3029l = 218;

    /* renamed from: m */
    private static final int f3030m = 217;

    /* renamed from: n */
    private static final int f3031n = 274;

    /* renamed from: p */
    private static final int f3033p = 1380533830;

    /* renamed from: q */
    private static final int f3034q = 1464156752;

    /* renamed from: r */
    private static final int f3035r = 1448097792;

    /* renamed from: s */
    private static final int f3036s = -256;

    /* renamed from: t */
    private static final int f3037t = 255;

    /* renamed from: u */
    private static final int f3038u = 88;

    /* renamed from: v */
    private static final int f3039v = 76;

    /* renamed from: w */
    private static final int f3040w = 16;

    /* renamed from: x */
    private static final int f3041x = 8;

    /* renamed from: k */
    private static final String f3028k = "Exif\u0000\u0000";

    /* renamed from: c */
    static final byte[] f3020c = f3028k.getBytes(Charset.forName("UTF-8"));

    /* renamed from: o */
    private static final int[] f3032o = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* renamed from: com.bumptech.glide.load.d.a.m$a */
    /* loaded from: classes.dex */
    private static final class a implements c {

        /* renamed from: a */
        private final ByteBuffer f3042a;

        a(ByteBuffer byteBuffer) {
            this.f3042a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.load.p049d.p050a.C0978m.c
        /* renamed from: a */
        public final int mo2890a() {
            return ((mo2894c() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (mo2894c() & 255);
        }

        @Override // com.bumptech.glide.load.p049d.p050a.C0978m.c
        /* renamed from: a */
        public final int mo2891a(byte[] bArr, int i) {
            int min = Math.min(i, this.f3042a.remaining());
            if (min == 0) {
                return -1;
            }
            this.f3042a.get(bArr, 0, min);
            return min;
        }

        @Override // com.bumptech.glide.load.p049d.p050a.C0978m.c
        /* renamed from: a */
        public final long mo2892a(long j) {
            int min = (int) Math.min(this.f3042a.remaining(), j);
            this.f3042a.position(this.f3042a.position() + min);
            return min;
        }

        @Override // com.bumptech.glide.load.p049d.p050a.C0978m.c
        /* renamed from: b */
        public final short mo2893b() {
            return (short) (mo2894c() & 255);
        }

        @Override // com.bumptech.glide.load.p049d.p050a.C0978m.c
        /* renamed from: c */
        public final int mo2894c() {
            if (this.f3042a.remaining() <= 0) {
                return -1;
            }
            return this.f3042a.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.d.a.m$b */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a */
        final ByteBuffer f3043a;

        b(byte[] bArr, int i) {
            this.f3043a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        /* renamed from: a */
        private int m2895a() {
            return this.f3043a.remaining();
        }

        /* renamed from: a */
        private void m2896a(ByteOrder byteOrder) {
            this.f3043a.order(byteOrder);
        }

        /* renamed from: a */
        private boolean m2897a(int i, int i2) {
            return this.f3043a.remaining() - i >= i2;
        }

        /* renamed from: a */
        final int m2898a(int i) {
            if (m2897a(i, 4)) {
                return this.f3043a.getInt(i);
            }
            return -1;
        }

        /* renamed from: b */
        final short m2899b(int i) {
            if (m2897a(i, 2)) {
                return this.f3043a.getShort(i);
            }
            return (short) -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.d.a.m$c */
    /* loaded from: classes.dex */
    public interface c {
        /* renamed from: a */
        int mo2890a() throws IOException;

        /* renamed from: a */
        int mo2891a(byte[] bArr, int i) throws IOException;

        /* renamed from: a */
        long mo2892a(long j) throws IOException;

        /* renamed from: b */
        short mo2893b() throws IOException;

        /* renamed from: c */
        int mo2894c() throws IOException;
    }

    /* renamed from: com.bumptech.glide.load.d.a.m$d */
    /* loaded from: classes.dex */
    private static final class d implements c {

        /* renamed from: a */
        private final InputStream f3044a;

        d(InputStream inputStream) {
            this.f3044a = inputStream;
        }

        @Override // com.bumptech.glide.load.p049d.p050a.C0978m.c
        /* renamed from: a */
        public final int mo2890a() throws IOException {
            return ((this.f3044a.read() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (this.f3044a.read() & 255);
        }

        @Override // com.bumptech.glide.load.p049d.p050a.C0978m.c
        /* renamed from: a */
        public final int mo2891a(byte[] bArr, int i) throws IOException {
            int i2 = i;
            while (i2 > 0) {
                int read = this.f3044a.read(bArr, i - i2, i2);
                if (read == -1) {
                    break;
                }
                i2 -= read;
            }
            return i - i2;
        }

        @Override // com.bumptech.glide.load.p049d.p050a.C0978m.c
        /* renamed from: a */
        public final long mo2892a(long j) throws IOException {
            if (j < 0) {
                return 0L;
            }
            long j2 = j;
            while (j2 > 0) {
                long skip = this.f3044a.skip(j2);
                if (skip <= 0) {
                    if (this.f3044a.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j2 -= skip;
            }
            return j - j2;
        }

        @Override // com.bumptech.glide.load.p049d.p050a.C0978m.c
        /* renamed from: b */
        public final short mo2893b() throws IOException {
            return (short) (this.f3044a.read() & 255);
        }

        @Override // com.bumptech.glide.load.p049d.p050a.C0978m.c
        /* renamed from: c */
        public final int mo2894c() throws IOException {
            return this.f3044a.read();
        }
    }

    /* renamed from: a */
    private static int m2882a(int i, int i2) {
        return i + 2 + (i2 * 12);
    }

    /* renamed from: a */
    private static int m2883a(b bVar) {
        ByteOrder byteOrder;
        String str;
        StringBuilder sb;
        String sb2;
        short m2899b = bVar.m2899b(6);
        if (m2899b != f3027j) {
            if (m2899b != f3026i && Log.isLoggable(f3023f, 3)) {
                Log.d(f3023f, "Unknown endianness = " + ((int) m2899b));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        bVar.f3043a.order(byteOrder);
        int m2898a = bVar.m2898a(10) + 6;
        short m2899b2 = bVar.m2899b(m2898a);
        for (int i = 0; i < m2899b2; i++) {
            int i2 = m2898a + 2 + (i * 12);
            short m2899b3 = bVar.m2899b(i2);
            if (m2899b3 == 274) {
                short m2899b4 = bVar.m2899b(i2 + 2);
                if (m2899b4 > 0 && m2899b4 <= 12) {
                    int m2898a2 = bVar.m2898a(i2 + 4);
                    if (m2898a2 >= 0) {
                        if (Log.isLoggable(f3023f, 3)) {
                            Log.d(f3023f, "Got tagIndex=" + i + " tagType=" + ((int) m2899b3) + " formatCode=" + ((int) m2899b4) + " componentCount=" + m2898a2);
                        }
                        int i3 = m2898a2 + f3032o[m2899b4];
                        if (i3 <= 4) {
                            int i4 = i2 + 8;
                            if (i4 >= 0 && i4 <= bVar.f3043a.remaining()) {
                                if (i3 >= 0 && i3 + i4 <= bVar.f3043a.remaining()) {
                                    return bVar.m2899b(i4);
                                }
                                if (Log.isLoggable(f3023f, 3)) {
                                    str = f3023f;
                                    sb2 = "Illegal number of bytes for TI tag data tagType=" + ((int) m2899b3);
                                }
                            } else if (Log.isLoggable(f3023f, 3)) {
                                Log.d(f3023f, "Illegal tagValueOffset=" + i4 + " tagType=" + ((int) m2899b3));
                            }
                        } else if (Log.isLoggable(f3023f, 3)) {
                            str = f3023f;
                            sb = new StringBuilder("Got byte count > 4, not orientation, continuing, formatCode=");
                            sb.append((int) m2899b4);
                            sb2 = sb.toString();
                        }
                    } else if (Log.isLoggable(f3023f, 3)) {
                        str = f3023f;
                        sb2 = "Negative tiff component count";
                    }
                } else if (Log.isLoggable(f3023f, 3)) {
                    str = f3023f;
                    sb = new StringBuilder("Got invalid format code = ");
                    sb.append((int) m2899b4);
                    sb2 = sb.toString();
                }
                Log.d(str, sb2);
            }
        }
        return -1;
    }

    /* renamed from: a */
    private static int m2884a(c cVar, InterfaceC0872b interfaceC0872b) throws IOException {
        int mo2890a = cVar.mo2890a();
        int i = -1;
        if (!((mo2890a & f3019b) == f3019b || mo2890a == f3026i || mo2890a == f3027j)) {
            if (Log.isLoggable(f3023f, 3)) {
                Log.d(f3023f, "Parser doesn't handle magic number: " + mo2890a);
            }
            return -1;
        }
        int m2889b = m2889b(cVar);
        if (m2889b == -1) {
            if (Log.isLoggable(f3023f, 3)) {
                Log.d(f3023f, "Failed to parse exif segment length, or exif segment not found");
            }
            return -1;
        }
        byte[] bArr = (byte[]) interfaceC0872b.mo2443a(m2889b, byte[].class);
        try {
            int mo2891a = cVar.mo2891a(bArr, m2889b);
            if (mo2891a != m2889b) {
                if (Log.isLoggable(f3023f, 3)) {
                    Log.d(f3023f, "Unable to read exif segment data, length: " + m2889b + ", actually read: " + mo2891a);
                }
            } else if (m2888a(bArr, m2889b)) {
                i = m2883a(new b(bArr, m2889b));
            } else if (Log.isLoggable(f3023f, 3)) {
                Log.d(f3023f, "Missing jpeg exif preamble");
            }
            return i;
        } finally {
            interfaceC0872b.mo2448b(bArr);
        }
    }

    /* renamed from: a */
    private static int m2885a(c cVar, byte[] bArr, int i) throws IOException {
        int mo2891a = cVar.mo2891a(bArr, i);
        if (mo2891a == i) {
            if (m2888a(bArr, i)) {
                return m2883a(new b(bArr, i));
            }
            if (Log.isLoggable(f3023f, 3)) {
                Log.d(f3023f, "Missing jpeg exif preamble");
            }
            return -1;
        }
        if (Log.isLoggable(f3023f, 3)) {
            Log.d(f3023f, "Unable to read exif segment data, length: " + i + ", actually read: " + mo2891a);
        }
        return -1;
    }

    @NonNull
    /* renamed from: a */
    private static ImageHeaderParser.ImageType m2886a(c cVar) throws IOException {
        int mo2890a = cVar.mo2890a();
        if (mo2890a == f3019b) {
            return ImageHeaderParser.ImageType.JPEG;
        }
        int mo2890a2 = ((mo2890a << 16) & SupportMenu.CATEGORY_MASK) | (cVar.mo2890a() & 65535);
        if (mo2890a2 == f3025h) {
            cVar.mo2892a(21L);
            return cVar.mo2894c() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
        }
        if ((mo2890a2 >> 8) == f3024g) {
            return ImageHeaderParser.ImageType.GIF;
        }
        if (mo2890a2 != f3033p) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        cVar.mo2892a(4L);
        if ((((cVar.mo2890a() << 16) & SupportMenu.CATEGORY_MASK) | (cVar.mo2890a() & 65535)) != f3034q) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        int mo2890a3 = ((cVar.mo2890a() << 16) & SupportMenu.CATEGORY_MASK) | (cVar.mo2890a() & 65535);
        if ((mo2890a3 & (-256)) != f3035r) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        int i = mo2890a3 & 255;
        if (i == 88) {
            cVar.mo2892a(4L);
            return (cVar.mo2894c() & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
        }
        if (i != 76) {
            return ImageHeaderParser.ImageType.WEBP;
        }
        cVar.mo2892a(4L);
        return (cVar.mo2894c() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
    }

    /* renamed from: a */
    private static boolean m2887a(int i) {
        return (i & f3019b) == f3019b || i == f3026i || i == f3027j;
    }

    /* renamed from: a */
    private static boolean m2888a(byte[] bArr, int i) {
        boolean z = bArr != null && i > f3020c.length;
        if (z) {
            for (int i2 = 0; i2 < f3020c.length; i2++) {
                if (bArr[i2] != f3020c[i2]) {
                    return false;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    private static int m2889b(c cVar) throws IOException {
        short mo2893b;
        int mo2890a;
        long j;
        long mo2892a;
        do {
            short mo2893b2 = cVar.mo2893b();
            if (mo2893b2 != 255) {
                if (Log.isLoggable(f3023f, 3)) {
                    Log.d(f3023f, "Unknown segmentId=" + ((int) mo2893b2));
                }
                return -1;
            }
            mo2893b = cVar.mo2893b();
            if (mo2893b == f3029l) {
                return -1;
            }
            if (mo2893b == 217) {
                if (Log.isLoggable(f3023f, 3)) {
                    Log.d(f3023f, "Found MARKER_EOI in exif segment");
                }
                return -1;
            }
            mo2890a = cVar.mo2890a() - 2;
            if (mo2893b == f3022e) {
                return mo2890a;
            }
            j = mo2890a;
            mo2892a = cVar.mo2892a(j);
        } while (mo2892a == j);
        if (Log.isLoggable(f3023f, 3)) {
            Log.d(f3023f, "Unable to skip enough data, type: " + ((int) mo2893b) + ", wanted to skip: " + mo2890a + ", but actually skipped: " + mo2892a);
        }
        return -1;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public final int mo2375a(@NonNull InputStream inputStream, @NonNull InterfaceC0872b interfaceC0872b) throws IOException {
        return m2884a(new d((InputStream) C1084i.m3470a(inputStream, "Argument must not be null")), (InterfaceC0872b) C1084i.m3470a(interfaceC0872b, "Argument must not be null"));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public final int mo2376a(@NonNull ByteBuffer byteBuffer, @NonNull InterfaceC0872b interfaceC0872b) throws IOException {
        return m2884a(new a((ByteBuffer) C1084i.m3470a(byteBuffer, "Argument must not be null")), (InterfaceC0872b) C1084i.m3470a(interfaceC0872b, "Argument must not be null"));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    /* renamed from: a */
    public final ImageHeaderParser.ImageType mo2377a(@NonNull InputStream inputStream) throws IOException {
        return m2886a(new d((InputStream) C1084i.m3470a(inputStream, "Argument must not be null")));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    /* renamed from: a */
    public final ImageHeaderParser.ImageType mo2378a(@NonNull ByteBuffer byteBuffer) throws IOException {
        return m2886a(new a((ByteBuffer) C1084i.m3470a(byteBuffer, "Argument must not be null")));
    }
}
