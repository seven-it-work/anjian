package myjava.awt.datatransfer;

import java.io.Serializable;
import java.util.Enumeration;
import java.util.Hashtable;

/* loaded from: classes2.dex */
final class MimeTypeProcessor {
    private static MimeTypeProcessor instance;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class MimeType implements Serializable, Cloneable {
        private static final long serialVersionUID = -6693571907475992044L;
        private Hashtable<String, String> parameters;
        private String primaryType;
        private String subType;
        private Hashtable<String, Object> systemParameters;

        MimeType() {
            this.primaryType = null;
            this.subType = null;
            this.parameters = null;
            this.systemParameters = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public MimeType(String str, String str2) {
            this.primaryType = str;
            this.subType = str2;
            this.parameters = new Hashtable<>();
            this.systemParameters = new Hashtable<>();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void addParameter(String str, String str2) {
            if (str2 == null) {
                return;
            }
            if (str2.charAt(0) == '\"' && str2.charAt(str2.length() - 1) == '\"') {
                str2 = str2.substring(1, str2.length() - 2);
            }
            if (str2.length() == 0) {
                return;
            }
            this.parameters.put(str, str2);
        }

        final void addSystemParameter(String str, Object obj) {
            this.systemParameters.put(str, obj);
        }

        public final Object clone() {
            MimeType mimeType = new MimeType(this.primaryType, this.subType);
            mimeType.parameters = (Hashtable) this.parameters.clone();
            mimeType.systemParameters = (Hashtable) this.systemParameters.clone();
            return mimeType;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean equals(MimeType mimeType) {
            if (mimeType == null) {
                return false;
            }
            return getFullType().equals(mimeType.getFullType());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final String getFullType() {
            return String.valueOf(this.primaryType) + "/" + this.subType;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final String getParameter(String str) {
            return this.parameters.get(str);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final String getPrimaryType() {
            return this.primaryType;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final String getSubType() {
            return this.subType;
        }

        final Object getSystemParameter(String str) {
            return this.systemParameters.get(str);
        }

        final void removeParameter(String str) {
            this.parameters.remove(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class StringPosition {

        /* renamed from: i */
        int f10374i;

        private StringPosition() {
            this.f10374i = 0;
        }

        /* synthetic */ StringPosition(StringPosition stringPosition) {
            this();
        }
    }

    private MimeTypeProcessor() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String assemble(MimeType mimeType) {
        StringBuilder sb = new StringBuilder();
        sb.append(mimeType.getFullType());
        Enumeration keys = mimeType.parameters.keys();
        while (keys.hasMoreElements()) {
            String str = (String) keys.nextElement();
            String str2 = (String) mimeType.parameters.get(str);
            sb.append("; ");
            sb.append(str);
            sb.append("=\"");
            sb.append(str2);
            sb.append('\"');
        }
        return sb.toString();
    }

    private static int getNextMeaningfulIndex(String str, int i) {
        while (i < str.length() && !isMeaningfulChar(str.charAt(i))) {
            i++;
        }
        return i;
    }

    private static boolean isMeaningfulChar(char c2) {
        return c2 >= '!' && c2 <= '~';
    }

    private static boolean isTSpecialChar(char c2) {
        return c2 == '(' || c2 == ')' || c2 == '[' || c2 == ']' || c2 == '<' || c2 == '>' || c2 == '@' || c2 == ',' || c2 == ';' || c2 == ':' || c2 == '\\' || c2 == '\"' || c2 == '/' || c2 == '?' || c2 == '=';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MimeType parse(String str) {
        if (instance == null) {
            instance = new MimeTypeProcessor();
        }
        MimeType mimeType = new MimeType();
        if (str != null) {
            StringPosition stringPosition = new StringPosition(null);
            retrieveType(str, mimeType, stringPosition);
            retrieveParams(str, mimeType, stringPosition);
        }
        return mimeType;
    }

    private static void retrieveParam(String str, MimeType mimeType, StringPosition stringPosition) {
        String lowerCase = retrieveToken(str, stringPosition).toLowerCase();
        stringPosition.f10374i = getNextMeaningfulIndex(str, stringPosition.f10374i);
        if (stringPosition.f10374i >= str.length() || str.charAt(stringPosition.f10374i) != '=') {
            throw new IllegalArgumentException();
        }
        stringPosition.f10374i++;
        stringPosition.f10374i = getNextMeaningfulIndex(str, stringPosition.f10374i);
        if (stringPosition.f10374i >= str.length()) {
            throw new IllegalArgumentException();
        }
        mimeType.parameters.put(lowerCase, str.charAt(stringPosition.f10374i) == '\"' ? retrieveQuoted(str, stringPosition) : retrieveToken(str, stringPosition));
    }

    private static void retrieveParams(String str, MimeType mimeType, StringPosition stringPosition) {
        mimeType.parameters = new Hashtable();
        mimeType.systemParameters = new Hashtable();
        while (true) {
            stringPosition.f10374i = getNextMeaningfulIndex(str, stringPosition.f10374i);
            if (stringPosition.f10374i >= str.length()) {
                return;
            }
            if (str.charAt(stringPosition.f10374i) != ';') {
                throw new IllegalArgumentException();
            }
            stringPosition.f10374i++;
            retrieveParam(str, mimeType, stringPosition);
        }
    }

    private static String retrieveQuoted(String str, StringPosition stringPosition) {
        StringBuilder sb = new StringBuilder();
        stringPosition.f10374i++;
        boolean z = true;
        do {
            if (str.charAt(stringPosition.f10374i) == '\"' && z) {
                stringPosition.f10374i++;
                return sb.toString();
            }
            int i = stringPosition.f10374i;
            stringPosition.f10374i = i + 1;
            char charAt = str.charAt(i);
            if (!z) {
                z = true;
            } else if (charAt == '\\') {
                z = false;
            }
            if (z) {
                sb.append(charAt);
            }
        } while (stringPosition.f10374i != str.length());
        throw new IllegalArgumentException();
    }

    private static String retrieveToken(String str, StringPosition stringPosition) {
        StringBuilder sb = new StringBuilder();
        stringPosition.f10374i = getNextMeaningfulIndex(str, stringPosition.f10374i);
        if (stringPosition.f10374i >= str.length() || isTSpecialChar(str.charAt(stringPosition.f10374i))) {
            throw new IllegalArgumentException();
        }
        do {
            int i = stringPosition.f10374i;
            stringPosition.f10374i = i + 1;
            sb.append(str.charAt(i));
            if (stringPosition.f10374i >= str.length() || !isMeaningfulChar(str.charAt(stringPosition.f10374i))) {
                break;
            }
        } while (!isTSpecialChar(str.charAt(stringPosition.f10374i)));
        return sb.toString();
    }

    private static void retrieveType(String str, MimeType mimeType, StringPosition stringPosition) {
        mimeType.primaryType = retrieveToken(str, stringPosition).toLowerCase();
        stringPosition.f10374i = getNextMeaningfulIndex(str, stringPosition.f10374i);
        if (stringPosition.f10374i >= str.length() || str.charAt(stringPosition.f10374i) != '/') {
            throw new IllegalArgumentException();
        }
        stringPosition.f10374i++;
        mimeType.subType = retrieveToken(str, stringPosition).toLowerCase();
    }
}
