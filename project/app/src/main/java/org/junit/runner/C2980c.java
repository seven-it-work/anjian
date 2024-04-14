package org.junit.runner;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: org.junit.runner.c */
/* loaded from: classes2.dex */
public final class C2980c implements Serializable {
    private static final long serialVersionUID = 1;
    private final Annotation[] fAnnotations;
    private final Collection<C2980c> fChildren;
    private final String fDisplayName;
    private volatile Class<?> fTestClass;
    private final Serializable fUniqueId;
    private static final Pattern METHOD_AND_CLASS_NAME_PATTERN = Pattern.compile("([\\s\\S]*)\\((.*)\\)");
    public static final C2980c EMPTY = new C2980c(null, "No Tests", new Annotation[0]);
    public static final C2980c TEST_MECHANISM = new C2980c(null, "Test mechanism", new Annotation[0]);

    private C2980c(Class<?> cls, String str, Serializable serializable, Annotation... annotationArr) {
        this.fChildren = new ConcurrentLinkedQueue();
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("The display name must not be empty.");
        }
        if (serializable == null) {
            throw new IllegalArgumentException("The unique id must not be null.");
        }
        this.fTestClass = cls;
        this.fDisplayName = str;
        this.fUniqueId = serializable;
        this.fAnnotations = annotationArr;
    }

    private C2980c(Class<?> cls, String str, Annotation... annotationArr) {
        this(cls, str, str, annotationArr);
    }

    public static C2980c createSuiteDescription(Class<?> cls) {
        return new C2980c(cls, cls.getName(), cls.getAnnotations());
    }

    public static C2980c createSuiteDescription(String str, Serializable serializable, Annotation... annotationArr) {
        return new C2980c(null, str, serializable, annotationArr);
    }

    public static C2980c createSuiteDescription(String str, Annotation... annotationArr) {
        return new C2980c(null, str, annotationArr);
    }

    public static C2980c createTestDescription(Class<?> cls, String str) {
        return new C2980c(cls, formatDisplayName(str, cls.getName()), new Annotation[0]);
    }

    public static C2980c createTestDescription(Class<?> cls, String str, Annotation... annotationArr) {
        return new C2980c(cls, formatDisplayName(str, cls.getName()), annotationArr);
    }

    public static C2980c createTestDescription(String str, String str2, Serializable serializable) {
        return new C2980c(null, formatDisplayName(str2, str), serializable, new Annotation[0]);
    }

    public static C2980c createTestDescription(String str, String str2, Annotation... annotationArr) {
        return new C2980c(null, formatDisplayName(str2, str), annotationArr);
    }

    private static String formatDisplayName(String str, String str2) {
        return String.format("%s(%s)", str, str2);
    }

    private String methodAndClassNamePatternGroupOrDefault(int i, String str) {
        Matcher matcher = METHOD_AND_CLASS_NAME_PATTERN.matcher(toString());
        return matcher.matches() ? matcher.group(i) : str;
    }

    public final void addChild(C2980c c2980c) {
        this.fChildren.add(c2980c);
    }

    public final C2980c childlessCopy() {
        return new C2980c(this.fTestClass, this.fDisplayName, this.fAnnotations);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2980c) {
            return this.fUniqueId.equals(((C2980c) obj).fUniqueId);
        }
        return false;
    }

    public final <T extends Annotation> T getAnnotation(Class<T> cls) {
        for (Annotation annotation : this.fAnnotations) {
            if (annotation.annotationType().equals(cls)) {
                return cls.cast(annotation);
            }
        }
        return null;
    }

    public final Collection<Annotation> getAnnotations() {
        return Arrays.asList(this.fAnnotations);
    }

    public final ArrayList<C2980c> getChildren() {
        return new ArrayList<>(this.fChildren);
    }

    public final String getClassName() {
        return this.fTestClass != null ? this.fTestClass.getName() : methodAndClassNamePatternGroupOrDefault(2, toString());
    }

    public final String getDisplayName() {
        return this.fDisplayName;
    }

    public final String getMethodName() {
        return methodAndClassNamePatternGroupOrDefault(1, null);
    }

    public final Class<?> getTestClass() {
        if (this.fTestClass != null) {
            return this.fTestClass;
        }
        String className = getClassName();
        if (className == null) {
            return null;
        }
        try {
            this.fTestClass = Class.forName(className, false, getClass().getClassLoader());
            return this.fTestClass;
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public final int hashCode() {
        return this.fUniqueId.hashCode();
    }

    public final boolean isEmpty() {
        return equals(EMPTY);
    }

    public final boolean isSuite() {
        return !isTest();
    }

    public final boolean isTest() {
        return this.fChildren.isEmpty();
    }

    public final int testCount() {
        if (isTest()) {
            return 1;
        }
        int i = 0;
        Iterator<C2980c> it = this.fChildren.iterator();
        while (it.hasNext()) {
            i += it.next().testCount();
        }
        return i;
    }

    public final String toString() {
        return getDisplayName();
    }
}
