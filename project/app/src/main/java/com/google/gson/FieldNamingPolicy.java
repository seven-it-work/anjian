package com.google.gson;

import com.cyjh.common.util.C1176s;
import java.lang.reflect.Field;
import java.util.Locale;

/* loaded from: classes.dex */
public enum FieldNamingPolicy implements FieldNamingStrategy {
    IDENTITY { // from class: com.google.gson.FieldNamingPolicy.1
        @Override // com.google.gson.FieldNamingStrategy
        public final String translateName(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE { // from class: com.google.gson.FieldNamingPolicy.2
        @Override // com.google.gson.FieldNamingStrategy
        public final String translateName(Field field) {
            return upperCaseFirstLetter(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES { // from class: com.google.gson.FieldNamingPolicy.3
        @Override // com.google.gson.FieldNamingStrategy
        public final String translateName(Field field) {
            return upperCaseFirstLetter(separateCamelCase(field.getName(), C1176s.a.f4108a));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES { // from class: com.google.gson.FieldNamingPolicy.4
        @Override // com.google.gson.FieldNamingStrategy
        public final String translateName(Field field) {
            return separateCamelCase(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES { // from class: com.google.gson.FieldNamingPolicy.5
        @Override // com.google.gson.FieldNamingStrategy
        public final String translateName(Field field) {
            return separateCamelCase(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    };

    private static String modifyString(char c2, String str, int i) {
        if (i >= str.length()) {
            return String.valueOf(c2);
        }
        return c2 + str.substring(i);
    }

    static String separateCamelCase(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    static String upperCaseFirstLetter(String str) {
        char charAt;
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            charAt = str.charAt(i);
            if (i >= str.length() - 1 || Character.isLetter(charAt)) {
                break;
            }
            sb.append(charAt);
            i++;
        }
        if (i == str.length()) {
            return sb.toString();
        }
        if (Character.isUpperCase(charAt)) {
            return str;
        }
        sb.append(modifyString(Character.toUpperCase(charAt), str, i + 1));
        return sb.toString();
    }
}
