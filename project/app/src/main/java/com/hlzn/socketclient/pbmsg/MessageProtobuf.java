package com.hlzn.socketclient.pbmsg;

import com.cyjh.elfin.p073a.C1225b;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;

/* loaded from: classes.dex */
public final class MessageProtobuf {

    /* renamed from: A */
    private static Descriptors.Descriptor f8173A;

    /* renamed from: B */
    private static GeneratedMessage.FieldAccessorTable f8174B;

    /* renamed from: C */
    private static Descriptors.Descriptor f8175C;

    /* renamed from: D */
    private static GeneratedMessage.FieldAccessorTable f8176D;

    /* renamed from: E */
    private static Descriptors.Descriptor f8177E;

    /* renamed from: F */
    private static GeneratedMessage.FieldAccessorTable f8178F;

    /* renamed from: G */
    private static Descriptors.Descriptor f8179G;

    /* renamed from: H */
    private static GeneratedMessage.FieldAccessorTable f8180H;

    /* renamed from: I */
    private static Descriptors.Descriptor f8181I;

    /* renamed from: J */
    private static GeneratedMessage.FieldAccessorTable f8182J;

    /* renamed from: K */
    private static Descriptors.Descriptor f8183K;

    /* renamed from: L */
    private static GeneratedMessage.FieldAccessorTable f8184L;

    /* renamed from: M */
    private static Descriptors.Descriptor f8185M;

    /* renamed from: N */
    private static GeneratedMessage.FieldAccessorTable f8186N;

    /* renamed from: O */
    private static Descriptors.FileDescriptor f8187O;

    /* renamed from: a */
    private static Descriptors.Descriptor f8188a;

    /* renamed from: b */
    private static GeneratedMessage.FieldAccessorTable f8189b;

    /* renamed from: c */
    private static Descriptors.Descriptor f8190c;

    /* renamed from: d */
    private static GeneratedMessage.FieldAccessorTable f8191d;

    /* renamed from: e */
    private static Descriptors.Descriptor f8192e;

    /* renamed from: f */
    private static GeneratedMessage.FieldAccessorTable f8193f;

    /* renamed from: g */
    private static Descriptors.Descriptor f8194g;

    /* renamed from: h */
    private static GeneratedMessage.FieldAccessorTable f8195h;

    /* renamed from: i */
    private static Descriptors.Descriptor f8196i;

    /* renamed from: j */
    private static GeneratedMessage.FieldAccessorTable f8197j;

    /* renamed from: k */
    private static Descriptors.Descriptor f8198k;

    /* renamed from: l */
    private static GeneratedMessage.FieldAccessorTable f8199l;

    /* renamed from: m */
    private static Descriptors.Descriptor f8200m;

    /* renamed from: n */
    private static GeneratedMessage.FieldAccessorTable f8201n;

    /* renamed from: o */
    private static Descriptors.Descriptor f8202o;

    /* renamed from: p */
    private static GeneratedMessage.FieldAccessorTable f8203p;

    /* renamed from: q */
    private static Descriptors.Descriptor f8204q;

    /* renamed from: r */
    private static GeneratedMessage.FieldAccessorTable f8205r;

    /* renamed from: s */
    private static Descriptors.Descriptor f8206s;

    /* renamed from: t */
    private static GeneratedMessage.FieldAccessorTable f8207t;

    /* renamed from: u */
    private static Descriptors.Descriptor f8208u;

    /* renamed from: v */
    private static GeneratedMessage.FieldAccessorTable f8209v;

    /* renamed from: w */
    private static Descriptors.Descriptor f8210w;

    /* renamed from: x */
    private static GeneratedMessage.FieldAccessorTable f8211x;

    /* renamed from: y */
    private static Descriptors.Descriptor f8212y;

    /* renamed from: z */
    private static GeneratedMessage.FieldAccessorTable f8213z;

