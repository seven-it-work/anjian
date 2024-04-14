package p017c;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.annotation.Nullable;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: c.m */
/* loaded from: classes.dex */
public final class C0545m extends AbstractC0540h {

    /* renamed from: a */
    @Nullable
    private final MessageDigest f1112a;

    /* renamed from: b */
    @Nullable
    private final Mac f1113b;

    private C0545m(InterfaceC0556x interfaceC0556x, C0538f c0538f, String str) {
        super(interfaceC0556x);
        try {
            this.f1113b = Mac.getInstance(str);
            this.f1113b.init(new SecretKeySpec(c0538f.toByteArray(), str));
            this.f1112a = null;
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    private C0545m(InterfaceC0556x interfaceC0556x, String str) {
        super(interfaceC0556x);
        try {
            this.f1112a = MessageDigest.getInstance(str);
            this.f1113b = null;
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    /* renamed from: a */
    private C0538f m1200a() {
        return C0538f.m1177of(this.f1112a != null ? this.f1112a.digest() : this.f1113b.doFinal());
    }

    /* renamed from: a */
    private static C0545m m1201a(InterfaceC0556x interfaceC0556x) {
        return new C0545m(interfaceC0556x, "MD5");
    }

    /* renamed from: a */
    private static C0545m m1202a(InterfaceC0556x interfaceC0556x, C0538f c0538f) {
        return new C0545m(interfaceC0556x, c0538f, "HmacSHA1");
    }

    /* renamed from: b */
    private static C0545m m1203b(InterfaceC0556x interfaceC0556x) {
        return new C0545m(interfaceC0556x, "SHA-1");
    }

    /* renamed from: b */
    private static C0545m m1204b(InterfaceC0556x interfaceC0556x, C0538f c0538f) {
        return new C0545m(interfaceC0556x, c0538f, "HmacSHA256");
    }

    /* renamed from: c */
    private static C0545m m1205c(InterfaceC0556x interfaceC0556x) {
        return new C0545m(interfaceC0556x, "SHA-256");
    }

    /* renamed from: c */
    private static C0545m m1206c(InterfaceC0556x interfaceC0556x, C0538f c0538f) {
        return new C0545m(interfaceC0556x, c0538f, "HmacSHA512");
    }

    /* renamed from: d */
    private static C0545m m1207d(InterfaceC0556x interfaceC0556x) {
        return new C0545m(interfaceC0556x, "SHA-512");
    }

    @Override // p017c.AbstractC0540h, p017c.InterfaceC0556x
    /* renamed from: a */
    public final void mo114a(C0535c c0535c, long j) throws IOException {
        C0532ab.m1057a(c0535c.f1086c, 0L, j);
        C0553u c0553u = c0535c.f1085b;
        long j2 = 0;
        while (j2 < j) {
            int min = (int) Math.min(j - j2, c0553u.f1149e - c0553u.f1148d);
            if (this.f1112a != null) {
                this.f1112a.update(c0553u.f1147c, c0553u.f1148d, min);
            } else {
                this.f1113b.update(c0553u.f1147c, c0553u.f1148d, min);
            }
            c0553u = c0553u.f1152h;
            j2 += min;
        }
        super.mo114a(c0535c, j);
    }
}
