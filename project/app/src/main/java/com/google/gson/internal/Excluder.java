package com.google.gson.internal;

import com.google.gson.ExclusionStrategy;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class Excluder implements TypeAdapterFactory, Cloneable {
    public static final Excluder DEFAULT = new Excluder();
    private static final double IGNORE_VERSIONS = -1.0d;
    private boolean requireExpose;
    private double version = IGNORE_VERSIONS;
    private int modifiers = 136;
    private boolean serializeInnerClasses = true;
    private List<ExclusionStrategy> serializationStrategies = Collections.emptyList();
    private List<ExclusionStrategy> deserializationStrategies = Collections.emptyList();

    private boolean isAnonymousOrLocal(Class<?> cls) {
        if (Enum.class.isAssignableFrom(cls)) {
            return false;
        }
        return cls.isAnonymousClass() || cls.isLocalClass();
    }

    private boolean isInnerClass(Class<?> cls) {
        return cls.isMemberClass() && !isStatic(cls);
    }

    private boolean isStatic(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    private boolean isValidSince(Since since) {
        return since == null || since.value() <= this.version;
    }

    private boolean isValidUntil(Until until) {
        return until == null || until.value() > this.version;
    }

    private boolean isValidVersion(Since since, Until until) {
        return isValidSince(since) && isValidUntil(until);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public final Excluder m13988clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.gson.TypeAdapterFactory
    public final <T> TypeAdapter<T> create(final Gson gson, final TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        final boolean excludeClass = excludeClass(rawType, true);
        final boolean excludeClass2 = excludeClass(rawType, false);
        if (excludeClass || excludeClass2) {
            return new TypeAdapter<T>() { // from class: com.google.gson.internal.Excluder.1
                private TypeAdapter<T> delegate;

                private TypeAdapter<T> delegate() {
                    TypeAdapter<T> typeAdapter = this.delegate;
                    if (typeAdapter != null) {
                        return typeAdapter;
                    }
                    TypeAdapter<T> delegateAdapter = gson.getDelegateAdapter(Excluder.this, typeToken);
                    this.delegate = delegateAdapter;
                    return delegateAdapter;
                }

                @Override // com.google.gson.TypeAdapter
                public T read(JsonReader jsonReader) throws IOException {
                    if (!excludeClass2) {
                        return delegate().read(jsonReader);
                    }
                    jsonReader.skipValue();
                    return null;
                }

                @Override // com.google.gson.TypeAdapter
                public void write(JsonWriter jsonWriter, T t) throws IOException {
                    if (excludeClass) {
                        jsonWriter.nullValue();
                    } else {
                        delegate().write(jsonWriter, t);
                    }
                }
            };
        }
        return null;
    }

    public final Excluder disableInnerClassSerialization() {
        Excluder m13988clone = m13988clone();
        m13988clone.serializeInnerClasses = false;
        return m13988clone;
    }

    public final boolean excludeClass(Class<?> cls, boolean z) {
        if (this.version != IGNORE_VERSIONS && !isValidVersion((Since) cls.getAnnotation(Since.class), (Until) cls.getAnnotation(Until.class))) {
            return true;
        }
        if ((!this.serializeInnerClasses && isInnerClass(cls)) || isAnonymousOrLocal(cls)) {
            return true;
        }
        Iterator<ExclusionStrategy> it = (z ? this.serializationStrategies : this.deserializationStrategies).iterator();
        while (it.hasNext()) {
            if (it.next().shouldSkipClass(cls)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004c, code lost:
    
        if (r0.deserialize() == false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean excludeField(java.lang.reflect.Field r7, boolean r8) {
        /*
            r6 = this;
            int r0 = r6.modifiers
            int r1 = r7.getModifiers()
            r0 = r0 & r1
            r1 = 1
            if (r0 == 0) goto Lb
            return r1
        Lb:
            double r2 = r6.version
            r4 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 == 0) goto L2a
            java.lang.Class<com.google.gson.annotations.Since> r0 = com.google.gson.annotations.Since.class
            java.lang.annotation.Annotation r0 = r7.getAnnotation(r0)
            com.google.gson.annotations.Since r0 = (com.google.gson.annotations.Since) r0
            java.lang.Class<com.google.gson.annotations.Until> r2 = com.google.gson.annotations.Until.class
            java.lang.annotation.Annotation r2 = r7.getAnnotation(r2)
            com.google.gson.annotations.Until r2 = (com.google.gson.annotations.Until) r2
            boolean r0 = r6.isValidVersion(r0, r2)
            if (r0 != 0) goto L2a
            return r1
        L2a:
            boolean r0 = r7.isSynthetic()
            if (r0 == 0) goto L31
            return r1
        L31:
            boolean r0 = r6.requireExpose
            if (r0 == 0) goto L4f
            java.lang.Class<com.google.gson.annotations.Expose> r0 = com.google.gson.annotations.Expose.class
            java.lang.annotation.Annotation r0 = r7.getAnnotation(r0)
            com.google.gson.annotations.Expose r0 = (com.google.gson.annotations.Expose) r0
            if (r0 == 0) goto L4e
            if (r8 == 0) goto L48
            boolean r0 = r0.serialize()
            if (r0 != 0) goto L4f
            return r1
        L48:
            boolean r0 = r0.deserialize()
            if (r0 != 0) goto L4f
        L4e:
            return r1
        L4f:
            boolean r0 = r6.serializeInnerClasses
            if (r0 != 0) goto L5e
            java.lang.Class r0 = r7.getType()
            boolean r0 = r6.isInnerClass(r0)
            if (r0 == 0) goto L5e
            return r1
        L5e:
            java.lang.Class r0 = r7.getType()
            boolean r0 = r6.isAnonymousOrLocal(r0)
            if (r0 == 0) goto L69
            return r1
        L69:
            if (r8 == 0) goto L6e
            java.util.List<com.google.gson.ExclusionStrategy> r8 = r6.serializationStrategies
            goto L70
        L6e:
            java.util.List<com.google.gson.ExclusionStrategy> r8 = r6.deserializationStrategies
        L70:
            boolean r0 = r8.isEmpty()
            if (r0 != 0) goto L92
            com.google.gson.FieldAttributes r0 = new com.google.gson.FieldAttributes
            r0.<init>(r7)
            java.util.Iterator r7 = r8.iterator()
        L7f:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto L92
            java.lang.Object r8 = r7.next()
            com.google.gson.ExclusionStrategy r8 = (com.google.gson.ExclusionStrategy) r8
            boolean r8 = r8.shouldSkipField(r0)
            if (r8 == 0) goto L7f
            return r1
        L92:
            r7 = 0
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.Excluder.excludeField(java.lang.reflect.Field, boolean):boolean");
    }

    public final Excluder excludeFieldsWithoutExposeAnnotation() {
        Excluder m13988clone = m13988clone();
        m13988clone.requireExpose = true;
        return m13988clone;
    }

    public final Excluder withExclusionStrategy(ExclusionStrategy exclusionStrategy, boolean z, boolean z2) {
        Excluder m13988clone = m13988clone();
        if (z) {
            m13988clone.serializationStrategies = new ArrayList(this.serializationStrategies);
            m13988clone.serializationStrategies.add(exclusionStrategy);
        }
        if (z2) {
            m13988clone.deserializationStrategies = new ArrayList(this.deserializationStrategies);
            m13988clone.deserializationStrategies.add(exclusionStrategy);
        }
        return m13988clone;
    }

    public final Excluder withModifiers(int... iArr) {
        Excluder m13988clone = m13988clone();
        m13988clone.modifiers = 0;
        for (int i : iArr) {
            m13988clone.modifiers = i | m13988clone.modifiers;
        }
        return m13988clone;
    }

    public final Excluder withVersion(double d) {
        Excluder m13988clone = m13988clone();
        m13988clone.version = d;
        return m13988clone;
    }
}
