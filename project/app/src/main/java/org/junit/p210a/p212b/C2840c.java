package org.junit.p210a.p212b;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import org.junit.runner.C2980c;
import org.junit.runner.C2986i;
import org.junit.runner.p233b.C2975a;
import org.junit.runner.p233b.C2976b;

/* renamed from: org.junit.a.b.c */
/* loaded from: classes2.dex */
public final class C2840c implements Serializable {
    private static final long serialVersionUID = 1;
    private final Map<String, Long> fDurations = new HashMap();
    private final Map<String, Long> fFailureTimestamps = new HashMap();
    private final File fHistoryStore;

    /* renamed from: org.junit.a.b.c$a */
    /* loaded from: classes2.dex */
    private final class a extends C2976b {

        /* renamed from: b */
        private long f10694b;

        /* renamed from: c */
        private Map<C2980c, Long> f10695c;

        private a() {
            this.f10694b = System.currentTimeMillis();
            this.f10695c = new HashMap();
        }

        /* synthetic */ a(C2840c c2840c, byte b2) {
            this();
        }

        @Override // org.junit.runner.p233b.C2976b
        /* renamed from: a */
        public final void mo11739a(C2975a c2975a) throws Exception {
            C2840c.this.putTestFailureTimestamp(c2975a.getDescription(), this.f10694b);
        }

        @Override // org.junit.runner.p233b.C2976b
        /* renamed from: a */
        public final void mo11740a(C2980c c2980c) throws Exception {
            C2840c.this.putTestDuration(c2980c, System.nanoTime() - this.f10695c.get(c2980c).longValue());
        }

        @Override // org.junit.runner.p233b.C2976b
        /* renamed from: a */
        public final void mo12760a(C2986i c2986i) throws Exception {
            C2840c.this.save();
        }

        @Override // org.junit.runner.p233b.C2976b
        /* renamed from: b */
        public final void mo11741b(C2980c c2980c) throws Exception {
            this.f10695c.put(c2980c, Long.valueOf(System.nanoTime()));
        }
    }

    /* renamed from: org.junit.a.b.c$b */
    /* loaded from: classes2.dex */
    private class b implements Comparator<C2980c> {
        private b() {
        }

        /* synthetic */ b(C2840c c2840c, byte b2) {
            this();
        }

        /* renamed from: a */
        private int m12761a(C2980c c2980c, C2980c c2980c2) {
            if (C2840c.this.isNewTest(c2980c)) {
                return -1;
            }
            if (C2840c.this.isNewTest(c2980c2)) {
                return 1;
            }
            int compareTo = m12762a(c2980c2).compareTo(m12762a(c2980c));
            return compareTo != 0 ? compareTo : C2840c.this.getTestDuration(c2980c).compareTo(C2840c.this.getTestDuration(c2980c2));
        }

        /* renamed from: a */
        private Long m12762a(C2980c c2980c) {
            Long failureTimestamp = C2840c.this.getFailureTimestamp(c2980c);
            if (failureTimestamp == null) {
                return 0L;
            }
            return failureTimestamp;
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(C2980c c2980c, C2980c c2980c2) {
            C2980c c2980c3 = c2980c;
            C2980c c2980c4 = c2980c2;
            if (C2840c.this.isNewTest(c2980c3)) {
                return -1;
            }
            if (C2840c.this.isNewTest(c2980c4)) {
                return 1;
            }
            int compareTo = m12762a(c2980c4).compareTo(m12762a(c2980c3));
            return compareTo != 0 ? compareTo : C2840c.this.getTestDuration(c2980c3).compareTo(C2840c.this.getTestDuration(c2980c4));
        }
    }

    private C2840c(File file) {
        this.fHistoryStore = file;
    }

    public static C2840c forFolder(File file) {
        if (file.exists()) {
            try {
                return readHistory(file);
            } catch (C2838a e) {
                e.printStackTrace();
                file.delete();
            }
        }
        return new C2840c(file);
    }

    private static C2840c readHistory(File file) throws C2838a {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
                try {
                    return (C2840c) objectInputStream.readObject();
                } finally {
                    objectInputStream.close();
                }
            } finally {
                fileInputStream.close();
            }
        } catch (Exception e) {
            throw new C2838a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void save() throws IOException {
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(this.fHistoryStore));
        objectOutputStream.writeObject(this);
        objectOutputStream.close();
    }

    final Long getFailureTimestamp(C2980c c2980c) {
        return this.fFailureTimestamps.get(c2980c.toString());
    }

    final Long getTestDuration(C2980c c2980c) {
        return this.fDurations.get(c2980c.toString());
    }

    final boolean isNewTest(C2980c c2980c) {
        return !this.fDurations.containsKey(c2980c.toString());
    }

    public final C2976b listener() {
        return new a(this, (byte) 0);
    }

    final void putTestDuration(C2980c c2980c, long j) {
        this.fDurations.put(c2980c.toString(), Long.valueOf(j));
    }

    final void putTestFailureTimestamp(C2980c c2980c, long j) {
        this.fFailureTimestamps.put(c2980c.toString(), Long.valueOf(j));
    }

    public final Comparator<C2980c> testComparator() {
        return new b(this, (byte) 0);
    }
}
