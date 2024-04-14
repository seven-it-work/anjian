package javax.mail.internet;

/* loaded from: classes.dex */
public class HeaderTokenizer {
    private static final Token EOFToken = new Token(-4, null);
    public static final String MIME = "()<>@,;:\\\"\t []/?=";
    public static final String RFC822 = "()<>@,;:\\\"\t .[]";
    private int currentPos;
    private String delimiters;
    private int maxPos;
    private int nextPos;
    private int peekPos;
    private boolean skipComments;
    private String string;

    /* loaded from: classes.dex */
    public static class Token {
        public static final int ATOM = -1;
        public static final int COMMENT = -3;
        public static final int EOF = -4;
        public static final int QUOTEDSTRING = -2;
        private int type;
        private String value;

        public Token(int i, String str) {
            this.type = i;
            this.value = str;
        }

        public int getType() {
            return this.type;
        }

        public String getValue() {
            return this.value;
        }
    }

    public HeaderTokenizer(String str) {
        this(str, RFC822);
    }

    public HeaderTokenizer(String str, String str2) {
        this(str, str2, true);
    }

    public HeaderTokenizer(String str, String str2, boolean z) {
        this.string = str == null ? "" : str;
        this.skipComments = z;
        this.delimiters = str2;
        this.peekPos = 0;
        this.nextPos = 0;
        this.currentPos = 0;
        this.maxPos = this.string.length();
    }

    private static String filterToken(String str, int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        boolean z = false;
        boolean z2 = false;
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt != '\n' || !z) {
                if (z2) {
                    stringBuffer.append(charAt);
                    z = false;
                    z2 = false;
                } else if (charAt == '\\') {
                    z = false;
                    z2 = true;
                } else if (charAt == '\r') {
                    z = true;
                } else {
                    stringBuffer.append(charAt);
                }
                i++;
            }
            z = false;
            i++;
        }
        return stringBuffer.toString();
    }

    private Token getNext() throws ParseException {
        char charAt;
        if (this.currentPos < this.maxPos && skipWhiteSpace() != -4) {
            boolean z = false;
            while (true) {
                char charAt2 = this.string.charAt(this.currentPos);
                if (charAt2 != '(') {
                    if (charAt2 == '\"') {
                        int i = this.currentPos + 1;
                        this.currentPos = i;
                        while (this.currentPos < this.maxPos) {
                            char charAt3 = this.string.charAt(this.currentPos);
                            if (charAt3 == '\\') {
                                this.currentPos++;
                            } else if (charAt3 != '\r') {
                                if (charAt3 == '\"') {
                                    this.currentPos++;
                                    return new Token(-2, z ? filterToken(this.string, i, this.currentPos - 1) : this.string.substring(i, this.currentPos - 1));
                                }
                                this.currentPos++;
                            }
                            z = true;
                            this.currentPos++;
                        }
                        throw new ParseException("Unbalanced quoted string");
                    }
                    if (charAt2 < ' ' || charAt2 >= 127 || this.delimiters.indexOf(charAt2) >= 0) {
                        this.currentPos++;
                        return new Token(charAt2, new String(new char[]{charAt2}));
                    }
                    int i2 = this.currentPos;
                    while (this.currentPos < this.maxPos && (charAt = this.string.charAt(this.currentPos)) >= ' ' && charAt < 127 && charAt != '(' && charAt != ' ' && charAt != '\"' && this.delimiters.indexOf(charAt) < 0) {
                        this.currentPos++;
                    }
                    return new Token(-1, this.string.substring(i2, this.currentPos));
                }
                int i3 = this.currentPos + 1;
                this.currentPos = i3;
                boolean z2 = z;
                int i4 = 1;
                while (i4 > 0 && this.currentPos < this.maxPos) {
                    char charAt4 = this.string.charAt(this.currentPos);
                    if (charAt4 == '\\') {
                        this.currentPos++;
                    } else if (charAt4 != '\r') {
                        if (charAt4 == '(') {
                            i4++;
                        } else if (charAt4 == ')') {
                            i4--;
                        }
                        this.currentPos++;
                    }
                    z2 = true;
                    this.currentPos++;
                }
                if (i4 != 0) {
                    throw new ParseException("Unbalanced comments");
                }
                if (!this.skipComments) {
                    return new Token(-3, z2 ? filterToken(this.string, i3, this.currentPos - 1) : this.string.substring(i3, this.currentPos - 1));
                }
                if (skipWhiteSpace() == -4) {
                    return EOFToken;
                }
                z = z2;
            }
        }
        return EOFToken;
    }

    private int skipWhiteSpace() {
        while (this.currentPos < this.maxPos) {
            char charAt = this.string.charAt(this.currentPos);
            if (charAt != ' ' && charAt != '\t' && charAt != '\r' && charAt != '\n') {
                return this.currentPos;
            }
            this.currentPos++;
        }
        return -4;
    }

    public String getRemainder() {
        return this.string.substring(this.nextPos);
    }

    public Token next() throws ParseException {
        this.currentPos = this.nextPos;
        Token next = getNext();
        int i = this.currentPos;
        this.peekPos = i;
        this.nextPos = i;
        return next;
    }

    public Token peek() throws ParseException {
        this.currentPos = this.peekPos;
        Token next = getNext();
        this.peekPos = this.currentPos;
        return next;
    }
}
