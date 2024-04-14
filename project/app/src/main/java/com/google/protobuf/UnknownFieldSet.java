package com.google.protobuf;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLite;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class UnknownFieldSet implements MessageLite {
    private Map<Integer, Field> fields;
    private static final UnknownFieldSet defaultInstance = new UnknownFieldSet(Collections.emptyMap());
    private static final Parser PARSER = new Parser();

    /* loaded from: classes.dex */
    public static final class Builder implements MessageLite.Builder {
        private Map<Integer, Field> fields;
        private Field.Builder lastField;
        private int lastFieldNumber;

        private Builder() {
        }

        static /* synthetic */ Builder access$16() {
            return create();
        }

        private static Builder create() {
            Builder builder = new Builder();
            builder.reinitialize();
            return builder;
        }

        private Field.Builder getFieldBuilder(int i) {
            if (this.lastField != null) {
                if (i == this.lastFieldNumber) {
                    return this.lastField;
                }
                addField(this.lastFieldNumber, this.lastField.build());
            }
            if (i == 0) {
                return null;
            }
            Field field = this.fields.get(Integer.valueOf(i));
            this.lastFieldNumber = i;
            this.lastField = Field.newBuilder();
            if (field != null) {
                this.lastField.mergeFrom(field);
            }
            return this.lastField;
        }

        private void reinitialize() {
            this.fields = Collections.emptyMap();
            this.lastFieldNumber = 0;
            this.lastField = null;
        }

        public final Builder addField(int i, Field field) {
            if (i == 0) {
                throw new IllegalArgumentException("Zero is not a valid field number.");
            }
            if (this.lastField != null && this.lastFieldNumber == i) {
                this.lastField = null;
                this.lastFieldNumber = 0;
            }
            if (this.fields.isEmpty()) {
                this.fields = new TreeMap();
            }
            this.fields.put(Integer.valueOf(i), field);
            return this;
        }

        public final Map<Integer, Field> asMap() {
            getFieldBuilder(0);
            return Collections.unmodifiableMap(this.fields);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final UnknownFieldSet build() {
            getFieldBuilder(0);
            UnknownFieldSet defaultInstance = this.fields.isEmpty() ? UnknownFieldSet.getDefaultInstance() : new UnknownFieldSet(Collections.unmodifiableMap(this.fields), null);
            this.fields = null;
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final UnknownFieldSet buildPartial() {
            return build();
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final Builder clear() {
            reinitialize();
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public final Builder m13992clone() {
            getFieldBuilder(0);
            return UnknownFieldSet.newBuilder().mergeFrom(new UnknownFieldSet(this.fields, null));
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getDefaultInstanceForType() {
            return UnknownFieldSet.getDefaultInstance();
        }

        public final boolean hasField(int i) {
            if (i == 0) {
                throw new IllegalArgumentException("Zero is not a valid field number.");
            }
            return i == this.lastFieldNumber || this.fields.containsKey(Integer.valueOf(i));
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final boolean mergeDelimitedFrom(InputStream inputStream) throws IOException {
            int read = inputStream.read();
            if (read == -1) {
                return false;
            }
            mergeFrom((InputStream) new AbstractMessageLite.Builder.LimitedInputStream(inputStream, CodedInputStream.readRawVarint32(read, inputStream)));
            return true;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final boolean mergeDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return mergeDelimitedFrom(inputStream);
        }

        public final Builder mergeField(int i, Field field) {
            if (i == 0) {
                throw new IllegalArgumentException("Zero is not a valid field number.");
            }
            if (hasField(i)) {
                getFieldBuilder(i).mergeFrom(field);
                return this;
            }
            addField(i, field);
            return this;
        }

        public final boolean mergeFieldFrom(int i, CodedInputStream codedInputStream) throws IOException {
            int tagFieldNumber = WireFormat.getTagFieldNumber(i);
            switch (WireFormat.getTagWireType(i)) {
                case 0:
                    getFieldBuilder(tagFieldNumber).addVarint(codedInputStream.readInt64());
                    return true;
                case 1:
                    getFieldBuilder(tagFieldNumber).addFixed64(codedInputStream.readFixed64());
                    return true;
                case 2:
                    getFieldBuilder(tagFieldNumber).addLengthDelimited(codedInputStream.readBytes());
                    return true;
                case 3:
                    Builder newBuilder = UnknownFieldSet.newBuilder();
                    codedInputStream.readGroup(tagFieldNumber, newBuilder, ExtensionRegistry.getEmptyRegistry());
                    getFieldBuilder(tagFieldNumber).addGroup(newBuilder.build());
                    return true;
                case 4:
                    return false;
                case 5:
                    getFieldBuilder(tagFieldNumber).addFixed32(codedInputStream.readFixed32());
                    return true;
                default:
                    throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final Builder mergeFrom(ByteString byteString) throws InvalidProtocolBufferException {
            try {
                CodedInputStream newCodedInput = byteString.newCodedInput();
                mergeFrom(newCodedInput);
                newCodedInput.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from a ByteString threw an IOException (should never happen).", e2);
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final Builder mergeFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return mergeFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final Builder mergeFrom(CodedInputStream codedInputStream) throws IOException {
            int readTag;
            do {
                readTag = codedInputStream.readTag();
                if (readTag == 0) {
                    break;
                }
            } while (mergeFieldFrom(readTag, codedInputStream));
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return mergeFrom(codedInputStream);
        }

        public final Builder mergeFrom(UnknownFieldSet unknownFieldSet) {
            if (unknownFieldSet == UnknownFieldSet.getDefaultInstance()) {
                return this;
            }
            for (Map.Entry entry : unknownFieldSet.fields.entrySet()) {
                mergeField(((Integer) entry.getKey()).intValue(), (Field) entry.getValue());
            }
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final Builder mergeFrom(InputStream inputStream) throws IOException {
            CodedInputStream newInstance = CodedInputStream.newInstance(inputStream);
            mergeFrom(newInstance);
            newInstance.checkLastTagWas(0);
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final Builder mergeFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return mergeFrom(inputStream);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final Builder mergeFrom(byte[] bArr) throws InvalidProtocolBufferException {
            try {
                CodedInputStream newInstance = CodedInputStream.newInstance(bArr);
                mergeFrom(newInstance);
                newInstance.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e2);
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final Builder mergeFrom(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException {
            try {
                CodedInputStream newInstance = CodedInputStream.newInstance(bArr, i, i2);
                mergeFrom(newInstance);
                newInstance.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e2);
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final Builder mergeFrom(byte[] bArr, int i, int i2, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return mergeFrom(bArr, i, i2);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final Builder mergeFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return mergeFrom(bArr);
        }

        public final Builder mergeVarintField(int i, int i2) {
            if (i == 0) {
                throw new IllegalArgumentException("Zero is not a valid field number.");
            }
            getFieldBuilder(i).addVarint(i2);
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static final class Field {
        private static final Field fieldDefaultInstance = newBuilder().build();
        private List<Integer> fixed32;
        private List<Long> fixed64;
        private List<UnknownFieldSet> group;
        private List<ByteString> lengthDelimited;
        private List<Long> varint;

        /* loaded from: classes.dex */
        public static final class Builder {
            private Field result;

            private Builder() {
            }

            static /* synthetic */ Builder access$0() {
                return create();
            }

            private static Builder create() {
                Builder builder = new Builder();
                builder.result = new Field(null);
                return builder;
            }

            public final Builder addFixed32(int i) {
                if (this.result.fixed32 == null) {
                    this.result.fixed32 = new ArrayList();
                }
                this.result.fixed32.add(Integer.valueOf(i));
                return this;
            }

            public final Builder addFixed64(long j) {
                if (this.result.fixed64 == null) {
                    this.result.fixed64 = new ArrayList();
                }
                this.result.fixed64.add(Long.valueOf(j));
                return this;
            }

            public final Builder addGroup(UnknownFieldSet unknownFieldSet) {
                if (this.result.group == null) {
                    this.result.group = new ArrayList();
                }
                this.result.group.add(unknownFieldSet);
                return this;
            }

            public final Builder addLengthDelimited(ByteString byteString) {
                if (this.result.lengthDelimited == null) {
                    this.result.lengthDelimited = new ArrayList();
                }
                this.result.lengthDelimited.add(byteString);
                return this;
            }

            public final Builder addVarint(long j) {
                if (this.result.varint == null) {
                    this.result.varint = new ArrayList();
                }
                this.result.varint.add(Long.valueOf(j));
                return this;
            }

            public final Field build() {
                Field field;
                List unmodifiableList;
                Field field2;
                List unmodifiableList2;
                Field field3;
                List unmodifiableList3;
                Field field4;
                List unmodifiableList4;
                Field field5;
                List unmodifiableList5;
                if (this.result.varint == null) {
                    field = this.result;
                    unmodifiableList = Collections.emptyList();
                } else {
                    field = this.result;
                    unmodifiableList = Collections.unmodifiableList(this.result.varint);
                }
                field.varint = unmodifiableList;
                if (this.result.fixed32 == null) {
                    field2 = this.result;
                    unmodifiableList2 = Collections.emptyList();
                } else {
                    field2 = this.result;
                    unmodifiableList2 = Collections.unmodifiableList(this.result.fixed32);
                }
                field2.fixed32 = unmodifiableList2;
                if (this.result.fixed64 == null) {
                    field3 = this.result;
                    unmodifiableList3 = Collections.emptyList();
                } else {
                    field3 = this.result;
                    unmodifiableList3 = Collections.unmodifiableList(this.result.fixed64);
                }
                field3.fixed64 = unmodifiableList3;
                if (this.result.lengthDelimited == null) {
                    field4 = this.result;
                    unmodifiableList4 = Collections.emptyList();
                } else {
                    field4 = this.result;
                    unmodifiableList4 = Collections.unmodifiableList(this.result.lengthDelimited);
                }
                field4.lengthDelimited = unmodifiableList4;
                if (this.result.group == null) {
                    field5 = this.result;
                    unmodifiableList5 = Collections.emptyList();
                } else {
                    field5 = this.result;
                    unmodifiableList5 = Collections.unmodifiableList(this.result.group);
                }
                field5.group = unmodifiableList5;
                Field field6 = this.result;
                this.result = null;
                return field6;
            }

            public final Builder clear() {
                this.result = new Field(null);
                return this;
            }

            public final Builder mergeFrom(Field field) {
                if (!field.varint.isEmpty()) {
                    if (this.result.varint == null) {
                        this.result.varint = new ArrayList();
                    }
                    this.result.varint.addAll(field.varint);
                }
                if (!field.fixed32.isEmpty()) {
                    if (this.result.fixed32 == null) {
                        this.result.fixed32 = new ArrayList();
                    }
                    this.result.fixed32.addAll(field.fixed32);
                }
                if (!field.fixed64.isEmpty()) {
                    if (this.result.fixed64 == null) {
                        this.result.fixed64 = new ArrayList();
                    }
                    this.result.fixed64.addAll(field.fixed64);
                }
                if (!field.lengthDelimited.isEmpty()) {
                    if (this.result.lengthDelimited == null) {
                        this.result.lengthDelimited = new ArrayList();
                    }
                    this.result.lengthDelimited.addAll(field.lengthDelimited);
                }
                if (!field.group.isEmpty()) {
                    if (this.result.group == null) {
                        this.result.group = new ArrayList();
                    }
                    this.result.group.addAll(field.group);
                }
                return this;
            }
        }

        private Field() {
        }

        /* synthetic */ Field(Field field) {
            this();
        }

        public static Field getDefaultInstance() {
            return fieldDefaultInstance;
        }

        private Object[] getIdentityArray() {
            return new Object[]{this.varint, this.fixed32, this.fixed64, this.lengthDelimited, this.group};
        }

        public static Builder newBuilder() {
            return Builder.access$0();
        }

        public static Builder newBuilder(Field field) {
            return newBuilder().mergeFrom(field);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Field) {
                return Arrays.equals(getIdentityArray(), ((Field) obj).getIdentityArray());
            }
            return false;
        }

        public final List<Integer> getFixed32List() {
            return this.fixed32;
        }

        public final List<Long> getFixed64List() {
            return this.fixed64;
        }

        public final List<UnknownFieldSet> getGroupList() {
            return this.group;
        }

        public final List<ByteString> getLengthDelimitedList() {
            return this.lengthDelimited;
        }

        public final int getSerializedSize(int i) {
            Iterator<Long> it = this.varint.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                i2 += CodedOutputStream.computeUInt64Size(i, it.next().longValue());
            }
            Iterator<Integer> it2 = this.fixed32.iterator();
            while (it2.hasNext()) {
                i2 += CodedOutputStream.computeFixed32Size(i, it2.next().intValue());
            }
            Iterator<Long> it3 = this.fixed64.iterator();
            while (it3.hasNext()) {
                i2 += CodedOutputStream.computeFixed64Size(i, it3.next().longValue());
            }
            Iterator<ByteString> it4 = this.lengthDelimited.iterator();
            while (it4.hasNext()) {
                i2 += CodedOutputStream.computeBytesSize(i, it4.next());
            }
            Iterator<UnknownFieldSet> it5 = this.group.iterator();
            while (it5.hasNext()) {
                i2 += CodedOutputStream.computeGroupSize(i, it5.next());
            }
            return i2;
        }

        public final int getSerializedSizeAsMessageSetExtension(int i) {
            Iterator<ByteString> it = this.lengthDelimited.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                i2 += CodedOutputStream.computeRawMessageSetExtensionSize(i, it.next());
            }
            return i2;
        }

        public final List<Long> getVarintList() {
            return this.varint;
        }

        public final int hashCode() {
            return Arrays.hashCode(getIdentityArray());
        }

        public final void writeAsMessageSetExtensionTo(int i, CodedOutputStream codedOutputStream) throws IOException {
            Iterator<ByteString> it = this.lengthDelimited.iterator();
            while (it.hasNext()) {
                codedOutputStream.writeRawMessageSetExtension(i, it.next());
            }
        }

        public final void writeTo(int i, CodedOutputStream codedOutputStream) throws IOException {
            Iterator<Long> it = this.varint.iterator();
            while (it.hasNext()) {
                codedOutputStream.writeUInt64(i, it.next().longValue());
            }
            Iterator<Integer> it2 = this.fixed32.iterator();
            while (it2.hasNext()) {
                codedOutputStream.writeFixed32(i, it2.next().intValue());
            }
            Iterator<Long> it3 = this.fixed64.iterator();
            while (it3.hasNext()) {
                codedOutputStream.writeFixed64(i, it3.next().longValue());
            }
            Iterator<ByteString> it4 = this.lengthDelimited.iterator();
            while (it4.hasNext()) {
                codedOutputStream.writeBytes(i, it4.next());
            }
            Iterator<UnknownFieldSet> it5 = this.group.iterator();
            while (it5.hasNext()) {
                codedOutputStream.writeGroup(i, it5.next());
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class Parser extends AbstractParser<UnknownFieldSet> {
        @Override // com.google.protobuf.Parser
        public final UnknownFieldSet parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            Builder newBuilder = UnknownFieldSet.newBuilder();
            try {
                newBuilder.mergeFrom(codedInputStream);
                return newBuilder.buildPartial();
            } catch (InvalidProtocolBufferException e) {
                throw e.setUnfinishedMessage(newBuilder.buildPartial());
            } catch (IOException e2) {
                throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(newBuilder.buildPartial());
            }
        }
    }

    private UnknownFieldSet() {
    }

    private UnknownFieldSet(Map<Integer, Field> map) {
        this.fields = map;
    }

    /* synthetic */ UnknownFieldSet(Map map, UnknownFieldSet unknownFieldSet) {
        this(map);
    }

    public static UnknownFieldSet getDefaultInstance() {
        return defaultInstance;
    }

    public static Builder newBuilder() {
        return Builder.access$16();
    }

    public static Builder newBuilder(UnknownFieldSet unknownFieldSet) {
        return newBuilder().mergeFrom(unknownFieldSet);
    }

    public static UnknownFieldSet parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return newBuilder().mergeFrom(byteString).build();
    }

    public static UnknownFieldSet parseFrom(CodedInputStream codedInputStream) throws IOException {
        return newBuilder().mergeFrom(codedInputStream).build();
    }

    public static UnknownFieldSet parseFrom(InputStream inputStream) throws IOException {
        return newBuilder().mergeFrom(inputStream).build();
    }

    public static UnknownFieldSet parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return newBuilder().mergeFrom(bArr).build();
    }

    public final Map<Integer, Field> asMap() {
        return this.fields;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof UnknownFieldSet) && this.fields.equals(((UnknownFieldSet) obj).fields);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getDefaultInstanceForType() {
        return defaultInstance;
    }

    public final Field getField(int i) {
        Field field = this.fields.get(Integer.valueOf(i));
        return field == null ? Field.getDefaultInstance() : field;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public final Parser getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.MessageLite
    public final int getSerializedSize() {
        int i = 0;
        for (Map.Entry<Integer, Field> entry : this.fields.entrySet()) {
            i += entry.getValue().getSerializedSize(entry.getKey().intValue());
        }
        return i;
    }

    public final int getSerializedSizeAsMessageSet() {
        int i = 0;
        for (Map.Entry<Integer, Field> entry : this.fields.entrySet()) {
            i += entry.getValue().getSerializedSizeAsMessageSetExtension(entry.getKey().intValue());
        }
        return i;
    }

    public final boolean hasField(int i) {
        return this.fields.containsKey(Integer.valueOf(i));
    }

    public final int hashCode() {
        return this.fields.hashCode();
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        return true;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public final Builder newBuilderForType() {
        return newBuilder();
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public final Builder toBuilder() {
        return newBuilder().mergeFrom(this);
    }

    @Override // com.google.protobuf.MessageLite
    public final byte[] toByteArray() {
        try {
            byte[] bArr = new byte[getSerializedSize()];
            CodedOutputStream newInstance = CodedOutputStream.newInstance(bArr);
            writeTo(newInstance);
            newInstance.checkNoSpaceLeft();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    @Override // com.google.protobuf.MessageLite
    public final ByteString toByteString() {
        try {
            ByteString.CodedBuilder newCodedBuilder = ByteString.newCodedBuilder(getSerializedSize());
            writeTo(newCodedBuilder.getCodedOutput());
            return newCodedBuilder.build();
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a ByteString threw an IOException (should never happen).", e);
        }
    }

    public final String toString() {
        return TextFormat.printToString(this);
    }

    public final void writeAsMessageSetTo(CodedOutputStream codedOutputStream) throws IOException {
        for (Map.Entry<Integer, Field> entry : this.fields.entrySet()) {
            entry.getValue().writeAsMessageSetExtensionTo(entry.getKey().intValue(), codedOutputStream);
        }
    }

    @Override // com.google.protobuf.MessageLite
    public final void writeDelimitedTo(OutputStream outputStream) throws IOException {
        CodedOutputStream newInstance = CodedOutputStream.newInstance(outputStream);
        newInstance.writeRawVarint32(getSerializedSize());
        writeTo(newInstance);
        newInstance.flush();
    }

    @Override // com.google.protobuf.MessageLite
    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (Map.Entry<Integer, Field> entry : this.fields.entrySet()) {
            entry.getValue().writeTo(entry.getKey().intValue(), codedOutputStream);
        }
    }

    @Override // com.google.protobuf.MessageLite
    public final void writeTo(OutputStream outputStream) throws IOException {
        CodedOutputStream newInstance = CodedOutputStream.newInstance(outputStream);
        writeTo(newInstance);
        newInstance.flush();
    }
}
