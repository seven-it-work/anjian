package javax.mail.internet;

/* loaded from: classes.dex */
class MailDateParser {
    int index = 0;
    char[] orig;

    public MailDateParser(char[] cArr) {
        this.orig = null;
        this.orig = cArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getIndex() {
        return this.index;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0010. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int parseAlphaTimeZone() throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 254
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.MailDateParser.parseAlphaTimeZone():int");
    }

    public int parseMonth() throws java.text.ParseException {
        try {
            char[] cArr = this.orig;
            int i = this.index;
            this.index = i + 1;
            switch (cArr[i]) {
                case 'A':
                case 'a':
                    char[] cArr2 = this.orig;
                    int i2 = this.index;
                    this.index = i2 + 1;
                    char c2 = cArr2[i2];
                    if (c2 != 'P' && c2 != 'p') {
                        if (c2 == 'U' || c2 == 'u') {
                            char[] cArr3 = this.orig;
                            int i3 = this.index;
                            this.index = i3 + 1;
                            char c3 = cArr3[i3];
                            if (c3 == 'G' || c3 == 'g') {
                                return 7;
                            }
                        }
                    }
                    char[] cArr4 = this.orig;
                    int i4 = this.index;
                    this.index = i4 + 1;
                    char c4 = cArr4[i4];
                    if (c4 == 'R' || c4 == 'r') {
                        return 3;
                    }
                    break;
                case 'D':
                case 'd':
                    char[] cArr5 = this.orig;
                    int i5 = this.index;
                    this.index = i5 + 1;
                    char c5 = cArr5[i5];
                    if (c5 == 'E' || c5 == 'e') {
                        char[] cArr6 = this.orig;
                        int i6 = this.index;
                        this.index = i6 + 1;
                        char c6 = cArr6[i6];
                        if (c6 == 'C' || c6 == 'c') {
                            return 11;
                        }
                    }
                    break;
                case 'F':
                case 'f':
                    char[] cArr7 = this.orig;
                    int i7 = this.index;
                    this.index = i7 + 1;
                    char c7 = cArr7[i7];
                    if (c7 == 'E' || c7 == 'e') {
                        char[] cArr8 = this.orig;
                        int i8 = this.index;
                        this.index = i8 + 1;
                        char c8 = cArr8[i8];
                        if (c8 == 'B' || c8 == 'b') {
                            return 1;
                        }
                    }
                    break;
                case 'J':
                case 'j':
                    char[] cArr9 = this.orig;
                    int i9 = this.index;
                    this.index = i9 + 1;
                    char c9 = cArr9[i9];
                    if (c9 != 'A') {
                        if (c9 != 'U') {
                            if (c9 != 'a') {
                                if (c9 != 'u') {
                                    break;
                                }
                            }
                        }
                        char[] cArr10 = this.orig;
                        int i10 = this.index;
                        this.index = i10 + 1;
                        char c10 = cArr10[i10];
                        if (c10 != 'N' && c10 != 'n') {
                            if (c10 == 'L' || c10 == 'l') {
                                return 6;
                            }
                        }
                        return 5;
                    }
                    char[] cArr11 = this.orig;
                    int i11 = this.index;
                    this.index = i11 + 1;
                    char c11 = cArr11[i11];
                    if (c11 == 'N' || c11 == 'n') {
                        return 0;
                    }
                    break;
                case 'M':
                case 'm':
                    char[] cArr12 = this.orig;
                    int i12 = this.index;
                    this.index = i12 + 1;
                    char c12 = cArr12[i12];
                    if (c12 == 'A' || c12 == 'a') {
                        char[] cArr13 = this.orig;
                        int i13 = this.index;
                        this.index = i13 + 1;
                        char c13 = cArr13[i13];
                        if (c13 != 'R' && c13 != 'r') {
                            if (c13 == 'Y' || c13 == 'y') {
                                return 4;
                            }
                        }
                        return 2;
                    }
                    break;
                case 'N':
                case 'n':
                    char[] cArr14 = this.orig;
                    int i14 = this.index;
                    this.index = i14 + 1;
                    char c14 = cArr14[i14];
                    if (c14 == 'O' || c14 == 'o') {
                        char[] cArr15 = this.orig;
                        int i15 = this.index;
                        this.index = i15 + 1;
                        char c15 = cArr15[i15];
                        if (c15 == 'V' || c15 == 'v') {
                            return 10;
                        }
                    }
                    break;
                case 'O':
                case 'o':
                    char[] cArr16 = this.orig;
                    int i16 = this.index;
                    this.index = i16 + 1;
                    char c16 = cArr16[i16];
                    if (c16 == 'C' || c16 == 'c') {
                        char[] cArr17 = this.orig;
                        int i17 = this.index;
                        this.index = i17 + 1;
                        char c17 = cArr17[i17];
                        if (c17 == 'T' || c17 == 't') {
                            return 9;
                        }
                    }
                    break;
                case 'S':
                case 's':
                    char[] cArr18 = this.orig;
                    int i18 = this.index;
                    this.index = i18 + 1;
                    char c18 = cArr18[i18];
                    if (c18 == 'E' || c18 == 'e') {
                        char[] cArr19 = this.orig;
                        int i19 = this.index;
                        this.index = i19 + 1;
                        char c19 = cArr19[i19];
                        if (c19 == 'P' || c19 == 'p') {
                            return 8;
                        }
                    }
                    break;
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
        }
        throw new java.text.ParseException("Bad Month", this.index);
    }

    public int parseNumber() throws java.text.ParseException {
        int length = this.orig.length;
        boolean z = false;
        int i = 0;
        while (this.index < length) {
            switch (this.orig[this.index]) {
                case '0':
                    i *= 10;
                    break;
                case '1':
                    i = (i * 10) + 1;
                    break;
                case '2':
                    i = (i * 10) + 2;
                    break;
                case '3':
                    i = (i * 10) + 3;
                    break;
                case '4':
                    i = (i * 10) + 4;
                    break;
                case '5':
                    i = (i * 10) + 5;
                    break;
                case '6':
                    i = (i * 10) + 6;
                    break;
                case '7':
                    i = (i * 10) + 7;
                    break;
                case '8':
                    i = (i * 10) + 8;
                    break;
                case '9':
                    i = (i * 10) + 9;
                    break;
                default:
                    if (z) {
                        return i;
                    }
                    throw new java.text.ParseException("No Number found", this.index);
            }
            this.index++;
            z = true;
        }
        if (z) {
            return i;
        }
        throw new java.text.ParseException("No Number found", this.index);
    }

    public int parseNumericTimeZone() throws java.text.ParseException {
        boolean z;
        char[] cArr = this.orig;
        int i = this.index;
        this.index = i + 1;
        char c2 = cArr[i];
        if (c2 == '+') {
            z = true;
        } else {
            if (c2 != '-') {
                throw new java.text.ParseException("Bad Numeric TimeZone", this.index);
            }
            z = false;
        }
        int parseNumber = parseNumber();
        int i2 = ((parseNumber / 100) * 60) + (parseNumber % 100);
        return z ? -i2 : i2;
    }

    public int parseTimeZone() throws java.text.ParseException {
        if (this.index >= this.orig.length) {
            throw new java.text.ParseException("No more characters", this.index);
        }
        char c2 = this.orig[this.index];
        return (c2 == '+' || c2 == '-') ? parseNumericTimeZone() : parseAlphaTimeZone();
    }

    public int peekChar() throws java.text.ParseException {
        if (this.index < this.orig.length) {
            return this.orig[this.index];
        }
        throw new java.text.ParseException("No more characters", this.index);
    }

    public void skipChar(char c2) throws java.text.ParseException {
        if (this.index >= this.orig.length) {
            throw new java.text.ParseException("No more characters", this.index);
        }
        if (this.orig[this.index] != c2) {
            throw new java.text.ParseException("Wrong char", this.index);
        }
        this.index++;
    }

    public boolean skipIfChar(char c2) throws java.text.ParseException {
        if (this.index >= this.orig.length) {
            throw new java.text.ParseException("No more characters", this.index);
        }
        if (this.orig[this.index] != c2) {
            return false;
        }
        this.index++;
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0006. Please report as an issue. */
    public void skipUntilNumber() throws java.text.ParseException {
        while (true) {
            try {
                switch (this.orig[this.index]) {
                    case '0':
                    case '1':
                    case '2':
                    case '3':
                    case '4':
                    case '5':
                    case '6':
                    case '7':
                    case '8':
                    case '9':
                        return;
                    default:
                        this.index++;
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new java.text.ParseException("No Number Found", this.index);
            }
        }
    }

    public void skipWhiteSpace() {
        int length = this.orig.length;
        while (this.index < length) {
            char c2 = this.orig[this.index];
            if (c2 != '\r' && c2 != ' ') {
                switch (c2) {
                    case '\t':
                    case '\n':
                        break;
                    default:
                        return;
                }
            }
            this.index++;
        }
    }
}
