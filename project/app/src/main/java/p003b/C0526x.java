package p003b;

import com.github.kevinsawicki.http.HttpRequest;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

/* renamed from: b.x */
/* loaded from: classes.dex */
public final class C0526x {

    /* renamed from: b */
    private static final String f987b = "([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)";

    /* renamed from: c */
    private static final String f988c = "\"([^\"]*)\"";

    /* renamed from: d */
    private static final Pattern f989d = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: e */
    private static final Pattern f990e = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: a */
    final String f991a;

    /* renamed from: f */
    private final String f992f;

    /* renamed from: g */
    private final String f993g;

    /* renamed from: h */
    @Nullable
    private final String f994h;

    private C0526x(String str, String str2, String str3, @Nullable String str4) {
        this.f992f = str;
        this.f991a = str2;
        this.f993g = str3;
        this.f994h = str4;
    }

    @Nullable
    /* renamed from: a */
    public static C0526x m956a(String str) {
        Matcher matcher = f989d.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        String lowerCase = matcher.group(1).toLowerCase(Locale.US);
        String lowerCase2 = matcher.group(2).toLowerCase(Locale.US);
        Matcher matcher2 = f990e.matcher(str);
        String str2 = null;
        for (int end = matcher.end(); end < str.length(); end = matcher2.end()) {
            matcher2.region(end, str.length());
            if (!matcher2.lookingAt()) {
                return null;
            }
            String group = matcher2.group(1);
            if (group != null && group.equalsIgnoreCase(HttpRequest.PARAM_CHARSET)) {
                String group2 = matcher2.group(2);
                if (group2 == null) {
                    group2 = matcher2.group(3);
                } else if (group2.startsWith("'") && group2.endsWith("'") && group2.length() > 2) {
                    group2 = group2.substring(1, group2.length() - 1);
                }
                if (str2 != null && !group2.equalsIgnoreCase(str2)) {
                    return null;
                }
                str2 = group2;
            }
        }
        return new C0526x(str, lowerCase, lowerCase2, str2);
    }

    /* renamed from: a */
    private String m957a() {
        return this.f991a;
    }

    /* renamed from: b */
    private String m958b() {
        return this.f993g;
    }

    @Nullable
    /* renamed from: c */
    private Charset m959c() {
        return m960a((Charset) null);
    }

    @Nullable
    /* renamed from: a */
    public final Charset m960a(@Nullable Charset charset) {
        try {
            if (this.f994h != null) {
                return Charset.forName(this.f994h);
            }
        } catch (IllegalArgumentException unused) {
        }
        return charset;
    }

    public final boolean equals(@Nullable Object obj) {
        return (obj instanceof C0526x) && ((C0526x) obj).f992f.equals(this.f992f);
    }

    public final int hashCode() {
        return this.f992f.hashCode();
    }

    public final String toString() {
        return this.f992f;
    }
}
