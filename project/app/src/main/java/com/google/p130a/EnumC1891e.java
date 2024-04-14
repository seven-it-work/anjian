package com.google.p130a;

import java.util.List;

/* renamed from: com.google.a.e */
/* loaded from: classes.dex */
public enum EnumC1891e {
    OTHER(Object.class),
    PURE_BARCODE(Void.class),
    POSSIBLE_FORMATS(List.class),
    TRY_HARDER(Void.class),
    CHARACTER_SET(String.class),
    ALLOWED_LENGTHS(int[].class),
    ASSUME_CODE_39_CHECK_DIGIT(Void.class),
    ASSUME_GS1(Void.class),
    RETURN_CODABAR_START_END(Void.class),
    NEED_RESULT_POINT_CALLBACK(InterfaceC2024u.class),
    ALLOWED_EAN_EXTENSIONS(int[].class);

    private final Class<?> valueType;

    EnumC1891e(Class cls) {
        this.valueType = cls;
    }

    public final Class<?> getValueType() {
        return this.valueType;
    }
}
