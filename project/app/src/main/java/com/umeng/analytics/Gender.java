package com.umeng.analytics;

import java.util.Locale;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'Male' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public class Gender {
    public static final Gender Female;
    public static final Gender Male;
    public static final Gender Unknown;

    /* renamed from: a */
    private static final /* synthetic */ Gender[] f8865a;
    public int value;

    /* renamed from: com.umeng.analytics.Gender$4 */
    /* loaded from: classes.dex */
    static /* synthetic */ class C24204 {

        /* renamed from: a */
        static final /* synthetic */ int[] f8866a = new int[Gender.values().length];

        static {
            try {
                f8866a[Gender.Male.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8866a[Gender.Female.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8866a[Gender.Unknown.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        int i = 1;
        int i2 = 0;
        Male = new Gender("Male", i2, i) { // from class: com.umeng.analytics.Gender.1
            @Override // java.lang.Enum
            public final String toString() {
                return String.format(Locale.US, "Male:%d", Integer.valueOf(this.value));
            }
        };
        int i3 = 2;
        Female = new Gender("Female", i, i3) { // from class: com.umeng.analytics.Gender.2
            @Override // java.lang.Enum
            public final String toString() {
                return String.format(Locale.US, "Female:%d", Integer.valueOf(this.value));
            }
        };
        Unknown = new Gender("Unknown", i3, i2) { // from class: com.umeng.analytics.Gender.3
            @Override // java.lang.Enum
            public final String toString() {
                return String.format(Locale.US, "Unknown:%d", Integer.valueOf(this.value));
            }
        };
        f8865a = new Gender[]{Male, Female, Unknown};
    }

    private Gender(String str, int i, int i2) {
        this.value = i2;
    }

    public static Gender getGender(int i) {
        switch (i) {
            case 1:
                return Male;
            case 2:
                return Female;
            default:
                return Unknown;
        }
    }

    public static com.umeng.commonsdk.statistics.proto.Gender transGender(Gender gender) {
        switch (C24204.f8866a[gender.ordinal()]) {
            case 1:
                return com.umeng.commonsdk.statistics.proto.Gender.MALE;
            case 2:
                return com.umeng.commonsdk.statistics.proto.Gender.FEMALE;
            default:
                return com.umeng.commonsdk.statistics.proto.Gender.UNKNOWN;
        }
    }

    public static Gender valueOf(String str) {
        return (Gender) Enum.valueOf(Gender.class, str);
    }

    public static Gender[] values() {
        return (Gender[]) f8865a.clone();
    }

    public int value() {
        return this.value;
    }
}
