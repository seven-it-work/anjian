package com.google.gson;

/* loaded from: classes.dex */
public final class JsonNull extends JsonElement {
    public static final JsonNull INSTANCE = new JsonNull();

    @Deprecated
    public JsonNull() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.gson.JsonElement
    public final JsonNull deepCopy() {
        return INSTANCE;
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof JsonNull);
    }

    public final int hashCode() {
        return JsonNull.class.hashCode();
    }
}
