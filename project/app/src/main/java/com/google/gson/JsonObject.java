package com.google.gson;

import com.google.gson.internal.LinkedTreeMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class JsonObject extends JsonElement {
    private final LinkedTreeMap<String, JsonElement> members = new LinkedTreeMap<>();

    private JsonElement createJsonElement(Object obj) {
        return obj == null ? JsonNull.INSTANCE : new JsonPrimitive(obj);
    }

    public final void add(String str, JsonElement jsonElement) {
        if (jsonElement == null) {
            jsonElement = JsonNull.INSTANCE;
        }
        this.members.put(str, jsonElement);
    }

    public final void addProperty(String str, Boolean bool) {
        add(str, createJsonElement(bool));
    }

    public final void addProperty(String str, Character ch) {
        add(str, createJsonElement(ch));
    }

    public final void addProperty(String str, Number number) {
        add(str, createJsonElement(number));
    }

    public final void addProperty(String str, String str2) {
        add(str, createJsonElement(str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.gson.JsonElement
    public final JsonObject deepCopy() {
        JsonObject jsonObject = new JsonObject();
        for (Map.Entry<String, JsonElement> entry : this.members.entrySet()) {
            jsonObject.add(entry.getKey(), entry.getValue().deepCopy());
        }
        return jsonObject;
    }

    public final Set<Map.Entry<String, JsonElement>> entrySet() {
        return this.members.entrySet();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof JsonObject) && ((JsonObject) obj).members.equals(this.members);
        }
        return true;
    }

    public final JsonElement get(String str) {
        return this.members.get(str);
    }

    public final JsonArray getAsJsonArray(String str) {
        return (JsonArray) this.members.get(str);
    }

    public final JsonObject getAsJsonObject(String str) {
        return (JsonObject) this.members.get(str);
    }

    public final JsonPrimitive getAsJsonPrimitive(String str) {
        return (JsonPrimitive) this.members.get(str);
    }

    public final boolean has(String str) {
        return this.members.containsKey(str);
    }

    public final int hashCode() {
        return this.members.hashCode();
    }

    public final JsonElement remove(String str) {
        return this.members.remove(str);
    }

    public final int size() {
        return this.members.size();
    }
}