    /* loaded from: classes.dex */
    public static final class CmdRenameDeviceName extends GeneratedMessage implements CmdRenameDeviceNameOrBuilder {
        public static final int NEWDEVICENAME_FIELD_NUMBER = 1;
        public static Parser<CmdRenameDeviceName> PARSER = new AbstractParser<CmdRenameDeviceName>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceName.1
            @Override // com.google.protobuf.Parser
            public final CmdRenameDeviceName parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdRenameDeviceName(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdRenameDeviceName defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object newDeviceName_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdRenameDeviceNameOrBuilder {
            private int bitField0_;
            private Object newDeviceName_;
            private long rpcId_;

            private Builder() {
                this.newDeviceName_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.newDeviceName_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$18700() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8183K;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = CmdRenameDeviceName.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdRenameDeviceName build() {
                CmdRenameDeviceName buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdRenameDeviceName buildPartial() {
                CmdRenameDeviceName cmdRenameDeviceName = new CmdRenameDeviceName(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdRenameDeviceName.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdRenameDeviceName.newDeviceName_ = this.newDeviceName_;
                cmdRenameDeviceName.bitField0_ = i2;
                onBuilt();
                return cmdRenameDeviceName;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                this.newDeviceName_ = "";
                this.bitField0_ &= -3;
                return this;
            }

            public final Builder clearNewDeviceName() {
                this.bitField0_ &= -3;
                this.newDeviceName_ = CmdRenameDeviceName.getDefaultInstance().getNewDeviceName();
                onChanged();
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone, reason: merged with bridge method [inline-methods] */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final CmdRenameDeviceName getDefaultInstanceForType() {
                return CmdRenameDeviceName.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8183K;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
            public final String getNewDeviceName() {
                Object obj = this.newDeviceName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.newDeviceName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
            public final ByteString getNewDeviceNameBytes() {
                Object obj = this.newDeviceName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.newDeviceName_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
            public final boolean hasNewDeviceName() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8184L.ensureFieldAccessorsInitialized(CmdRenameDeviceName.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasNewDeviceName();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceName.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdRenameDeviceName> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceName.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdRenameDeviceName r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceName) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdRenameDeviceName r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceName) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceName.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdRenameDeviceName$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CmdRenameDeviceName) {
                    return mergeFrom((CmdRenameDeviceName) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(CmdRenameDeviceName cmdRenameDeviceName) {
                if (cmdRenameDeviceName == CmdRenameDeviceName.getDefaultInstance()) {
                    return this;
                }
                if (cmdRenameDeviceName.hasRpcId()) {
                    setRpcId(cmdRenameDeviceName.getRpcId());
                }
                if (cmdRenameDeviceName.hasNewDeviceName()) {
                    this.bitField0_ |= 2;
                    this.newDeviceName_ = cmdRenameDeviceName.newDeviceName_;
                    onChanged();
                }
                mergeUnknownFields(cmdRenameDeviceName.getUnknownFields());
                return this;
            }

            public final Builder setNewDeviceName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.newDeviceName_ = str;
                onChanged();
                return this;
            }

            public final Builder setNewDeviceNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.newDeviceName_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdRenameDeviceName cmdRenameDeviceName = new CmdRenameDeviceName(true);
            defaultInstance = cmdRenameDeviceName;
            cmdRenameDeviceName.initFields();
        }

        private CmdRenameDeviceName(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    this.bitField0_ |= 2;
                                    this.newDeviceName_ = codedInputStream.readBytes();
                                } else if (readTag == 720) {
                                    this.bitField0_ |= 1;
                                    this.rpcId_ = codedInputStream.readInt64();
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdRenameDeviceName(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdRenameDeviceName(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdRenameDeviceName getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8183K;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.newDeviceName_ = "";
        }

        public static Builder newBuilder() {
            return Builder.access$18700();
        }

        public static Builder newBuilder(CmdRenameDeviceName cmdRenameDeviceName) {
            return newBuilder().mergeFrom(cmdRenameDeviceName);
        }

        public static CmdRenameDeviceName parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdRenameDeviceName parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdRenameDeviceName parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdRenameDeviceName parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdRenameDeviceName parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdRenameDeviceName parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdRenameDeviceName parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdRenameDeviceName parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdRenameDeviceName parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdRenameDeviceName parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final CmdRenameDeviceName getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
        public final String getNewDeviceName() {
            Object obj = this.newDeviceName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.newDeviceName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
        public final ByteString getNewDeviceNameBytes() {
            Object obj = this.newDeviceName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.newDeviceName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<CmdRenameDeviceName> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeBytesSize = (this.bitField0_ & 2) == 2 ? 0 + CodedOutputStream.computeBytesSize(1, getNewDeviceNameBytes()) : 0;
            if ((this.bitField0_ & 1) == 1) {
                computeBytesSize += CodedOutputStream.computeInt64Size(90, this.rpcId_);
            }
            int serializedSize = computeBytesSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
        public final boolean hasNewDeviceName() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8184L.ensureFieldAccessorsInitialized(CmdRenameDeviceName.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasNewDeviceName()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(1, getNewDeviceNameBytes());
            }
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface CmdRenameDeviceNameOrBuilder extends MessageOrBuilder {
        String getNewDeviceName();

        ByteString getNewDeviceNameBytes();

        long getRpcId();

        boolean hasNewDeviceName();

        boolean hasRpcId();
    }

    /* loaded from: classes.dex */
    public static final class CmdRenameDeviceNameResult extends GeneratedMessage implements CmdRenameDeviceNameResultOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<CmdRenameDeviceNameResult> PARSER = new AbstractParser<CmdRenameDeviceNameResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResult.1
            @Override // com.google.protobuf.Parser
            public final CmdRenameDeviceNameResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdRenameDeviceNameResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdRenameDeviceNameResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdRenameDeviceNameResultOrBuilder {
            private int bitField0_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$19700() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8185M;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = CmdRenameDeviceNameResult.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdRenameDeviceNameResult build() {
                CmdRenameDeviceNameResult buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdRenameDeviceNameResult buildPartial() {
                CmdRenameDeviceNameResult cmdRenameDeviceNameResult = new CmdRenameDeviceNameResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdRenameDeviceNameResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdRenameDeviceNameResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                cmdRenameDeviceNameResult.message_ = this.message_;
                cmdRenameDeviceNameResult.bitField0_ = i2;
                onBuilt();
                return cmdRenameDeviceNameResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                this.error_ = 0;
                this.bitField0_ &= -3;
                this.message_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public final Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = CmdRenameDeviceNameResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final CmdRenameDeviceNameResult getDefaultInstanceForType() {
                return CmdRenameDeviceNameResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8185M;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
            public final int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
            public final String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
            public final ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
            public final boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
            public final boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8186N.ensureFieldAccessorsInitialized(CmdRenameDeviceNameResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResult.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdRenameDeviceNameResult> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResult.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdRenameDeviceNameResult r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResult) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdRenameDeviceNameResult r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResult) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResult.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdRenameDeviceNameResult$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CmdRenameDeviceNameResult) {
                    return mergeFrom((CmdRenameDeviceNameResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(CmdRenameDeviceNameResult cmdRenameDeviceNameResult) {
                if (cmdRenameDeviceNameResult == CmdRenameDeviceNameResult.getDefaultInstance()) {
                    return this;
                }
                if (cmdRenameDeviceNameResult.hasRpcId()) {
                    setRpcId(cmdRenameDeviceNameResult.getRpcId());
                }
                if (cmdRenameDeviceNameResult.hasError()) {
                    setError(cmdRenameDeviceNameResult.getError());
                }
                if (cmdRenameDeviceNameResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = cmdRenameDeviceNameResult.message_;
                    onChanged();
                }
                mergeUnknownFields(cmdRenameDeviceNameResult.getUnknownFields());
                return this;
            }

            public final Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public final Builder setMessage(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public final Builder setMessageBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdRenameDeviceNameResult cmdRenameDeviceNameResult = new CmdRenameDeviceNameResult(true);
            defaultInstance = cmdRenameDeviceNameResult;
            cmdRenameDeviceNameResult.initFields();
        }

        private CmdRenameDeviceNameResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (readTag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (readTag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdRenameDeviceNameResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdRenameDeviceNameResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdRenameDeviceNameResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8185M;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
        }

        public static Builder newBuilder() {
            return Builder.access$19700();
        }

        public static Builder newBuilder(CmdRenameDeviceNameResult cmdRenameDeviceNameResult) {
            return newBuilder().mergeFrom(cmdRenameDeviceNameResult);
        }

        public static CmdRenameDeviceNameResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdRenameDeviceNameResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdRenameDeviceNameResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdRenameDeviceNameResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdRenameDeviceNameResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdRenameDeviceNameResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdRenameDeviceNameResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdRenameDeviceNameResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdRenameDeviceNameResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdRenameDeviceNameResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final CmdRenameDeviceNameResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
        public final int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
        public final String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
        public final ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<CmdRenameDeviceNameResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeInt64Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeInt64Size += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeInt64Size += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = computeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
        public final boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
        public final boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8186N.ensureFieldAccessorsInitialized(CmdRenameDeviceNameResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasError()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface CmdRenameDeviceNameResultOrBuilder extends MessageOrBuilder {
        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    /* loaded from: classes.dex */
    public static final class CmdScreenCapture extends GeneratedMessage implements CmdScreenCaptureOrBuilder {
        public static Parser<CmdScreenCapture> PARSER = new AbstractParser<CmdScreenCapture>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCapture.1
            @Override // com.google.protobuf.Parser
            public final CmdScreenCapture parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScreenCapture(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdScreenCapture defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScreenCaptureOrBuilder {
            private int bitField0_;
            private long rpcId_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$14700() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8175C;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = CmdScreenCapture.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScreenCapture build() {
                CmdScreenCapture buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScreenCapture buildPartial() {
                CmdScreenCapture cmdScreenCapture = new CmdScreenCapture(this);
                int i = (this.bitField0_ & 1) != 1 ? 0 : 1;
                cmdScreenCapture.rpcId_ = this.rpcId_;
                cmdScreenCapture.bitField0_ = i;
                onBuilt();
                return cmdScreenCapture;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final CmdScreenCapture getDefaultInstanceForType() {
                return CmdScreenCapture.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8175C;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8176D.ensureFieldAccessorsInitialized(CmdScreenCapture.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCapture.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScreenCapture> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCapture.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScreenCapture r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCapture) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScreenCapture r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCapture) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCapture.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScreenCapture$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CmdScreenCapture) {
                    return mergeFrom((CmdScreenCapture) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(CmdScreenCapture cmdScreenCapture) {
                if (cmdScreenCapture == CmdScreenCapture.getDefaultInstance()) {
                    return this;
                }
                if (cmdScreenCapture.hasRpcId()) {
                    setRpcId(cmdScreenCapture.getRpcId());
                }
                mergeUnknownFields(cmdScreenCapture.getUnknownFields());
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScreenCapture cmdScreenCapture = new CmdScreenCapture(true);
            defaultInstance = cmdScreenCapture;
            cmdScreenCapture.initFields();
        }

        private CmdScreenCapture(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 720) {
                                    this.bitField0_ |= 1;
                                    this.rpcId_ = codedInputStream.readInt64();
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e.getMessage()).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScreenCapture(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScreenCapture(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScreenCapture getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8175C;
        }

        private void initFields() {
            this.rpcId_ = 0L;
        }

        public static Builder newBuilder() {
            return Builder.access$14700();
        }

        public static Builder newBuilder(CmdScreenCapture cmdScreenCapture) {
            return newBuilder().mergeFrom(cmdScreenCapture);
        }

        public static CmdScreenCapture parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScreenCapture parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScreenCapture parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScreenCapture parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScreenCapture parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScreenCapture parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScreenCapture parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScreenCapture parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScreenCapture parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScreenCapture parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final CmdScreenCapture getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<CmdScreenCapture> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeInt64Size = ((this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = computeInt64Size;
            return computeInt64Size;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8176D.ensureFieldAccessorsInitialized(CmdScreenCapture.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (hasRpcId()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface CmdScreenCaptureOrBuilder extends MessageOrBuilder {
        long getRpcId();

        boolean hasRpcId();
    }

    /* loaded from: classes.dex */
    public static final class CmdScreenCaptureResult extends GeneratedMessage implements CmdScreenCaptureResultOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<CmdScreenCaptureResult> PARSER = new AbstractParser<CmdScreenCaptureResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResult.1
            @Override // com.google.protobuf.Parser
            public final CmdScreenCaptureResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScreenCaptureResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdScreenCaptureResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScreenCaptureResultOrBuilder {
            private int bitField0_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$15600() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8177E;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = CmdScreenCaptureResult.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScreenCaptureResult build() {
                CmdScreenCaptureResult buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScreenCaptureResult buildPartial() {
                CmdScreenCaptureResult cmdScreenCaptureResult = new CmdScreenCaptureResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdScreenCaptureResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdScreenCaptureResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                cmdScreenCaptureResult.message_ = this.message_;
                cmdScreenCaptureResult.bitField0_ = i2;
                onBuilt();
                return cmdScreenCaptureResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                this.error_ = 0;
                this.bitField0_ &= -3;
                this.message_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public final Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = CmdScreenCaptureResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final CmdScreenCaptureResult getDefaultInstanceForType() {
                return CmdScreenCaptureResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8177E;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
            public final int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
            public final String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
            public final ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
            public final boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
            public final boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8178F.ensureFieldAccessorsInitialized(CmdScreenCaptureResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResult.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScreenCaptureResult> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResult.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScreenCaptureResult r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResult) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScreenCaptureResult r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResult) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResult.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScreenCaptureResult$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CmdScreenCaptureResult) {
                    return mergeFrom((CmdScreenCaptureResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(CmdScreenCaptureResult cmdScreenCaptureResult) {
                if (cmdScreenCaptureResult == CmdScreenCaptureResult.getDefaultInstance()) {
                    return this;
                }
                if (cmdScreenCaptureResult.hasRpcId()) {
                    setRpcId(cmdScreenCaptureResult.getRpcId());
                }
                if (cmdScreenCaptureResult.hasError()) {
                    setError(cmdScreenCaptureResult.getError());
                }
                if (cmdScreenCaptureResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = cmdScreenCaptureResult.message_;
                    onChanged();
                }
                mergeUnknownFields(cmdScreenCaptureResult.getUnknownFields());
                return this;
            }

            public final Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public final Builder setMessage(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public final Builder setMessageBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScreenCaptureResult cmdScreenCaptureResult = new CmdScreenCaptureResult(true);
            defaultInstance = cmdScreenCaptureResult;
            cmdScreenCaptureResult.initFields();
        }

        private CmdScreenCaptureResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (readTag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (readTag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScreenCaptureResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScreenCaptureResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScreenCaptureResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8177E;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
        }

        public static Builder newBuilder() {
            return Builder.access$15600();
        }

        public static Builder newBuilder(CmdScreenCaptureResult cmdScreenCaptureResult) {
            return newBuilder().mergeFrom(cmdScreenCaptureResult);
        }

        public static CmdScreenCaptureResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScreenCaptureResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScreenCaptureResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScreenCaptureResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScreenCaptureResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScreenCaptureResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScreenCaptureResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScreenCaptureResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScreenCaptureResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScreenCaptureResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final CmdScreenCaptureResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
        public final int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
        public final String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
        public final ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<CmdScreenCaptureResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeInt64Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeInt64Size += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeInt64Size += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = computeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
        public final boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
        public final boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8178F.ensureFieldAccessorsInitialized(CmdScreenCaptureResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasError()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface CmdScreenCaptureResultOrBuilder extends MessageOrBuilder {
        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    /* loaded from: classes.dex */
    public static final class CmdScriptSettings extends GeneratedMessage implements CmdScriptSettingsOrBuilder {
        public static Parser<CmdScriptSettings> PARSER = new AbstractParser<CmdScriptSettings>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettings.1
            @Override // com.google.protobuf.Parser
            public final CmdScriptSettings parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScriptSettings(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        public static final int SCRIPTSETTINGS_FIELD_NUMBER = 1;
        private static final CmdScriptSettings defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private long rpcId_;
        private Object scriptSettings_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScriptSettingsOrBuilder {
            private int bitField0_;
            private long rpcId_;
            private Object scriptSettings_;

            private Builder() {
                this.scriptSettings_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.scriptSettings_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$12600() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8212y;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = CmdScriptSettings.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScriptSettings build() {
                CmdScriptSettings buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScriptSettings buildPartial() {
                CmdScriptSettings cmdScriptSettings = new CmdScriptSettings(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdScriptSettings.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdScriptSettings.scriptSettings_ = this.scriptSettings_;
                cmdScriptSettings.bitField0_ = i2;
                onBuilt();
                return cmdScriptSettings;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                this.scriptSettings_ = "";
                this.bitField0_ &= -3;
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            public final Builder clearScriptSettings() {
                this.bitField0_ &= -3;
                this.scriptSettings_ = CmdScriptSettings.getDefaultInstance().getScriptSettings();
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final CmdScriptSettings getDefaultInstanceForType() {
                return CmdScriptSettings.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8212y;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
            public final String getScriptSettings() {
                Object obj = this.scriptSettings_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.scriptSettings_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
            public final ByteString getScriptSettingsBytes() {
                Object obj = this.scriptSettings_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.scriptSettings_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
            public final boolean hasScriptSettings() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8213z.ensureFieldAccessorsInitialized(CmdScriptSettings.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasScriptSettings();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettings.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptSettings> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettings.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptSettings r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettings) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptSettings r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettings) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettings.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptSettings$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CmdScriptSettings) {
                    return mergeFrom((CmdScriptSettings) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(CmdScriptSettings cmdScriptSettings) {
                if (cmdScriptSettings == CmdScriptSettings.getDefaultInstance()) {
                    return this;
                }
                if (cmdScriptSettings.hasRpcId()) {
                    setRpcId(cmdScriptSettings.getRpcId());
                }
                if (cmdScriptSettings.hasScriptSettings()) {
                    this.bitField0_ |= 2;
                    this.scriptSettings_ = cmdScriptSettings.scriptSettings_;
                    onChanged();
                }
                mergeUnknownFields(cmdScriptSettings.getUnknownFields());
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }

            public final Builder setScriptSettings(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.scriptSettings_ = str;
                onChanged();
                return this;
            }

            public final Builder setScriptSettingsBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.scriptSettings_ = byteString;
                onChanged();
                return this;
            }
        }

        static {
            CmdScriptSettings cmdScriptSettings = new CmdScriptSettings(true);
            defaultInstance = cmdScriptSettings;
            cmdScriptSettings.initFields();
        }

        private CmdScriptSettings(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    this.bitField0_ |= 2;
                                    this.scriptSettings_ = codedInputStream.readBytes();
                                } else if (readTag == 720) {
                                    this.bitField0_ |= 1;
                                    this.rpcId_ = codedInputStream.readInt64();
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScriptSettings(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScriptSettings(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScriptSettings getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8212y;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.scriptSettings_ = "";
        }

        public static Builder newBuilder() {
            return Builder.access$12600();
        }

        public static Builder newBuilder(CmdScriptSettings cmdScriptSettings) {
            return newBuilder().mergeFrom(cmdScriptSettings);
        }

        public static CmdScriptSettings parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScriptSettings parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptSettings parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScriptSettings parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScriptSettings parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScriptSettings parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScriptSettings parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScriptSettings parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptSettings parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScriptSettings parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final CmdScriptSettings getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<CmdScriptSettings> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
        public final String getScriptSettings() {
            Object obj = this.scriptSettings_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.scriptSettings_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
        public final ByteString getScriptSettingsBytes() {
            Object obj = this.scriptSettings_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.scriptSettings_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeBytesSize = (this.bitField0_ & 2) == 2 ? 0 + CodedOutputStream.computeBytesSize(1, getScriptSettingsBytes()) : 0;
            if ((this.bitField0_ & 1) == 1) {
                computeBytesSize += CodedOutputStream.computeInt64Size(90, this.rpcId_);
            }
            int serializedSize = computeBytesSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
        public final boolean hasScriptSettings() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8213z.ensureFieldAccessorsInitialized(CmdScriptSettings.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasScriptSettings()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(1, getScriptSettingsBytes());
            }
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface CmdScriptSettingsOrBuilder extends MessageOrBuilder {
        long getRpcId();

        String getScriptSettings();

        ByteString getScriptSettingsBytes();

        boolean hasRpcId();

        boolean hasScriptSettings();
    }

    /* loaded from: classes.dex */
    public static final class CmdScriptSettingsResult extends GeneratedMessage implements CmdScriptSettingsResultOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<CmdScriptSettingsResult> PARSER = new AbstractParser<CmdScriptSettingsResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResult.1
            @Override // com.google.protobuf.Parser
            public final CmdScriptSettingsResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScriptSettingsResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdScriptSettingsResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScriptSettingsResultOrBuilder {
            private int bitField0_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$13600() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8173A;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = CmdScriptSettingsResult.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScriptSettingsResult build() {
                CmdScriptSettingsResult buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScriptSettingsResult buildPartial() {
                CmdScriptSettingsResult cmdScriptSettingsResult = new CmdScriptSettingsResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdScriptSettingsResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdScriptSettingsResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                cmdScriptSettingsResult.message_ = this.message_;
                cmdScriptSettingsResult.bitField0_ = i2;
                onBuilt();
                return cmdScriptSettingsResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                this.error_ = 0;
                this.bitField0_ &= -3;
                this.message_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public final Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = CmdScriptSettingsResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final CmdScriptSettingsResult getDefaultInstanceForType() {
                return CmdScriptSettingsResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8173A;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
            public final int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
            public final String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
            public final ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
            public final boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
            public final boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8174B.ensureFieldAccessorsInitialized(CmdScriptSettingsResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResult.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptSettingsResult> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResult.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptSettingsResult r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResult) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptSettingsResult r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResult) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResult.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptSettingsResult$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CmdScriptSettingsResult) {
                    return mergeFrom((CmdScriptSettingsResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(CmdScriptSettingsResult cmdScriptSettingsResult) {
                if (cmdScriptSettingsResult == CmdScriptSettingsResult.getDefaultInstance()) {
                    return this;
                }
                if (cmdScriptSettingsResult.hasRpcId()) {
                    setRpcId(cmdScriptSettingsResult.getRpcId());
                }
                if (cmdScriptSettingsResult.hasError()) {
                    setError(cmdScriptSettingsResult.getError());
                }
                if (cmdScriptSettingsResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = cmdScriptSettingsResult.message_;
                    onChanged();
                }
                mergeUnknownFields(cmdScriptSettingsResult.getUnknownFields());
                return this;
            }

            public final Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public final Builder setMessage(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public final Builder setMessageBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScriptSettingsResult cmdScriptSettingsResult = new CmdScriptSettingsResult(true);
            defaultInstance = cmdScriptSettingsResult;
            cmdScriptSettingsResult.initFields();
        }

        private CmdScriptSettingsResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (readTag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (readTag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScriptSettingsResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScriptSettingsResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScriptSettingsResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8173A;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
        }

        public static Builder newBuilder() {
            return Builder.access$13600();
        }

        public static Builder newBuilder(CmdScriptSettingsResult cmdScriptSettingsResult) {
            return newBuilder().mergeFrom(cmdScriptSettingsResult);
        }

        public static CmdScriptSettingsResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScriptSettingsResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptSettingsResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScriptSettingsResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScriptSettingsResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScriptSettingsResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScriptSettingsResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScriptSettingsResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptSettingsResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScriptSettingsResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final CmdScriptSettingsResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
        public final int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
        public final String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
        public final ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<CmdScriptSettingsResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeInt64Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeInt64Size += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeInt64Size += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = computeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
        public final boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
        public final boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8174B.ensureFieldAccessorsInitialized(CmdScriptSettingsResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasError()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface CmdScriptSettingsResultOrBuilder extends MessageOrBuilder {
        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    /* loaded from: classes.dex */
    public static final class CmdScriptStart extends GeneratedMessage implements CmdScriptStartOrBuilder {
        public static Parser<CmdScriptStart> PARSER = new AbstractParser<CmdScriptStart>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStart.1
            @Override // com.google.protobuf.Parser
            public final CmdScriptStart parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScriptStart(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdScriptStart defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScriptStartOrBuilder {
            private int bitField0_;
            private long rpcId_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$6400() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8200m;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = CmdScriptStart.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScriptStart build() {
                CmdScriptStart buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScriptStart buildPartial() {
                CmdScriptStart cmdScriptStart = new CmdScriptStart(this);
                int i = (this.bitField0_ & 1) != 1 ? 0 : 1;
                cmdScriptStart.rpcId_ = this.rpcId_;
                cmdScriptStart.bitField0_ = i;
                onBuilt();
                return cmdScriptStart;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final CmdScriptStart getDefaultInstanceForType() {
                return CmdScriptStart.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8200m;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8201n.ensureFieldAccessorsInitialized(CmdScriptStart.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStart.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptStart> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStart.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptStart r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStart) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptStart r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStart) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStart.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptStart$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CmdScriptStart) {
                    return mergeFrom((CmdScriptStart) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(CmdScriptStart cmdScriptStart) {
                if (cmdScriptStart == CmdScriptStart.getDefaultInstance()) {
                    return this;
                }
                if (cmdScriptStart.hasRpcId()) {
                    setRpcId(cmdScriptStart.getRpcId());
                }
                mergeUnknownFields(cmdScriptStart.getUnknownFields());
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScriptStart cmdScriptStart = new CmdScriptStart(true);
            defaultInstance = cmdScriptStart;
            cmdScriptStart.initFields();
        }

        private CmdScriptStart(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 720) {
                                    this.bitField0_ |= 1;
                                    this.rpcId_ = codedInputStream.readInt64();
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e.getMessage()).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScriptStart(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScriptStart(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScriptStart getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8200m;
        }

        private void initFields() {
            this.rpcId_ = 0L;
        }

        public static Builder newBuilder() {
            return Builder.access$6400();
        }

        public static Builder newBuilder(CmdScriptStart cmdScriptStart) {
            return newBuilder().mergeFrom(cmdScriptStart);
        }

        public static CmdScriptStart parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScriptStart parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptStart parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScriptStart parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScriptStart parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScriptStart parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScriptStart parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScriptStart parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptStart parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScriptStart parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final CmdScriptStart getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<CmdScriptStart> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeInt64Size = ((this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = computeInt64Size;
            return computeInt64Size;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8201n.ensureFieldAccessorsInitialized(CmdScriptStart.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (hasRpcId()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface CmdScriptStartOrBuilder extends MessageOrBuilder {
        long getRpcId();

        boolean hasRpcId();
    }

    /* loaded from: classes.dex */
    public static final class CmdScriptStartResult extends GeneratedMessage implements CmdScriptStartResultOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<CmdScriptStartResult> PARSER = new AbstractParser<CmdScriptStartResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResult.1
            @Override // com.google.protobuf.Parser
            public final CmdScriptStartResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScriptStartResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdScriptStartResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScriptStartResultOrBuilder {
            private int bitField0_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$7300() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8202o;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = CmdScriptStartResult.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScriptStartResult build() {
                CmdScriptStartResult buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScriptStartResult buildPartial() {
                CmdScriptStartResult cmdScriptStartResult = new CmdScriptStartResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdScriptStartResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdScriptStartResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                cmdScriptStartResult.message_ = this.message_;
                cmdScriptStartResult.bitField0_ = i2;
                onBuilt();
                return cmdScriptStartResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                this.error_ = 0;
                this.bitField0_ &= -3;
                this.message_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public final Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = CmdScriptStartResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final CmdScriptStartResult getDefaultInstanceForType() {
                return CmdScriptStartResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8202o;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
            public final int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
            public final String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
            public final ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
            public final boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
            public final boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8203p.ensureFieldAccessorsInitialized(CmdScriptStartResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResult.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptStartResult> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResult.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptStartResult r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResult) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptStartResult r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResult) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResult.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptStartResult$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CmdScriptStartResult) {
                    return mergeFrom((CmdScriptStartResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(CmdScriptStartResult cmdScriptStartResult) {
                if (cmdScriptStartResult == CmdScriptStartResult.getDefaultInstance()) {
                    return this;
                }
                if (cmdScriptStartResult.hasRpcId()) {
                    setRpcId(cmdScriptStartResult.getRpcId());
                }
                if (cmdScriptStartResult.hasError()) {
                    setError(cmdScriptStartResult.getError());
                }
                if (cmdScriptStartResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = cmdScriptStartResult.message_;
                    onChanged();
                }
                mergeUnknownFields(cmdScriptStartResult.getUnknownFields());
                return this;
            }

            public final Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public final Builder setMessage(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public final Builder setMessageBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScriptStartResult cmdScriptStartResult = new CmdScriptStartResult(true);
            defaultInstance = cmdScriptStartResult;
            cmdScriptStartResult.initFields();
        }

        private CmdScriptStartResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (readTag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (readTag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScriptStartResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScriptStartResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScriptStartResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8202o;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
        }

        public static Builder newBuilder() {
            return Builder.access$7300();
        }

        public static Builder newBuilder(CmdScriptStartResult cmdScriptStartResult) {
            return newBuilder().mergeFrom(cmdScriptStartResult);
        }

        public static CmdScriptStartResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScriptStartResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptStartResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScriptStartResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScriptStartResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScriptStartResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScriptStartResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScriptStartResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptStartResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScriptStartResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final CmdScriptStartResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
        public final int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
        public final String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
        public final ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<CmdScriptStartResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeInt64Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeInt64Size += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeInt64Size += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = computeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
        public final boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
        public final boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8203p.ensureFieldAccessorsInitialized(CmdScriptStartResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasError()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface CmdScriptStartResultOrBuilder extends MessageOrBuilder {
        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    /* loaded from: classes.dex */
    public static final class CmdScriptStop extends GeneratedMessage implements CmdScriptStopOrBuilder {
        public static Parser<CmdScriptStop> PARSER = new AbstractParser<CmdScriptStop>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStop.1
            @Override // com.google.protobuf.Parser
            public final CmdScriptStop parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScriptStop(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdScriptStop defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScriptStopOrBuilder {
            private int bitField0_;
            private long rpcId_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$8400() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8204q;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = CmdScriptStop.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScriptStop build() {
                CmdScriptStop buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScriptStop buildPartial() {
                CmdScriptStop cmdScriptStop = new CmdScriptStop(this);
                int i = (this.bitField0_ & 1) != 1 ? 0 : 1;
                cmdScriptStop.rpcId_ = this.rpcId_;
                cmdScriptStop.bitField0_ = i;
                onBuilt();
                return cmdScriptStop;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final CmdScriptStop getDefaultInstanceForType() {
                return CmdScriptStop.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8204q;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8205r.ensureFieldAccessorsInitialized(CmdScriptStop.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStop.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptStop> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStop.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptStop r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStop) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptStop r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStop) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStop.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptStop$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CmdScriptStop) {
                    return mergeFrom((CmdScriptStop) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(CmdScriptStop cmdScriptStop) {
                if (cmdScriptStop == CmdScriptStop.getDefaultInstance()) {
                    return this;
                }
                if (cmdScriptStop.hasRpcId()) {
                    setRpcId(cmdScriptStop.getRpcId());
                }
                mergeUnknownFields(cmdScriptStop.getUnknownFields());
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScriptStop cmdScriptStop = new CmdScriptStop(true);
            defaultInstance = cmdScriptStop;
            cmdScriptStop.initFields();
        }

        private CmdScriptStop(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 720) {
                                    this.bitField0_ |= 1;
                                    this.rpcId_ = codedInputStream.readInt64();
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e.getMessage()).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScriptStop(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScriptStop(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScriptStop getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8204q;
        }

        private void initFields() {
            this.rpcId_ = 0L;
        }

        public static Builder newBuilder() {
            return Builder.access$8400();
        }

        public static Builder newBuilder(CmdScriptStop cmdScriptStop) {
            return newBuilder().mergeFrom(cmdScriptStop);
        }

        public static CmdScriptStop parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScriptStop parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptStop parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScriptStop parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScriptStop parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScriptStop parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScriptStop parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScriptStop parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptStop parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScriptStop parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final CmdScriptStop getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<CmdScriptStop> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeInt64Size = ((this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = computeInt64Size;
            return computeInt64Size;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8205r.ensureFieldAccessorsInitialized(CmdScriptStop.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (hasRpcId()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface CmdScriptStopOrBuilder extends MessageOrBuilder {
        long getRpcId();

        boolean hasRpcId();
    }

    /* loaded from: classes.dex */
    public static final class CmdScriptStopResult extends GeneratedMessage implements CmdScriptStopResultOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<CmdScriptStopResult> PARSER = new AbstractParser<CmdScriptStopResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResult.1
            @Override // com.google.protobuf.Parser
            public final CmdScriptStopResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScriptStopResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdScriptStopResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScriptStopResultOrBuilder {
            private int bitField0_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$9300() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8206s;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = CmdScriptStopResult.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScriptStopResult build() {
                CmdScriptStopResult buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScriptStopResult buildPartial() {
                CmdScriptStopResult cmdScriptStopResult = new CmdScriptStopResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdScriptStopResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdScriptStopResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                cmdScriptStopResult.message_ = this.message_;
                cmdScriptStopResult.bitField0_ = i2;
                onBuilt();
                return cmdScriptStopResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                this.error_ = 0;
                this.bitField0_ &= -3;
                this.message_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public final Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = CmdScriptStopResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final CmdScriptStopResult getDefaultInstanceForType() {
                return CmdScriptStopResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8206s;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
            public final int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
            public final String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
            public final ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
            public final boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
            public final boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8207t.ensureFieldAccessorsInitialized(CmdScriptStopResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResult.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptStopResult> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResult.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptStopResult r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResult) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptStopResult r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResult) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResult.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptStopResult$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CmdScriptStopResult) {
                    return mergeFrom((CmdScriptStopResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(CmdScriptStopResult cmdScriptStopResult) {
                if (cmdScriptStopResult == CmdScriptStopResult.getDefaultInstance()) {
                    return this;
                }
                if (cmdScriptStopResult.hasRpcId()) {
                    setRpcId(cmdScriptStopResult.getRpcId());
                }
                if (cmdScriptStopResult.hasError()) {
                    setError(cmdScriptStopResult.getError());
                }
                if (cmdScriptStopResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = cmdScriptStopResult.message_;
                    onChanged();
                }
                mergeUnknownFields(cmdScriptStopResult.getUnknownFields());
                return this;
            }

            public final Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public final Builder setMessage(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public final Builder setMessageBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScriptStopResult cmdScriptStopResult = new CmdScriptStopResult(true);
            defaultInstance = cmdScriptStopResult;
            cmdScriptStopResult.initFields();
        }

        private CmdScriptStopResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (readTag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (readTag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScriptStopResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScriptStopResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScriptStopResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8206s;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
        }

        public static Builder newBuilder() {
            return Builder.access$9300();
        }

        public static Builder newBuilder(CmdScriptStopResult cmdScriptStopResult) {
            return newBuilder().mergeFrom(cmdScriptStopResult);
        }

        public static CmdScriptStopResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScriptStopResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptStopResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScriptStopResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScriptStopResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScriptStopResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScriptStopResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScriptStopResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptStopResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScriptStopResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final CmdScriptStopResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
        public final int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
        public final String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
        public final ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<CmdScriptStopResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeInt64Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeInt64Size += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeInt64Size += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = computeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
        public final boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
        public final boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8207t.ensureFieldAccessorsInitialized(CmdScriptStopResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasError()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface CmdScriptStopResultOrBuilder extends MessageOrBuilder {
        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    /* loaded from: classes.dex */
    public static final class CmdScriptUpgrade extends GeneratedMessage implements CmdScriptUpgradeOrBuilder {
        public static Parser<CmdScriptUpgrade> PARSER = new AbstractParser<CmdScriptUpgrade>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgrade.1
            @Override // com.google.protobuf.Parser
            public final CmdScriptUpgrade parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScriptUpgrade(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        public static final int SCRIPTFILEURL_FIELD_NUMBER = 2;
        public static final int SCRIPTVERSION_FIELD_NUMBER = 1;
        private static final CmdScriptUpgrade defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private long rpcId_;
        private Object scriptFileUrl_;
        private long scriptVersion_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScriptUpgradeOrBuilder {
            private int bitField0_;
            private long rpcId_;
            private Object scriptFileUrl_;
            private long scriptVersion_;

            private Builder() {
                this.scriptFileUrl_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.scriptFileUrl_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$10400() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8208u;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = CmdScriptUpgrade.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScriptUpgrade build() {
                CmdScriptUpgrade buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScriptUpgrade buildPartial() {
                CmdScriptUpgrade cmdScriptUpgrade = new CmdScriptUpgrade(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdScriptUpgrade.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdScriptUpgrade.scriptVersion_ = this.scriptVersion_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                cmdScriptUpgrade.scriptFileUrl_ = this.scriptFileUrl_;
                cmdScriptUpgrade.bitField0_ = i2;
                onBuilt();
                return cmdScriptUpgrade;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                this.scriptVersion_ = 0L;
                this.bitField0_ &= -3;
                this.scriptFileUrl_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            public final Builder clearScriptFileUrl() {
                this.bitField0_ &= -5;
                this.scriptFileUrl_ = CmdScriptUpgrade.getDefaultInstance().getScriptFileUrl();
                onChanged();
                return this;
            }

            public final Builder clearScriptVersion() {
                this.bitField0_ &= -3;
                this.scriptVersion_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final CmdScriptUpgrade getDefaultInstanceForType() {
                return CmdScriptUpgrade.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8208u;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
            public final String getScriptFileUrl() {
                Object obj = this.scriptFileUrl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.scriptFileUrl_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
            public final ByteString getScriptFileUrlBytes() {
                Object obj = this.scriptFileUrl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.scriptFileUrl_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
            public final long getScriptVersion() {
                return this.scriptVersion_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
            public final boolean hasScriptFileUrl() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
            public final boolean hasScriptVersion() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8209v.ensureFieldAccessorsInitialized(CmdScriptUpgrade.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasScriptVersion() && hasScriptFileUrl();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgrade.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptUpgrade> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgrade.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptUpgrade r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgrade) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptUpgrade r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgrade) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgrade.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptUpgrade$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CmdScriptUpgrade) {
                    return mergeFrom((CmdScriptUpgrade) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(CmdScriptUpgrade cmdScriptUpgrade) {
                if (cmdScriptUpgrade == CmdScriptUpgrade.getDefaultInstance()) {
                    return this;
                }
                if (cmdScriptUpgrade.hasRpcId()) {
                    setRpcId(cmdScriptUpgrade.getRpcId());
                }
                if (cmdScriptUpgrade.hasScriptVersion()) {
                    setScriptVersion(cmdScriptUpgrade.getScriptVersion());
                }
                if (cmdScriptUpgrade.hasScriptFileUrl()) {
                    this.bitField0_ |= 4;
                    this.scriptFileUrl_ = cmdScriptUpgrade.scriptFileUrl_;
                    onChanged();
                }
                mergeUnknownFields(cmdScriptUpgrade.getUnknownFields());
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }

            public final Builder setScriptFileUrl(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.scriptFileUrl_ = str;
                onChanged();
                return this;
            }

            public final Builder setScriptFileUrlBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.scriptFileUrl_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setScriptVersion(long j) {
                this.bitField0_ |= 2;
                this.scriptVersion_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScriptUpgrade cmdScriptUpgrade = new CmdScriptUpgrade(true);
            defaultInstance = cmdScriptUpgrade;
            cmdScriptUpgrade.initFields();
        }

        private CmdScriptUpgrade(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.bitField0_ |= 2;
                                this.scriptVersion_ = codedInputStream.readInt64();
                            } else if (readTag == 18) {
                                this.bitField0_ |= 4;
                                this.scriptFileUrl_ = codedInputStream.readBytes();
                            } else if (readTag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScriptUpgrade(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScriptUpgrade(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScriptUpgrade getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8208u;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.scriptVersion_ = 0L;
            this.scriptFileUrl_ = "";
        }

        public static Builder newBuilder() {
            return Builder.access$10400();
        }

        public static Builder newBuilder(CmdScriptUpgrade cmdScriptUpgrade) {
            return newBuilder().mergeFrom(cmdScriptUpgrade);
        }

        public static CmdScriptUpgrade parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScriptUpgrade parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptUpgrade parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScriptUpgrade parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScriptUpgrade parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScriptUpgrade parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScriptUpgrade parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScriptUpgrade parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptUpgrade parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScriptUpgrade parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final CmdScriptUpgrade getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<CmdScriptUpgrade> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
        public final String getScriptFileUrl() {
            Object obj = this.scriptFileUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.scriptFileUrl_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
        public final ByteString getScriptFileUrlBytes() {
            Object obj = this.scriptFileUrl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.scriptFileUrl_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
        public final long getScriptVersion() {
            return this.scriptVersion_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeInt64Size = (this.bitField0_ & 2) == 2 ? 0 + CodedOutputStream.computeInt64Size(1, this.scriptVersion_) : 0;
            if ((this.bitField0_ & 4) == 4) {
                computeInt64Size += CodedOutputStream.computeBytesSize(2, getScriptFileUrlBytes());
            }
            if ((this.bitField0_ & 1) == 1) {
                computeInt64Size += CodedOutputStream.computeInt64Size(90, this.rpcId_);
            }
            int serializedSize = computeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
        public final boolean hasScriptFileUrl() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
        public final boolean hasScriptVersion() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8209v.ensureFieldAccessorsInitialized(CmdScriptUpgrade.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasScriptVersion()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasScriptFileUrl()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt64(1, this.scriptVersion_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(2, getScriptFileUrlBytes());
            }
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface CmdScriptUpgradeOrBuilder extends MessageOrBuilder {
        long getRpcId();

        String getScriptFileUrl();

        ByteString getScriptFileUrlBytes();

        long getScriptVersion();

        boolean hasRpcId();

        boolean hasScriptFileUrl();

        boolean hasScriptVersion();
    }

    /* loaded from: classes.dex */
    public static final class CmdScriptUpgradeResult extends GeneratedMessage implements CmdScriptUpgradeResultOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<CmdScriptUpgradeResult> PARSER = new AbstractParser<CmdScriptUpgradeResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResult.1
            @Override // com.google.protobuf.Parser
            public final CmdScriptUpgradeResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScriptUpgradeResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdScriptUpgradeResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScriptUpgradeResultOrBuilder {
            private int bitField0_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$11500() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8210w;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = CmdScriptUpgradeResult.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScriptUpgradeResult build() {
                CmdScriptUpgradeResult buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdScriptUpgradeResult buildPartial() {
                CmdScriptUpgradeResult cmdScriptUpgradeResult = new CmdScriptUpgradeResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdScriptUpgradeResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdScriptUpgradeResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                cmdScriptUpgradeResult.message_ = this.message_;
                cmdScriptUpgradeResult.bitField0_ = i2;
                onBuilt();
                return cmdScriptUpgradeResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                this.error_ = 0;
                this.bitField0_ &= -3;
                this.message_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public final Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = CmdScriptUpgradeResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final CmdScriptUpgradeResult getDefaultInstanceForType() {
                return CmdScriptUpgradeResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8210w;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
            public final int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
            public final String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
            public final ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
            public final boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
            public final boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8211x.ensureFieldAccessorsInitialized(CmdScriptUpgradeResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResult.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptUpgradeResult> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResult.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptUpgradeResult r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResult) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptUpgradeResult r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResult) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResult.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdScriptUpgradeResult$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CmdScriptUpgradeResult) {
                    return mergeFrom((CmdScriptUpgradeResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(CmdScriptUpgradeResult cmdScriptUpgradeResult) {
                if (cmdScriptUpgradeResult == CmdScriptUpgradeResult.getDefaultInstance()) {
                    return this;
                }
                if (cmdScriptUpgradeResult.hasRpcId()) {
                    setRpcId(cmdScriptUpgradeResult.getRpcId());
                }
                if (cmdScriptUpgradeResult.hasError()) {
                    setError(cmdScriptUpgradeResult.getError());
                }
                if (cmdScriptUpgradeResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = cmdScriptUpgradeResult.message_;
                    onChanged();
                }
                mergeUnknownFields(cmdScriptUpgradeResult.getUnknownFields());
                return this;
            }

            public final Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public final Builder setMessage(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public final Builder setMessageBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScriptUpgradeResult cmdScriptUpgradeResult = new CmdScriptUpgradeResult(true);
            defaultInstance = cmdScriptUpgradeResult;
            cmdScriptUpgradeResult.initFields();
        }

        private CmdScriptUpgradeResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (readTag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (readTag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScriptUpgradeResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScriptUpgradeResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScriptUpgradeResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8210w;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
        }

        public static Builder newBuilder() {
            return Builder.access$11500();
        }

        public static Builder newBuilder(CmdScriptUpgradeResult cmdScriptUpgradeResult) {
            return newBuilder().mergeFrom(cmdScriptUpgradeResult);
        }

        public static CmdScriptUpgradeResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScriptUpgradeResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptUpgradeResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScriptUpgradeResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScriptUpgradeResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScriptUpgradeResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScriptUpgradeResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScriptUpgradeResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptUpgradeResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScriptUpgradeResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final CmdScriptUpgradeResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
        public final int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
        public final String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
        public final ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<CmdScriptUpgradeResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeInt64Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeInt64Size += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeInt64Size += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = computeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
        public final boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
        public final boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8211x.ensureFieldAccessorsInitialized(CmdScriptUpgradeResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasError()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface CmdScriptUpgradeResultOrBuilder extends MessageOrBuilder {
        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    /* loaded from: classes.dex */
    public static final class CmdUnBindStudioProject extends GeneratedMessage implements CmdUnBindStudioProjectOrBuilder {
        public static Parser<CmdUnBindStudioProject> PARSER = new AbstractParser<CmdUnBindStudioProject>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProject.1
            @Override // com.google.protobuf.Parser
            public final CmdUnBindStudioProject parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdUnBindStudioProject(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdUnBindStudioProject defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdUnBindStudioProjectOrBuilder {
            private int bitField0_;
            private long rpcId_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$16700() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8179G;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = CmdUnBindStudioProject.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdUnBindStudioProject build() {
                CmdUnBindStudioProject buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdUnBindStudioProject buildPartial() {
                CmdUnBindStudioProject cmdUnBindStudioProject = new CmdUnBindStudioProject(this);
                int i = (this.bitField0_ & 1) != 1 ? 0 : 1;
                cmdUnBindStudioProject.rpcId_ = this.rpcId_;
                cmdUnBindStudioProject.bitField0_ = i;
                onBuilt();
                return cmdUnBindStudioProject;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final CmdUnBindStudioProject getDefaultInstanceForType() {
                return CmdUnBindStudioProject.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8179G;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8180H.ensureFieldAccessorsInitialized(CmdUnBindStudioProject.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProject.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdUnBindStudioProject> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProject.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdUnBindStudioProject r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProject) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdUnBindStudioProject r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProject) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProject.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdUnBindStudioProject$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CmdUnBindStudioProject) {
                    return mergeFrom((CmdUnBindStudioProject) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(CmdUnBindStudioProject cmdUnBindStudioProject) {
                if (cmdUnBindStudioProject == CmdUnBindStudioProject.getDefaultInstance()) {
                    return this;
                }
                if (cmdUnBindStudioProject.hasRpcId()) {
                    setRpcId(cmdUnBindStudioProject.getRpcId());
                }
                mergeUnknownFields(cmdUnBindStudioProject.getUnknownFields());
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdUnBindStudioProject cmdUnBindStudioProject = new CmdUnBindStudioProject(true);
            defaultInstance = cmdUnBindStudioProject;
            cmdUnBindStudioProject.initFields();
        }

        private CmdUnBindStudioProject(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 720) {
                                    this.bitField0_ |= 1;
                                    this.rpcId_ = codedInputStream.readInt64();
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e.getMessage()).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdUnBindStudioProject(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdUnBindStudioProject(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdUnBindStudioProject getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8179G;
        }

        private void initFields() {
            this.rpcId_ = 0L;
        }

        public static Builder newBuilder() {
            return Builder.access$16700();
        }

        public static Builder newBuilder(CmdUnBindStudioProject cmdUnBindStudioProject) {
            return newBuilder().mergeFrom(cmdUnBindStudioProject);
        }

        public static CmdUnBindStudioProject parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdUnBindStudioProject parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdUnBindStudioProject parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdUnBindStudioProject parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdUnBindStudioProject parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdUnBindStudioProject parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdUnBindStudioProject parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdUnBindStudioProject parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdUnBindStudioProject parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdUnBindStudioProject parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final CmdUnBindStudioProject getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<CmdUnBindStudioProject> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeInt64Size = ((this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = computeInt64Size;
            return computeInt64Size;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8180H.ensureFieldAccessorsInitialized(CmdUnBindStudioProject.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (hasRpcId()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface CmdUnBindStudioProjectOrBuilder extends MessageOrBuilder {
        long getRpcId();

        boolean hasRpcId();
    }

    /* loaded from: classes.dex */
    public static final class CmdUnBindStudioProjectResult extends GeneratedMessage implements CmdUnBindStudioProjectResultOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<CmdUnBindStudioProjectResult> PARSER = new AbstractParser<CmdUnBindStudioProjectResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResult.1
            @Override // com.google.protobuf.Parser
            public final CmdUnBindStudioProjectResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdUnBindStudioProjectResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdUnBindStudioProjectResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdUnBindStudioProjectResultOrBuilder {
            private int bitField0_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$17600() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8181I;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = CmdUnBindStudioProjectResult.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdUnBindStudioProjectResult build() {
                CmdUnBindStudioProjectResult buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CmdUnBindStudioProjectResult buildPartial() {
                CmdUnBindStudioProjectResult cmdUnBindStudioProjectResult = new CmdUnBindStudioProjectResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdUnBindStudioProjectResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdUnBindStudioProjectResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                cmdUnBindStudioProjectResult.message_ = this.message_;
                cmdUnBindStudioProjectResult.bitField0_ = i2;
                onBuilt();
                return cmdUnBindStudioProjectResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                this.error_ = 0;
                this.bitField0_ &= -3;
                this.message_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public final Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = CmdUnBindStudioProjectResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final CmdUnBindStudioProjectResult getDefaultInstanceForType() {
                return CmdUnBindStudioProjectResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8181I;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
            public final int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
            public final String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
            public final ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
            public final boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
            public final boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8182J.ensureFieldAccessorsInitialized(CmdUnBindStudioProjectResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResult.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdUnBindStudioProjectResult> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResult.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdUnBindStudioProjectResult r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResult) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdUnBindStudioProjectResult r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResult) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResult.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$CmdUnBindStudioProjectResult$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CmdUnBindStudioProjectResult) {
                    return mergeFrom((CmdUnBindStudioProjectResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(CmdUnBindStudioProjectResult cmdUnBindStudioProjectResult) {
                if (cmdUnBindStudioProjectResult == CmdUnBindStudioProjectResult.getDefaultInstance()) {
                    return this;
                }
                if (cmdUnBindStudioProjectResult.hasRpcId()) {
                    setRpcId(cmdUnBindStudioProjectResult.getRpcId());
                }
                if (cmdUnBindStudioProjectResult.hasError()) {
                    setError(cmdUnBindStudioProjectResult.getError());
                }
                if (cmdUnBindStudioProjectResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = cmdUnBindStudioProjectResult.message_;
                    onChanged();
                }
                mergeUnknownFields(cmdUnBindStudioProjectResult.getUnknownFields());
                return this;
            }

            public final Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public final Builder setMessage(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public final Builder setMessageBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdUnBindStudioProjectResult cmdUnBindStudioProjectResult = new CmdUnBindStudioProjectResult(true);
            defaultInstance = cmdUnBindStudioProjectResult;
            cmdUnBindStudioProjectResult.initFields();
        }

        private CmdUnBindStudioProjectResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (readTag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (readTag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdUnBindStudioProjectResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdUnBindStudioProjectResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdUnBindStudioProjectResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8181I;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
        }

        public static Builder newBuilder() {
            return Builder.access$17600();
        }

        public static Builder newBuilder(CmdUnBindStudioProjectResult cmdUnBindStudioProjectResult) {
            return newBuilder().mergeFrom(cmdUnBindStudioProjectResult);
        }

        public static CmdUnBindStudioProjectResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdUnBindStudioProjectResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdUnBindStudioProjectResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdUnBindStudioProjectResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdUnBindStudioProjectResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdUnBindStudioProjectResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdUnBindStudioProjectResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdUnBindStudioProjectResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdUnBindStudioProjectResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdUnBindStudioProjectResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final CmdUnBindStudioProjectResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
        public final int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
        public final String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
        public final ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<CmdUnBindStudioProjectResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeInt64Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeInt64Size += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeInt64Size += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = computeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
        public final boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
        public final boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8182J.ensureFieldAccessorsInitialized(CmdUnBindStudioProjectResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasError()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface CmdUnBindStudioProjectResultOrBuilder extends MessageOrBuilder {
        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    /* loaded from: classes.dex */
    public static final class Heartbeat extends GeneratedMessage implements HeartbeatOrBuilder {
        public static Parser<Heartbeat> PARSER = new AbstractParser<Heartbeat>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.Heartbeat.1
            @Override // com.google.protobuf.Parser
            public final Heartbeat parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Heartbeat(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        public static final int SCRIPTRUNNING_FIELD_NUMBER = 1;
        private static final Heartbeat defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private long rpcId_;
        private boolean scriptRunning_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements HeartbeatOrBuilder {
            private int bitField0_;
            private long rpcId_;
            private boolean scriptRunning_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$2800() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8192e;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = Heartbeat.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Heartbeat build() {
                Heartbeat buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Heartbeat buildPartial() {
                Heartbeat heartbeat = new Heartbeat(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                heartbeat.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                heartbeat.scriptRunning_ = this.scriptRunning_;
                heartbeat.bitField0_ = i2;
                onBuilt();
                return heartbeat;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                this.scriptRunning_ = false;
                this.bitField0_ &= -3;
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            public final Builder clearScriptRunning() {
                this.bitField0_ &= -3;
                this.scriptRunning_ = false;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final Heartbeat getDefaultInstanceForType() {
                return Heartbeat.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8192e;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatOrBuilder
            public final boolean getScriptRunning() {
                return this.scriptRunning_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatOrBuilder
            public final boolean hasScriptRunning() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8193f.ensureFieldAccessorsInitialized(Heartbeat.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasScriptRunning();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.Heartbeat.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$Heartbeat> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.Heartbeat.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$Heartbeat r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.Heartbeat) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$Heartbeat r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.Heartbeat) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.Heartbeat.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$Heartbeat$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof Heartbeat) {
                    return mergeFrom((Heartbeat) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(Heartbeat heartbeat) {
                if (heartbeat == Heartbeat.getDefaultInstance()) {
                    return this;
                }
                if (heartbeat.hasRpcId()) {
                    setRpcId(heartbeat.getRpcId());
                }
                if (heartbeat.hasScriptRunning()) {
                    setScriptRunning(heartbeat.getScriptRunning());
                }
                mergeUnknownFields(heartbeat.getUnknownFields());
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }

            public final Builder setScriptRunning(boolean z) {
                this.bitField0_ |= 2;
                this.scriptRunning_ = z;
                onChanged();
                return this;
            }
        }

        static {
            Heartbeat heartbeat = new Heartbeat(true);
            defaultInstance = heartbeat;
            heartbeat.initFields();
        }

        private Heartbeat(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 8) {
                                    this.bitField0_ |= 2;
                                    this.scriptRunning_ = codedInputStream.readBool();
                                } else if (readTag == 720) {
                                    this.bitField0_ |= 1;
                                    this.rpcId_ = codedInputStream.readInt64();
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private Heartbeat(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private Heartbeat(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static Heartbeat getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8192e;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.scriptRunning_ = false;
        }

        public static Builder newBuilder() {
            return Builder.access$2800();
        }

        public static Builder newBuilder(Heartbeat heartbeat) {
            return newBuilder().mergeFrom(heartbeat);
        }

        public static Heartbeat parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static Heartbeat parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static Heartbeat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Heartbeat parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Heartbeat parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static Heartbeat parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Heartbeat parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static Heartbeat parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static Heartbeat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Heartbeat parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final Heartbeat getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<Heartbeat> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatOrBuilder
        public final boolean getScriptRunning() {
            return this.scriptRunning_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeBoolSize = (this.bitField0_ & 2) == 2 ? 0 + CodedOutputStream.computeBoolSize(1, this.scriptRunning_) : 0;
            if ((this.bitField0_ & 1) == 1) {
                computeBoolSize += CodedOutputStream.computeInt64Size(90, this.rpcId_);
            }
            int serializedSize = computeBoolSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatOrBuilder
        public final boolean hasScriptRunning() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8193f.ensureFieldAccessorsInitialized(Heartbeat.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasScriptRunning()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBool(1, this.scriptRunning_);
            }
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface HeartbeatOrBuilder extends MessageOrBuilder {
        long getRpcId();

        boolean getScriptRunning();

        boolean hasRpcId();

        boolean hasScriptRunning();
    }

    /* loaded from: classes.dex */
    public static final class HeartbeatResult extends GeneratedMessage implements HeartbeatResultOrBuilder {
        public static final int DISABLED_FIELD_NUMBER = 1;
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<HeartbeatResult> PARSER = new AbstractParser<HeartbeatResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResult.1
            @Override // com.google.protobuf.Parser
            public final HeartbeatResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new HeartbeatResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final HeartbeatResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private boolean disabled_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements HeartbeatResultOrBuilder {
            private int bitField0_;
            private boolean disabled_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$3800() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8194g;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = HeartbeatResult.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final HeartbeatResult build() {
                HeartbeatResult buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final HeartbeatResult buildPartial() {
                HeartbeatResult heartbeatResult = new HeartbeatResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                heartbeatResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                heartbeatResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                heartbeatResult.message_ = this.message_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                heartbeatResult.disabled_ = this.disabled_;
                heartbeatResult.bitField0_ = i2;
                onBuilt();
                return heartbeatResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                this.error_ = 0;
                this.bitField0_ &= -3;
                this.message_ = "";
                this.bitField0_ &= -5;
                this.disabled_ = false;
                this.bitField0_ &= -9;
                return this;
            }

            public final Builder clearDisabled() {
                this.bitField0_ &= -9;
                this.disabled_ = false;
                onChanged();
                return this;
            }

            public final Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = HeartbeatResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final HeartbeatResult getDefaultInstanceForType() {
                return HeartbeatResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8194g;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public final boolean getDisabled() {
                return this.disabled_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public final int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public final String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public final ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public final boolean hasDisabled() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public final boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public final boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8195h.ensureFieldAccessorsInitialized(HeartbeatResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError() && hasDisabled();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResult.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$HeartbeatResult> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResult.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$HeartbeatResult r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResult) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$HeartbeatResult r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResult) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResult.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$HeartbeatResult$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof HeartbeatResult) {
                    return mergeFrom((HeartbeatResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(HeartbeatResult heartbeatResult) {
                if (heartbeatResult == HeartbeatResult.getDefaultInstance()) {
                    return this;
                }
                if (heartbeatResult.hasRpcId()) {
                    setRpcId(heartbeatResult.getRpcId());
                }
                if (heartbeatResult.hasError()) {
                    setError(heartbeatResult.getError());
                }
                if (heartbeatResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = heartbeatResult.message_;
                    onChanged();
                }
                if (heartbeatResult.hasDisabled()) {
                    setDisabled(heartbeatResult.getDisabled());
                }
                mergeUnknownFields(heartbeatResult.getUnknownFields());
                return this;
            }

            public final Builder setDisabled(boolean z) {
                this.bitField0_ |= 8;
                this.disabled_ = z;
                onChanged();
                return this;
            }

            public final Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public final Builder setMessage(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public final Builder setMessageBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            HeartbeatResult heartbeatResult = new HeartbeatResult(true);
            defaultInstance = heartbeatResult;
            heartbeatResult.initFields();
        }

        private HeartbeatResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.bitField0_ |= 8;
                                this.disabled_ = codedInputStream.readBool();
                            } else if (readTag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (readTag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (readTag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private HeartbeatResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private HeartbeatResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static HeartbeatResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8194g;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
            this.disabled_ = false;
        }

        public static Builder newBuilder() {
            return Builder.access$3800();
        }

        public static Builder newBuilder(HeartbeatResult heartbeatResult) {
            return newBuilder().mergeFrom(heartbeatResult);
        }

        public static HeartbeatResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static HeartbeatResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static HeartbeatResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static HeartbeatResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static HeartbeatResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static HeartbeatResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static HeartbeatResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static HeartbeatResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static HeartbeatResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static HeartbeatResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final HeartbeatResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public final boolean getDisabled() {
            return this.disabled_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public final int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public final String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public final ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<HeartbeatResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeBoolSize = (this.bitField0_ & 8) == 8 ? 0 + CodedOutputStream.computeBoolSize(1, this.disabled_) : 0;
            if ((this.bitField0_ & 1) == 1) {
                computeBoolSize += CodedOutputStream.computeInt64Size(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                computeBoolSize += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeBoolSize += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = computeBoolSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public final boolean hasDisabled() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public final boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public final boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8195h.ensureFieldAccessorsInitialized(HeartbeatResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasError()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasDisabled()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBool(1, this.disabled_);
            }
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface HeartbeatResultOrBuilder extends MessageOrBuilder {
        boolean getDisabled();

        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasDisabled();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    /* loaded from: classes.dex */
    public static final class Login extends GeneratedMessage implements LoginOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int DEVICEID_FIELD_NUMBER = 3;
        public static final int IMTOKEN_FIELD_NUMBER = 4;
        public static Parser<Login> PARSER = new AbstractParser<Login>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.Login.1
            @Override // com.google.protobuf.Parser
            public final Login parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Login(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        public static final int SCRIPTID_FIELD_NUMBER = 2;
        public static final int SCRIPTRUNNING_FIELD_NUMBER = 5;
        private static final Login defaultInstance;
        private static final long serialVersionUID = 0;
        private long appId_;
        private int bitField0_;
        private Object deviceId_;
        private Object iMToken_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private long rpcId_;
        private Object scriptId_;
        private boolean scriptRunning_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements LoginOrBuilder {
            private long appId_;
            private int bitField0_;
            private Object deviceId_;
            private Object iMToken_;
            private long rpcId_;
            private Object scriptId_;
            private boolean scriptRunning_;

            private Builder() {
                this.scriptId_ = "";
                this.deviceId_ = "";
                this.iMToken_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.scriptId_ = "";
                this.deviceId_ = "";
                this.iMToken_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$300() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8188a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = Login.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Login build() {
                Login buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Login buildPartial() {
                Login login = new Login(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                login.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                login.appId_ = this.appId_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                login.scriptId_ = this.scriptId_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                login.deviceId_ = this.deviceId_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                login.iMToken_ = this.iMToken_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                login.scriptRunning_ = this.scriptRunning_;
                login.bitField0_ = i2;
                onBuilt();
                return login;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                this.appId_ = 0L;
                this.bitField0_ &= -3;
                this.scriptId_ = "";
                this.bitField0_ &= -5;
                this.deviceId_ = "";
                this.bitField0_ &= -9;
                this.iMToken_ = "";
                this.bitField0_ &= -17;
                this.scriptRunning_ = false;
                this.bitField0_ &= -33;
                return this;
            }

            public final Builder clearAppId() {
                this.bitField0_ &= -3;
                this.appId_ = 0L;
                onChanged();
                return this;
            }

            public final Builder clearDeviceId() {
                this.bitField0_ &= -9;
                this.deviceId_ = Login.getDefaultInstance().getDeviceId();
                onChanged();
                return this;
            }

            public final Builder clearIMToken() {
                this.bitField0_ &= -17;
                this.iMToken_ = Login.getDefaultInstance().getIMToken();
                onChanged();
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            public final Builder clearScriptId() {
                this.bitField0_ &= -5;
                this.scriptId_ = Login.getDefaultInstance().getScriptId();
                onChanged();
                return this;
            }

            public final Builder clearScriptRunning() {
                this.bitField0_ &= -33;
                this.scriptRunning_ = false;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public final long getAppId() {
                return this.appId_;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final Login getDefaultInstanceForType() {
                return Login.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8188a;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public final String getDeviceId() {
                Object obj = this.deviceId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.deviceId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public final ByteString getDeviceIdBytes() {
                Object obj = this.deviceId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.deviceId_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public final String getIMToken() {
                Object obj = this.iMToken_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.iMToken_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public final ByteString getIMTokenBytes() {
                Object obj = this.iMToken_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.iMToken_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public final String getScriptId() {
                Object obj = this.scriptId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.scriptId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public final ByteString getScriptIdBytes() {
                Object obj = this.scriptId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.scriptId_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public final boolean getScriptRunning() {
                return this.scriptRunning_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public final boolean hasAppId() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public final boolean hasDeviceId() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public final boolean hasIMToken() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public final boolean hasScriptId() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public final boolean hasScriptRunning() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8189b.ensureFieldAccessorsInitialized(Login.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasAppId() && hasScriptId() && hasDeviceId() && hasIMToken() && hasScriptRunning();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.Login.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$Login> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.Login.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$Login r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.Login) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$Login r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.Login) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.Login.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$Login$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof Login) {
                    return mergeFrom((Login) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(Login login) {
                if (login == Login.getDefaultInstance()) {
                    return this;
                }
                if (login.hasRpcId()) {
                    setRpcId(login.getRpcId());
                }
                if (login.hasAppId()) {
                    setAppId(login.getAppId());
                }
                if (login.hasScriptId()) {
                    this.bitField0_ |= 4;
                    this.scriptId_ = login.scriptId_;
                    onChanged();
                }
                if (login.hasDeviceId()) {
                    this.bitField0_ |= 8;
                    this.deviceId_ = login.deviceId_;
                    onChanged();
                }
                if (login.hasIMToken()) {
                    this.bitField0_ |= 16;
                    this.iMToken_ = login.iMToken_;
                    onChanged();
                }
                if (login.hasScriptRunning()) {
                    setScriptRunning(login.getScriptRunning());
                }
                mergeUnknownFields(login.getUnknownFields());
                return this;
            }

            public final Builder setAppId(long j) {
                this.bitField0_ |= 2;
                this.appId_ = j;
                onChanged();
                return this;
            }

            public final Builder setDeviceId(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.deviceId_ = str;
                onChanged();
                return this;
            }

            public final Builder setDeviceIdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.deviceId_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setIMToken(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.iMToken_ = str;
                onChanged();
                return this;
            }

            public final Builder setIMTokenBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.iMToken_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }

            public final Builder setScriptId(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.scriptId_ = str;
                onChanged();
                return this;
            }

            public final Builder setScriptIdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.scriptId_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setScriptRunning(boolean z) {
                this.bitField0_ |= 32;
                this.scriptRunning_ = z;
                onChanged();
                return this;
            }
        }

        static {
            Login login = new Login(true);
            defaultInstance = login;
            login.initFields();
        }

        private Login(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.bitField0_ |= 2;
                                this.appId_ = codedInputStream.readInt64();
                            } else if (readTag == 18) {
                                this.bitField0_ |= 4;
                                this.scriptId_ = codedInputStream.readBytes();
                            } else if (readTag == 26) {
                                this.bitField0_ |= 8;
                                this.deviceId_ = codedInputStream.readBytes();
                            } else if (readTag == 34) {
                                this.bitField0_ |= 16;
                                this.iMToken_ = codedInputStream.readBytes();
                            } else if (readTag == 40) {
                                this.bitField0_ |= 32;
                                this.scriptRunning_ = codedInputStream.readBool();
                            } else if (readTag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private Login(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private Login(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static Login getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8188a;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.appId_ = 0L;
            this.scriptId_ = "";
            this.deviceId_ = "";
            this.iMToken_ = "";
            this.scriptRunning_ = false;
        }

        public static Builder newBuilder() {
            return Builder.access$300();
        }

        public static Builder newBuilder(Login login) {
            return newBuilder().mergeFrom(login);
        }

        public static Login parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static Login parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static Login parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Login parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Login parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static Login parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Login parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static Login parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static Login parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Login parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public final long getAppId() {
            return this.appId_;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final Login getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public final String getDeviceId() {
            Object obj = this.deviceId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.deviceId_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public final ByteString getDeviceIdBytes() {
            Object obj = this.deviceId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.deviceId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public final String getIMToken() {
            Object obj = this.iMToken_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.iMToken_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public final ByteString getIMTokenBytes() {
            Object obj = this.iMToken_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.iMToken_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<Login> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public final String getScriptId() {
            Object obj = this.scriptId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.scriptId_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public final ByteString getScriptIdBytes() {
            Object obj = this.scriptId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.scriptId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public final boolean getScriptRunning() {
            return this.scriptRunning_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeInt64Size = (this.bitField0_ & 2) == 2 ? 0 + CodedOutputStream.computeInt64Size(1, this.appId_) : 0;
            if ((this.bitField0_ & 4) == 4) {
                computeInt64Size += CodedOutputStream.computeBytesSize(2, getScriptIdBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                computeInt64Size += CodedOutputStream.computeBytesSize(3, getDeviceIdBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                computeInt64Size += CodedOutputStream.computeBytesSize(4, getIMTokenBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                computeInt64Size += CodedOutputStream.computeBoolSize(5, this.scriptRunning_);
            }
            if ((this.bitField0_ & 1) == 1) {
                computeInt64Size += CodedOutputStream.computeInt64Size(90, this.rpcId_);
            }
            int serializedSize = computeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public final boolean hasAppId() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public final boolean hasDeviceId() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public final boolean hasIMToken() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public final boolean hasScriptId() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public final boolean hasScriptRunning() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8189b.ensureFieldAccessorsInitialized(Login.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasAppId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasScriptId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasDeviceId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasIMToken()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasScriptRunning()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt64(1, this.appId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(2, getScriptIdBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(3, getDeviceIdBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(4, getIMTokenBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBool(5, this.scriptRunning_);
            }
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface LoginOrBuilder extends MessageOrBuilder {
        long getAppId();

        String getDeviceId();

        ByteString getDeviceIdBytes();

        String getIMToken();

        ByteString getIMTokenBytes();

        long getRpcId();

        String getScriptId();

        ByteString getScriptIdBytes();

        boolean getScriptRunning();

        boolean hasAppId();

        boolean hasDeviceId();

        boolean hasIMToken();

        boolean hasRpcId();

        boolean hasScriptId();

        boolean hasScriptRunning();
    }

    /* loaded from: classes.dex */
    public static final class LoginResult extends GeneratedMessage implements LoginResultOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<LoginResult> PARSER = new AbstractParser<LoginResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResult.1
            @Override // com.google.protobuf.Parser
            public final LoginResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new LoginResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final LoginResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements LoginResultOrBuilder {
            private int bitField0_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$1700() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8190c;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = LoginResult.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final LoginResult build() {
                LoginResult buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final LoginResult buildPartial() {
                LoginResult loginResult = new LoginResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                loginResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                loginResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                loginResult.message_ = this.message_;
                loginResult.bitField0_ = i2;
                onBuilt();
                return loginResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                this.error_ = 0;
                this.bitField0_ &= -3;
                this.message_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public final Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = LoginResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public final Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final LoginResult getDefaultInstanceForType() {
                return LoginResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8190c;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
            public final int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
            public final String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
            public final ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
            public final long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
            public final boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
            public final boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
            public final boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8191d.ensureFieldAccessorsInitialized(LoginResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResult.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$LoginResult> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResult.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$LoginResult r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResult) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$LoginResult r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResult) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResult.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$LoginResult$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof LoginResult) {
                    return mergeFrom((LoginResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(LoginResult loginResult) {
                if (loginResult == LoginResult.getDefaultInstance()) {
                    return this;
                }
                if (loginResult.hasRpcId()) {
                    setRpcId(loginResult.getRpcId());
                }
                if (loginResult.hasError()) {
                    setError(loginResult.getError());
                }
                if (loginResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = loginResult.message_;
                    onChanged();
                }
                mergeUnknownFields(loginResult.getUnknownFields());
                return this;
            }

            public final Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public final Builder setMessage(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public final Builder setMessageBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            LoginResult loginResult = new LoginResult(true);
            defaultInstance = loginResult;
            loginResult.initFields();
        }

        private LoginResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (readTag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (readTag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private LoginResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private LoginResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static LoginResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8190c;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
        }

        public static Builder newBuilder() {
            return Builder.access$1700();
        }

        public static Builder newBuilder(LoginResult loginResult) {
            return newBuilder().mergeFrom(loginResult);
        }

        public static LoginResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static LoginResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static LoginResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static LoginResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static LoginResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static LoginResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static LoginResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static LoginResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static LoginResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static LoginResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final LoginResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
        public final int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
        public final String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
        public final ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<LoginResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
        public final long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeInt64Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeInt64Size += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeInt64Size += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = computeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
        public final boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
        public final boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
        public final boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8191d.ensureFieldAccessorsInitialized(LoginResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasError()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface LoginResultOrBuilder extends MessageOrBuilder {
        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    /* loaded from: classes.dex */
    public static final class ScriptStart extends GeneratedMessage implements ScriptStartOrBuilder {
        public static Parser<ScriptStart> PARSER = new AbstractParser<ScriptStart>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.ScriptStart.1
            @Override // com.google.protobuf.Parser
            public final ScriptStart parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ScriptStart(codedInputStream, extensionRegistryLite);
            }
        };
        private static final ScriptStart defaultInstance;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ScriptStartOrBuilder {
            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$5000() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8196i;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = ScriptStart.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final ScriptStart build() {
                ScriptStart buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final ScriptStart buildPartial() {
                ScriptStart scriptStart = new ScriptStart(this);
                onBuilt();
                return scriptStart;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final ScriptStart getDefaultInstanceForType() {
                return ScriptStart.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8196i;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8197j.ensureFieldAccessorsInitialized(ScriptStart.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.ScriptStart.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$ScriptStart> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.ScriptStart.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$ScriptStart r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.ScriptStart) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$ScriptStart r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.ScriptStart) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.ScriptStart.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$ScriptStart$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof ScriptStart) {
                    return mergeFrom((ScriptStart) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(ScriptStart scriptStart) {
                if (scriptStart == ScriptStart.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(scriptStart.getUnknownFields());
                return this;
            }
        }

        static {
            ScriptStart scriptStart = new ScriptStart(true);
            defaultInstance = scriptStart;
            scriptStart.initFields();
        }

        private ScriptStart(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag == 0 || !parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                z = true;
                            }
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e.getMessage()).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private ScriptStart(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ScriptStart(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ScriptStart getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8196i;
        }

        private void initFields() {
        }

        public static Builder newBuilder() {
            return Builder.access$5000();
        }

        public static Builder newBuilder(ScriptStart scriptStart) {
            return newBuilder().mergeFrom(scriptStart);
        }

        public static ScriptStart parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static ScriptStart parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ScriptStart parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ScriptStart parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ScriptStart parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static ScriptStart parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static ScriptStart parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static ScriptStart parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ScriptStart parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ScriptStart parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final ScriptStart getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<ScriptStart> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int serializedSize = getUnknownFields().getSerializedSize() + 0;
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8197j.ensureFieldAccessorsInitialized(ScriptStart.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface ScriptStartOrBuilder extends MessageOrBuilder {
    }

    /* loaded from: classes.dex */
    public static final class ScriptStop extends GeneratedMessage implements ScriptStopOrBuilder {
        public static Parser<ScriptStop> PARSER = new AbstractParser<ScriptStop>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.ScriptStop.1
            @Override // com.google.protobuf.Parser
            public final ScriptStop parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ScriptStop(codedInputStream, extensionRegistryLite);
            }
        };
        private static final ScriptStop defaultInstance;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ScriptStopOrBuilder {
            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$5700() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.f8198k;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = ScriptStop.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final ScriptStop build() {
                ScriptStop buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final ScriptStop buildPartial() {
                ScriptStop scriptStop = new ScriptStop(this);
                onBuilt();
                return scriptStop;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final ScriptStop getDefaultInstanceForType() {
                return ScriptStop.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.f8198k;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.f8199l.ensureFieldAccessorsInitialized(ScriptStop.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.hlzn.socketclient.pbmsg.MessageProtobuf.ScriptStop.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.hlzn.socketclient.pbmsg.MessageProtobuf$ScriptStop> r1 = com.hlzn.socketclient.pbmsg.MessageProtobuf.ScriptStop.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$ScriptStop r3 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.ScriptStop) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.hlzn.socketclient.pbmsg.MessageProtobuf$ScriptStop r4 = (com.hlzn.socketclient.pbmsg.MessageProtobuf.ScriptStop) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.pbmsg.MessageProtobuf.ScriptStop.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.hlzn.socketclient.pbmsg.MessageProtobuf$ScriptStop$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof ScriptStop) {
                    return mergeFrom((ScriptStop) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(ScriptStop scriptStop) {
                if (scriptStop == ScriptStop.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(scriptStop.getUnknownFields());
                return this;
            }
        }

        static {
            ScriptStop scriptStop = new ScriptStop(true);
            defaultInstance = scriptStop;
            scriptStop.initFields();
        }

        private ScriptStop(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag == 0 || !parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                z = true;
                            }
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e.getMessage()).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private ScriptStop(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ScriptStop(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ScriptStop getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.f8198k;
        }

        private void initFields() {
        }

        public static Builder newBuilder() {
            return Builder.access$5700();
        }

        public static Builder newBuilder(ScriptStop scriptStop) {
            return newBuilder().mergeFrom(scriptStop);
        }

        public static ScriptStop parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static ScriptStop parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ScriptStop parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ScriptStop parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ScriptStop parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static ScriptStop parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static ScriptStop parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static ScriptStop parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ScriptStop parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ScriptStop parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final ScriptStop getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<ScriptStop> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int serializedSize = getUnknownFields().getSerializedSize() + 0;
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.f8199l.ensureFieldAccessorsInitialized(ScriptStop.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface ScriptStopOrBuilder extends MessageOrBuilder {
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0015MessageProtobuf.proto\u0012\u001bcom.hlzn.socketclient.pbmsg\"q\n\u0005Login\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005AppId\u0018\u0001 \u0002(\u0003\u0012\u0010\n\bScriptId\u0018\u0002 \u0002(\t\u0012\u0010\n\bDeviceId\u0018\u0003 \u0002(\t\u0012\u000f\n\u0007IMToken\u0018\u0004 \u0002(\t\u0012\u0015\n\rScriptRunning\u0018\u0005 \u0002(\b\"<\n\u000bLoginResult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t\"1\n\tHeartbeat\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\u0015\n\rScriptRunning\u0018\u0001 \u0002(\b\"R\n\u000fHeartbeatResult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t\u0012\u0010\n\bDisabled\u0018\u0001 \u0002(\b\"\r\n\u000bScriptStart\"\f\n\nScriptStop\"\u001f\n\u000eCmd", "ScriptStart\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\"E\n\u0014CmdScriptStartResult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t\"\u001e\n\rCmdScriptStop\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\"D\n\u0013CmdScriptStopResult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t\"O\n\u0010CmdScriptUpgrade\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\u0015\n\rScriptVersion\u0018\u0001 \u0002(\u0003\u0012\u0015\n\rScriptFileUrl\u0018\u0002 \u0002(\t\"G\n\u0016CmdScriptUpgradeResult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t\":\n\u0011CmdScriptSettings\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\u0016\n\u000eScriptS", "ettings\u0018\u0001 \u0002(\t\"H\n\u0017CmdScriptSettingsResult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t\"!\n\u0010CmdScreenCapture\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\"G\n\u0016CmdScreenCaptureResult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t\"'\n\u0016CmdUnBindStudioProject\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\"M\n\u001cCmdUnBindStudioProjectResult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t\";\n\u0013CmdRenameDeviceName\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\u0015\n\rNewDeviceName\u0018\u0001 \u0002(\t\"J\n\u0019CmdRenameDeviceNameR", "esult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t"}, new Descriptors.FileDescriptor[0], new Descriptors.FileDescriptor.InternalDescriptorAssigner() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.1
            @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
            public final ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
                Descriptors.FileDescriptor unused = MessageProtobuf.f8187O = fileDescriptor;
                Descriptors.Descriptor unused2 = MessageProtobuf.f8188a = MessageProtobuf.m9626a().getMessageTypes().get(0);
                GeneratedMessage.FieldAccessorTable unused3 = MessageProtobuf.f8189b = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8188a, new String[]{"RpcId", "AppId", "ScriptId", "DeviceId", "IMToken", "ScriptRunning"});
                Descriptors.Descriptor unused4 = MessageProtobuf.f8190c = MessageProtobuf.m9626a().getMessageTypes().get(1);
                GeneratedMessage.FieldAccessorTable unused5 = MessageProtobuf.f8191d = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8190c, new String[]{"RpcId", "Error", C1225b.f4512d});
                Descriptors.Descriptor unused6 = MessageProtobuf.f8192e = MessageProtobuf.m9626a().getMessageTypes().get(2);
                GeneratedMessage.FieldAccessorTable unused7 = MessageProtobuf.f8193f = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8192e, new String[]{"RpcId", "ScriptRunning"});
                Descriptors.Descriptor unused8 = MessageProtobuf.f8194g = MessageProtobuf.m9626a().getMessageTypes().get(3);
                GeneratedMessage.FieldAccessorTable unused9 = MessageProtobuf.f8195h = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8194g, new String[]{"RpcId", "Error", C1225b.f4512d, "Disabled"});
                Descriptors.Descriptor unused10 = MessageProtobuf.f8196i = MessageProtobuf.m9626a().getMessageTypes().get(4);
                GeneratedMessage.FieldAccessorTable unused11 = MessageProtobuf.f8197j = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8196i, new String[0]);
                Descriptors.Descriptor unused12 = MessageProtobuf.f8198k = MessageProtobuf.m9626a().getMessageTypes().get(5);
                GeneratedMessage.FieldAccessorTable unused13 = MessageProtobuf.f8199l = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8198k, new String[0]);
                Descriptors.Descriptor unused14 = MessageProtobuf.f8200m = MessageProtobuf.m9626a().getMessageTypes().get(6);
                GeneratedMessage.FieldAccessorTable unused15 = MessageProtobuf.f8201n = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8200m, new String[]{"RpcId"});
                Descriptors.Descriptor unused16 = MessageProtobuf.f8202o = MessageProtobuf.m9626a().getMessageTypes().get(7);
                GeneratedMessage.FieldAccessorTable unused17 = MessageProtobuf.f8203p = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8202o, new String[]{"RpcId", "Error", C1225b.f4512d});
                Descriptors.Descriptor unused18 = MessageProtobuf.f8204q = MessageProtobuf.m9626a().getMessageTypes().get(8);
                GeneratedMessage.FieldAccessorTable unused19 = MessageProtobuf.f8205r = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8204q, new String[]{"RpcId"});
                Descriptors.Descriptor unused20 = MessageProtobuf.f8206s = MessageProtobuf.m9626a().getMessageTypes().get(9);
                GeneratedMessage.FieldAccessorTable unused21 = MessageProtobuf.f8207t = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8206s, new String[]{"RpcId", "Error", C1225b.f4512d});
                Descriptors.Descriptor unused22 = MessageProtobuf.f8208u = MessageProtobuf.m9626a().getMessageTypes().get(10);
                GeneratedMessage.FieldAccessorTable unused23 = MessageProtobuf.f8209v = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8208u, new String[]{"RpcId", "ScriptVersion", "ScriptFileUrl"});
                Descriptors.Descriptor unused24 = MessageProtobuf.f8210w = MessageProtobuf.m9626a().getMessageTypes().get(11);
                GeneratedMessage.FieldAccessorTable unused25 = MessageProtobuf.f8211x = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8210w, new String[]{"RpcId", "Error", C1225b.f4512d});
                Descriptors.Descriptor unused26 = MessageProtobuf.f8212y = MessageProtobuf.m9626a().getMessageTypes().get(12);
                GeneratedMessage.FieldAccessorTable unused27 = MessageProtobuf.f8213z = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8212y, new String[]{"RpcId", "ScriptSettings"});
                Descriptors.Descriptor unused28 = MessageProtobuf.f8173A = MessageProtobuf.m9626a().getMessageTypes().get(13);
                GeneratedMessage.FieldAccessorTable unused29 = MessageProtobuf.f8174B = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8173A, new String[]{"RpcId", "Error", C1225b.f4512d});
                Descriptors.Descriptor unused30 = MessageProtobuf.f8175C = MessageProtobuf.m9626a().getMessageTypes().get(14);
                GeneratedMessage.FieldAccessorTable unused31 = MessageProtobuf.f8176D = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8175C, new String[]{"RpcId"});
                Descriptors.Descriptor unused32 = MessageProtobuf.f8177E = MessageProtobuf.m9626a().getMessageTypes().get(15);
                GeneratedMessage.FieldAccessorTable unused33 = MessageProtobuf.f8178F = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8177E, new String[]{"RpcId", "Error", C1225b.f4512d});
                Descriptors.Descriptor unused34 = MessageProtobuf.f8179G = MessageProtobuf.m9626a().getMessageTypes().get(16);
                GeneratedMessage.FieldAccessorTable unused35 = MessageProtobuf.f8180H = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8179G, new String[]{"RpcId"});
                Descriptors.Descriptor unused36 = MessageProtobuf.f8181I = MessageProtobuf.m9626a().getMessageTypes().get(17);
                GeneratedMessage.FieldAccessorTable unused37 = MessageProtobuf.f8182J = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8181I, new String[]{"RpcId", "Error", C1225b.f4512d});
                Descriptors.Descriptor unused38 = MessageProtobuf.f8183K = MessageProtobuf.m9626a().getMessageTypes().get(18);
                GeneratedMessage.FieldAccessorTable unused39 = MessageProtobuf.f8184L = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8183K, new String[]{"RpcId", "NewDeviceName"});
                Descriptors.Descriptor unused40 = MessageProtobuf.f8185M = MessageProtobuf.m9626a().getMessageTypes().get(19);
                GeneratedMessage.FieldAccessorTable unused41 = MessageProtobuf.f8186N = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.f8185M, new String[]{"RpcId", "Error", C1225b.f4512d});
                return null;
            }
        });
    }

    private MessageProtobuf() {
    }

    /* renamed from: P */
    private static void m9624P() {
    }

    /* renamed from: a */
    public static Descriptors.FileDescriptor m9626a() {
        return f8187O;
    }
}
