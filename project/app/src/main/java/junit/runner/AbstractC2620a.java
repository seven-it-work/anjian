package junit.runner;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.text.NumberFormat;
import java.util.Properties;
import junit.p190b.C2607b;
import junit.p190b.C2619n;
import junit.p190b.InterfaceC2614i;
import junit.p190b.InterfaceC2617l;

/* renamed from: junit.runner.a */
/* loaded from: classes.dex */
public abstract class AbstractC2620a implements InterfaceC2617l {

    /* renamed from: a */
    public static final String f10088a = "suite";

    /* renamed from: c */
    static boolean f10090c = true;

    /* renamed from: e */
    private static Properties f10091e;

    /* renamed from: d */
    boolean f10092d = true;

    /* renamed from: b */
    static int f10089b = m11831a("maxmessage", f10089b);

    /* renamed from: b */
    static int f10089b = m11831a("maxmessage", f10089b);

    /* renamed from: a */
    private static int m11831a(String str, int i) {
        String property = m11839d().getProperty(str);
        if (property == null) {
            return i;
        }
        try {
            return Integer.parseInt(property);
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    /* renamed from: a */
    private static String m11832a(long j) {
        return NumberFormat.getInstance().format(j / 1000.0d);
    }

    /* renamed from: a */
    private static String m11833a(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return m11838d(stringWriter.toString());
    }

    /* renamed from: a */
    private String m11834a(String[] strArr) {
        String str = null;
        int i = 0;
        while (i < strArr.length) {
            if (strArr[i].equals("-noloading")) {
                this.f10092d = false;
            } else if (strArr[i].equals("-nofilterstack")) {
                f10090c = false;
            } else if (strArr[i].equals("-c")) {
                i++;
                if (strArr.length > i) {
                    str = m11837b(strArr[i]);
                } else {
                    System.out.println("Missing Test class name");
                }
            } else {
                str = strArr[i];
            }
            i++;
        }
        return str;
    }

    /* renamed from: a */
    private static void m11835a(String str, String str2) {
        m11839d().put(str, str2);
    }

    /* renamed from: a */
    private static void m11836a(Properties properties) {
        f10091e = properties;
    }

    /* renamed from: b */
    public static String m11837b(String str) {
        return str.startsWith("Default package for") ? str.substring(str.lastIndexOf(".") + 1) : str;
    }

    /* renamed from: d */
    public static String m11838d(String str) {
        if ((m11839d().getProperty("filterstack").equals("true") && f10090c) ? false : true) {
            return str;
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        BufferedReader bufferedReader = new BufferedReader(new StringReader(str));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return stringWriter.toString();
                }
                if (!m11847h(readLine)) {
                    printWriter.println(readLine);
                }
            } catch (Exception unused) {
                return str;
            }
        }
    }

    /* renamed from: d */
    private static Properties m11839d() {
        FileInputStream fileInputStream;
        Throwable th;
        if (f10091e == null) {
            Properties properties = new Properties();
            f10091e = properties;
            properties.put("loading", "true");
            f10091e.put("filterstack", "true");
            FileInputStream fileInputStream2 = null;
            try {
                try {
                    fileInputStream = new FileInputStream(m11848i());
                    try {
                        f10091e = new Properties(m11839d());
                        m11839d().load(fileInputStream);
                        fileInputStream.close();
                    } catch (IOException unused) {
                        fileInputStream2 = fileInputStream;
                        if (fileInputStream2 != null) {
                            fileInputStream2.close();
                        }
                        return f10091e;
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException unused3) {
                } catch (Throwable th3) {
                    fileInputStream = null;
                    th = th3;
                }
            } catch (IOException unused4) {
            }
        }
        return f10091e;
    }

    /* renamed from: e */
    private static String m11840e(String str) {
        if (f10089b == -1 || str.length() <= f10089b) {
            return str;
        }
        return str.substring(0, f10089b) + "...";
    }

    /* renamed from: e */
    private static void m11841e() throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(m11848i());
        try {
            m11839d().store(fileOutputStream, "");
        } finally {
            fileOutputStream.close();
        }
    }

    /* renamed from: f */
    private static Class<?> m11842f(String str) throws ClassNotFoundException {
        return Class.forName(str);
    }

    /* renamed from: f */
    private void m11843f() {
        this.f10092d = false;
    }

