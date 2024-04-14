package p003b.p004a.p010f;

import android.support.v4.view.PointerIconCompat;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.umeng.commonsdk.proguard.C2489bg;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import p017c.C0538f;
import p017c.InterfaceC0536d;

/* renamed from: b.a.f.k */
/* loaded from: classes.dex */
final class C0471k {

    /* renamed from: b */
    private static final int[] f470b = {8184, 8388568, 268435426, 268435427, 268435428, 268435429, 268435430, 268435431, 268435432, 16777194, 1073741820, 268435433, 268435434, 1073741821, 268435435, 268435436, 268435437, 268435438, 268435439, 268435440, 268435441, 268435442, 1073741822, 268435443, 268435444, 268435445, 268435446, 268435447, 268435448, 268435449, 268435450, 268435451, 20, PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, 4090, 8185, 21, 248, 2042, PointerIconCompat.TYPE_ZOOM_IN, PointerIconCompat.TYPE_ZOOM_OUT, 249, 2043, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 22, 23, 24, 0, 1, 2, 25, 26, 27, 28, 29, 30, 31, 92, 251, 32764, 32, 4091, PointerIconCompat.TYPE_GRAB, 8186, 33, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 252, 115, 253, 8187, 524272, 8188, 16380, 34, 32765, 3, 35, 4, 36, 5, 37, 38, 39, 6, 116, 117, 40, 41, 42, 7, 43, 118, 44, 8, 9, 45, 119, 120, 121, 122, 123, 32766, 2044, 16381, 8189, 268435452, 1048550, 4194258, 1048551, 1048552, 4194259, 4194260, 4194261, 8388569, 4194262, 8388570, 8388571, 8388572, 8388573, 8388574, 16777195, 8388575, 16777196, 16777197, 4194263, 8388576, 16777198, 8388577, 8388578, 8388579, 8388580, 2097116, 4194264, 8388581, 4194265, 8388582, 8388583, 16777199, 4194266, 2097117, 1048553, 4194267, 4194268, 8388584, 8388585, 2097118, 8388586, 4194269, 4194270, 16777200, 2097119, 4194271, 8388587, 8388588, 2097120, 2097121, 4194272, 2097122, 8388589, 4194273, 8388590, 8388591, 1048554, 4194274, 4194275, 4194276, 8388592, 4194277, 4194278, 8388593, 67108832, 67108833, 1048555, 524273, 4194279, 8388594, 4194280, 33554412, 67108834, 67108835, 67108836, 134217694, 134217695, 67108837, 16777201, 33554413, 524274, 2097123, 67108838, 134217696, 134217697, 67108839, 134217698, 16777202, 2097124, 2097125, 67108840, 67108841, 268435453, 134217699, 134217700, 134217701, 1048556, 16777203, 1048557, 2097126, 4194281, 2097127, 2097128, 8388595, 4194282, 4194283, 33554414, 33554415, 16777204, 16777205, 67108842, 8388596, 67108843, 134217702, 67108844, 67108845, 134217703, 134217704, 134217705, 134217706, 134217707, 268435454, 134217708, 134217709, 134217710, 134217711, 134217712, 67108846};

    /* renamed from: c */
    private static final byte[] f471c = {C2489bg.f9368k, 23, 28, 28, 28, 28, 28, 28, 28, 24, 30, 28, 28, 30, 28, 28, 28, 28, 28, 28, 28, 28, 30, 28, 28, 28, 28, 28, 28, 28, 28, 28, 6, 10, 10, 12, C2489bg.f9368k, 6, 8, 11, 10, 10, 8, 11, 8, 6, 6, 6, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 7, 8, C2489bg.f9370m, 6, 12, 10, C2489bg.f9368k, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 7, 8, C2489bg.f9368k, 19, C2489bg.f9368k, C2489bg.f9369l, 6, C2489bg.f9370m, 5, 6, 5, 6, 5, 6, 6, 6, 5, 7, 7, 6, 6, 6, 5, 6, 7, 6, 5, 5, 6, 7, 7, 7, 7, 7, C2489bg.f9370m, 11, C2489bg.f9369l, C2489bg.f9368k, 28, 20, 22, 20, 20, 22, 22, 22, 23, 22, 23, 23, 23, 23, 23, 24, 23, 24, 24, 22, 23, 24, 23, 23, 23, 23, 21, 22, 23, 22, 23, 23, 24, 22, 21, 20, 22, 22, 23, 23, 21, 23, 22, 22, 24, 21, 22, 23, 23, 21, 21, 22, 21, 23, 22, 23, 23, 20, 22, 22, 22, 23, 22, 22, 23, 26, 26, 20, 19, 22, 23, 22, 25, 26, 26, 26, 27, 27, 26, 24, 25, 19, 21, 26, 27, 27, 26, 27, 24, 21, 21, 26, 26, 28, 27, 27, 27, 20, 24, 20, 21, 22, 21, 21, 23, 22, 22, 25, 25, 24, 24, 26, 23, 26, 27, 26, 26, 27, 27, 27, 27, 27, 28, 27, 27, 27, 27, 27, 26};

