package com.bumptech.glide.load.p042b;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.InterfaceC1022g;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.bumptech.glide.load.b.p */
/* loaded from: classes.dex */
public final class C0920p extends Exception {
    private static final StackTraceElement[] EMPTY_ELEMENTS = new StackTraceElement[0];
    private static final long serialVersionUID = 1;
    private final List<Throwable> causes;
    private Class<?> dataClass;
    private EnumC0849a dataSource;
    private String detailMessage;
    private InterfaceC1022g key;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.b.p$a */
    /* loaded from: classes.dex */
    public static final class a implements Appendable {

        /* renamed from: a */
        private static final String f2825a = "";

        /* renamed from: b */
        private static final String f2826b = "  ";

        /* renamed from: c */
        private final Appendable f2827c;

        /* renamed from: d */
        private boolean f2828d = true;

        a(Appendable appendable) {
            this.f2827c = appendable;
        }

        @NonNull
        /* renamed from: a */
        private static CharSequence m2729a(@Nullable CharSequence charSequence) {
            return charSequence == null ? "" : charSequence;
        }

        @Override // java.lang.Appendable
        public final Appendable append(char c2) throws IOException {
            if (this.f2828d) {
                this.f2828d = false;
                this.f2827c.append(f2826b);
            }
            this.f2828d = c2 == '\n';
            this.f2827c.append(c2);
            return this;
        }

        @Override // java.lang.Appendable
        public final Appendable append(@Nullable CharSequence charSequence) throws IOException {
            CharSequence m2729a = m2729a(charSequence);
            return append(m2729a, 0, m2729a.length());
        }

        @Override // java.lang.Appendable
        public final Appendable append(@Nullable CharSequence charSequence, int i, int i2) throws IOException {
            CharSequence m2729a = m2729a(charSequence);
            boolean z = false;
            if (this.f2828d) {
                this.f2828d = false;
                this.f2827c.append(f2826b);
            }
            if (m2729a.length() > 0 && m2729a.charAt(i2 - 1) == '\n') {
                z = true;
            }
            this.f2828d = z;
            this.f2827c.append(m2729a, i, i2);
            return this;
        }
    }

    public C0920p(String str) {
        this(str, (List<Throwable>) Collections.emptyList());
    }

    public C0920p(String str, Throwable th) {
        this(str, (List<Throwable>) Collections.singletonList(th));
    }

    public C0920p(String str, List<Throwable> list) {
        this.detailMessage = str;
        setStackTrace(EMPTY_ELEMENTS);
        this.causes = list;
    }

    private void addRootCauses(Throwable th, List<Throwable> list) {
        if (!(th instanceof C0920p)) {
            list.add(th);
            return;
        }
        Iterator<Throwable> it = ((C0920p) th).getCauses().iterator();
        while (it.hasNext()) {
            addRootCauses(it.next(), list);
        }
    }

    private static void appendCauses(List<Throwable> list, Appendable appendable) {
        try {
            appendCausesWrapped(list, appendable);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static void appendCausesWrapped(List<Throwable> list, Appendable appendable) throws IOException {
        int size = list.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            appendable.append("Cause (").append(String.valueOf(i2)).append(" of ").append(String.valueOf(size)).append("): ");
            Throwable th = list.get(i);
            if (th instanceof C0920p) {
                ((C0920p) th).printStackTrace(appendable);
            } else {
                appendExceptionMessage(th, appendable);
            }
            i = i2;
        }
    }

    private static void appendExceptionMessage(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    private void printStackTrace(Appendable appendable) {
        appendExceptionMessage(this, appendable);
        appendCauses(getCauses(), new a(appendable));
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }

    public final List<Throwable> getCauses() {
        return this.causes;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String str;
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.detailMessage);
        sb.append(this.dataClass != null ? ", " + this.dataClass : "");
        sb.append(this.dataSource != null ? ", " + this.dataSource : "");
        sb.append(this.key != null ? ", " + this.key : "");
        List<Throwable> rootCauses = getRootCauses();
        if (rootCauses.isEmpty()) {
            return sb.toString();
        }
        if (rootCauses.size() == 1) {
            str = "\nThere was 1 cause:";
        } else {
            sb.append("\nThere were ");
            sb.append(rootCauses.size());
            str = " causes:";
        }
        sb.append(str);
        for (Throwable th : rootCauses) {
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    public final List<Throwable> getRootCauses() {
        ArrayList arrayList = new ArrayList();
        addRootCauses(this, arrayList);
        return arrayList;
    }

    public final void logRootCauses(String str) {
        List<Throwable> rootCauses = getRootCauses();
        int size = rootCauses.size();
        int i = 0;
        while (i < size) {
            StringBuilder sb = new StringBuilder("Root cause (");
            int i2 = i + 1;
            sb.append(i2);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            Log.i(str, sb.toString(), rootCauses.get(i));
            i = i2;
        }
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        printStackTrace((Appendable) printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        printStackTrace((Appendable) printWriter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setLoggingDetails(InterfaceC1022g interfaceC1022g, EnumC0849a enumC0849a) {
        setLoggingDetails(interfaceC1022g, enumC0849a, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setLoggingDetails(InterfaceC1022g interfaceC1022g, EnumC0849a enumC0849a, Class<?> cls) {
        this.key = interfaceC1022g;
        this.dataSource = enumC0849a;
        this.dataClass = cls;
    }
}
