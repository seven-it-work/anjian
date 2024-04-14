package p003b.p004a.p008d;

import android.support.v7.widget.ActivityChooserView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.slf4j.Marker;
import p003b.C0494ac;
import p003b.C0496ae;
import p003b.C0510h;
import p003b.C0515m;
import p003b.C0523u;
import p003b.C0524v;
import p003b.InterfaceC0516n;
import p003b.p004a.C0439c;

/* renamed from: b.a.d.e */
/* loaded from: classes.dex */
public final class C0452e {

    /* renamed from: a */
    private static final String f233a = "([^ \"=]*)";

    /* renamed from: b */
    private static final String f234b = "\"([^\"]*)\"";

    /* renamed from: c */
    private static final Pattern f235c = Pattern.compile(" +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)");

    private C0452e() {
    }

    /* renamed from: a */
    public static int m228a(String str, int i) {
        char charAt;
        while (i < str.length() && ((charAt = str.charAt(i)) == ' ' || charAt == '\t')) {
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public static int m229a(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public static long m230a(C0496ae c0496ae) {
        return m231a(c0496ae.f667f);
    }

    /* renamed from: a */
    public static long m231a(C0523u c0523u) {
        return m232a(c0523u.m852a("Content-Length"));
    }

    /* renamed from: a */
    private static long m232a(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    /* renamed from: a */
    private static C0523u m233a(C0523u c0523u, C0523u c0523u2) {
        Set<String> m241c = m241c(c0523u2);
        if (m241c.isEmpty()) {
            return new C0523u.a().m861a();
        }
        C0523u.a aVar = new C0523u.a();
        int length = c0523u.f956a.length / 2;
        for (int i = 0; i < length; i++) {
            String m851a = c0523u.m851a(i);
            if (m241c.contains(m851a)) {
                aVar.m860a(m851a, c0523u.m854b(i));
            }
        }
        return aVar.m861a();
    }

    /* renamed from: a */
    public static List<C0510h> m234a(C0523u c0523u, String str) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : c0523u.m855b(str)) {
            int indexOf = str2.indexOf(32);
            if (indexOf != -1) {
                Matcher matcher = f235c.matcher(str2);
                int i = indexOf;
                while (true) {
                    if (!matcher.find(i)) {
                        break;
                    }
                    if (str2.regionMatches(true, matcher.start(1), "realm", 0, 5)) {
                        String substring = str2.substring(0, indexOf);
                        String group = matcher.group(3);
                        if (group != null) {
                            arrayList.add(new C0510h(substring, group));
                            break;
                        }
                    }
                    i = matcher.end();
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m235a(InterfaceC0516n interfaceC0516n, C0524v c0524v, C0523u c0523u) {
        if (interfaceC0516n == InterfaceC0516n.f936a || C0515m.m762a(c0524v, c0523u).isEmpty()) {
            return;
        }
        interfaceC0516n.mo787a();
    }

    /* renamed from: a */
    public static boolean m236a(C0496ae c0496ae, C0523u c0523u, C0494ac c0494ac) {
        for (String str : m241c(c0496ae.f667f)) {
            if (!C0439c.m150a(c0523u.m855b(str), c0494ac.f645c.m855b(str))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static int m237b(String str, int i) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 2147483647L) {
                return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            }
            if (parseLong < 0) {
                return 0;
            }
            return (int) parseLong;
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    /* renamed from: b */
    public static boolean m238b(C0496ae c0496ae) {
        return m241c(c0496ae.f667f).contains(Marker.ANY_MARKER);
    }

    /* renamed from: b */
    private static boolean m239b(C0523u c0523u) {
        return m241c(c0523u).contains(Marker.ANY_MARKER);
    }

    /* renamed from: c */
    public static C0523u m240c(C0496ae c0496ae) {
        C0523u c0523u = c0496ae.f669h.f662a.f645c;
        Set<String> m241c = m241c(c0496ae.f667f);
        if (m241c.isEmpty()) {
            return new C0523u.a().m861a();
        }
        C0523u.a aVar = new C0523u.a();
        int length = c0523u.f956a.length / 2;
        for (int i = 0; i < length; i++) {
            String m851a = c0523u.m851a(i);
            if (m241c.contains(m851a)) {
                aVar.m860a(m851a, c0523u.m854b(i));
            }
        }
        return aVar.m861a();
    }

    /* renamed from: c */
    private static Set<String> m241c(C0523u c0523u) {
        Set<String> emptySet = Collections.emptySet();
        int length = c0523u.f956a.length / 2;
        Set<String> set = emptySet;
        for (int i = 0; i < length; i++) {
            if ("Vary".equalsIgnoreCase(c0523u.m851a(i))) {
                String m854b = c0523u.m854b(i);
                if (set.isEmpty()) {
                    set = new TreeSet<>((Comparator<? super String>) String.CASE_INSENSITIVE_ORDER);
                }
                for (String str : m854b.split(",")) {
                    set.add(str.trim());
                }
            }
        }
        return set;
    }

    /* renamed from: d */
    public static boolean m242d(C0496ae c0496ae) {
        if (c0496ae.f662a.f644b.equals("HEAD")) {
            return false;
        }
        int i = c0496ae.f664c;
        return (((i >= 100 && i < 200) || i == 204 || i == 304) && m231a(c0496ae.f667f) == -1 && !"chunked".equalsIgnoreCase(c0496ae.m622a("Transfer-Encoding"))) ? false : true;
    }

    /* renamed from: e */
    private static Set<String> m243e(C0496ae c0496ae) {
        return m241c(c0496ae.f667f);
    }
}
