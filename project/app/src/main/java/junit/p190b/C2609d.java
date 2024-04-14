package junit.p190b;

/* renamed from: junit.b.d */
/* loaded from: classes.dex */
public final class C2609d extends C2607b {
    private static final int MAX_CONTEXT_LENGTH = 20;
    private static final long serialVersionUID = 1;
    private String fActual;
    private String fExpected;

    public C2609d(String str, String str2, String str3) {
        super(str);
        this.fExpected = str2;
        this.fActual = str3;
    }

    public final String getActual() {
        return this.fActual;
    }

    public final String getExpected() {
        return this.fExpected;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String str;
        String str2;
        C2608c c2608c = new C2608c(this.fExpected, this.fActual);
        String message = super.getMessage();
        if (c2608c.f10064a == null || c2608c.f10065b == null || c2608c.f10064a.equals(c2608c.f10065b)) {
            str = c2608c.f10064a;
            str2 = c2608c.f10065b;
        } else {
            c2608c.f10066c = 0;
            int min = Math.min(c2608c.f10064a.length(), c2608c.f10065b.length());
            while (c2608c.f10066c < min && c2608c.f10064a.charAt(c2608c.f10066c) == c2608c.f10065b.charAt(c2608c.f10066c)) {
                c2608c.f10066c++;
            }
            int length = c2608c.f10064a.length() - 1;
            int length2 = c2608c.f10065b.length() - 1;
            while (length2 >= c2608c.f10066c && length >= c2608c.f10066c && c2608c.f10064a.charAt(length) == c2608c.f10065b.charAt(length2)) {
                length2--;
                length--;
            }
            c2608c.f10067d = c2608c.f10064a.length() - length;
            str = c2608c.m11731a(c2608c.f10064a);
            str2 = c2608c.m11731a(c2608c.f10065b);
        }
        return C2606a.m11724f(message, str, str2);
    }
}
