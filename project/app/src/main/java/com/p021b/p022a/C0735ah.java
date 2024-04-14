package com.p021b.p022a;

import com.github.kevinsawicki.http.HttpRequest;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: com.b.a.ah */
/* loaded from: classes.dex */
public final class C0735ah {

    /* renamed from: a */
    private static final Pattern f1805a = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: b */
    private static final Pattern f1806b = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: c */
    private final String f1807c;

    /* renamed from: d */
    private final String f1808d;

    /* renamed from: e */
    private final String f1809e;

    /* renamed from: f */
    private final String f1810f;

    private C0735ah(String str, String str2, String str3, String str4) {
        this.f1807c = str;
        this.f1808d = str2;
        this.f1809e = str3;
        this.f1810f = str4;
    }

    /* renamed from: a */
    public static C0735ah m1863a(String str) {
        Matcher matcher = f1805a.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        String lowerCase = matcher.group(1).toLowerCase(Locale.US);
        String lowerCase2 = matcher.group(2).toLowerCase(Locale.US);
        Matcher matcher2 = f1806b.matcher(str);
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
                    throw new IllegalArgumentException("Multiple different charsets: " + str);
                }
                str2 = group2;
            }
        }
        return new C0735ah(str, lowerCase, lowerCase2, str2);
    }

    /* renamed from: a */
    public final Charset m1864a(Charset charset) {
        return this.f1810f != null ? Charset.forName(this.f1810f) : charset;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C0735ah) && ((C0735ah) obj).f1807c.equals(this.f1807c);
    }

    public final int hashCode() {
        return this.f1807c.hashCode();
    }

    public final String toString() {
        return this.f1807c;
    }
}
