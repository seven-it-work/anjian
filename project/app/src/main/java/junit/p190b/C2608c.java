package junit.p190b;

/* renamed from: junit.b.c */
/* loaded from: classes.dex */
public final class C2608c {

    /* renamed from: e */
    private static final String f10061e = "...";

    /* renamed from: f */
    private static final String f10062f = "]";

    /* renamed from: g */
    private static final String f10063g = "[";

    /* renamed from: a */
    String f10064a;

    /* renamed from: b */
    String f10065b;

    /* renamed from: c */
    int f10066c;

    /* renamed from: d */
    int f10067d;

    /* renamed from: h */
    private int f10068h = 20;

    public C2608c(String str, String str2) {
        this.f10064a = str;
        this.f10065b = str2;
    }

    /* renamed from: a */
    private void m11725a() {
        this.f10066c = 0;
        int min = Math.min(this.f10064a.length(), this.f10065b.length());
        while (this.f10066c < min && this.f10064a.charAt(this.f10066c) == this.f10065b.charAt(this.f10066c)) {
            this.f10066c++;
        }
    }

    /* renamed from: b */
    private String m11726b(String str) {
        String str2;
        String str3;
        if (this.f10064a == null || this.f10065b == null || this.f10064a.equals(this.f10065b)) {
            str2 = this.f10064a;
            str3 = this.f10065b;
        } else {
            this.f10066c = 0;
            int min = Math.min(this.f10064a.length(), this.f10065b.length());
            while (this.f10066c < min && this.f10064a.charAt(this.f10066c) == this.f10065b.charAt(this.f10066c)) {
                this.f10066c++;
            }
            int length = this.f10064a.length() - 1;
            int length2 = this.f10065b.length() - 1;
            while (length2 >= this.f10066c && length >= this.f10066c && this.f10064a.charAt(length) == this.f10065b.charAt(length2)) {
                length2--;
                length--;
            }
            this.f10067d = this.f10064a.length() - length;
            str2 = m11731a(this.f10064a);
            str3 = m11731a(this.f10065b);
        }
        return C2606a.m11724f(str, str2, str3);
    }

    /* renamed from: b */
    private void m11727b() {
        int length = this.f10064a.length() - 1;
        int length2 = this.f10065b.length() - 1;
        while (length2 >= this.f10066c && length >= this.f10066c && this.f10064a.charAt(length) == this.f10065b.charAt(length2)) {
            length2--;
            length--;
        }
        this.f10067d = this.f10064a.length() - length;
    }

    /* renamed from: c */
    private String m11728c() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f10066c > this.f10068h ? f10061e : "");
        sb.append(this.f10064a.substring(Math.max(0, this.f10066c - this.f10068h), this.f10066c));
        return sb.toString();
    }

    /* renamed from: d */
    private String m11729d() {
        int min = Math.min((this.f10064a.length() - this.f10067d) + 1 + this.f10068h, this.f10064a.length());
        StringBuilder sb = new StringBuilder();
        sb.append(this.f10064a.substring((this.f10064a.length() - this.f10067d) + 1, min));
        sb.append((this.f10064a.length() - this.f10067d) + 1 < this.f10064a.length() - this.f10068h ? f10061e : "");
        return sb.toString();
    }

    /* renamed from: e */
    private boolean m11730e() {
        return this.f10064a.equals(this.f10065b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final String m11731a(String str) {
        String str2 = f10063g + str.substring(this.f10066c, (str.length() - this.f10067d) + 1) + f10062f;
        if (this.f10066c > 0) {
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f10066c > this.f10068h ? f10061e : "");
            sb2.append(this.f10064a.substring(Math.max(0, this.f10066c - this.f10068h), this.f10066c));
            sb.append(sb2.toString());
            sb.append(str2);
            str2 = sb.toString();
        }
        if (this.f10067d <= 0) {
            return str2;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str2);
        int min = Math.min((this.f10064a.length() - this.f10067d) + 1 + this.f10068h, this.f10064a.length());
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.f10064a.substring((this.f10064a.length() - this.f10067d) + 1, min));
        sb4.append((this.f10064a.length() - this.f10067d) + 1 < this.f10064a.length() - this.f10068h ? f10061e : "");
        sb3.append(sb4.toString());
        return sb3.toString();
    }
}