    /* renamed from: g */
    private static String m11844g(String str) {
        return m11839d().getProperty(str);
    }

    /* renamed from: g */
    private static void m11845g() {
    }

    /* renamed from: h */
    private boolean m11846h() {
        return m11839d().getProperty("loading").equals("true") && this.f10092d;
    }

    /* renamed from: h */
    private static boolean m11847h(String str) {
        String[] strArr = {"junit.framework.TestCase", "junit.framework.TestResult", "junit.framework.TestSuite", "junit.framework.Assert.", "junit.swingui.TestRunner", "junit.awtui.TestRunner", "junit.textui.TestRunner", "java.lang.reflect.Method.invoke("};
        for (int i = 0; i < 8; i++) {
            if (str.indexOf(strArr[i]) > 0) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    private static File m11848i() {
        return new File(System.getProperty("user.home"), "junit.properties");
    }

    /* renamed from: j */
    private static void m11849j() {
        FileInputStream fileInputStream;
        Throwable th;
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(m11848i());
        } catch (IOException unused) {
        } catch (Throwable th2) {
            fileInputStream = null;
            th = th2;
        }
        try {
            f10091e = new Properties(m11839d());
            m11839d().load(fileInputStream);
            try {
                fileInputStream.close();
            } catch (IOException unused2) {
            }
        } catch (IOException unused3) {
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException unused4) {
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException unused5) {
                }
            }
            throw th;
        }
    }

    /* renamed from: k */
    private static boolean m11850k() {
        return (m11839d().getProperty("filterstack").equals("true") && f10090c) ? false : true;
    }

    /* renamed from: a */
    public final InterfaceC2614i m11851a(String str) {
        StringBuilder sb;
        String exc;
        String sb2;
        Class<?> cls;
        if (str.length() <= 0) {
            return null;
        }
        try {
            cls = Class.forName(str);
        } catch (ClassNotFoundException e) {
            String message = e.getMessage();
            if (message != null) {
                str = message;
            }
            sb = new StringBuilder("Class not found \"");
            sb.append(str);
            exc = "\"";
        } catch (Exception e2) {
            sb = new StringBuilder("Error: ");
            exc = e2.toString();
        }
        try {
            Method method = cls.getMethod(f10088a, new Class[0]);
            if (!Modifier.isStatic(method.getModifiers())) {
                sb2 = "Suite() method must be static";
                mo11855c(sb2);
                return null;
            }
            try {
                InterfaceC2614i interfaceC2614i = (InterfaceC2614i) method.invoke(null, new Object[0]);
                if (interfaceC2614i == null) {
                }
                return interfaceC2614i;
            } catch (IllegalAccessException e3) {
                sb = new StringBuilder("Failed to invoke suite():");
                exc = e3.toString();
                sb.append(exc);
                sb2 = sb.toString();
                mo11855c(sb2);
                return null;
            } catch (InvocationTargetException e4) {
                sb = new StringBuilder("Failed to invoke suite():");
                exc = e4.getTargetException().toString();
                sb.append(exc);
                sb2 = sb.toString();
                mo11855c(sb2);
                return null;
            }
        } catch (Exception unused) {
            return new C2619n(cls);
        }
    }

    /* renamed from: a */
    public abstract void mo11852a();

    @Override // junit.p190b.InterfaceC2617l
    /* renamed from: a */
    public final synchronized void mo11793a(InterfaceC2614i interfaceC2614i) {
        interfaceC2614i.toString();
    }

    @Override // junit.p190b.InterfaceC2617l
    /* renamed from: a */
    public final synchronized void mo11794a(InterfaceC2614i interfaceC2614i, Throwable th) {
    }

    @Override // junit.p190b.InterfaceC2617l
    /* renamed from: a */
    public final synchronized void mo11795a(InterfaceC2614i interfaceC2614i, C2607b c2607b) {
    }

    /* renamed from: b */
    public abstract void mo11853b();

    @Override // junit.p190b.InterfaceC2617l
    /* renamed from: b */
    public final synchronized void mo11796b(InterfaceC2614i interfaceC2614i) {
        interfaceC2614i.toString();
    }

    /* renamed from: c */
    public abstract void mo11854c();

    /* renamed from: c */
    public abstract void mo11855c(String str);
}
