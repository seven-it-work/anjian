package p017c;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: c.n */
/* loaded from: classes.dex */
public final class C0546n extends AbstractC0541i {

    /* renamed from: a */
    private final MessageDigest f1114a;

    /* renamed from: b */
    private final Mac f1115b;

    private C0546n(InterfaceC0557y interfaceC0557y, C0538f c0538f, String str) {
        super(interfaceC0557y);
        try {
            this.f1115b = Mac.getInstance(str);
            this.f1115b.init(new SecretKeySpec(c0538f.toByteArray(), str));
            this.f1114a = null;
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    private C0546n(InterfaceC0557y interfaceC0557y, String str) {
        super(interfaceC0557y);
        try {
            this.f1114a = MessageDigest.getInstance(str);
            this.f1115b = null;
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    /* renamed from: a */
    private C0538f m1208a() {
        return C0538f.m1177of(this.f1114a != null ? this.f1114a.digest() : this.f1115b.doFinal());
    }

    /* renamed from: a */
    private static C0546n m1209a(InterfaceC0557y interfaceC0557y) {
        return new C0546n(interfaceC0557y, "MD5");
    }

    /* renamed from: a */
    private static C0546n m1210a(InterfaceC0557y interfaceC0557y, C0538f c0538f) {
        return new C0546n(interfaceC0557y, c0538f, "HmacSHA1");
    }

    /* renamed from: b */
    private static C0546n m1211b(InterfaceC0557y interfaceC0557y) {
        return new C0546n(interfaceC0557y, "SHA-1");
    }

    /* renamed from: b */
    private static C0546n m1212b(InterfaceC0557y interfaceC0557y, C0538f c0538f) {
        return new C0546n(interfaceC0557y, c0538f, "HmacSHA256");
    }

    /* renamed from: c */
    private static C0546n m1213c(InterfaceC0557y interfaceC0557y) {
        return new C0546n(interfaceC0557y, "SHA-256");
    }

    @Override // p017c.AbstractC0541i, p017c.InterfaceC0557y
    public final long read(C0535c c0535c, long j) throws IOException {
        long read = super.read(c0535c, j);
        if (read != -1) {
            long j2 = c0535c.f1086c - read;
            long j3 = c0535c.f1086c;
            C0553u c0553u = c0535c.f1085b;
            while (j3 > j2) {
                c0553u = c0553u.f1153i;
                j3 -= c0553u.f1149e - c0553u.f1148d;
            }
            while (j3 < c0535c.f1086c) {
                int i = (int) ((c0553u.f1148d + j2) - j3);
                if (this.f1114a != null) {
                    this.f1114a.update(c0553u.f1147c, i, c0553u.f1149e - i);
                } else {
                    this.f1115b.update(c0553u.f1147c, i, c0553u.f1149e - i);
                }
                long j4 = j3 + (c0553u.f1149e - c0553u.f1148d);
                c0553u = c0553u.f1152h;
                j3 = j4;
                j2 = j3;
            }
        }
        return read;
    }
}
