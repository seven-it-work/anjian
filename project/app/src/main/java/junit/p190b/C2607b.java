package junit.p190b;

/* renamed from: junit.b.b */
/* loaded from: classes.dex */
public class C2607b extends AssertionError {
    private static final long serialVersionUID = 1;

    public C2607b() {
    }

    public C2607b(String str) {
        super(defaultString(str));
    }

    private static String defaultString(String str) {
        return str == null ? "" : str;
    }
}
