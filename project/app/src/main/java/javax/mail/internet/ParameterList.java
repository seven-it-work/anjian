package javax.mail.internet;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public class ParameterList {
    private static boolean applehack;
    private static boolean decodeParameters;
    private static boolean decodeParametersStrict;
    private static boolean encodeParameters;
    private static final char[] hex;
    private String lastName;
    private Map list;
    private Set multisegmentNames;
    private Map slist;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class MultiValue extends ArrayList {
        String value;

        private MultiValue() {
        }

        /* synthetic */ MultiValue(MultiValue multiValue) {
            this();
        }
    }

    /* loaded from: classes.dex */
    private static class ParamEnum implements Enumeration {

        /* renamed from: it */
        private Iterator f10041it;

        ParamEnum(Iterator it) {
            this.f10041it = it;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.f10041it.hasNext();
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            return this.f10041it.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ToStringBuffer {

        /* renamed from: sb */
        private StringBuffer f10042sb = new StringBuffer();
        private int used;

        public ToStringBuffer(int i) {
            this.used = i;
        }

        public void addNV(String str, String str2) {
            String quote = ParameterList.quote(str2);
            this.f10042sb.append("; ");
            this.used += 2;
            if (this.used + str.length() + quote.length() + 1 > 76) {
                this.f10042sb.append("\r\n\t");
                this.used = 8;
            }
            StringBuffer stringBuffer = this.f10042sb;
            stringBuffer.append(str);
            stringBuffer.append('=');
            this.used += str.length() + 1;
            if (this.used + quote.length() <= 76) {
                this.f10042sb.append(quote);
                this.used += quote.length();
                return;
            }
            String fold = MimeUtility.fold(this.used, quote);
            this.f10042sb.append(fold);
            if (fold.lastIndexOf(10) >= 0) {
                this.used += (fold.length() - r5) - 1;
            } else {
                this.used += fold.length();
            }
        }

        public String toString() {
            return this.f10042sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Value {
        String charset;
        String encodedValue;
        String value;

        private Value() {
        }

        /* synthetic */ Value(Value value) {
            this();
        }
    }

    static {
        try {
            String property = System.getProperty("mail.mime.encodeparameters");
            boolean z = false;
            encodeParameters = property != null && property.equalsIgnoreCase("true");
            String property2 = System.getProperty("mail.mime.decodeparameters");
            decodeParameters = property2 != null && property2.equalsIgnoreCase("true");
            String property3 = System.getProperty("mail.mime.decodeparameters.strict");
            decodeParametersStrict = property3 != null && property3.equalsIgnoreCase("true");
            String property4 = System.getProperty("mail.mime.applefilenames");
            if (property4 != null && property4.equalsIgnoreCase("true")) {
                z = true;
            }
            applehack = z;
        } catch (SecurityException unused) {
        }
        hex = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    }

    public ParameterList() {
        this.list = new LinkedHashMap();
        this.lastName = null;
        if (decodeParameters) {
            this.multisegmentNames = new HashSet();
            this.slist = new HashMap();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0125, code lost:
    
        if (javax.mail.internet.ParameterList.decodeParameters == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0127, code lost:
    
        combineMultisegmentNames(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x012b, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public ParameterList(java.lang.String r7) throws javax.mail.internet.ParseException {
        /*
            Method dump skipped, instructions count: 300
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.ParameterList.<init>(java.lang.String):void");
    }

    private void combineMultisegmentNames(boolean z) throws ParseException {
        String str;
        try {
            for (String str2 : this.multisegmentNames) {
                StringBuffer stringBuffer = new StringBuffer();
                MultiValue multiValue = new MultiValue(null);
                int i = 0;
                String str3 = null;
                while (true) {
                    String str4 = String.valueOf(str2) + Marker.ANY_MARKER + i;
                    Object obj = this.slist.get(str4);
                    if (obj == null) {
                        break;
                    }
                    multiValue.add(obj);
                    if (obj instanceof Value) {
                        try {
                            Value value = (Value) obj;
                            str = value.encodedValue;
                            if (i == 0) {
                                try {
                                    Value decodeValue = decodeValue(str);
                                    String str5 = decodeValue.charset;
                                    value.charset = str5;
                                    try {
                                        String str6 = decodeValue.value;
                                        value.value = str6;
                                        str = str6;
                                        str3 = str5;
                                    } catch (UnsupportedEncodingException e) {
                                        e = e;
                                        str3 = str5;
                                        if (decodeParametersStrict) {
                                            throw new ParseException(e.toString());
                                        }
                                        stringBuffer.append(str);
                                        this.slist.remove(str4);
                                        i++;
                                    } catch (NumberFormatException e2) {
                                        e = e2;
                                        str3 = str5;
                                        if (decodeParametersStrict) {
                                            throw new ParseException(e.toString());
                                        }
                                        stringBuffer.append(str);
                                        this.slist.remove(str4);
                                        i++;
                                    } catch (StringIndexOutOfBoundsException e3) {
                                        e = e3;
                                        str3 = str5;
                                        if (decodeParametersStrict) {
                                            throw new ParseException(e.toString());
                                        }
                                        stringBuffer.append(str);
                                        this.slist.remove(str4);
                                        i++;
                                    }
                                } catch (UnsupportedEncodingException e4) {
                                    e = e4;
                                } catch (NumberFormatException e5) {
                                    e = e5;
                                } catch (StringIndexOutOfBoundsException e6) {
                                    e = e6;
                                }
                            } else if (str3 == null) {
                                this.multisegmentNames.remove(str2);
                                break;
                            } else {
                                String decodeBytes = decodeBytes(str, str3);
                                value.value = decodeBytes;
                                str = decodeBytes;
                            }
                        } catch (UnsupportedEncodingException e7) {
                            e = e7;
                            str = null;
                        } catch (NumberFormatException e8) {
                            e = e8;
                            str = null;
                        } catch (StringIndexOutOfBoundsException e9) {
                            e = e9;
                            str = null;
                        }
                    } else {
                        str = (String) obj;
                    }
                    stringBuffer.append(str);
                    this.slist.remove(str4);
                    i++;
                }
                if (i == 0) {
                    this.list.remove(str2);
                } else {
                    multiValue.value = stringBuffer.toString();
                    this.list.put(str2, multiValue);
                }
            }
            if (this.slist.size() > 0) {
                for (Object obj2 : this.slist.values()) {
                    if (obj2 instanceof Value) {
                        Value value2 = (Value) obj2;
                        Value decodeValue2 = decodeValue(value2.encodedValue);
                        value2.charset = decodeValue2.charset;
                        value2.value = decodeValue2.value;
                    }
                }
                this.list.putAll(this.slist);
            }
            this.multisegmentNames.clear();
            this.slist.clear();
        } catch (Throwable th) {
            if (z) {
                if (this.slist.size() > 0) {
                    for (Object obj3 : this.slist.values()) {
                        if (obj3 instanceof Value) {
                            Value value3 = (Value) obj3;
                            Value decodeValue3 = decodeValue(value3.encodedValue);
                            value3.charset = decodeValue3.charset;
                            value3.value = decodeValue3.value;
                        }
                    }
                    this.list.putAll(this.slist);
                }
                this.multisegmentNames.clear();
                this.slist.clear();
            }
            throw th;
        }
    }

    private static String decodeBytes(String str, String str2) throws UnsupportedEncodingException {
        byte[] bArr = new byte[str.length()];
        int i = 0;
        int i2 = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt == '%') {
                charAt = (char) Integer.parseInt(str.substring(i + 1, i + 3), 16);
                i += 2;
            }
            bArr[i2] = (byte) charAt;
            i++;
            i2++;
        }
        return new String(bArr, 0, i2, MimeUtility.javaCharset(str2));
    }

    private static Value decodeValue(String str) throws ParseException {
        Value value = new Value(null);
        value.encodedValue = str;
        value.value = str;
        try {
            int indexOf = str.indexOf(39);
            if (indexOf <= 0) {
                if (!decodeParametersStrict) {
                    return value;
                }
                throw new ParseException("Missing charset in encoded value: " + str);
            }
            String substring = str.substring(0, indexOf);
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(39, i);
            if (indexOf2 < 0) {
                if (!decodeParametersStrict) {
                    return value;
                }
                throw new ParseException("Missing language in encoded value: " + str);
            }
            str.substring(i, indexOf2);
            String substring2 = str.substring(indexOf2 + 1);
            value.charset = substring;
            value.value = decodeBytes(substring2, substring);
            return value;
        } catch (UnsupportedEncodingException e) {
            if (decodeParametersStrict) {
                throw new ParseException(e.toString());
            }
            return value;
        } catch (NumberFormatException e2) {
            if (decodeParametersStrict) {
                throw new ParseException(e2.toString());
            }
            return value;
        } catch (StringIndexOutOfBoundsException e3) {
            if (decodeParametersStrict) {
                throw new ParseException(e3.toString());
            }
            return value;
        }
    }

    private static Value encodeValue(String str, String str2) {
        Value value = null;
        if (MimeUtility.checkAscii(str) == 1) {
            return null;
        }
        try {
            byte[] bytes = str.getBytes(MimeUtility.javaCharset(str2));
            StringBuffer stringBuffer = new StringBuffer(bytes.length + str2.length() + 2);
            stringBuffer.append(str2);
            stringBuffer.append("''");
            for (byte b2 : bytes) {
                char c2 = (char) (b2 & 255);
                if (c2 <= ' ' || c2 >= 127 || c2 == '*' || c2 == '\'' || c2 == '%' || HeaderTokenizer.MIME.indexOf(c2) >= 0) {
                    stringBuffer.append('%');
                    stringBuffer.append(hex[c2 >> 4]);
                    c2 = hex[c2 & 15];
                }
                stringBuffer.append(c2);
            }
            Value value2 = new Value(value);
            value2.charset = str2;
            value2.value = str;
            value2.encodedValue = stringBuffer.toString();
            return value2;
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [javax.mail.internet.ParameterList$Value] */
    /* JADX WARN: Type inference failed for: r6v5, types: [javax.mail.internet.ParameterList$Value] */
    private void putEncodedName(String str, String str2) throws ParseException {
        Map map;
        String str3;
        int indexOf = str.indexOf(42);
        if (indexOf < 0) {
            map = this.list;
            str3 = str2;
        } else if (indexOf == str.length() - 1) {
            str = str.substring(0, indexOf);
            map = this.list;
            str3 = decodeValue(str2);
        } else {
            String substring = str.substring(0, indexOf);
            this.multisegmentNames.add(substring);
            this.list.put(substring, "");
            String str4 = str2;
            if (str.endsWith(Marker.ANY_MARKER)) {
                ?? value = new Value(null);
                Value value2 = (Value) value;
                value2.encodedValue = str2;
                value2.value = str2;
                str = str.substring(0, str.length() - 1);
                str4 = value;
            }
            map = this.slist;
            str3 = str4;
        }
        map.put(str, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String quote(String str) {
        return MimeUtility.quote(str, HeaderTokenizer.MIME);
    }

    public String get(String str) {
        Object obj = this.list.get(str.trim().toLowerCase(Locale.ENGLISH));
        return obj instanceof MultiValue ? ((MultiValue) obj).value : obj instanceof Value ? ((Value) obj).value : (String) obj;
    }

    public Enumeration getNames() {
        return new ParamEnum(this.list.keySet().iterator());
    }

    public void remove(String str) {
        this.list.remove(str.trim().toLowerCase(Locale.ENGLISH));
    }

    public void set(String str, String str2) {
        if (str == null && str2 != null && str2.equals("DONE")) {
            if (!decodeParameters || this.multisegmentNames.size() <= 0) {
                return;
            }
            try {
                combineMultisegmentNames(true);
                return;
            } catch (ParseException unused) {
                return;
            }
        }
        String lowerCase = str.trim().toLowerCase(Locale.ENGLISH);
        if (decodeParameters) {
            try {
                putEncodedName(lowerCase, str2);
                return;
            } catch (ParseException unused2) {
            }
        }
        this.list.put(lowerCase, str2);
    }

    public void set(String str, String str2, String str3) {
        if (!encodeParameters) {
            set(str, str2);
            return;
        }
        Value encodeValue = encodeValue(str2, str3);
        if (encodeValue != null) {
            this.list.put(str.trim().toLowerCase(Locale.ENGLISH), encodeValue);
        } else {
            set(str, str2);
        }
    }

    public int size() {
        return this.list.size();
    }

    public String toString() {
        return toString(0);
    }

    public String toString(int i) {
        String str;
        String str2;
        String str3;
        ToStringBuffer toStringBuffer = new ToStringBuffer(i);
        for (String str4 : this.list.keySet()) {
            Object obj = this.list.get(str4);
            if (obj instanceof MultiValue) {
                MultiValue multiValue = (MultiValue) obj;
                String str5 = String.valueOf(str4) + Marker.ANY_MARKER;
                for (int i2 = 0; i2 < multiValue.size(); i2++) {
                    Object obj2 = multiValue.get(i2);
                    if (obj2 instanceof Value) {
                        str = String.valueOf(str5) + i2 + Marker.ANY_MARKER;
                        str2 = ((Value) obj2).encodedValue;
                    } else {
                        str = String.valueOf(str5) + i2;
                        str2 = (String) obj2;
                    }
                    toStringBuffer.addNV(str, str2);
                }
            } else {
                if (obj instanceof Value) {
                    str4 = String.valueOf(str4) + Marker.ANY_MARKER;
                    str3 = ((Value) obj).encodedValue;
                } else {
                    str3 = (String) obj;
                }
                toStringBuffer.addNV(str4, str3);
            }
        }
        return toStringBuffer.toString();
    }
}
