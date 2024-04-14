package com.google.protobuf;

import com.cyjh.common.util.C1176s;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.Message;
import com.google.protobuf.UnknownFieldSet;
import com.umeng.commonsdk.proguard.C2489bg;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public final class TextFormat {

    /* renamed from: $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type */
    private static /* synthetic */ int[] f7929x792aeea3 = null;
    private static final int BUFFER_SIZE = 4096;
    private static final Printer DEFAULT_PRINTER;
    private static final Printer SINGLE_LINE_PRINTER;
    private static final Printer UNICODE_PRINTER;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class InvalidEscapeSequenceException extends IOException {
        private static final long serialVersionUID = -8164033650142593304L;

        InvalidEscapeSequenceException(String str) {
            super(str);
        }
    }

    /* loaded from: classes.dex */
    public static class ParseException extends IOException {
        private static final long serialVersionUID = 3196188060225107702L;
        private final int column;
        private final int line;

        public ParseException(int i, int i2, String str) {
            super(String.valueOf(Integer.toString(i)) + ":" + i2 + ": " + str);
            this.line = i;
            this.column = i2;
        }

        public ParseException(String str) {
            this(-1, -1, str);
        }

        public int getColumn() {
            return this.column;
        }

        public int getLine() {
            return this.line;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class Printer {

        /* renamed from: $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type */
        private static /* synthetic */ int[] f7930x792aeea3;
        boolean escapeNonAscii;
        boolean singleLineMode;

        /* renamed from: $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type */
        static /* synthetic */ int[] m9302x792aeea3() {
            int[] iArr = f7930x792aeea3;
            if (iArr != null) {
                return iArr;
            }
            int[] iArr2 = new int[Descriptors.FieldDescriptor.Type.valuesCustom().length];
            try {
                iArr2[Descriptors.FieldDescriptor.Type.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 10;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.SFIXED32.ordinal()] = 15;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.SFIXED64.ordinal()] = 16;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.SINT32.ordinal()] = 17;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.SINT64.ordinal()] = 18;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr2[Descriptors.FieldDescriptor.Type.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused18) {
            }
            f7930x792aeea3 = iArr2;
            return iArr2;
        }

        private Printer() {
            this.singleLineMode = false;
            this.escapeNonAscii = true;
        }

        /* synthetic */ Printer(Printer printer) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void print(MessageOrBuilder messageOrBuilder, TextGenerator textGenerator) throws IOException {
            for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : messageOrBuilder.getAllFields().entrySet()) {
                printField(entry.getKey(), entry.getValue(), textGenerator);
            }
            printUnknownFields(messageOrBuilder.getUnknownFields(), textGenerator);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void printField(Descriptors.FieldDescriptor fieldDescriptor, Object obj, TextGenerator textGenerator) throws IOException {
            if (!fieldDescriptor.isRepeated()) {
                printSingleField(fieldDescriptor, obj, textGenerator);
                return;
            }
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                printSingleField(fieldDescriptor, it.next(), textGenerator);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000e. Please report as an issue. */
        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        public void printFieldValue(Descriptors.FieldDescriptor fieldDescriptor, Object obj, TextGenerator textGenerator) throws IOException {
            String d;
            String escapeText;
            switch (m9302x792aeea3()[fieldDescriptor.getType().ordinal()]) {
                case 1:
                    d = ((Double) obj).toString();
                    textGenerator.print(d);
                    return;
                case 2:
                    d = ((Float) obj).toString();
                    textGenerator.print(d);
                    return;
                case 3:
                case 16:
                case 18:
                    d = ((Long) obj).toString();
                    textGenerator.print(d);
                    return;
                case 4:
                case 6:
                    d = TextFormat.unsignedToString(((Long) obj).longValue());
                    textGenerator.print(d);
                    return;
                case 5:
                case 15:
                case 17:
                    d = ((Integer) obj).toString();
                    textGenerator.print(d);
                    return;
                case 7:
                case 13:
                    d = TextFormat.unsignedToString(((Integer) obj).intValue());
                    textGenerator.print(d);
                    return;
                case 8:
                    d = ((Boolean) obj).toString();
                    textGenerator.print(d);
                    return;
                case 9:
                    textGenerator.print("\"");
                    escapeText = this.escapeNonAscii ? TextFormat.escapeText((String) obj) : (String) obj;
                    textGenerator.print(escapeText);
                    d = "\"";
                    textGenerator.print(d);
                    return;
                case 10:
                case 11:
                    print((Message) obj, textGenerator);
                    return;
                case 12:
                    textGenerator.print("\"");
                    escapeText = TextFormat.escapeBytes((ByteString) obj);
                    textGenerator.print(escapeText);
                    d = "\"";
                    textGenerator.print(d);
                    return;
                case 14:
                    d = ((Descriptors.EnumValueDescriptor) obj).getName();
                    textGenerator.print(d);
                    return;
                default:
                    return;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0085  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0095  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private void printSingleField(com.google.protobuf.Descriptors.FieldDescriptor r3, java.lang.Object r4, com.google.protobuf.TextFormat.TextGenerator r5) throws java.io.IOException {
            /*
                r2 = this;
                boolean r0 = r3.isExtension()
                if (r0 == 0) goto L44
                java.lang.String r0 = "["
                r5.print(r0)
                com.google.protobuf.Descriptors$Descriptor r0 = r3.getContainingType()
                com.google.protobuf.DescriptorProtos$MessageOptions r0 = r0.getOptions()
                boolean r0 = r0.getMessageSetWireFormat()
                if (r0 == 0) goto L3a
                com.google.protobuf.Descriptors$FieldDescriptor$Type r0 = r3.getType()
                com.google.protobuf.Descriptors$FieldDescriptor$Type r1 = com.google.protobuf.Descriptors.FieldDescriptor.Type.MESSAGE
                if (r0 != r1) goto L3a
                boolean r0 = r3.isOptional()
                if (r0 == 0) goto L3a
                com.google.protobuf.Descriptors$Descriptor r0 = r3.getExtensionScope()
                com.google.protobuf.Descriptors$Descriptor r1 = r3.getMessageType()
                if (r0 != r1) goto L3a
                com.google.protobuf.Descriptors$Descriptor r0 = r3.getMessageType()
                java.lang.String r0 = r0.getFullName()
                goto L3e
            L3a:
                java.lang.String r0 = r3.getFullName()
            L3e:
                r5.print(r0)
                java.lang.String r0 = "]"
                goto L54
            L44:
                com.google.protobuf.Descriptors$FieldDescriptor$Type r0 = r3.getType()
                com.google.protobuf.Descriptors$FieldDescriptor$Type r1 = com.google.protobuf.Descriptors.FieldDescriptor.Type.GROUP
                if (r0 != r1) goto L58
                com.google.protobuf.Descriptors$Descriptor r0 = r3.getMessageType()
                java.lang.String r0 = r0.getName()
            L54:
                r5.print(r0)
                goto L5d
            L58:
                java.lang.String r0 = r3.getName()
                goto L54
            L5d:
                com.google.protobuf.Descriptors$FieldDescriptor$JavaType r0 = r3.getJavaType()
                com.google.protobuf.Descriptors$FieldDescriptor$JavaType r1 = com.google.protobuf.Descriptors.FieldDescriptor.JavaType.MESSAGE
                if (r0 != r1) goto L75
                boolean r0 = r2.singleLineMode
                if (r0 == 0) goto L6c
                java.lang.String r0 = " { "
                goto L77
            L6c:
                java.lang.String r0 = " {\n"
                r5.print(r0)
                r5.indent()
                goto L7a
            L75:
                java.lang.String r0 = ": "
            L77:
                r5.print(r0)
            L7a:
                r2.printFieldValue(r3, r4, r5)
                com.google.protobuf.Descriptors$FieldDescriptor$JavaType r3 = r3.getJavaType()
                com.google.protobuf.Descriptors$FieldDescriptor$JavaType r4 = com.google.protobuf.Descriptors.FieldDescriptor.JavaType.MESSAGE
                if (r3 != r4) goto L95
                boolean r3 = r2.singleLineMode
                if (r3 == 0) goto L8f
                java.lang.String r3 = "} "
            L8b:
                r5.print(r3)
                return
            L8f:
                r5.outdent()
                java.lang.String r3 = "}\n"
                goto L8b
            L95:
                boolean r3 = r2.singleLineMode
                if (r3 == 0) goto L9c
                java.lang.String r3 = " "
                goto L8b
            L9c:
                java.lang.String r3 = "\n"
                goto L8b
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.TextFormat.Printer.printSingleField(com.google.protobuf.Descriptors$FieldDescriptor, java.lang.Object, com.google.protobuf.TextFormat$TextGenerator):void");
        }

        private void printUnknownField(int i, int i2, List<?> list, TextGenerator textGenerator) throws IOException {
            for (Object obj : list) {
                textGenerator.print(String.valueOf(i));
                textGenerator.print(": ");
                TextFormat.printUnknownFieldValue(i2, obj, textGenerator);
                textGenerator.print(this.singleLineMode ? C1176s.a.f4108a : "\n");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void printUnknownFields(UnknownFieldSet unknownFieldSet, TextGenerator textGenerator) throws IOException {
            String str;
            for (Map.Entry<Integer, UnknownFieldSet.Field> entry : unknownFieldSet.asMap().entrySet()) {
                int intValue = entry.getKey().intValue();
                UnknownFieldSet.Field value = entry.getValue();
                printUnknownField(intValue, 0, value.getVarintList(), textGenerator);
                printUnknownField(intValue, 5, value.getFixed32List(), textGenerator);
                printUnknownField(intValue, 1, value.getFixed64List(), textGenerator);
                printUnknownField(intValue, 2, value.getLengthDelimitedList(), textGenerator);
                for (UnknownFieldSet unknownFieldSet2 : value.getGroupList()) {
                    textGenerator.print(entry.getKey().toString());
                    if (this.singleLineMode) {
                        textGenerator.print(" { ");
                    } else {
                        textGenerator.print(" {\n");
                        textGenerator.indent();
                    }
                    printUnknownFields(unknownFieldSet2, textGenerator);
                    if (this.singleLineMode) {
                        str = "} ";
                    } else {
                        textGenerator.outdent();
                        str = "}\n";
                    }
                    textGenerator.print(str);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Printer setEscapeNonAscii(boolean z) {
            this.escapeNonAscii = z;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Printer setSingleLineMode(boolean z) {
            this.singleLineMode = z;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class TextGenerator {
        private boolean atStartOfLine;
        private final StringBuilder indent;
        private final Appendable output;

        private TextGenerator(Appendable appendable) {
            this.indent = new StringBuilder();
            this.atStartOfLine = true;
            this.output = appendable;
        }

        /* synthetic */ TextGenerator(Appendable appendable, TextGenerator textGenerator) {
            this(appendable);
        }

        private void write(CharSequence charSequence, int i) throws IOException {
            if (i == 0) {
                return;
            }
            if (this.atStartOfLine) {
                this.atStartOfLine = false;
                this.output.append(this.indent);
            }
            this.output.append(charSequence);
        }

        public final void indent() {
            this.indent.append("  ");
        }

        public final void outdent() {
            int length = this.indent.length();
            if (length == 0) {
                throw new IllegalArgumentException(" Outdent() without matching Indent().");
            }
            this.indent.delete(length - 2, length);
        }

        public final void print(CharSequence charSequence) throws IOException {
            int length = charSequence.length();
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                if (charSequence.charAt(i2) == '\n') {
                    write(charSequence.subSequence(i, length), (i2 - i) + 1);
                    i = i2 + 1;
                    this.atStartOfLine = true;
                }
            }
            write(charSequence.subSequence(i, length), length - i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class Tokenizer {
        private int column;
        private String currentToken;
        private int line;
        private final Matcher matcher;
        private int pos;
        private int previousColumn;
        private int previousLine;
        private final CharSequence text;
        private static final Pattern WHITESPACE = Pattern.compile("(\\s|(#.*$))++", 8);
        private static final Pattern TOKEN = Pattern.compile("[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|'([^'\n\\\\]|\\\\.)*+('|\\\\?$)", 8);
        private static final Pattern DOUBLE_INFINITY = Pattern.compile("-?inf(inity)?", 2);
        private static final Pattern FLOAT_INFINITY = Pattern.compile("-?inf(inity)?f?", 2);
        private static final Pattern FLOAT_NAN = Pattern.compile("nanf?", 2);

        private Tokenizer(CharSequence charSequence) {
            this.pos = 0;
            this.line = 0;
            this.column = 0;
            this.previousLine = 0;
            this.previousColumn = 0;
            this.text = charSequence;
            this.matcher = WHITESPACE.matcher(charSequence);
            skipWhitespace();
            nextToken();
        }

        /* synthetic */ Tokenizer(CharSequence charSequence, Tokenizer tokenizer) {
            this(charSequence);
        }

        private void consumeByteString(List<ByteString> list) throws ParseException {
            char charAt = this.currentToken.length() > 0 ? this.currentToken.charAt(0) : (char) 0;
            if (charAt != '\"' && charAt != '\'') {
                throw parseException("Expected string.");
            }
            if (this.currentToken.length() < 2 || this.currentToken.charAt(this.currentToken.length() - 1) != charAt) {
                throw parseException("String missing ending quote.");
            }
            try {
                ByteString unescapeBytes = TextFormat.unescapeBytes(this.currentToken.substring(1, this.currentToken.length() - 1));
                nextToken();
                list.add(unescapeBytes);
            } catch (InvalidEscapeSequenceException e) {
                throw parseException(e.getMessage());
            }
        }

        private ParseException floatParseException(NumberFormatException numberFormatException) {
            return parseException("Couldn't parse number: " + numberFormatException.getMessage());
        }

        private ParseException integerParseException(NumberFormatException numberFormatException) {
            return parseException("Couldn't parse integer: " + numberFormatException.getMessage());
        }

        private void skipWhitespace() {
            this.matcher.usePattern(WHITESPACE);
            if (this.matcher.lookingAt()) {
                this.matcher.region(this.matcher.end(), this.matcher.regionEnd());
            }
        }

        public final boolean atEnd() {
            return this.currentToken.length() == 0;
        }

        public final void consume(String str) throws ParseException {
            if (tryConsume(str)) {
                return;
            }
            throw parseException("Expected \"" + str + "\".");
        }

        public final boolean consumeBoolean() throws ParseException {
            if (this.currentToken.equals("true") || this.currentToken.equals("t") || this.currentToken.equals("1")) {
                nextToken();
                return true;
            }
            if (!this.currentToken.equals("false") && !this.currentToken.equals("f") && !this.currentToken.equals("0")) {
                throw parseException("Expected \"true\" or \"false\".");
            }
            nextToken();
            return false;
        }

        public final ByteString consumeByteString() throws ParseException {
            ArrayList arrayList = new ArrayList();
            while (true) {
                consumeByteString(arrayList);
                if (!this.currentToken.startsWith("'") && !this.currentToken.startsWith("\"")) {
                    return ByteString.copyFrom(arrayList);
                }
            }
        }

        public final double consumeDouble() throws ParseException {
            if (DOUBLE_INFINITY.matcher(this.currentToken).matches()) {
                boolean startsWith = this.currentToken.startsWith("-");
                nextToken();
                return startsWith ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
            }
            if (this.currentToken.equalsIgnoreCase("nan")) {
                nextToken();
                return Double.NaN;
            }
            try {
                double parseDouble = Double.parseDouble(this.currentToken);
                nextToken();
                return parseDouble;
            } catch (NumberFormatException e) {
                throw floatParseException(e);
            }
        }

        public final float consumeFloat() throws ParseException {
            if (FLOAT_INFINITY.matcher(this.currentToken).matches()) {
                boolean startsWith = this.currentToken.startsWith("-");
                nextToken();
                return startsWith ? Float.NEGATIVE_INFINITY : Float.POSITIVE_INFINITY;
            }
            if (FLOAT_NAN.matcher(this.currentToken).matches()) {
                nextToken();
                return Float.NaN;
            }
            try {
                float parseFloat = Float.parseFloat(this.currentToken);
                nextToken();
                return parseFloat;
            } catch (NumberFormatException e) {
                throw floatParseException(e);
            }
        }

        public final String consumeIdentifier() throws ParseException {
            for (int i = 0; i < this.currentToken.length(); i++) {
                char charAt = this.currentToken.charAt(i);
                if (('a' > charAt || charAt > 'z') && (('A' > charAt || charAt > 'Z') && !(('0' <= charAt && charAt <= '9') || charAt == '_' || charAt == '.'))) {
                    throw parseException("Expected identifier.");
                }
            }
            String str = this.currentToken;
            nextToken();
            return str;
        }

        public final int consumeInt32() throws ParseException {
            try {
                int parseInt32 = TextFormat.parseInt32(this.currentToken);
                nextToken();
                return parseInt32;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public final long consumeInt64() throws ParseException {
            try {
                long parseInt64 = TextFormat.parseInt64(this.currentToken);
                nextToken();
                return parseInt64;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public final String consumeString() throws ParseException {
            return consumeByteString().toStringUtf8();
        }

        public final int consumeUInt32() throws ParseException {
            try {
                int parseUInt32 = TextFormat.parseUInt32(this.currentToken);
                nextToken();
                return parseUInt32;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public final long consumeUInt64() throws ParseException {
            try {
                long parseUInt64 = TextFormat.parseUInt64(this.currentToken);
                nextToken();
                return parseUInt64;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public final boolean lookingAtInteger() {
            if (this.currentToken.length() == 0) {
                return false;
            }
            char charAt = this.currentToken.charAt(0);
            return ('0' <= charAt && charAt <= '9') || charAt == '-' || charAt == '+';
        }

        public final void nextToken() {
            Matcher matcher;
            int i;
            int i2;
            this.previousLine = this.line;
            this.previousColumn = this.column;
            while (this.pos < this.matcher.regionStart()) {
                if (this.text.charAt(this.pos) == '\n') {
                    this.line++;
                    i2 = 0;
                } else {
                    i2 = this.column + 1;
                }
                this.column = i2;
                this.pos++;
            }
            if (this.matcher.regionStart() == this.matcher.regionEnd()) {
                this.currentToken = "";
                return;
            }
            this.matcher.usePattern(TOKEN);
            if (this.matcher.lookingAt()) {
                this.currentToken = this.matcher.group();
                matcher = this.matcher;
                i = this.matcher.end();
            } else {
                this.currentToken = String.valueOf(this.text.charAt(this.pos));
                matcher = this.matcher;
                i = this.pos + 1;
            }
            matcher.region(i, this.matcher.regionEnd());
            skipWhitespace();
        }

        public final ParseException parseException(String str) {
            return new ParseException(this.line + 1, this.column + 1, str);
        }

        public final ParseException parseExceptionPreviousToken(String str) {
            return new ParseException(this.previousLine + 1, this.previousColumn + 1, str);
        }

        public final boolean tryConsume(String str) {
            if (!this.currentToken.equals(str)) {
                return false;
            }
            nextToken();
            return true;
        }
    }

    /* renamed from: $SWITCH_TABLE$com$google$protobuf$Descriptors$FieldDescriptor$Type */
    static /* synthetic */ int[] m9301x792aeea3() {
        int[] iArr = f7929x792aeea3;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[Descriptors.FieldDescriptor.Type.valuesCustom().length];
        try {
            iArr2[Descriptors.FieldDescriptor.Type.BOOL.ordinal()] = 8;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.BYTES.ordinal()] = 12;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.DOUBLE.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 14;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.FIXED32.ordinal()] = 7;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.FIXED64.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.FLOAT.ordinal()] = 2;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 10;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.INT32.ordinal()] = 5;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.INT64.ordinal()] = 3;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 11;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.SFIXED32.ordinal()] = 15;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.SFIXED64.ordinal()] = 16;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.SINT32.ordinal()] = 17;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.SINT64.ordinal()] = 18;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.STRING.ordinal()] = 9;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.UINT32.ordinal()] = 13;
        } catch (NoSuchFieldError unused17) {
        }
        try {
            iArr2[Descriptors.FieldDescriptor.Type.UINT64.ordinal()] = 4;
        } catch (NoSuchFieldError unused18) {
        }
        f7929x792aeea3 = iArr2;
        return iArr2;
    }

    static {
        Printer printer = null;
        DEFAULT_PRINTER = new Printer(printer);
        SINGLE_LINE_PRINTER = new Printer(printer).setSingleLineMode(true);
        UNICODE_PRINTER = new Printer(printer).setEscapeNonAscii(false);
    }

    private TextFormat() {
    }

    private static int digitValue(byte b2) {
        if (48 > b2 || b2 > 57) {
            return ((97 > b2 || b2 > 122) ? b2 - 65 : b2 - 97) + 10;
        }
        return b2 - 48;
    }

    static String escapeBytes(ByteString byteString) {
        String str;
        StringBuilder sb = new StringBuilder(byteString.size());
        for (int i = 0; i < byteString.size(); i++) {
            int byteAt = byteString.byteAt(i);
            if (byteAt == 34) {
                str = "\\\"";
            } else if (byteAt == 39) {
                str = "\\'";
            } else if (byteAt != 92) {
                switch (byteAt) {
                    case 7:
                        str = "\\a";
                        break;
                    case 8:
                        str = "\\b";
                        break;
                    case 9:
                        str = "\\t";
                        break;
                    case 10:
                        str = "\\n";
                        break;
                    case 11:
                        str = "\\v";
                        break;
                    case 12:
                        str = "\\f";
                        break;
                    case 13:
                        str = "\\r";
                        break;
                    default:
                        if (byteAt < 32) {
                            sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                            sb.append((char) (((byteAt >>> 6) & 3) + 48));
                            sb.append((char) (((byteAt >>> 3) & 7) + 48));
                            byteAt = (byteAt & 7) + 48;
                        }
                        sb.append((char) byteAt);
                        continue;
                }
            } else {
                str = "\\\\";
            }
            sb.append(str);
        }
        return sb.toString();
    }

    static String escapeText(String str) {
        return escapeBytes(ByteString.copyFromUtf8(str));
    }

    private static boolean isHex(byte b2) {
        if (48 <= b2 && b2 <= 57) {
            return true;
        }
        if (97 > b2 || b2 > 102) {
            return 65 <= b2 && b2 <= 70;
        }
        return true;
    }

    private static boolean isOctal(byte b2) {
        return 48 <= b2 && b2 <= 55;
    }

    public static void merge(CharSequence charSequence, ExtensionRegistry extensionRegistry, Message.Builder builder) throws ParseException {
        Tokenizer tokenizer = new Tokenizer(charSequence, null);
        while (!tokenizer.atEnd()) {
            mergeField(tokenizer, extensionRegistry, builder);
        }
    }

    public static void merge(CharSequence charSequence, Message.Builder builder) throws ParseException {
        merge(charSequence, ExtensionRegistry.getEmptyRegistry(), builder);
    }

    public static void merge(Readable readable, ExtensionRegistry extensionRegistry, Message.Builder builder) throws IOException {
        merge(toStringBuilder(readable), extensionRegistry, builder);
    }

    public static void merge(Readable readable, Message.Builder builder) throws IOException {
        merge(readable, ExtensionRegistry.getEmptyRegistry(), builder);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:45:0x014e. Please report as an issue. */
    private static void mergeField(Tokenizer tokenizer, ExtensionRegistry extensionRegistry, Message.Builder builder) throws ParseException {
        Descriptors.FieldDescriptor fieldDescriptor;
        ExtensionRegistry.ExtensionInfo extensionInfo;
        long consumeInt64;
        int consumeInt32;
        String str;
        Descriptors.Descriptor descriptorForType = builder.getDescriptorForType();
        Object obj = null;
        if (tokenizer.tryConsume("[")) {
            StringBuilder sb = new StringBuilder(tokenizer.consumeIdentifier());
            while (tokenizer.tryConsume(".")) {
                sb.append(FilenameUtils.EXTENSION_SEPARATOR);
                sb.append(tokenizer.consumeIdentifier());
            }
            extensionInfo = extensionRegistry.findExtensionByName(sb.toString());
            if (extensionInfo == null) {
                throw tokenizer.parseExceptionPreviousToken("Extension \"" + ((Object) sb) + "\" not found in the ExtensionRegistry.");
            }
            if (extensionInfo.descriptor.getContainingType() != descriptorForType) {
                throw tokenizer.parseExceptionPreviousToken("Extension \"" + ((Object) sb) + "\" does not extend message type \"" + descriptorForType.getFullName() + "\".");
            }
            tokenizer.consume("]");
            fieldDescriptor = extensionInfo.descriptor;
        } else {
            String consumeIdentifier = tokenizer.consumeIdentifier();
            Descriptors.FieldDescriptor findFieldByName = descriptorForType.findFieldByName(consumeIdentifier);
            if (findFieldByName == null && (findFieldByName = descriptorForType.findFieldByName(consumeIdentifier.toLowerCase(Locale.US))) != null && findFieldByName.getType() != Descriptors.FieldDescriptor.Type.GROUP) {
                findFieldByName = null;
            }
            if (findFieldByName != null && findFieldByName.getType() == Descriptors.FieldDescriptor.Type.GROUP && !findFieldByName.getMessageType().getName().equals(consumeIdentifier)) {
                findFieldByName = null;
            }
            if (findFieldByName == null) {
                throw tokenizer.parseExceptionPreviousToken("Message type \"" + descriptorForType.getFullName() + "\" has no field named \"" + consumeIdentifier + "\".");
            }
            fieldDescriptor = findFieldByName;
            extensionInfo = null;
        }
        if (fieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
            tokenizer.consume(":");
            switch (m9301x792aeea3()[fieldDescriptor.getType().ordinal()]) {
                case 1:
                    obj = Double.valueOf(tokenizer.consumeDouble());
                    break;
                case 2:
                    obj = Float.valueOf(tokenizer.consumeFloat());
                    break;
                case 3:
                case 16:
                case 18:
                    consumeInt64 = tokenizer.consumeInt64();
                    obj = Long.valueOf(consumeInt64);
                    break;
                case 4:
                case 6:
                    consumeInt64 = tokenizer.consumeUInt64();
                    obj = Long.valueOf(consumeInt64);
                    break;
                case 5:
                case 15:
                case 17:
                    consumeInt32 = tokenizer.consumeInt32();
                    obj = Integer.valueOf(consumeInt32);
                    break;
                case 7:
                case 13:
                    consumeInt32 = tokenizer.consumeUInt32();
                    obj = Integer.valueOf(consumeInt32);
                    break;
                case 8:
                    obj = Boolean.valueOf(tokenizer.consumeBoolean());
                    break;
                case 9:
                    obj = tokenizer.consumeString();
                    break;
                case 10:
                case 11:
                    throw new RuntimeException("Can't get here.");
                case 12:
                    obj = tokenizer.consumeByteString();
                    break;
                case 14:
                    Descriptors.EnumDescriptor enumType = fieldDescriptor.getEnumType();
                    if (tokenizer.lookingAtInteger()) {
                        int consumeInt322 = tokenizer.consumeInt32();
                        obj = enumType.findValueByNumber(consumeInt322);
                        if (obj == null) {
                            throw tokenizer.parseExceptionPreviousToken("Enum type \"" + enumType.getFullName() + "\" has no value with number " + consumeInt322 + FilenameUtils.EXTENSION_SEPARATOR);
                        }
                    } else {
                        String consumeIdentifier2 = tokenizer.consumeIdentifier();
                        obj = enumType.findValueByName(consumeIdentifier2);
                        if (obj == null) {
                            throw tokenizer.parseExceptionPreviousToken("Enum type \"" + enumType.getFullName() + "\" has no value named \"" + consumeIdentifier2 + "\".");
                        }
                    }
                    break;
            }
        } else {
            tokenizer.tryConsume(":");
            if (tokenizer.tryConsume("<")) {
                str = ">";
            } else {
                tokenizer.consume("{");
                str = "}";
            }
            Message.Builder newBuilderForField = extensionInfo == null ? builder.newBuilderForField(fieldDescriptor) : extensionInfo.defaultInstance.newBuilderForType();
            while (!tokenizer.tryConsume(str)) {
                if (tokenizer.atEnd()) {
                    throw tokenizer.parseException("Expected \"" + str + "\".");
                }
                mergeField(tokenizer, extensionRegistry, newBuilderForField);
            }
            obj = newBuilderForField.buildPartial();
        }
        if (fieldDescriptor.isRepeated()) {
            builder.addRepeatedField(fieldDescriptor, obj);
        } else {
            builder.setField(fieldDescriptor, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int parseInt32(String str) throws NumberFormatException {
        return (int) parseInteger(str, true, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long parseInt64(String str) throws NumberFormatException {
        return parseInteger(str, true, true);
    }

    private static long parseInteger(String str, boolean z, boolean z2) throws NumberFormatException {
        int i = 0;
        boolean z3 = true;
        if (!str.startsWith("-", 0)) {
            z3 = false;
        } else {
            if (!z) {
                throw new NumberFormatException("Number must be positive: " + str);
            }
            i = 1;
        }
        int i2 = 10;
        if (str.startsWith("0x", i)) {
            i += 2;
            i2 = 16;
        } else if (str.startsWith("0", i)) {
            i2 = 8;
        }
        String substring = str.substring(i);
        if (substring.length() < 16) {
            long parseLong = Long.parseLong(substring, i2);
            if (z3) {
                parseLong = -parseLong;
            }
            if (z2) {
                return parseLong;
            }
            if (z) {
                if (parseLong <= 2147483647L && parseLong >= -2147483648L) {
                    return parseLong;
                }
                throw new NumberFormatException("Number out of range for 32-bit signed integer: " + str);
            }
            if (parseLong < 4294967296L && parseLong >= 0) {
                return parseLong;
            }
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + str);
        }
        BigInteger bigInteger = new BigInteger(substring, i2);
        if (z3) {
            bigInteger = bigInteger.negate();
        }
        if (z2) {
            if (z) {
                if (bigInteger.bitLength() > 63) {
                    throw new NumberFormatException("Number out of range for 64-bit signed integer: " + str);
                }
            } else if (bigInteger.bitLength() > 64) {
                throw new NumberFormatException("Number out of range for 64-bit unsigned integer: " + str);
            }
        } else if (z) {
            if (bigInteger.bitLength() > 31) {
                throw new NumberFormatException("Number out of range for 32-bit signed integer: " + str);
            }
        } else if (bigInteger.bitLength() > 32) {
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + str);
        }
        return bigInteger.longValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int parseUInt32(String str) throws NumberFormatException {
        return (int) parseInteger(str, false, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long parseUInt64(String str) throws NumberFormatException {
        return parseInteger(str, false, true);
    }

    public static void print(MessageOrBuilder messageOrBuilder, Appendable appendable) throws IOException {
        DEFAULT_PRINTER.print(messageOrBuilder, new TextGenerator(appendable, null));
    }

    public static void print(UnknownFieldSet unknownFieldSet, Appendable appendable) throws IOException {
        DEFAULT_PRINTER.printUnknownFields(unknownFieldSet, new TextGenerator(appendable, null));
    }

    public static void printField(Descriptors.FieldDescriptor fieldDescriptor, Object obj, Appendable appendable) throws IOException {
        DEFAULT_PRINTER.printField(fieldDescriptor, obj, new TextGenerator(appendable, null));
    }

    public static String printFieldToString(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
        try {
            StringBuilder sb = new StringBuilder();
            printField(fieldDescriptor, obj, sb);
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static void printFieldValue(Descriptors.FieldDescriptor fieldDescriptor, Object obj, Appendable appendable) throws IOException {
        DEFAULT_PRINTER.printFieldValue(fieldDescriptor, obj, new TextGenerator(appendable, null));
    }

    public static String printToString(MessageOrBuilder messageOrBuilder) {
        try {
            StringBuilder sb = new StringBuilder();
            print(messageOrBuilder, sb);
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String printToString(UnknownFieldSet unknownFieldSet) {
        try {
            StringBuilder sb = new StringBuilder();
            print(unknownFieldSet, sb);
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String printToUnicodeString(MessageOrBuilder messageOrBuilder) {
        try {
            StringBuilder sb = new StringBuilder();
            UNICODE_PRINTER.print(messageOrBuilder, new TextGenerator(sb, null));
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String printToUnicodeString(UnknownFieldSet unknownFieldSet) {
        try {
            StringBuilder sb = new StringBuilder();
            UNICODE_PRINTER.printUnknownFields(unknownFieldSet, new TextGenerator(sb, null));
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void printUnknownFieldValue(int i, Object obj, TextGenerator textGenerator) throws IOException {
        int tagWireType = WireFormat.getTagWireType(i);
        if (tagWireType == 5) {
            textGenerator.print(String.format(null, "0x%08x", (Integer) obj));
            return;
        }
        switch (tagWireType) {
            case 0:
                textGenerator.print(unsignedToString(((Long) obj).longValue()));
                return;
            case 1:
                textGenerator.print(String.format(null, "0x%016x", (Long) obj));
                return;
            case 2:
                textGenerator.print("\"");
                textGenerator.print(escapeBytes((ByteString) obj));
                textGenerator.print("\"");
                return;
            case 3:
                DEFAULT_PRINTER.printUnknownFields((UnknownFieldSet) obj, textGenerator);
                return;
            default:
                throw new IllegalArgumentException("Bad tag: " + i);
        }
    }

    public static void printUnknownFieldValue(int i, Object obj, Appendable appendable) throws IOException {
        printUnknownFieldValue(i, obj, new TextGenerator(appendable, null));
    }

    public static String shortDebugString(MessageOrBuilder messageOrBuilder) {
        try {
            StringBuilder sb = new StringBuilder();
            SINGLE_LINE_PRINTER.print(messageOrBuilder, new TextGenerator(sb, null));
            return sb.toString().trim();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String shortDebugString(UnknownFieldSet unknownFieldSet) {
        try {
            StringBuilder sb = new StringBuilder();
            SINGLE_LINE_PRINTER.printUnknownFields(unknownFieldSet, new TextGenerator(sb, null));
            return sb.toString().trim();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    private static StringBuilder toStringBuilder(Readable readable) throws IOException {
        StringBuilder sb = new StringBuilder();
        CharBuffer allocate = CharBuffer.allocate(4096);
        while (true) {
            int read = readable.read(allocate);
            if (read == -1) {
                return sb;
            }
            allocate.flip();
            sb.append((CharSequence) allocate, 0, read);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteString unescapeBytes(CharSequence charSequence) throws InvalidEscapeSequenceException {
        int i;
        int i2;
        ByteString copyFromUtf8 = ByteString.copyFromUtf8(charSequence.toString());
        byte[] bArr = new byte[copyFromUtf8.size()];
        int i3 = 0;
        int i4 = 0;
        while (i3 < copyFromUtf8.size()) {
            byte byteAt = copyFromUtf8.byteAt(i3);
            if (byteAt == 92) {
                i3++;
                if (i3 >= copyFromUtf8.size()) {
                    throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\' at end of string.");
                }
                byte byteAt2 = copyFromUtf8.byteAt(i3);
                if (isOctal(byteAt2)) {
                    int digitValue = digitValue(byteAt2);
                    int i5 = i3 + 1;
                    if (i5 < copyFromUtf8.size() && isOctal(copyFromUtf8.byteAt(i5))) {
                        digitValue = (digitValue * 8) + digitValue(copyFromUtf8.byteAt(i5));
                        i3 = i5;
                    }
                    int i6 = i3 + 1;
                    if (i6 < copyFromUtf8.size() && isOctal(copyFromUtf8.byteAt(i6))) {
                        digitValue = (digitValue * 8) + digitValue(copyFromUtf8.byteAt(i6));
                        i3 = i6;
                    }
                    i = i4 + 1;
                    bArr[i4] = (byte) digitValue;
                } else {
                    if (byteAt2 == 34) {
                        i2 = i4 + 1;
                        bArr[i4] = 34;
                    } else if (byteAt2 == 39) {
                        i2 = i4 + 1;
                        bArr[i4] = 39;
                    } else if (byteAt2 == 92) {
                        i2 = i4 + 1;
                        bArr[i4] = 92;
                    } else if (byteAt2 == 102) {
                        i2 = i4 + 1;
                        bArr[i4] = 12;
                    } else if (byteAt2 == 110) {
                        i2 = i4 + 1;
                        bArr[i4] = 10;
                    } else if (byteAt2 == 114) {
                        i2 = i4 + 1;
                        bArr[i4] = C2489bg.f9368k;
                    } else if (byteAt2 == 116) {
                        i2 = i4 + 1;
                        bArr[i4] = 9;
                    } else if (byteAt2 == 118) {
                        i2 = i4 + 1;
                        bArr[i4] = 11;
                    } else if (byteAt2 != 120) {
                        switch (byteAt2) {
                            case 97:
                                i2 = i4 + 1;
                                bArr[i4] = 7;
                                break;
                            case 98:
                                i2 = i4 + 1;
                                bArr[i4] = 8;
                                break;
                            default:
                                throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\" + ((char) byteAt2) + '\'');
                        }
                    } else {
                        i3++;
                        if (i3 >= copyFromUtf8.size() || !isHex(copyFromUtf8.byteAt(i3))) {
                            throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\x' with no digits");
                        }
                        int digitValue2 = digitValue(copyFromUtf8.byteAt(i3));
                        int i7 = i3 + 1;
                        if (i7 < copyFromUtf8.size() && isHex(copyFromUtf8.byteAt(i7))) {
                            digitValue2 = (digitValue2 * 16) + digitValue(copyFromUtf8.byteAt(i7));
                            i3 = i7;
                        }
                        i = i4 + 1;
                        bArr[i4] = (byte) digitValue2;
                    }
                    i4 = i2;
                    i3++;
                }
            } else {
                i = i4 + 1;
                bArr[i4] = byteAt;
            }
            i4 = i;
            i3++;
        }
        return ByteString.copyFrom(bArr, 0, i4);
    }

    static String unescapeText(String str) throws InvalidEscapeSequenceException {
        return unescapeBytes(str).toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String unsignedToString(int i) {
        return i >= 0 ? Integer.toString(i) : Long.toString(i & 4294967295L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String unsignedToString(long j) {
        return j >= 0 ? Long.toString(j) : BigInteger.valueOf(j & Long.MAX_VALUE).setBit(63).toString();
    }
}