    /* renamed from: d */
    private static final C0471k f472d = new C0471k();

    /* renamed from: a */
    final a f473a = new a();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.a.f.k$a */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a */
        final a[] f474a;

        /* renamed from: b */
        final int f475b;

        /* renamed from: c */
        final int f476c;

        a() {
            this.f474a = new a[256];
            this.f475b = 0;
            this.f476c = 0;
        }

        a(int i, int i2) {
            this.f474a = null;
            this.f475b = i;
            int i3 = i2 & 7;
            this.f476c = i3 == 0 ? 8 : i3;
        }
    }

    private C0471k() {
        m432b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m427a(C0538f c0538f) {
        long j = 0;
        int i = 0;
        while (i < c0538f.size()) {
            int i2 = c0538f.getByte(i) & 255;
            i++;
            j += f471c[i2];
        }
        return (int) ((j + 7) >> 3);
    }

    /* renamed from: a */
    public static C0471k m428a() {
        return f472d;
    }

    /* renamed from: a */
    private void m429a(int i, int i2, byte b2) {
        a aVar = new a(i, b2);
        a aVar2 = this.f473a;
        while (b2 > 8) {
            b2 = (byte) (b2 - 8);
            int i3 = (i2 >>> b2) & 255;
            if (aVar2.f474a == null) {
                throw new IllegalStateException("invalid dictionary: prefix not unique");
            }
            if (aVar2.f474a[i3] == null) {
                aVar2.f474a[i3] = new a();
            }
            aVar2 = aVar2.f474a[i3];
        }
        int i4 = 8 - b2;
        int i5 = (i2 << i4) & 255;
        int i6 = 1 << i4;
        for (int i7 = i5; i7 < i5 + i6; i7++) {
            aVar2.f474a[i7] = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m430a(C0538f c0538f, InterfaceC0536d interfaceC0536d) throws IOException {
        int i = 0;
        long j = 0;
        int i2 = 0;
        while (i < c0538f.size()) {
            int i3 = c0538f.getByte(i) & 255;
            int i4 = f470b[i3];
            byte b2 = f471c[i3];
            long j2 = (j << b2) | i4;
            i2 += b2;
            while (i2 >= 8) {
                i2 -= 8;
                interfaceC0536d.mo1157l((int) (j2 >> i2));
            }
            i++;
            j = j2;
        }
        if (i2 > 0) {
            interfaceC0536d.mo1157l((int) ((j << (8 - i2)) | (255 >>> i2)));
        }
    }

    /* renamed from: a */
    private byte[] m431a(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a aVar = this.f473a;
        int i = 0;
        int i2 = 0;
        for (byte b2 : bArr) {
            i = (i << 8) | (b2 & 255);
            i2 += 8;
            while (i2 >= 8) {
                aVar = aVar.f474a[(i >>> (i2 - 8)) & 255];
                if (aVar.f474a == null) {
                    byteArrayOutputStream.write(aVar.f475b);
                    i2 -= aVar.f476c;
                    aVar = this.f473a;
                } else {
                    i2 -= 8;
                }
            }
        }
        while (i2 > 0) {
            a aVar2 = aVar.f474a[(i << (8 - i2)) & 255];
            if (aVar2.f474a != null || aVar2.f476c > i2) {
                break;
            }
            byteArrayOutputStream.write(aVar2.f475b);
            i2 -= aVar2.f476c;
            aVar = this.f473a;
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: b */
    private void m432b() {
        for (int i = 0; i < f471c.length; i++) {
            int i2 = f470b[i];
            byte b2 = f471c[i];
            a aVar = new a(i, b2);
            a aVar2 = this.f473a;
            while (b2 > 8) {
                b2 = (byte) (b2 - 8);
                int i3 = (i2 >>> b2) & 255;
                if (aVar2.f474a == null) {
                    throw new IllegalStateException("invalid dictionary: prefix not unique");
                }
                if (aVar2.f474a[i3] == null) {
                    aVar2.f474a[i3] = new a();
                }
                aVar2 = aVar2.f474a[i3];
            }
            int i4 = 8 - b2;
            int i5 = (i2 << i4) & 255;
            int i6 = 1 << i4;
            for (int i7 = i5; i7 < i5 + i6; i7++) {
                aVar2.f474a[i7] = aVar;
            }
        }
    }
}
