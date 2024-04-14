package org.junit.runner;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.junit.runner.p233b.C2975a;
import org.junit.runner.p233b.C2976b;

/* renamed from: org.junit.runner.i */
/* loaded from: classes2.dex */
public final class C2986i implements Serializable {
    private static final ObjectStreamField[] serialPersistentFields = ObjectStreamClass.lookup(b.class).getFields();
    private static final long serialVersionUID = 1;
    private final AtomicInteger count;
    private final CopyOnWriteArrayList<C2975a> failures;
    private final AtomicInteger ignoreCount;
    private final AtomicLong runTime;
    private b serializedForm;
    private final AtomicLong startTime;

    @C2976b.a
    /* renamed from: org.junit.runner.i$a */
    /* loaded from: classes2.dex */
    private class a extends C2976b {
        private a() {
        }

        /* synthetic */ a(C2986i c2986i, byte b2) {
            this();
        }

        @Override // org.junit.runner.p233b.C2976b
        /* renamed from: a */
        public final void mo11739a(C2975a c2975a) throws Exception {
            C2986i.this.failures.add(c2975a);
        }

        @Override // org.junit.runner.p233b.C2976b
        /* renamed from: a */
        public final void mo11740a(C2980c c2980c) throws Exception {
            C2986i.this.count.getAndIncrement();
        }

        @Override // org.junit.runner.p233b.C2976b
        /* renamed from: a */
        public final void mo12760a(C2986i c2986i) throws Exception {
            C2986i.this.runTime.addAndGet(System.currentTimeMillis() - C2986i.this.startTime.get());
        }

        @Override // org.junit.runner.p233b.C2976b
        /* renamed from: b */
        public final void mo13356b(C2975a c2975a) {
        }

        @Override // org.junit.runner.p233b.C2976b
        /* renamed from: c */
        public final void mo13000c(C2980c c2980c) throws Exception {
            C2986i.this.ignoreCount.getAndIncrement();
        }

        @Override // org.junit.runner.p233b.C2976b
        /* renamed from: d */
        public final void mo13357d(C2980c c2980c) throws Exception {
            C2986i.this.startTime.set(System.currentTimeMillis());
        }
    }

    /* renamed from: org.junit.runner.i$b */
    /* loaded from: classes2.dex */
    private static class b implements Serializable {
        private static final long serialVersionUID = 1;
        private final AtomicInteger fCount;
        private final List<C2975a> fFailures;
        private final AtomicInteger fIgnoreCount;
        private final long fRunTime;
        private final long fStartTime;

        private b(ObjectInputStream.GetField getField) throws IOException {
            this.fCount = (AtomicInteger) getField.get("fCount", (Object) null);
            this.fIgnoreCount = (AtomicInteger) getField.get("fIgnoreCount", (Object) null);
            this.fFailures = (List) getField.get("fFailures", (Object) null);
            this.fRunTime = getField.get("fRunTime", 0L);
            this.fStartTime = getField.get("fStartTime", 0L);
        }

        public b(C2986i c2986i) {
            this.fCount = c2986i.count;
            this.fIgnoreCount = c2986i.ignoreCount;
            this.fFailures = Collections.synchronizedList(new ArrayList(c2986i.failures));
            this.fRunTime = c2986i.runTime.longValue();
            this.fStartTime = c2986i.startTime.longValue();
        }

        public static b deserialize(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            return new b(objectInputStream.readFields());
        }

        public void serialize(ObjectOutputStream objectOutputStream) throws IOException {
            ObjectOutputStream.PutField putFields = objectOutputStream.putFields();
            putFields.put("fCount", this.fCount);
            putFields.put("fIgnoreCount", this.fIgnoreCount);
            putFields.put("fFailures", this.fFailures);
            putFields.put("fRunTime", this.fRunTime);
            putFields.put("fStartTime", this.fStartTime);
            objectOutputStream.writeFields();
        }
    }

    public C2986i() {
        this.count = new AtomicInteger();
        this.ignoreCount = new AtomicInteger();
        this.failures = new CopyOnWriteArrayList<>();
        this.runTime = new AtomicLong();
        this.startTime = new AtomicLong();
    }

    private C2986i(b bVar) {
        this.count = bVar.fCount;
        this.ignoreCount = bVar.fIgnoreCount;
        this.failures = new CopyOnWriteArrayList<>(bVar.fFailures);
        this.runTime = new AtomicLong(bVar.fRunTime);
        this.startTime = new AtomicLong(bVar.fStartTime);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        this.serializedForm = b.deserialize(objectInputStream);
    }

    private Object readResolve() {
        return new C2986i(this.serializedForm);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        new b(this).serialize(objectOutputStream);
    }

    public final C2976b createListener() {
        return new a(this, (byte) 0);
    }

    public final int getFailureCount() {
        return this.failures.size();
    }

    public final List<C2975a> getFailures() {
        return this.failures;
    }

    public final int getIgnoreCount() {
        return this.ignoreCount.get();
    }

    public final int getRunCount() {
        return this.count.get();
    }

    public final long getRunTime() {
        return this.runTime.get();
    }

    public final boolean wasSuccessful() {
        return getFailureCount() == 0;
    }
}
