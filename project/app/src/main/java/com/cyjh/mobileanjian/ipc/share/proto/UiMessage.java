package com.cyjh.mobileanjian.ipc.share.proto;

import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.LazyStringArrayList;
import com.google.protobuf.LazyStringList;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import com.google.protobuf.UnmodifiableLazyStringList;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class UiMessage {

    /* renamed from: a */
    private static Descriptors.Descriptor f6017a;

    /* renamed from: b */
    private static GeneratedMessage.FieldAccessorTable f6018b;

    /* renamed from: c */
    private static Descriptors.Descriptor f6019c;

    /* renamed from: d */
    private static GeneratedMessage.FieldAccessorTable f6020d;

    /* renamed from: e */
    private static Descriptors.Descriptor f6021e;

    /* renamed from: f */
    private static GeneratedMessage.FieldAccessorTable f6022f;

    /* renamed from: g */
    private static Descriptors.Descriptor f6023g;

    /* renamed from: h */
    private static GeneratedMessage.FieldAccessorTable f6024h;

    /* renamed from: i */
    private static Descriptors.Descriptor f6025i;

    /* renamed from: j */
    private static GeneratedMessage.FieldAccessorTable f6026j;

    /* renamed from: k */
    private static Descriptors.Descriptor f6027k;

    /* renamed from: l */
    private static GeneratedMessage.FieldAccessorTable f6028l;

    /* renamed from: m */
    private static Descriptors.Descriptor f6029m;

    /* renamed from: n */
    private static GeneratedMessage.FieldAccessorTable f6030n;

    /* renamed from: o */
    private static Descriptors.FileDescriptor f6031o;

    /* loaded from: classes.dex */
    public static final class CommandToUi extends GeneratedMessage implements CommandToUiOrBuilder {
        public static final int ALIGNTYPE_FIELD_NUMBER = 17;
        public static final int BOOL_PARAM_FIELD_NUMBER = 27;
        public static final int COLOR_FIELD_NUMBER = 16;
        public static final int COMMAND_FIELD_NUMBER = 1;
        public static final int CONTROL_ID_FIELD_NUMBER = 2;
        public static final int DEFAULT_CHECK_STATUS_FIELD_NUMBER = 8;
        public static final int DEFAULT_ITEM_INDEX_FIELD_NUMBER = 11;
        public static final int EDIT_INPUT_TYPE_FIELD_NUMBER = 20;
        public static final int ENABLED_STATUS_FIELD_NUMBER = 14;
        public static final int FONT_SIZE_FIELD_NUMBER = 22;
        public static final int FONT_TYPE_FIELD_NUMBER = 21;
        public static final int HEIGHT_FIELD_NUMBER = 6;
        public static final int INT_PARAM_FIELD_NUMBER = 25;
        public static final int ITEM_INDEX_FIELD_NUMBER = 10;
        public static final int ITEM_TEXT_FIELD_NUMBER = 9;
        public static final int LAYOUT_STYLE_FIELD_NUMBER = 7;
        public static final int LEFT_FIELD_NUMBER = 23;
        public static final int PADDING_FIELD_NUMBER = 18;
        public static final int PARENT_ID_FIELD_NUMBER = 3;
        public static Parser<CommandToUi> PARSER = new AbstractParser<CommandToUi>() { // from class: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUi.1
            @Override // com.google.protobuf.Parser
            public final CommandToUi parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CommandToUi(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PATH_FIELD_NUMBER = 12;
        public static final int STR_PARAM_FIELD_NUMBER = 26;
        public static final int TEXT_FIELD_NUMBER = 4;
        public static final int TOP_FIELD_NUMBER = 24;
        public static final int UIP_DATA_FIELD_NUMBER = 19;
        public static final int URL_FIELD_NUMBER = 13;
        public static final int VISIBLE_STATUS_FIELD_NUMBER = 15;
        public static final int WIDTH_FIELD_NUMBER = 5;
        private static final CommandToUi defaultInstance;
        private static final long serialVersionUID = 0;
        private int alignType_;
        private int bitField0_;
        private boolean boolParam_;
        private Object color_;
        private Command_Type command_;
        private Object controlId_;
        private boolean defaultCheckStatus_;
        private int defaultItemIndex_;
        private int editInputType_;
        private boolean enabledStatus_;
        private int fontSize_;
        private Object fontType_;
        private int height_;
        private int intParam_;
        private int itemIndex_;
        private LazyStringList itemText_;
        private int layoutStyle_;
        private int left_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Padding_Var padding_;
        private Object parentId_;
        private Object path_;
        private Object strParam_;
        private Object text_;
        private int top_;
        private Object uipData_;
        private final UnknownFieldSet unknownFields;
        private Object url_;
        private int visibleStatus_;
        private int width_;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CommandToUiOrBuilder {
            private int alignType_;
            private int bitField0_;
            private boolean boolParam_;
            private Object color_;
            private Command_Type command_;
            private Object controlId_;
            private boolean defaultCheckStatus_;
            private int defaultItemIndex_;
            private int editInputType_;
            private boolean enabledStatus_;
            private int fontSize_;
            private Object fontType_;
            private int height_;
            private int intParam_;
            private int itemIndex_;
            private LazyStringList itemText_;
            private int layoutStyle_;
            private int left_;
            private SingleFieldBuilder<Padding_Var, Padding_Var.Builder, Padding_VarOrBuilder> paddingBuilder_;
            private Padding_Var padding_;
            private Object parentId_;
            private Object path_;
            private Object strParam_;
            private Object text_;
            private int top_;
            private Object uipData_;
            private Object url_;
            private int visibleStatus_;
            private int width_;

            private Builder() {
                this.command_ = Command_Type.NEW_LAYOUT;
                this.controlId_ = "";
                this.parentId_ = "";
                this.text_ = "";
                this.itemText_ = LazyStringArrayList.EMPTY;
                this.path_ = "";
                this.url_ = "";
                this.color_ = "";
                this.padding_ = Padding_Var.getDefaultInstance();
                this.uipData_ = "";
                this.fontType_ = "";
                this.strParam_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.command_ = Command_Type.NEW_LAYOUT;
                this.controlId_ = "";
                this.parentId_ = "";
                this.text_ = "";
                this.itemText_ = LazyStringArrayList.EMPTY;
                this.path_ = "";
                this.url_ = "";
                this.color_ = "";
                this.padding_ = Padding_Var.getDefaultInstance();
                this.uipData_ = "";
                this.fontType_ = "";
                this.strParam_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$1500() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            private void ensureItemTextIsMutable() {
                if ((this.bitField0_ & 256) != 256) {
                    this.itemText_ = new LazyStringArrayList(this.itemText_);
                    this.bitField0_ |= 256;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return UiMessage.f6019c;
            }

            private SingleFieldBuilder<Padding_Var, Padding_Var.Builder, Padding_VarOrBuilder> getPaddingFieldBuilder() {
                if (this.paddingBuilder_ == null) {
                    this.paddingBuilder_ = new SingleFieldBuilder<>(this.padding_, getParentForChildren(), isClean());
                    this.padding_ = null;
                }
                return this.paddingBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (CommandToUi.alwaysUseFieldBuilders) {
                    getPaddingFieldBuilder();
                }
            }

            public final Builder addAllItemText(Iterable<String> iterable) {
                ensureItemTextIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.itemText_);
                onChanged();
                return this;
            }

            public final Builder addItemText(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                ensureItemTextIsMutable();
                this.itemText_.add((LazyStringList) str);
                onChanged();
                return this;
            }

            public final Builder addItemTextBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                ensureItemTextIsMutable();
                this.itemText_.add(byteString);
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CommandToUi build() {
                CommandToUi buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CommandToUi buildPartial() {
                CommandToUi commandToUi = new CommandToUi(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                commandToUi.command_ = this.command_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                commandToUi.controlId_ = this.controlId_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                commandToUi.parentId_ = this.parentId_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                commandToUi.text_ = this.text_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                commandToUi.width_ = this.width_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                commandToUi.height_ = this.height_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                commandToUi.layoutStyle_ = this.layoutStyle_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                commandToUi.defaultCheckStatus_ = this.defaultCheckStatus_;
                if ((this.bitField0_ & 256) == 256) {
                    this.itemText_ = new UnmodifiableLazyStringList(this.itemText_);
                    this.bitField0_ &= -257;
                }
                commandToUi.itemText_ = this.itemText_;
                if ((i & 512) == 512) {
                    i2 |= 256;
                }
                commandToUi.itemIndex_ = this.itemIndex_;
                if ((i & 1024) == 1024) {
                    i2 |= 512;
                }
                commandToUi.defaultItemIndex_ = this.defaultItemIndex_;
                if ((i & 2048) == 2048) {
                    i2 |= 1024;
                }
                commandToUi.path_ = this.path_;
                if ((i & 4096) == 4096) {
                    i2 |= 2048;
                }
                commandToUi.url_ = this.url_;
                if ((i & 8192) == 8192) {
                    i2 |= 4096;
                }
                commandToUi.enabledStatus_ = this.enabledStatus_;
                if ((i & 16384) == 16384) {
                    i2 |= 8192;
                }
                commandToUi.visibleStatus_ = this.visibleStatus_;
                if ((32768 & i) == 32768) {
                    i2 |= 16384;
                }
                commandToUi.color_ = this.color_;
                if ((65536 & i) == 65536) {
                    i2 |= 32768;
                }
                commandToUi.alignType_ = this.alignType_;
                if ((131072 & i) == 131072) {
                    i2 |= 65536;
                }
                commandToUi.padding_ = this.paddingBuilder_ == null ? this.padding_ : this.paddingBuilder_.build();
                if ((262144 & i) == 262144) {
                    i2 |= 131072;
                }
                commandToUi.uipData_ = this.uipData_;
                if ((524288 & i) == 524288) {
                    i2 |= 262144;
                }
                commandToUi.editInputType_ = this.editInputType_;
                if ((1048576 & i) == 1048576) {
                    i2 |= 524288;
                }
                commandToUi.fontType_ = this.fontType_;
                if ((2097152 & i) == 2097152) {
                    i2 |= 1048576;
                }
                commandToUi.fontSize_ = this.fontSize_;
                if ((4194304 & i) == 4194304) {
                    i2 |= 2097152;
                }
                commandToUi.left_ = this.left_;
                if ((8388608 & i) == 8388608) {
                    i2 |= 4194304;
                }
                commandToUi.top_ = this.top_;
                if ((16777216 & i) == 16777216) {
                    i2 |= 8388608;
                }
                commandToUi.intParam_ = this.intParam_;
                if ((33554432 & i) == 33554432) {
                    i2 |= 16777216;
                }
                commandToUi.strParam_ = this.strParam_;
                if ((i & 67108864) == 67108864) {
                    i2 |= 33554432;
                }
                commandToUi.boolParam_ = this.boolParam_;
                commandToUi.bitField0_ = i2;
                onBuilt();
                return commandToUi;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.command_ = Command_Type.NEW_LAYOUT;
                this.bitField0_ &= -2;
                this.controlId_ = "";
                this.bitField0_ &= -3;
                this.parentId_ = "";
                this.bitField0_ &= -5;
                this.text_ = "";
                this.bitField0_ &= -9;
                this.width_ = 0;
                this.bitField0_ &= -17;
                this.height_ = 0;
                this.bitField0_ &= -33;
                this.layoutStyle_ = 0;
                this.bitField0_ &= -65;
                this.defaultCheckStatus_ = false;
                this.bitField0_ &= -129;
                this.itemText_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -257;
                this.itemIndex_ = 0;
                this.bitField0_ &= -513;
                this.defaultItemIndex_ = 0;
                this.bitField0_ &= -1025;
                this.path_ = "";
                this.bitField0_ &= -2049;
                this.url_ = "";
                this.bitField0_ &= -4097;
                this.enabledStatus_ = false;
                this.bitField0_ &= -8193;
                this.visibleStatus_ = 0;
                this.bitField0_ &= -16385;
                this.color_ = "";
                this.bitField0_ &= -32769;
                this.alignType_ = 0;
                this.bitField0_ &= -65537;
                if (this.paddingBuilder_ == null) {
                    this.padding_ = Padding_Var.getDefaultInstance();
                } else {
                    this.paddingBuilder_.clear();
                }
                this.bitField0_ &= -131073;
                this.uipData_ = "";
                this.bitField0_ &= -262145;
                this.editInputType_ = 0;
                this.bitField0_ &= -524289;
                this.fontType_ = "";
                this.bitField0_ &= -1048577;
                this.fontSize_ = 0;
                this.bitField0_ &= -2097153;
                this.left_ = 0;
                this.bitField0_ &= -4194305;
                this.top_ = 0;
                this.bitField0_ &= -8388609;
                this.intParam_ = 0;
                this.bitField0_ &= -16777217;
                this.strParam_ = "";
                this.bitField0_ &= -33554433;
                this.boolParam_ = false;
                this.bitField0_ &= -67108865;
                return this;
            }

            public final Builder clearAlignType() {
                this.bitField0_ &= -65537;
                this.alignType_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearBoolParam() {
                this.bitField0_ &= -67108865;
                this.boolParam_ = false;
                onChanged();
                return this;
            }

            public final Builder clearColor() {
                this.bitField0_ &= -32769;
                this.color_ = CommandToUi.getDefaultInstance().getColor();
                onChanged();
                return this;
            }

            public final Builder clearCommand() {
                this.bitField0_ &= -2;
                this.command_ = Command_Type.NEW_LAYOUT;
                onChanged();
                return this;
            }

            public final Builder clearControlId() {
                this.bitField0_ &= -3;
                this.controlId_ = CommandToUi.getDefaultInstance().getControlId();
                onChanged();
                return this;
            }

            public final Builder clearDefaultCheckStatus() {
                this.bitField0_ &= -129;
                this.defaultCheckStatus_ = false;
                onChanged();
                return this;
            }

            public final Builder clearDefaultItemIndex() {
                this.bitField0_ &= -1025;
                this.defaultItemIndex_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearEditInputType() {
                this.bitField0_ &= -524289;
                this.editInputType_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearEnabledStatus() {
                this.bitField0_ &= -8193;
                this.enabledStatus_ = false;
                onChanged();
                return this;
            }

            public final Builder clearFontSize() {
                this.bitField0_ &= -2097153;
                this.fontSize_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearFontType() {
                this.bitField0_ &= -1048577;
                this.fontType_ = CommandToUi.getDefaultInstance().getFontType();
                onChanged();
                return this;
            }

            public final Builder clearHeight() {
                this.bitField0_ &= -33;
                this.height_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearIntParam() {
                this.bitField0_ &= -16777217;
                this.intParam_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearItemIndex() {
                this.bitField0_ &= -513;
                this.itemIndex_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearItemText() {
                this.itemText_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -257;
                onChanged();
                return this;
            }

            public final Builder clearLayoutStyle() {
                this.bitField0_ &= -65;
                this.layoutStyle_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearLeft() {
                this.bitField0_ &= -4194305;
                this.left_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearPadding() {
                if (this.paddingBuilder_ == null) {
                    this.padding_ = Padding_Var.getDefaultInstance();
                    onChanged();
                } else {
                    this.paddingBuilder_.clear();
                }
                this.bitField0_ &= -131073;
                return this;
            }

            public final Builder clearParentId() {
                this.bitField0_ &= -5;
                this.parentId_ = CommandToUi.getDefaultInstance().getParentId();
                onChanged();
                return this;
            }

            public final Builder clearPath() {
                this.bitField0_ &= -2049;
                this.path_ = CommandToUi.getDefaultInstance().getPath();
                onChanged();
                return this;
            }

            public final Builder clearStrParam() {
                this.bitField0_ &= -33554433;
                this.strParam_ = CommandToUi.getDefaultInstance().getStrParam();
                onChanged();
                return this;
            }

            public final Builder clearText() {
                this.bitField0_ &= -9;
                this.text_ = CommandToUi.getDefaultInstance().getText();
                onChanged();
                return this;
            }

            public final Builder clearTop() {
                this.bitField0_ &= -8388609;
                this.top_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearUipData() {
                this.bitField0_ &= -262145;
                this.uipData_ = CommandToUi.getDefaultInstance().getUipData();
                onChanged();
                return this;
            }

            public final Builder clearUrl() {
                this.bitField0_ &= -4097;
                this.url_ = CommandToUi.getDefaultInstance().getUrl();
                onChanged();
                return this;
            }

            public final Builder clearVisibleStatus() {
                this.bitField0_ &= -16385;
                this.visibleStatus_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearWidth() {
                this.bitField0_ &= -17;
                this.width_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone, reason: merged with bridge method [inline-methods] */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final int getAlignType() {
                return this.alignType_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean getBoolParam() {
                return this.boolParam_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final String getColor() {
                Object obj = this.color_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.color_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final ByteString getColorBytes() {
                Object obj = this.color_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.color_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final Command_Type getCommand() {
                return this.command_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final String getControlId() {
                Object obj = this.controlId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.controlId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final ByteString getControlIdBytes() {
                Object obj = this.controlId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.controlId_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean getDefaultCheckStatus() {
                return this.defaultCheckStatus_;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final CommandToUi getDefaultInstanceForType() {
                return CommandToUi.getDefaultInstance();
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final int getDefaultItemIndex() {
                return this.defaultItemIndex_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return UiMessage.f6019c;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final int getEditInputType() {
                return this.editInputType_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean getEnabledStatus() {
                return this.enabledStatus_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final int getFontSize() {
                return this.fontSize_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final String getFontType() {
                Object obj = this.fontType_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.fontType_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final ByteString getFontTypeBytes() {
                Object obj = this.fontType_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fontType_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final int getHeight() {
                return this.height_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final int getIntParam() {
                return this.intParam_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final int getItemIndex() {
                return this.itemIndex_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final String getItemText(int i) {
                return this.itemText_.get(i);
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final ByteString getItemTextBytes(int i) {
                return this.itemText_.getByteString(i);
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final int getItemTextCount() {
                return this.itemText_.size();
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final List<String> getItemTextList() {
                return Collections.unmodifiableList(this.itemText_);
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final int getLayoutStyle() {
                return this.layoutStyle_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final int getLeft() {
                return this.left_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final Padding_Var getPadding() {
                return this.paddingBuilder_ == null ? this.padding_ : this.paddingBuilder_.getMessage();
            }

            public final Padding_Var.Builder getPaddingBuilder() {
                this.bitField0_ |= 131072;
                onChanged();
                return getPaddingFieldBuilder().getBuilder();
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final Padding_VarOrBuilder getPaddingOrBuilder() {
                return this.paddingBuilder_ != null ? this.paddingBuilder_.getMessageOrBuilder() : this.padding_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final String getParentId() {
                Object obj = this.parentId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.parentId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final ByteString getParentIdBytes() {
                Object obj = this.parentId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.parentId_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final String getPath() {
                Object obj = this.path_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.path_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final ByteString getPathBytes() {
                Object obj = this.path_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.path_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final String getStrParam() {
                Object obj = this.strParam_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.strParam_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final ByteString getStrParamBytes() {
                Object obj = this.strParam_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.strParam_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final String getText() {
                Object obj = this.text_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.text_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final ByteString getTextBytes() {
                Object obj = this.text_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.text_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final int getTop() {
                return this.top_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final String getUipData() {
                Object obj = this.uipData_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.uipData_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final ByteString getUipDataBytes() {
                Object obj = this.uipData_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.uipData_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final String getUrl() {
                Object obj = this.url_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.url_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final ByteString getUrlBytes() {
                Object obj = this.url_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.url_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final int getVisibleStatus() {
                return this.visibleStatus_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final int getWidth() {
                return this.width_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasAlignType() {
                return (this.bitField0_ & 65536) == 65536;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasBoolParam() {
                return (this.bitField0_ & 67108864) == 67108864;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasColor() {
                return (this.bitField0_ & 32768) == 32768;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasCommand() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasControlId() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasDefaultCheckStatus() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasDefaultItemIndex() {
                return (this.bitField0_ & 1024) == 1024;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasEditInputType() {
                return (this.bitField0_ & 524288) == 524288;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasEnabledStatus() {
                return (this.bitField0_ & 8192) == 8192;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasFontSize() {
                return (this.bitField0_ & 2097152) == 2097152;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasFontType() {
                return (this.bitField0_ & 1048576) == 1048576;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasHeight() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasIntParam() {
                return (this.bitField0_ & 16777216) == 16777216;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasItemIndex() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasLayoutStyle() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasLeft() {
                return (this.bitField0_ & 4194304) == 4194304;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasPadding() {
                return (this.bitField0_ & 131072) == 131072;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasParentId() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasPath() {
                return (this.bitField0_ & 2048) == 2048;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasStrParam() {
                return (this.bitField0_ & 33554432) == 33554432;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasText() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasTop() {
                return (this.bitField0_ & 8388608) == 8388608;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasUipData() {
                return (this.bitField0_ & 262144) == 262144;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasUrl() {
                return (this.bitField0_ & 4096) == 4096;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasVisibleStatus() {
                return (this.bitField0_ & 16384) == 16384;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
            public final boolean hasWidth() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return UiMessage.f6020d.ensureFieldAccessorsInitialized(CommandToUi.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                if (hasCommand()) {
                    return !hasPadding() || getPadding().isInitialized();
                }
                return false;
            }

            public final Builder mergeFrom(CommandToUi commandToUi) {
                if (commandToUi == CommandToUi.getDefaultInstance()) {
                    return this;
                }
                if (commandToUi.hasCommand()) {
                    setCommand(commandToUi.getCommand());
                }
                if (commandToUi.hasControlId()) {
                    this.bitField0_ |= 2;
                    this.controlId_ = commandToUi.controlId_;
                    onChanged();
                }
                if (commandToUi.hasParentId()) {
                    this.bitField0_ |= 4;
                    this.parentId_ = commandToUi.parentId_;
                    onChanged();
                }
                if (commandToUi.hasText()) {
                    this.bitField0_ |= 8;
                    this.text_ = commandToUi.text_;
                    onChanged();
                }
                if (commandToUi.hasWidth()) {
                    setWidth(commandToUi.getWidth());
                }
                if (commandToUi.hasHeight()) {
                    setHeight(commandToUi.getHeight());
                }
                if (commandToUi.hasLayoutStyle()) {
                    setLayoutStyle(commandToUi.getLayoutStyle());
                }
                if (commandToUi.hasDefaultCheckStatus()) {
                    setDefaultCheckStatus(commandToUi.getDefaultCheckStatus());
                }
                if (!commandToUi.itemText_.isEmpty()) {
                    if (this.itemText_.isEmpty()) {
                        this.itemText_ = commandToUi.itemText_;
                        this.bitField0_ &= -257;
                    } else {
                        ensureItemTextIsMutable();
                        this.itemText_.addAll(commandToUi.itemText_);
                    }
                    onChanged();
                }
                if (commandToUi.hasItemIndex()) {
                    setItemIndex(commandToUi.getItemIndex());
                }
                if (commandToUi.hasDefaultItemIndex()) {
                    setDefaultItemIndex(commandToUi.getDefaultItemIndex());
                }
                if (commandToUi.hasPath()) {
                    this.bitField0_ |= 2048;
                    this.path_ = commandToUi.path_;
                    onChanged();
                }
                if (commandToUi.hasUrl()) {
                    this.bitField0_ |= 4096;
                    this.url_ = commandToUi.url_;
                    onChanged();
                }
                if (commandToUi.hasEnabledStatus()) {
                    setEnabledStatus(commandToUi.getEnabledStatus());
                }
                if (commandToUi.hasVisibleStatus()) {
                    setVisibleStatus(commandToUi.getVisibleStatus());
                }
                if (commandToUi.hasColor()) {
                    this.bitField0_ |= 32768;
                    this.color_ = commandToUi.color_;
                    onChanged();
                }
                if (commandToUi.hasAlignType()) {
                    setAlignType(commandToUi.getAlignType());
                }
                if (commandToUi.hasPadding()) {
                    mergePadding(commandToUi.getPadding());
                }
                if (commandToUi.hasUipData()) {
                    this.bitField0_ |= 262144;
                    this.uipData_ = commandToUi.uipData_;
                    onChanged();
                }
                if (commandToUi.hasEditInputType()) {
                    setEditInputType(commandToUi.getEditInputType());
                }
                if (commandToUi.hasFontType()) {
                    this.bitField0_ |= 1048576;
                    this.fontType_ = commandToUi.fontType_;
                    onChanged();
                }
                if (commandToUi.hasFontSize()) {
                    setFontSize(commandToUi.getFontSize());
                }
                if (commandToUi.hasLeft()) {
                    setLeft(commandToUi.getLeft());
                }
                if (commandToUi.hasTop()) {
                    setTop(commandToUi.getTop());
                }
                if (commandToUi.hasIntParam()) {
                    setIntParam(commandToUi.getIntParam());
                }
                if (commandToUi.hasStrParam()) {
                    this.bitField0_ |= 33554432;
                    this.strParam_ = commandToUi.strParam_;
                    onChanged();
                }
                if (commandToUi.hasBoolParam()) {
                    setBoolParam(commandToUi.getBoolParam());
                }
                mergeUnknownFields(commandToUi.getUnknownFields());
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUi.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.cyjh.mobileanjian.ipc.share.proto.UiMessage$CommandToUi> r1 = com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUi.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.cyjh.mobileanjian.ipc.share.proto.UiMessage$CommandToUi r3 = (com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUi) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
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
                    com.cyjh.mobileanjian.ipc.share.proto.UiMessage$CommandToUi r4 = (com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUi) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUi.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.cyjh.mobileanjian.ipc.share.proto.UiMessage$CommandToUi$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CommandToUi) {
                    return mergeFrom((CommandToUi) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergePadding(Padding_Var padding_Var) {
                if (this.paddingBuilder_ == null) {
                    if ((this.bitField0_ & 131072) == 131072 && this.padding_ != Padding_Var.getDefaultInstance()) {
                        padding_Var = Padding_Var.newBuilder(this.padding_).mergeFrom(padding_Var).buildPartial();
                    }
                    this.padding_ = padding_Var;
                    onChanged();
                } else {
                    this.paddingBuilder_.mergeFrom(padding_Var);
                }
                this.bitField0_ |= 131072;
                return this;
            }

            public final Builder setAlignType(int i) {
                this.bitField0_ |= 65536;
                this.alignType_ = i;
                onChanged();
                return this;
            }

            public final Builder setBoolParam(boolean z) {
                this.bitField0_ |= 67108864;
                this.boolParam_ = z;
                onChanged();
                return this;
            }

            public final Builder setColor(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32768;
                this.color_ = str;
                onChanged();
                return this;
            }

            public final Builder setColorBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32768;
                this.color_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setCommand(Command_Type command_Type) {
                if (command_Type == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.command_ = command_Type;
                onChanged();
                return this;
            }

            public final Builder setControlId(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.controlId_ = str;
                onChanged();
                return this;
            }

            public final Builder setControlIdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.controlId_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setDefaultCheckStatus(boolean z) {
                this.bitField0_ |= 128;
                this.defaultCheckStatus_ = z;
                onChanged();
                return this;
            }

            public final Builder setDefaultItemIndex(int i) {
                this.bitField0_ |= 1024;
                this.defaultItemIndex_ = i;
                onChanged();
                return this;
            }

            public final Builder setEditInputType(int i) {
                this.bitField0_ |= 524288;
                this.editInputType_ = i;
                onChanged();
                return this;
            }

            public final Builder setEnabledStatus(boolean z) {
                this.bitField0_ |= 8192;
                this.enabledStatus_ = z;
                onChanged();
                return this;
            }

            public final Builder setFontSize(int i) {
                this.bitField0_ |= 2097152;
                this.fontSize_ = i;
                onChanged();
                return this;
            }

            public final Builder setFontType(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1048576;
                this.fontType_ = str;
                onChanged();
                return this;
            }

            public final Builder setFontTypeBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1048576;
                this.fontType_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setHeight(int i) {
                this.bitField0_ |= 32;
                this.height_ = i;
                onChanged();
                return this;
            }

            public final Builder setIntParam(int i) {
                this.bitField0_ |= 16777216;
                this.intParam_ = i;
                onChanged();
                return this;
            }

            public final Builder setItemIndex(int i) {
                this.bitField0_ |= 512;
                this.itemIndex_ = i;
                onChanged();
                return this;
            }

            public final Builder setItemText(int i, String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                ensureItemTextIsMutable();
                this.itemText_.set(i, str);
                onChanged();
                return this;
            }

            public final Builder setLayoutStyle(int i) {
                this.bitField0_ |= 64;
                this.layoutStyle_ = i;
                onChanged();
                return this;
            }

            public final Builder setLeft(int i) {
                this.bitField0_ |= 4194304;
                this.left_ = i;
                onChanged();
                return this;
            }

            public final Builder setPadding(Padding_Var.Builder builder) {
                if (this.paddingBuilder_ == null) {
                    this.padding_ = builder.build();
                    onChanged();
                } else {
                    this.paddingBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 131072;
                return this;
            }

            public final Builder setPadding(Padding_Var padding_Var) {
                if (this.paddingBuilder_ != null) {
                    this.paddingBuilder_.setMessage(padding_Var);
                } else {
                    if (padding_Var == null) {
                        throw new NullPointerException();
                    }
                    this.padding_ = padding_Var;
                    onChanged();
                }
                this.bitField0_ |= 131072;
                return this;
            }

            public final Builder setParentId(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.parentId_ = str;
                onChanged();
                return this;
            }

            public final Builder setParentIdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.parentId_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setPath(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2048;
                this.path_ = str;
                onChanged();
                return this;
            }

            public final Builder setPathBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2048;
                this.path_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setStrParam(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 33554432;
                this.strParam_ = str;
                onChanged();
                return this;
            }

            public final Builder setStrParamBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 33554432;
                this.strParam_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setText(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.text_ = str;
                onChanged();
                return this;
            }

            public final Builder setTextBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.text_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setTop(int i) {
                this.bitField0_ |= 8388608;
                this.top_ = i;
                onChanged();
                return this;
            }

            public final Builder setUipData(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 262144;
                this.uipData_ = str;
                onChanged();
                return this;
            }

            public final Builder setUipDataBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 262144;
                this.uipData_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setUrl(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4096;
                this.url_ = str;
                onChanged();
                return this;
            }

            public final Builder setUrlBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4096;
                this.url_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setVisibleStatus(int i) {
                this.bitField0_ |= 16384;
                this.visibleStatus_ = i;
                onChanged();
                return this;
            }

            public final Builder setWidth(int i) {
                this.bitField0_ |= 16;
                this.width_ = i;
                onChanged();
                return this;
            }
        }

        /* loaded from: classes.dex */
        public enum Command_Type implements ProtocolMessageEnum {
            NEW_LAYOUT(0, 1),
            SHOW_LAYOUT(1, 2),
            CLOSE_LAYOUT(2, 3),
            NEW_FLOAT(3, 4),
            SHOW_FLOAT(4, 5),
            CLOSE_FLOAT(5, 6),
            HIDE_FLOAT(6, 7),
            NEW_ROW(7, 100),
            ADD_TEXT_VIEW(8, 101),
            ADD_EDIT_TEXT(9, 102),
            ADD_BUTTON(10, 103),
            ADD_RADIO_GROUP(11, 104),
            ADD_CHECK_BOX(12, 105),
            ADD_IMAGE_VIEW(13, 106),
            ADD_SPINNER(14, 107),
            ADD_TAB_HOST(15, 108),
            ADD_TAB(16, 109),
            ADD_WEB_VIEW(17, 110),
            ADD_LINE(18, 111),
            ADD_FW_BUTTON(19, 112),
            ADD_FW_TEXT_VIEW(20, 113),
            ADD_FW_IMAGE_VIEW(21, 114),
            SET_TEXT_VIEW(22, 201),
            SET_EDIT_TEXT(23, 202),
            SET_BOTTON(24, SET_BOTTON_VALUE),
            SET_RADIO_GROUP(25, SET_RADIO_GROUP_VALUE),
            SET_CHECK_BOX(26, SET_CHECK_BOX_VALUE),
            SET_IMAGE_VIEW(27, SET_IMAGE_VIEW_VALUE),
            SET_SPINNER(28, SET_SPINNER_VALUE),
            SET_TAB(29, SET_TAB_VALUE),
            SET_WEB_VIEW(30, SET_WEB_VIEW_VALUE),
            SET_LINE(31, SET_LINE_VALUE),
            SET_EDIT_INPUT_TYPE(32, SET_EDIT_INPUT_TYPE_VALUE),
            SET_FONT(33, SET_FONT_VALUE),
            SET_FONT_SIZE_LEVEL(34, SET_FONT_SIZE_LEVEL_VALUE),
            SET_ROW_ALIGNMENT(35, SET_ROW_ALIGNMENT_VALUE),
            SET_FW_BUTTON(36, SET_FW_BUTTON_VALUE),
            SET_FW_TEXT_VIEW(37, SET_FW_TEXT_VIEW_VALUE),
            SET_FW_IMAGE_VIEW(38, SET_FW_IMAGE_VIEW_VALUE),
            SET_ENABLED(39, SET_ENABLED_VALUE),
            SET_VISIBLE(40, SET_VISIBLE_VALUE),
            SET_TITLE_TEXT(41, SET_TITLE_TEXT_VALUE),
            SET_TEXT(42, SET_TEXT_VALUE),
            SET_BACKCOLOR(43, SET_BACKCOLOR_VALUE),
            SET_TITLE_BACKCOLOR(44, SET_TITLE_BACKCOLOR_VALUE),
            SET_TEXTCOLOR(45, 307),
            SET_FW_PIC(46, 308),
            SET_FW_BG(47, SET_FW_BG_VALUE),
            SET_FW_TEXT_COLOR(48, SET_FW_TEXT_COLOR_VALUE),
            SET_FW_TEXT_SIZE(49, SET_FW_TEXT_SIZE_VALUE),
            SET_FW_ENABLE(50, SET_FW_ENABLE_VALUE),
            SET_FW_VISIBLE(51, SET_FW_VISIBLE_VALUE),
            GET_ENABLED(52, GET_ENABLED_VALUE),
            GET_VISIBLE(53, GET_VISIBLE_VALUE),
            GET_TITLE_TEXT(54, GET_TITLE_TEXT_VALUE),
            GET_TEXT(55, GET_TEXT_VALUE),
            GET_BACKCOLOR(56, GET_BACKCOLOR_VALUE),
            GET_TITLE_BACKCOLOR(57, GET_TITLE_BACKCOLOR_VALUE),
            GET_TEXTCOLOR(58, GET_TEXTCOLOR_VALUE),
            GET_VALUE(59, GET_VALUE_VALUE),
            GET_FW_ENABLE(60, GET_FW_ENABLE_VALUE),
            GET_FW_VISIBLE(61, GET_FW_VISIBLE_VALUE),
            GET_FW_TEXT_COLOR(62, GET_FW_TEXT_COLOR_VALUE),
            SET_WINDOW_GRAVITY(63, SET_WINDOW_GRAVITY_VALUE),
            SET_CONTROL_GRAVITY(64, SET_CONTROL_GRAVITY_VALUE),
            SET_PADDING(65, SET_PADDING_VALUE),
            SET_FULLSCREEN(66, SET_FULLSCREEN_VALUE),
            LOAD_PROFILE(67, LOAD_PROFILE_VALUE),
            SAVE_PROFILE(68, 602),
            SET_FW_SMOOTH(69, SET_FW_SMOOTH_VALUE),
            IS_FW_TOUCHMOVE(70, 604),
            FW_ZORDER(71, FW_ZORDER_VALUE),
            FW_OPACITY(72, FW_OPACITY_VALUE),
            FW_GET_VALUE(73, FW_GET_VALUE_VALUE),
            FW_SET_LEFT(74, FW_SET_LEFT_VALUE),
            FW_SET_TOP(75, FW_SET_TOP_VALUE),
            FW_SET_WIDTH(76, FW_SET_WIDTH_VALUE),
            FW_SET_HEIGHT(77, FW_SET_HEIGHT_VALUE),
            FW_SET_TEXT(78, FW_SET_TEXT_VALUE),
            GET_UIP_DATA(79, GET_UIP_DATA_VALUE),
            SET_UIP_DATA(80, SET_UIP_DATA_VALUE),
            CLOSE_CONTINUE_ACK(81, CLOSE_CONTINUE_ACK_VALUE),
            CLOSE_EXIT_ACK(82, CLOSE_EXIT_ACK_VALUE);

            public static final int ADD_BUTTON_VALUE = 103;
            public static final int ADD_CHECK_BOX_VALUE = 105;
            public static final int ADD_EDIT_TEXT_VALUE = 102;
            public static final int ADD_FW_BUTTON_VALUE = 112;
            public static final int ADD_FW_IMAGE_VIEW_VALUE = 114;
            public static final int ADD_FW_TEXT_VIEW_VALUE = 113;
            public static final int ADD_IMAGE_VIEW_VALUE = 106;
            public static final int ADD_LINE_VALUE = 111;
            public static final int ADD_RADIO_GROUP_VALUE = 104;
            public static final int ADD_SPINNER_VALUE = 107;
            public static final int ADD_TAB_HOST_VALUE = 108;
            public static final int ADD_TAB_VALUE = 109;
            public static final int ADD_TEXT_VIEW_VALUE = 101;
            public static final int ADD_WEB_VIEW_VALUE = 110;
            public static final int CLOSE_CONTINUE_ACK_VALUE = 801;
            public static final int CLOSE_EXIT_ACK_VALUE = 802;
            public static final int CLOSE_FLOAT_VALUE = 6;
            public static final int CLOSE_LAYOUT_VALUE = 3;
            public static final int FW_GET_VALUE_VALUE = 607;
            public static final int FW_OPACITY_VALUE = 606;
            public static final int FW_SET_HEIGHT_VALUE = 611;
            public static final int FW_SET_LEFT_VALUE = 608;
            public static final int FW_SET_TEXT_VALUE = 612;
            public static final int FW_SET_TOP_VALUE = 609;
            public static final int FW_SET_WIDTH_VALUE = 610;
            public static final int FW_ZORDER_VALUE = 605;
            public static final int GET_BACKCOLOR_VALUE = 405;
            public static final int GET_ENABLED_VALUE = 401;
            public static final int GET_FW_ENABLE_VALUE = 409;
            public static final int GET_FW_TEXT_COLOR_VALUE = 411;
            public static final int GET_FW_VISIBLE_VALUE = 410;
            public static final int GET_TEXTCOLOR_VALUE = 407;
            public static final int GET_TEXT_VALUE = 404;
            public static final int GET_TITLE_BACKCOLOR_VALUE = 406;
            public static final int GET_TITLE_TEXT_VALUE = 403;
            public static final int GET_UIP_DATA_VALUE = 701;
            public static final int GET_VALUE_VALUE = 408;
            public static final int GET_VISIBLE_VALUE = 402;
            public static final int HIDE_FLOAT_VALUE = 7;
            public static final int IS_FW_TOUCHMOVE_VALUE = 604;
            public static final int LOAD_PROFILE_VALUE = 601;
            public static final int NEW_FLOAT_VALUE = 4;
            public static final int NEW_LAYOUT_VALUE = 1;
            public static final int NEW_ROW_VALUE = 100;
            public static final int SAVE_PROFILE_VALUE = 602;
            public static final int SET_BACKCOLOR_VALUE = 305;
            public static final int SET_BOTTON_VALUE = 203;
            public static final int SET_CHECK_BOX_VALUE = 205;
            public static final int SET_CONTROL_GRAVITY_VALUE = 502;
            public static final int SET_EDIT_INPUT_TYPE_VALUE = 211;
            public static final int SET_EDIT_TEXT_VALUE = 202;
            public static final int SET_ENABLED_VALUE = 301;
            public static final int SET_FONT_SIZE_LEVEL_VALUE = 213;
            public static final int SET_FONT_VALUE = 212;
            public static final int SET_FULLSCREEN_VALUE = 504;
            public static final int SET_FW_BG_VALUE = 309;
            public static final int SET_FW_BUTTON_VALUE = 215;
            public static final int SET_FW_ENABLE_VALUE = 312;
            public static final int SET_FW_IMAGE_VIEW_VALUE = 217;
            public static final int SET_FW_PIC_VALUE = 308;
            public static final int SET_FW_SMOOTH_VALUE = 603;
            public static final int SET_FW_TEXT_COLOR_VALUE = 310;
            public static final int SET_FW_TEXT_SIZE_VALUE = 311;
            public static final int SET_FW_TEXT_VIEW_VALUE = 216;
            public static final int SET_FW_VISIBLE_VALUE = 313;
            public static final int SET_IMAGE_VIEW_VALUE = 206;
            public static final int SET_LINE_VALUE = 210;
            public static final int SET_PADDING_VALUE = 503;
            public static final int SET_RADIO_GROUP_VALUE = 204;
            public static final int SET_ROW_ALIGNMENT_VALUE = 214;
            public static final int SET_SPINNER_VALUE = 207;
            public static final int SET_TAB_VALUE = 208;
            public static final int SET_TEXTCOLOR_VALUE = 307;
            public static final int SET_TEXT_VALUE = 304;
            public static final int SET_TEXT_VIEW_VALUE = 201;
            public static final int SET_TITLE_BACKCOLOR_VALUE = 306;
            public static final int SET_TITLE_TEXT_VALUE = 303;
            public static final int SET_UIP_DATA_VALUE = 702;
            public static final int SET_VISIBLE_VALUE = 302;
            public static final int SET_WEB_VIEW_VALUE = 209;
            public static final int SET_WINDOW_GRAVITY_VALUE = 501;
            public static final int SHOW_FLOAT_VALUE = 5;
            public static final int SHOW_LAYOUT_VALUE = 2;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<Command_Type> internalValueMap = new Internal.EnumLiteMap<Command_Type>() { // from class: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUi.Command_Type.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public final Command_Type findValueByNumber(int i) {
                    return Command_Type.valueOf(i);
                }
            };
            private static final Command_Type[] VALUES = values();

            Command_Type(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return CommandToUi.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<Command_Type> internalGetValueMap() {
                return internalValueMap;
            }

            public static Command_Type valueOf(int i) {
                switch (i) {
                    case 1:
                        return NEW_LAYOUT;
                    case 2:
                        return SHOW_LAYOUT;
                    case 3:
                        return CLOSE_LAYOUT;
                    case 4:
                        return NEW_FLOAT;
                    case 5:
                        return SHOW_FLOAT;
                    case 6:
                        return CLOSE_FLOAT;
                    case 7:
                        return HIDE_FLOAT;
                    default:
                        switch (i) {
                            case 100:
                                return NEW_ROW;
                            case 101:
                                return ADD_TEXT_VIEW;
                            case 102:
                                return ADD_EDIT_TEXT;
                            case 103:
                                return ADD_BUTTON;
                            case 104:
                                return ADD_RADIO_GROUP;
                            case 105:
                                return ADD_CHECK_BOX;
                            case 106:
                                return ADD_IMAGE_VIEW;
                            case 107:
                                return ADD_SPINNER;
                            case 108:
                                return ADD_TAB_HOST;
                            case 109:
                                return ADD_TAB;
                            case 110:
                                return ADD_WEB_VIEW;
                            case 111:
                                return ADD_LINE;
                            case 112:
                                return ADD_FW_BUTTON;
                            case 113:
                                return ADD_FW_TEXT_VIEW;
                            case 114:
                                return ADD_FW_IMAGE_VIEW;
                            default:
                                switch (i) {
                                    case 201:
                                        return SET_TEXT_VIEW;
                                    case 202:
                                        return SET_EDIT_TEXT;
                                    case SET_BOTTON_VALUE:
                                        return SET_BOTTON;
                                    case SET_RADIO_GROUP_VALUE:
                                        return SET_RADIO_GROUP;
                                    case SET_CHECK_BOX_VALUE:
                                        return SET_CHECK_BOX;
                                    case SET_IMAGE_VIEW_VALUE:
                                        return SET_IMAGE_VIEW;
                                    case SET_SPINNER_VALUE:
                                        return SET_SPINNER;
                                    case SET_TAB_VALUE:
                                        return SET_TAB;
                                    case SET_WEB_VIEW_VALUE:
                                        return SET_WEB_VIEW;
                                    case SET_LINE_VALUE:
                                        return SET_LINE;
                                    case SET_EDIT_INPUT_TYPE_VALUE:
                                        return SET_EDIT_INPUT_TYPE;
                                    case SET_FONT_VALUE:
                                        return SET_FONT;
                                    case SET_FONT_SIZE_LEVEL_VALUE:
                                        return SET_FONT_SIZE_LEVEL;
                                    case SET_ROW_ALIGNMENT_VALUE:
                                        return SET_ROW_ALIGNMENT;
                                    case SET_FW_BUTTON_VALUE:
                                        return SET_FW_BUTTON;
                                    case SET_FW_TEXT_VIEW_VALUE:
                                        return SET_FW_TEXT_VIEW;
                                    case SET_FW_IMAGE_VIEW_VALUE:
                                        return SET_FW_IMAGE_VIEW;
                                    default:
                                        switch (i) {
                                            case SET_ENABLED_VALUE:
                                                return SET_ENABLED;
                                            case SET_VISIBLE_VALUE:
                                                return SET_VISIBLE;
                                            case SET_TITLE_TEXT_VALUE:
                                                return SET_TITLE_TEXT;
                                            case SET_TEXT_VALUE:
                                                return SET_TEXT;
                                            case SET_BACKCOLOR_VALUE:
                                                return SET_BACKCOLOR;
                                            case SET_TITLE_BACKCOLOR_VALUE:
                                                return SET_TITLE_BACKCOLOR;
                                            case 307:
                                                return SET_TEXTCOLOR;
                                            case 308:
                                                return SET_FW_PIC;
                                            case SET_FW_BG_VALUE:
                                                return SET_FW_BG;
                                            case SET_FW_TEXT_COLOR_VALUE:
                                                return SET_FW_TEXT_COLOR;
                                            case SET_FW_TEXT_SIZE_VALUE:
                                                return SET_FW_TEXT_SIZE;
                                            case SET_FW_ENABLE_VALUE:
                                                return SET_FW_ENABLE;
                                            case SET_FW_VISIBLE_VALUE:
                                                return SET_FW_VISIBLE;
                                            default:
                                                switch (i) {
                                                    case GET_ENABLED_VALUE:
                                                        return GET_ENABLED;
                                                    case GET_VISIBLE_VALUE:
                                                        return GET_VISIBLE;
                                                    case GET_TITLE_TEXT_VALUE:
                                                        return GET_TITLE_TEXT;
                                                    case GET_TEXT_VALUE:
                                                        return GET_TEXT;
                                                    case GET_BACKCOLOR_VALUE:
                                                        return GET_BACKCOLOR;
                                                    case GET_TITLE_BACKCOLOR_VALUE:
                                                        return GET_TITLE_BACKCOLOR;
                                                    case GET_TEXTCOLOR_VALUE:
                                                        return GET_TEXTCOLOR;
                                                    case GET_VALUE_VALUE:
                                                        return GET_VALUE;
                                                    case GET_FW_ENABLE_VALUE:
                                                        return GET_FW_ENABLE;
                                                    case GET_FW_VISIBLE_VALUE:
                                                        return GET_FW_VISIBLE;
                                                    case GET_FW_TEXT_COLOR_VALUE:
                                                        return GET_FW_TEXT_COLOR;
                                                    default:
                                                        switch (i) {
                                                            case SET_WINDOW_GRAVITY_VALUE:
                                                                return SET_WINDOW_GRAVITY;
                                                            case SET_CONTROL_GRAVITY_VALUE:
                                                                return SET_CONTROL_GRAVITY;
                                                            case SET_PADDING_VALUE:
                                                                return SET_PADDING;
                                                            case SET_FULLSCREEN_VALUE:
                                                                return SET_FULLSCREEN;
                                                            default:
                                                                switch (i) {
                                                                    case LOAD_PROFILE_VALUE:
                                                                        return LOAD_PROFILE;
                                                                    case 602:
                                                                        return SAVE_PROFILE;
                                                                    case SET_FW_SMOOTH_VALUE:
                                                                        return SET_FW_SMOOTH;
                                                                    case 604:
                                                                        return IS_FW_TOUCHMOVE;
                                                                    case FW_ZORDER_VALUE:
                                                                        return FW_ZORDER;
                                                                    case FW_OPACITY_VALUE:
                                                                        return FW_OPACITY;
                                                                    case FW_GET_VALUE_VALUE:
                                                                        return FW_GET_VALUE;
                                                                    case FW_SET_LEFT_VALUE:
                                                                        return FW_SET_LEFT;
                                                                    case FW_SET_TOP_VALUE:
                                                                        return FW_SET_TOP;
                                                                    case FW_SET_WIDTH_VALUE:
                                                                        return FW_SET_WIDTH;
                                                                    case FW_SET_HEIGHT_VALUE:
                                                                        return FW_SET_HEIGHT;
                                                                    case FW_SET_TEXT_VALUE:
                                                                        return FW_SET_TEXT;
                                                                    default:
                                                                        switch (i) {
                                                                            case GET_UIP_DATA_VALUE:
                                                                                return GET_UIP_DATA;
                                                                            case SET_UIP_DATA_VALUE:
                                                                                return SET_UIP_DATA;
                                                                            default:
                                                                                switch (i) {
                                                                                    case CLOSE_CONTINUE_ACK_VALUE:
                                                                                        return CLOSE_CONTINUE_ACK;
                                                                                    case CLOSE_EXIT_ACK_VALUE:
                                                                                        return CLOSE_EXIT_ACK;
                                                                                    default:
                                                                                        return null;
                                                                                }
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
            }

            public static Command_Type valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() != getDescriptor()) {
                    throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(this.index);
            }
        }

        static {
            CommandToUi commandToUi = new CommandToUi(true);
            defaultInstance = commandToUi;
            commandToUi.initFields();
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:6:0x001a. Please report as an issue. */
        private CommandToUi(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            int i = 0;
            while (true) {
                if (z) {
                    return;
                }
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        switch (readTag) {
                            case 0:
                                z = true;
                            case 8:
                                int readEnum = codedInputStream.readEnum();
                                Command_Type valueOf = Command_Type.valueOf(readEnum);
                                if (valueOf == null) {
                                    newBuilder.mergeVarintField(1, readEnum);
                                } else {
                                    this.bitField0_ |= 1;
                                    this.command_ = valueOf;
                                }
                            case 18:
                                this.bitField0_ |= 2;
                                this.controlId_ = codedInputStream.readBytes();
                            case 26:
                                this.bitField0_ |= 4;
                                this.parentId_ = codedInputStream.readBytes();
                            case 34:
                                this.bitField0_ |= 8;
                                this.text_ = codedInputStream.readBytes();
                            case 40:
                                this.bitField0_ |= 16;
                                this.width_ = codedInputStream.readInt32();
                            case 48:
                                this.bitField0_ |= 32;
                                this.height_ = codedInputStream.readInt32();
                            case 56:
                                this.bitField0_ |= 64;
                                this.layoutStyle_ = codedInputStream.readInt32();
                            case 64:
                                this.bitField0_ |= 128;
                                this.defaultCheckStatus_ = codedInputStream.readBool();
                            case 74:
                                if ((i & 256) != 256) {
                                    this.itemText_ = new LazyStringArrayList();
                                    i |= 256;
                                }
                                this.itemText_.add(codedInputStream.readBytes());
                            case 80:
                                this.bitField0_ |= 256;
                                this.itemIndex_ = codedInputStream.readInt32();
                            case 88:
                                this.bitField0_ |= 512;
                                this.defaultItemIndex_ = codedInputStream.readInt32();
                            case 98:
                                this.bitField0_ |= 1024;
                                this.path_ = codedInputStream.readBytes();
                            case 106:
                                this.bitField0_ |= 2048;
                                this.url_ = codedInputStream.readBytes();
                            case 112:
                                this.bitField0_ |= 4096;
                                this.enabledStatus_ = codedInputStream.readBool();
                            case 120:
                                this.bitField0_ |= 8192;
                                this.visibleStatus_ = codedInputStream.readInt32();
                            case 130:
                                this.bitField0_ |= 16384;
                                this.color_ = codedInputStream.readBytes();
                            case 136:
                                this.bitField0_ |= 32768;
                                this.alignType_ = codedInputStream.readInt32();
                            case 146:
                                Padding_Var.Builder builder = (this.bitField0_ & 65536) == 65536 ? this.padding_.toBuilder() : null;
                                this.padding_ = (Padding_Var) codedInputStream.readMessage(Padding_Var.PARSER, extensionRegistryLite);
                                if (builder != null) {
                                    builder.mergeFrom(this.padding_);
                                    this.padding_ = builder.buildPartial();
                                }
                                this.bitField0_ |= 65536;
                            case 154:
                                this.bitField0_ |= 131072;
                                this.uipData_ = codedInputStream.readBytes();
                            case 160:
                                this.bitField0_ |= 262144;
                                this.editInputType_ = codedInputStream.readInt32();
                            case 170:
                                this.bitField0_ |= 524288;
                                this.fontType_ = codedInputStream.readBytes();
                            case 176:
                                this.bitField0_ |= 1048576;
                                this.fontSize_ = codedInputStream.readInt32();
                            case 184:
                                this.bitField0_ |= 2097152;
                                this.left_ = codedInputStream.readInt32();
                            case 192:
                                this.bitField0_ |= 4194304;
                                this.top_ = codedInputStream.readInt32();
                            case 200:
                                this.bitField0_ |= 8388608;
                                this.intParam_ = codedInputStream.readInt32();
                            case SET_LINE_VALUE:
                                this.bitField0_ |= 16777216;
                                this.strParam_ = codedInputStream.readBytes();
                            case SET_FW_TEXT_VIEW_VALUE:
                                this.bitField0_ |= 33554432;
                                this.boolParam_ = codedInputStream.readBool();
                            default:
                                if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                    z = true;
                                }
                        }
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    if ((i & 256) == 256) {
                        this.itemText_ = new UnmodifiableLazyStringList(this.itemText_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CommandToUi(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CommandToUi(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CommandToUi getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return UiMessage.f6019c;
        }

        private void initFields() {
            this.command_ = Command_Type.NEW_LAYOUT;
            this.controlId_ = "";
            this.parentId_ = "";
            this.text_ = "";
            this.width_ = 0;
            this.height_ = 0;
            this.layoutStyle_ = 0;
            this.defaultCheckStatus_ = false;
            this.itemText_ = LazyStringArrayList.EMPTY;
            this.itemIndex_ = 0;
            this.defaultItemIndex_ = 0;
            this.path_ = "";
            this.url_ = "";
            this.enabledStatus_ = false;
            this.visibleStatus_ = 0;
            this.color_ = "";
            this.alignType_ = 0;
            this.padding_ = Padding_Var.getDefaultInstance();
            this.uipData_ = "";
            this.editInputType_ = 0;
            this.fontType_ = "";
            this.fontSize_ = 0;
            this.left_ = 0;
            this.top_ = 0;
            this.intParam_ = 0;
            this.strParam_ = "";
            this.boolParam_ = false;
        }

        public static Builder newBuilder() {
            return Builder.access$1500();
        }

        public static Builder newBuilder(CommandToUi commandToUi) {
            return newBuilder().mergeFrom(commandToUi);
        }

        public static CommandToUi parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CommandToUi parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CommandToUi parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CommandToUi parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CommandToUi parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CommandToUi parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CommandToUi parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CommandToUi parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CommandToUi parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CommandToUi parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final int getAlignType() {
            return this.alignType_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean getBoolParam() {
            return this.boolParam_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final String getColor() {
            Object obj = this.color_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.color_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final ByteString getColorBytes() {
            Object obj = this.color_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.color_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final Command_Type getCommand() {
            return this.command_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final String getControlId() {
            Object obj = this.controlId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.controlId_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final ByteString getControlIdBytes() {
            Object obj = this.controlId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.controlId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean getDefaultCheckStatus() {
            return this.defaultCheckStatus_;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final CommandToUi getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final int getDefaultItemIndex() {
            return this.defaultItemIndex_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final int getEditInputType() {
            return this.editInputType_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean getEnabledStatus() {
            return this.enabledStatus_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final int getFontSize() {
            return this.fontSize_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final String getFontType() {
            Object obj = this.fontType_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.fontType_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final ByteString getFontTypeBytes() {
            Object obj = this.fontType_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.fontType_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final int getHeight() {
            return this.height_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final int getIntParam() {
            return this.intParam_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final int getItemIndex() {
            return this.itemIndex_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final String getItemText(int i) {
            return this.itemText_.get(i);
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final ByteString getItemTextBytes(int i) {
            return this.itemText_.getByteString(i);
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final int getItemTextCount() {
            return this.itemText_.size();
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final List<String> getItemTextList() {
            return this.itemText_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final int getLayoutStyle() {
            return this.layoutStyle_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final int getLeft() {
            return this.left_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final Padding_Var getPadding() {
            return this.padding_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final Padding_VarOrBuilder getPaddingOrBuilder() {
            return this.padding_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final String getParentId() {
            Object obj = this.parentId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.parentId_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final ByteString getParentIdBytes() {
            Object obj = this.parentId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.parentId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<CommandToUi> getParserForType() {
            return PARSER;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final String getPath() {
            Object obj = this.path_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.path_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final ByteString getPathBytes() {
            Object obj = this.path_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.path_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = (this.bitField0_ & 1) == 1 ? CodedOutputStream.computeEnumSize(1, this.command_.getNumber()) + 0 : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeEnumSize += CodedOutputStream.computeBytesSize(2, getControlIdBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                computeEnumSize += CodedOutputStream.computeBytesSize(3, getParentIdBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                computeEnumSize += CodedOutputStream.computeBytesSize(4, getTextBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                computeEnumSize += CodedOutputStream.computeInt32Size(5, this.width_);
            }
            if ((this.bitField0_ & 32) == 32) {
                computeEnumSize += CodedOutputStream.computeInt32Size(6, this.height_);
            }
            if ((this.bitField0_ & 64) == 64) {
                computeEnumSize += CodedOutputStream.computeInt32Size(7, this.layoutStyle_);
            }
            if ((this.bitField0_ & 128) == 128) {
                computeEnumSize += CodedOutputStream.computeBoolSize(8, this.defaultCheckStatus_);
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.itemText_.size(); i3++) {
                i2 += CodedOutputStream.computeBytesSizeNoTag(this.itemText_.getByteString(i3));
            }
            int size = computeEnumSize + i2 + (getItemTextList().size() * 1);
            if ((this.bitField0_ & 256) == 256) {
                size += CodedOutputStream.computeInt32Size(10, this.itemIndex_);
            }
            if ((this.bitField0_ & 512) == 512) {
                size += CodedOutputStream.computeInt32Size(11, this.defaultItemIndex_);
            }
            if ((this.bitField0_ & 1024) == 1024) {
                size += CodedOutputStream.computeBytesSize(12, getPathBytes());
            }
            if ((this.bitField0_ & 2048) == 2048) {
                size += CodedOutputStream.computeBytesSize(13, getUrlBytes());
            }
            if ((this.bitField0_ & 4096) == 4096) {
                size += CodedOutputStream.computeBoolSize(14, this.enabledStatus_);
            }
            if ((this.bitField0_ & 8192) == 8192) {
                size += CodedOutputStream.computeInt32Size(15, this.visibleStatus_);
            }
            if ((this.bitField0_ & 16384) == 16384) {
                size += CodedOutputStream.computeBytesSize(16, getColorBytes());
            }
            if ((this.bitField0_ & 32768) == 32768) {
                size += CodedOutputStream.computeInt32Size(17, this.alignType_);
            }
            if ((this.bitField0_ & 65536) == 65536) {
                size += CodedOutputStream.computeMessageSize(18, this.padding_);
            }
            if ((this.bitField0_ & 131072) == 131072) {
                size += CodedOutputStream.computeBytesSize(19, getUipDataBytes());
            }
            if ((this.bitField0_ & 262144) == 262144) {
                size += CodedOutputStream.computeInt32Size(20, this.editInputType_);
            }
            if ((this.bitField0_ & 524288) == 524288) {
                size += CodedOutputStream.computeBytesSize(21, getFontTypeBytes());
            }
            if ((this.bitField0_ & 1048576) == 1048576) {
                size += CodedOutputStream.computeInt32Size(22, this.fontSize_);
            }
            if ((this.bitField0_ & 2097152) == 2097152) {
                size += CodedOutputStream.computeInt32Size(23, this.left_);
            }
            if ((this.bitField0_ & 4194304) == 4194304) {
                size += CodedOutputStream.computeInt32Size(24, this.top_);
            }
            if ((this.bitField0_ & 8388608) == 8388608) {
                size += CodedOutputStream.computeInt32Size(25, this.intParam_);
            }
            if ((this.bitField0_ & 16777216) == 16777216) {
                size += CodedOutputStream.computeBytesSize(26, getStrParamBytes());
            }
            if ((this.bitField0_ & 33554432) == 33554432) {
                size += CodedOutputStream.computeBoolSize(27, this.boolParam_);
            }
            int serializedSize = size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final String getStrParam() {
            Object obj = this.strParam_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.strParam_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final ByteString getStrParamBytes() {
            Object obj = this.strParam_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.strParam_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final String getText() {
            Object obj = this.text_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.text_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final ByteString getTextBytes() {
            Object obj = this.text_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.text_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final int getTop() {
            return this.top_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final String getUipData() {
            Object obj = this.uipData_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.uipData_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final ByteString getUipDataBytes() {
            Object obj = this.uipData_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.uipData_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final String getUrl() {
            Object obj = this.url_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.url_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final ByteString getUrlBytes() {
            Object obj = this.url_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.url_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final int getVisibleStatus() {
            return this.visibleStatus_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final int getWidth() {
            return this.width_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasAlignType() {
            return (this.bitField0_ & 32768) == 32768;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasBoolParam() {
            return (this.bitField0_ & 33554432) == 33554432;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasColor() {
            return (this.bitField0_ & 16384) == 16384;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasCommand() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasControlId() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasDefaultCheckStatus() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasDefaultItemIndex() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasEditInputType() {
            return (this.bitField0_ & 262144) == 262144;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasEnabledStatus() {
            return (this.bitField0_ & 4096) == 4096;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasFontSize() {
            return (this.bitField0_ & 1048576) == 1048576;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasFontType() {
            return (this.bitField0_ & 524288) == 524288;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasHeight() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasIntParam() {
            return (this.bitField0_ & 8388608) == 8388608;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasItemIndex() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasLayoutStyle() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasLeft() {
            return (this.bitField0_ & 2097152) == 2097152;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasPadding() {
            return (this.bitField0_ & 65536) == 65536;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasParentId() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasPath() {
            return (this.bitField0_ & 1024) == 1024;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasStrParam() {
            return (this.bitField0_ & 16777216) == 16777216;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasText() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasTop() {
            return (this.bitField0_ & 4194304) == 4194304;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasUipData() {
            return (this.bitField0_ & 131072) == 131072;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasUrl() {
            return (this.bitField0_ & 2048) == 2048;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasVisibleStatus() {
            return (this.bitField0_ & 8192) == 8192;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUiOrBuilder
        public final boolean hasWidth() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return UiMessage.f6020d.ensureFieldAccessorsInitialized(CommandToUi.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasCommand()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasPadding() || getPadding().isInitialized()) {
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

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeEnum(1, this.command_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getControlIdBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getParentIdBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getTextBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeInt32(5, this.width_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeInt32(6, this.height_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeInt32(7, this.layoutStyle_);
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeBool(8, this.defaultCheckStatus_);
            }
            for (int i = 0; i < this.itemText_.size(); i++) {
                codedOutputStream.writeBytes(9, this.itemText_.getByteString(i));
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeInt32(10, this.itemIndex_);
            }
            if ((this.bitField0_ & 512) == 512) {
                codedOutputStream.writeInt32(11, this.defaultItemIndex_);
            }
            if ((this.bitField0_ & 1024) == 1024) {
                codedOutputStream.writeBytes(12, getPathBytes());
            }
            if ((this.bitField0_ & 2048) == 2048) {
                codedOutputStream.writeBytes(13, getUrlBytes());
            }
            if ((this.bitField0_ & 4096) == 4096) {
                codedOutputStream.writeBool(14, this.enabledStatus_);
            }
            if ((this.bitField0_ & 8192) == 8192) {
                codedOutputStream.writeInt32(15, this.visibleStatus_);
            }
            if ((this.bitField0_ & 16384) == 16384) {
                codedOutputStream.writeBytes(16, getColorBytes());
            }
            if ((this.bitField0_ & 32768) == 32768) {
                codedOutputStream.writeInt32(17, this.alignType_);
            }
            if ((this.bitField0_ & 65536) == 65536) {
                codedOutputStream.writeMessage(18, this.padding_);
            }
            if ((this.bitField0_ & 131072) == 131072) {
                codedOutputStream.writeBytes(19, getUipDataBytes());
            }
            if ((this.bitField0_ & 262144) == 262144) {
                codedOutputStream.writeInt32(20, this.editInputType_);
            }
            if ((this.bitField0_ & 524288) == 524288) {
                codedOutputStream.writeBytes(21, getFontTypeBytes());
            }
            if ((this.bitField0_ & 1048576) == 1048576) {
                codedOutputStream.writeInt32(22, this.fontSize_);
            }
            if ((this.bitField0_ & 2097152) == 2097152) {
                codedOutputStream.writeInt32(23, this.left_);
            }
            if ((this.bitField0_ & 4194304) == 4194304) {
                codedOutputStream.writeInt32(24, this.top_);
            }
            if ((this.bitField0_ & 8388608) == 8388608) {
                codedOutputStream.writeInt32(25, this.intParam_);
            }
            if ((this.bitField0_ & 16777216) == 16777216) {
                codedOutputStream.writeBytes(26, getStrParamBytes());
            }
            if ((this.bitField0_ & 33554432) == 33554432) {
                codedOutputStream.writeBool(27, this.boolParam_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface CommandToUiOrBuilder extends MessageOrBuilder {
        int getAlignType();

        boolean getBoolParam();

        String getColor();

        ByteString getColorBytes();

        CommandToUi.Command_Type getCommand();

        String getControlId();

        ByteString getControlIdBytes();

        boolean getDefaultCheckStatus();

        int getDefaultItemIndex();

        int getEditInputType();

        boolean getEnabledStatus();

        int getFontSize();

        String getFontType();

        ByteString getFontTypeBytes();

        int getHeight();

        int getIntParam();

        int getItemIndex();

        String getItemText(int i);

        ByteString getItemTextBytes(int i);

        int getItemTextCount();

        List<String> getItemTextList();

        int getLayoutStyle();

        int getLeft();

        Padding_Var getPadding();

        Padding_VarOrBuilder getPaddingOrBuilder();

        String getParentId();

        ByteString getParentIdBytes();

        String getPath();

        ByteString getPathBytes();

        String getStrParam();

        ByteString getStrParamBytes();

        String getText();

        ByteString getTextBytes();

        int getTop();

        String getUipData();

        ByteString getUipDataBytes();

        String getUrl();

        ByteString getUrlBytes();

        int getVisibleStatus();

        int getWidth();

        boolean hasAlignType();

        boolean hasBoolParam();

        boolean hasColor();

        boolean hasCommand();

        boolean hasControlId();

        boolean hasDefaultCheckStatus();

        boolean hasDefaultItemIndex();

        boolean hasEditInputType();

        boolean hasEnabledStatus();

        boolean hasFontSize();

        boolean hasFontType();

        boolean hasHeight();

        boolean hasIntParam();

        boolean hasItemIndex();

        boolean hasLayoutStyle();

        boolean hasLeft();

        boolean hasPadding();

        boolean hasParentId();

        boolean hasPath();

        boolean hasStrParam();

        boolean hasText();

        boolean hasTop();

        boolean hasUipData();

        boolean hasUrl();

        boolean hasVisibleStatus();

        boolean hasWidth();
    }

    /* loaded from: classes.dex */
    public static final class CommandToUip extends GeneratedMessage implements CommandToUipOrBuilder {
        public static final int COMMAND_FIELD_NUMBER = 1;
        public static final int CONTROL_ID_FIELD_NUMBER = 2;
        public static Parser<CommandToUip> PARSER = new AbstractParser<CommandToUip>() { // from class: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUip.1
            @Override // com.google.protobuf.Parser
            public final CommandToUip parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CommandToUip(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int UIP_ATTRIBUTE_DATA_FIELD_NUMBER = 3;
        private static final CommandToUip defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private Command_Type command_;
        private Object controlId_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object uipAttributeData_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CommandToUipOrBuilder {
            private int bitField0_;
            private Command_Type command_;
            private Object controlId_;
            private Object uipAttributeData_;

            private Builder() {
                this.command_ = Command_Type.GET_UIP_ATTRIBUTE;
                this.controlId_ = "";
                this.uipAttributeData_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.command_ = Command_Type.GET_UIP_ATTRIBUTE;
                this.controlId_ = "";
                this.uipAttributeData_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$8800() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return UiMessage.f6027k;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = CommandToUip.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CommandToUip build() {
                CommandToUip buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final CommandToUip buildPartial() {
                CommandToUip commandToUip = new CommandToUip(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                commandToUip.command_ = this.command_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                commandToUip.controlId_ = this.controlId_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                commandToUip.uipAttributeData_ = this.uipAttributeData_;
                commandToUip.bitField0_ = i2;
                onBuilt();
                return commandToUip;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.command_ = Command_Type.GET_UIP_ATTRIBUTE;
                this.bitField0_ &= -2;
                this.controlId_ = "";
                this.bitField0_ &= -3;
                this.uipAttributeData_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public final Builder clearCommand() {
                this.bitField0_ &= -2;
                this.command_ = Command_Type.GET_UIP_ATTRIBUTE;
                onChanged();
                return this;
            }

            public final Builder clearControlId() {
                this.bitField0_ &= -3;
                this.controlId_ = CommandToUip.getDefaultInstance().getControlId();
                onChanged();
                return this;
            }

            public final Builder clearUipAttributeData() {
                this.bitField0_ &= -5;
                this.uipAttributeData_ = CommandToUip.getDefaultInstance().getUipAttributeData();
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUipOrBuilder
            public final Command_Type getCommand() {
                return this.command_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUipOrBuilder
            public final String getControlId() {
                Object obj = this.controlId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.controlId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUipOrBuilder
            public final ByteString getControlIdBytes() {
                Object obj = this.controlId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.controlId_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final CommandToUip getDefaultInstanceForType() {
                return CommandToUip.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return UiMessage.f6027k;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUipOrBuilder
            public final String getUipAttributeData() {
                Object obj = this.uipAttributeData_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.uipAttributeData_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUipOrBuilder
            public final ByteString getUipAttributeDataBytes() {
                Object obj = this.uipAttributeData_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.uipAttributeData_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUipOrBuilder
            public final boolean hasCommand() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUipOrBuilder
            public final boolean hasControlId() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUipOrBuilder
            public final boolean hasUipAttributeData() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return UiMessage.f6028l.ensureFieldAccessorsInitialized(CommandToUip.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasCommand();
            }

            public final Builder mergeFrom(CommandToUip commandToUip) {
                if (commandToUip == CommandToUip.getDefaultInstance()) {
                    return this;
                }
                if (commandToUip.hasCommand()) {
                    setCommand(commandToUip.getCommand());
                }
                if (commandToUip.hasControlId()) {
                    this.bitField0_ |= 2;
                    this.controlId_ = commandToUip.controlId_;
                    onChanged();
                }
                if (commandToUip.hasUipAttributeData()) {
                    this.bitField0_ |= 4;
                    this.uipAttributeData_ = commandToUip.uipAttributeData_;
                    onChanged();
                }
                mergeUnknownFields(commandToUip.getUnknownFields());
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUip.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.cyjh.mobileanjian.ipc.share.proto.UiMessage$CommandToUip> r1 = com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUip.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.cyjh.mobileanjian.ipc.share.proto.UiMessage$CommandToUip r3 = (com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUip) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
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
                    com.cyjh.mobileanjian.ipc.share.proto.UiMessage$CommandToUip r4 = (com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUip) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUip.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.cyjh.mobileanjian.ipc.share.proto.UiMessage$CommandToUip$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof CommandToUip) {
                    return mergeFrom((CommandToUip) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder setCommand(Command_Type command_Type) {
                if (command_Type == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.command_ = command_Type;
                onChanged();
                return this;
            }

            public final Builder setControlId(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.controlId_ = str;
                onChanged();
                return this;
            }

            public final Builder setControlIdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.controlId_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setUipAttributeData(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.uipAttributeData_ = str;
                onChanged();
                return this;
            }

            public final Builder setUipAttributeDataBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.uipAttributeData_ = byteString;
                onChanged();
                return this;
            }
        }

        /* loaded from: classes.dex */
        public enum Command_Type implements ProtocolMessageEnum {
            GET_UIP_ATTRIBUTE(0, 101),
            SET_UIP_ATTRIBUTE(1, 102);

            public static final int GET_UIP_ATTRIBUTE_VALUE = 101;
            public static final int SET_UIP_ATTRIBUTE_VALUE = 102;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<Command_Type> internalValueMap = new Internal.EnumLiteMap<Command_Type>() { // from class: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUip.Command_Type.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public final Command_Type findValueByNumber(int i) {
                    return Command_Type.valueOf(i);
                }
            };
            private static final Command_Type[] VALUES = values();

            Command_Type(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return CommandToUip.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<Command_Type> internalGetValueMap() {
                return internalValueMap;
            }

            public static Command_Type valueOf(int i) {
                switch (i) {
                    case 101:
                        return GET_UIP_ATTRIBUTE;
                    case 102:
                        return SET_UIP_ATTRIBUTE;
                    default:
                        return null;
                }
            }

            public static Command_Type valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() != getDescriptor()) {
                    throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(this.index);
            }
        }

        static {
            CommandToUip commandToUip = new CommandToUip(true);
            defaultInstance = commandToUip;
            commandToUip.initFields();
        }

        private CommandToUip(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                int readEnum = codedInputStream.readEnum();
                                Command_Type valueOf = Command_Type.valueOf(readEnum);
                                if (valueOf == null) {
                                    newBuilder.mergeVarintField(1, readEnum);
                                } else {
                                    this.bitField0_ |= 1;
                                    this.command_ = valueOf;
                                }
                            } else if (readTag == 18) {
                                this.bitField0_ |= 2;
                                this.controlId_ = codedInputStream.readBytes();
                            } else if (readTag == 26) {
                                this.bitField0_ |= 4;
                                this.uipAttributeData_ = codedInputStream.readBytes();
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

        private CommandToUip(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CommandToUip(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CommandToUip getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return UiMessage.f6027k;
        }

        private void initFields() {
            this.command_ = Command_Type.GET_UIP_ATTRIBUTE;
            this.controlId_ = "";
            this.uipAttributeData_ = "";
        }

        public static Builder newBuilder() {
            return Builder.access$8800();
        }

        public static Builder newBuilder(CommandToUip commandToUip) {
            return newBuilder().mergeFrom(commandToUip);
        }

        public static CommandToUip parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CommandToUip parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CommandToUip parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CommandToUip parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CommandToUip parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CommandToUip parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CommandToUip parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CommandToUip parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CommandToUip parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CommandToUip parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUipOrBuilder
        public final Command_Type getCommand() {
            return this.command_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUipOrBuilder
        public final String getControlId() {
            Object obj = this.controlId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.controlId_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUipOrBuilder
        public final ByteString getControlIdBytes() {
            Object obj = this.controlId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.controlId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final CommandToUip getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<CommandToUip> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeEnumSize(1, this.command_.getNumber()) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeEnumSize += CodedOutputStream.computeBytesSize(2, getControlIdBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                computeEnumSize += CodedOutputStream.computeBytesSize(3, getUipAttributeDataBytes());
            }
            int serializedSize = computeEnumSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUipOrBuilder
        public final String getUipAttributeData() {
            Object obj = this.uipAttributeData_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.uipAttributeData_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUipOrBuilder
        public final ByteString getUipAttributeDataBytes() {
            Object obj = this.uipAttributeData_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.uipAttributeData_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUipOrBuilder
        public final boolean hasCommand() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUipOrBuilder
        public final boolean hasControlId() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUipOrBuilder
        public final boolean hasUipAttributeData() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return UiMessage.f6028l.ensureFieldAccessorsInitialized(CommandToUip.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (hasCommand()) {
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

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeEnum(1, this.command_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getControlIdBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getUipAttributeDataBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface CommandToUipOrBuilder extends MessageOrBuilder {
        CommandToUip.Command_Type getCommand();

        String getControlId();

        ByteString getControlIdBytes();

        String getUipAttributeData();

        ByteString getUipAttributeDataBytes();

        boolean hasCommand();

        boolean hasControlId();

        boolean hasUipAttributeData();
    }

    /* loaded from: classes.dex */
    public static final class ControlEvent extends GeneratedMessage implements ControlEventOrBuilder {
        public static final int CONTROL_ID_FIELD_NUMBER = 1;
        public static final int EVENT_ARGS_FIELD_NUMBER = 3;
        public static final int EVENT_FUNCTION_NAME_FIELD_NUMBER = 4;
        public static Parser<ControlEvent> PARSER = new AbstractParser<ControlEvent>() { // from class: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEvent.1
            @Override // com.google.protobuf.Parser
            public final ControlEvent parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ControlEvent(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TYPE_FIELD_NUMBER = 2;
        private static final ControlEvent defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private Object controlId_;
        private Object eventArgs_;
        private Object eventFunctionName_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Event_Type type_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ControlEventOrBuilder {
            private int bitField0_;
            private Object controlId_;
            private Object eventArgs_;
            private Object eventFunctionName_;
            private Event_Type type_;

            private Builder() {
                this.controlId_ = "";
                this.type_ = Event_Type.ON_CHANGE;
                this.eventArgs_ = "";
                this.eventFunctionName_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.controlId_ = "";
                this.type_ = Event_Type.ON_CHANGE;
                this.eventArgs_ = "";
                this.eventFunctionName_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$5000() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return UiMessage.f6021e;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = ControlEvent.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final ControlEvent build() {
                ControlEvent buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final ControlEvent buildPartial() {
                ControlEvent controlEvent = new ControlEvent(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                controlEvent.controlId_ = this.controlId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                controlEvent.type_ = this.type_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                controlEvent.eventArgs_ = this.eventArgs_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                controlEvent.eventFunctionName_ = this.eventFunctionName_;
                controlEvent.bitField0_ = i2;
                onBuilt();
                return controlEvent;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.controlId_ = "";
                this.bitField0_ &= -2;
                this.type_ = Event_Type.ON_CHANGE;
                this.bitField0_ &= -3;
                this.eventArgs_ = "";
                this.bitField0_ &= -5;
                this.eventFunctionName_ = "";
                this.bitField0_ &= -9;
                return this;
            }

            public final Builder clearControlId() {
                this.bitField0_ &= -2;
                this.controlId_ = ControlEvent.getDefaultInstance().getControlId();
                onChanged();
                return this;
            }

            public final Builder clearEventArgs() {
                this.bitField0_ &= -5;
                this.eventArgs_ = ControlEvent.getDefaultInstance().getEventArgs();
                onChanged();
                return this;
            }

            public final Builder clearEventFunctionName() {
                this.bitField0_ &= -9;
                this.eventFunctionName_ = ControlEvent.getDefaultInstance().getEventFunctionName();
                onChanged();
                return this;
            }

            public final Builder clearType() {
                this.bitField0_ &= -3;
                this.type_ = Event_Type.ON_CHANGE;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
            public final String getControlId() {
                Object obj = this.controlId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.controlId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
            public final ByteString getControlIdBytes() {
                Object obj = this.controlId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.controlId_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final ControlEvent getDefaultInstanceForType() {
                return ControlEvent.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return UiMessage.f6021e;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
            public final String getEventArgs() {
                Object obj = this.eventArgs_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.eventArgs_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
            public final ByteString getEventArgsBytes() {
                Object obj = this.eventArgs_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.eventArgs_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
            public final String getEventFunctionName() {
                Object obj = this.eventFunctionName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.eventFunctionName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
            public final ByteString getEventFunctionNameBytes() {
                Object obj = this.eventFunctionName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.eventFunctionName_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
            public final Event_Type getType() {
                return this.type_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
            public final boolean hasControlId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
            public final boolean hasEventArgs() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
            public final boolean hasEventFunctionName() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
            public final boolean hasType() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return UiMessage.f6022f.ensureFieldAccessorsInitialized(ControlEvent.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasControlId() && hasType();
            }

            public final Builder mergeFrom(ControlEvent controlEvent) {
                if (controlEvent == ControlEvent.getDefaultInstance()) {
                    return this;
                }
                if (controlEvent.hasControlId()) {
                    this.bitField0_ |= 1;
                    this.controlId_ = controlEvent.controlId_;
                    onChanged();
                }
                if (controlEvent.hasType()) {
                    setType(controlEvent.getType());
                }
                if (controlEvent.hasEventArgs()) {
                    this.bitField0_ |= 4;
                    this.eventArgs_ = controlEvent.eventArgs_;
                    onChanged();
                }
                if (controlEvent.hasEventFunctionName()) {
                    this.bitField0_ |= 8;
                    this.eventFunctionName_ = controlEvent.eventFunctionName_;
                    onChanged();
                }
                mergeUnknownFields(controlEvent.getUnknownFields());
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEvent.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.cyjh.mobileanjian.ipc.share.proto.UiMessage$ControlEvent> r1 = com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEvent.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.cyjh.mobileanjian.ipc.share.proto.UiMessage$ControlEvent r3 = (com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEvent) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
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
                    com.cyjh.mobileanjian.ipc.share.proto.UiMessage$ControlEvent r4 = (com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEvent) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEvent.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.cyjh.mobileanjian.ipc.share.proto.UiMessage$ControlEvent$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof ControlEvent) {
                    return mergeFrom((ControlEvent) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder setControlId(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.controlId_ = str;
                onChanged();
                return this;
            }

            public final Builder setControlIdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.controlId_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setEventArgs(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.eventArgs_ = str;
                onChanged();
                return this;
            }

            public final Builder setEventArgsBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.eventArgs_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setEventFunctionName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.eventFunctionName_ = str;
                onChanged();
                return this;
            }

            public final Builder setEventFunctionNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.eventFunctionName_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setType(Event_Type event_Type) {
                if (event_Type == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.type_ = event_Type;
                onChanged();
                return this;
            }
        }

        /* loaded from: classes.dex */
        public enum Event_Type implements ProtocolMessageEnum {
            ON_CHANGE(0, 1),
            ON_CLICK(1, 2),
            ON_SHOW(2, 3),
            ON_CLOSE_CONTINUE(3, 4),
            ON_CLOSE_EXIT(4, 5),
            ON_TOUCH(5, 6),
            ON_TOUCH_DOWN(6, 7),
            ON_TOUCH_MOVE(7, 8),
            ON_TOUCH_UP(8, 9),
            ON_CLOSE(9, 10),
            ON_HIDE(10, 11);

            public static final int ON_CHANGE_VALUE = 1;
            public static final int ON_CLICK_VALUE = 2;
            public static final int ON_CLOSE_CONTINUE_VALUE = 4;
            public static final int ON_CLOSE_EXIT_VALUE = 5;
            public static final int ON_CLOSE_VALUE = 10;
            public static final int ON_HIDE_VALUE = 11;
            public static final int ON_SHOW_VALUE = 3;
            public static final int ON_TOUCH_DOWN_VALUE = 7;
            public static final int ON_TOUCH_MOVE_VALUE = 8;
            public static final int ON_TOUCH_UP_VALUE = 9;
            public static final int ON_TOUCH_VALUE = 6;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<Event_Type> internalValueMap = new Internal.EnumLiteMap<Event_Type>() { // from class: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEvent.Event_Type.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public final Event_Type findValueByNumber(int i) {
                    return Event_Type.valueOf(i);
                }
            };
            private static final Event_Type[] VALUES = values();

            Event_Type(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return ControlEvent.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<Event_Type> internalGetValueMap() {
                return internalValueMap;
            }

            public static Event_Type valueOf(int i) {
                switch (i) {
                    case 1:
                        return ON_CHANGE;
                    case 2:
                        return ON_CLICK;
                    case 3:
                        return ON_SHOW;
                    case 4:
                        return ON_CLOSE_CONTINUE;
                    case 5:
                        return ON_CLOSE_EXIT;
                    case 6:
                        return ON_TOUCH;
                    case 7:
                        return ON_TOUCH_DOWN;
                    case 8:
                        return ON_TOUCH_MOVE;
                    case 9:
                        return ON_TOUCH_UP;
                    case 10:
                        return ON_CLOSE;
                    case 11:
                        return ON_HIDE;
                    default:
                        return null;
                }
            }

            public static Event_Type valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() != getDescriptor()) {
                    throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(this.index);
            }
        }

        static {
            ControlEvent controlEvent = new ControlEvent(true);
            defaultInstance = controlEvent;
            controlEvent.initFields();
        }

        private ControlEvent(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            if (readTag == 10) {
                                this.bitField0_ |= 1;
                                this.controlId_ = codedInputStream.readBytes();
                            } else if (readTag == 16) {
                                int readEnum = codedInputStream.readEnum();
                                Event_Type valueOf = Event_Type.valueOf(readEnum);
                                if (valueOf == null) {
                                    newBuilder.mergeVarintField(2, readEnum);
                                } else {
                                    this.bitField0_ |= 2;
                                    this.type_ = valueOf;
                                }
                            } else if (readTag == 26) {
                                this.bitField0_ |= 4;
                                this.eventArgs_ = codedInputStream.readBytes();
                            } else if (readTag == 34) {
                                this.bitField0_ |= 8;
                                this.eventFunctionName_ = codedInputStream.readBytes();
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

        private ControlEvent(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ControlEvent(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ControlEvent getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return UiMessage.f6021e;
        }

        private void initFields() {
            this.controlId_ = "";
            this.type_ = Event_Type.ON_CHANGE;
            this.eventArgs_ = "";
            this.eventFunctionName_ = "";
        }

        public static Builder newBuilder() {
            return Builder.access$5000();
        }

        public static Builder newBuilder(ControlEvent controlEvent) {
            return newBuilder().mergeFrom(controlEvent);
        }

        public static ControlEvent parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static ControlEvent parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ControlEvent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ControlEvent parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ControlEvent parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static ControlEvent parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static ControlEvent parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static ControlEvent parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ControlEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ControlEvent parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
        public final String getControlId() {
            Object obj = this.controlId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.controlId_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
        public final ByteString getControlIdBytes() {
            Object obj = this.controlId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.controlId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final ControlEvent getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
        public final String getEventArgs() {
            Object obj = this.eventArgs_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.eventArgs_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
        public final ByteString getEventArgsBytes() {
            Object obj = this.eventArgs_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.eventArgs_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
        public final String getEventFunctionName() {
            Object obj = this.eventFunctionName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.eventFunctionName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
        public final ByteString getEventFunctionNameBytes() {
            Object obj = this.eventFunctionName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.eventFunctionName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<ControlEvent> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeBytesSize = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeBytesSize(1, getControlIdBytes()) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeBytesSize += CodedOutputStream.computeEnumSize(2, this.type_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                computeBytesSize += CodedOutputStream.computeBytesSize(3, getEventArgsBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                computeBytesSize += CodedOutputStream.computeBytesSize(4, getEventFunctionNameBytes());
            }
            int serializedSize = computeBytesSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
        public final Event_Type getType() {
            return this.type_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
        public final boolean hasControlId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
        public final boolean hasEventArgs() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
        public final boolean hasEventFunctionName() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlEventOrBuilder
        public final boolean hasType() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return UiMessage.f6022f.ensureFieldAccessorsInitialized(ControlEvent.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasControlId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasType()) {
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

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getControlIdBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeEnum(2, this.type_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getEventArgsBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getEventFunctionNameBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface ControlEventOrBuilder extends MessageOrBuilder {
        String getControlId();

        ByteString getControlIdBytes();

        String getEventArgs();

        ByteString getEventArgsBytes();

        String getEventFunctionName();

        ByteString getEventFunctionNameBytes();

        ControlEvent.Event_Type getType();

        boolean hasControlId();

        boolean hasEventArgs();

        boolean hasEventFunctionName();

        boolean hasType();
    }

    /* loaded from: classes.dex */
    public static final class ControlVar extends GeneratedMessage implements ControlVarOrBuilder {
        public static final int BOOL_VALUE_FIELD_NUMBER = 3;
        public static final int CONTROL_ID_FIELD_NUMBER = 1;
        public static final int INT_VALUE_FIELD_NUMBER = 4;
        public static Parser<ControlVar> PARSER = new AbstractParser<ControlVar>() { // from class: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVar.1
            @Override // com.google.protobuf.Parser
            public final ControlVar parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ControlVar(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int STRING_VALUE_FIELD_NUMBER = 5;
        public static final int TYPE_FIELD_NUMBER = 2;
        private static final ControlVar defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private boolean boolValue_;
        private Object controlId_;
        private int intValue_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object stringValue_;
        private Data_Type type_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ControlVarOrBuilder {
            private int bitField0_;
            private boolean boolValue_;
            private Object controlId_;
            private int intValue_;
            private Object stringValue_;
            private Data_Type type_;

            private Builder() {
                this.controlId_ = "";
                this.type_ = Data_Type.BOOL;
                this.stringValue_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.controlId_ = "";
                this.type_ = Data_Type.BOOL;
                this.stringValue_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$6200() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return UiMessage.f6023g;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = ControlVar.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final ControlVar build() {
                ControlVar buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final ControlVar buildPartial() {
                ControlVar controlVar = new ControlVar(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                controlVar.controlId_ = this.controlId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                controlVar.type_ = this.type_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                controlVar.boolValue_ = this.boolValue_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                controlVar.intValue_ = this.intValue_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                controlVar.stringValue_ = this.stringValue_;
                controlVar.bitField0_ = i2;
                onBuilt();
                return controlVar;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.controlId_ = "";
                this.bitField0_ &= -2;
                this.type_ = Data_Type.BOOL;
                this.bitField0_ &= -3;
                this.boolValue_ = false;
                this.bitField0_ &= -5;
                this.intValue_ = 0;
                this.bitField0_ &= -9;
                this.stringValue_ = "";
                this.bitField0_ &= -17;
                return this;
            }

            public final Builder clearBoolValue() {
                this.bitField0_ &= -5;
                this.boolValue_ = false;
                onChanged();
                return this;
            }

            public final Builder clearControlId() {
                this.bitField0_ &= -2;
                this.controlId_ = ControlVar.getDefaultInstance().getControlId();
                onChanged();
                return this;
            }

            public final Builder clearIntValue() {
                this.bitField0_ &= -9;
                this.intValue_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearStringValue() {
                this.bitField0_ &= -17;
                this.stringValue_ = ControlVar.getDefaultInstance().getStringValue();
                onChanged();
                return this;
            }

            public final Builder clearType() {
                this.bitField0_ &= -3;
                this.type_ = Data_Type.BOOL;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
            public final boolean getBoolValue() {
                return this.boolValue_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
            public final String getControlId() {
                Object obj = this.controlId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.controlId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
            public final ByteString getControlIdBytes() {
                Object obj = this.controlId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.controlId_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final ControlVar getDefaultInstanceForType() {
                return ControlVar.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return UiMessage.f6023g;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
            public final int getIntValue() {
                return this.intValue_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
            public final String getStringValue() {
                Object obj = this.stringValue_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.stringValue_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
            public final ByteString getStringValueBytes() {
                Object obj = this.stringValue_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.stringValue_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
            public final Data_Type getType() {
                return this.type_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
            public final boolean hasBoolValue() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
            public final boolean hasControlId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
            public final boolean hasIntValue() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
            public final boolean hasStringValue() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
            public final boolean hasType() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return UiMessage.f6024h.ensureFieldAccessorsInitialized(ControlVar.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasControlId();
            }

            public final Builder mergeFrom(ControlVar controlVar) {
                if (controlVar == ControlVar.getDefaultInstance()) {
                    return this;
                }
                if (controlVar.hasControlId()) {
                    this.bitField0_ |= 1;
                    this.controlId_ = controlVar.controlId_;
                    onChanged();
                }
                if (controlVar.hasType()) {
                    setType(controlVar.getType());
                }
                if (controlVar.hasBoolValue()) {
                    setBoolValue(controlVar.getBoolValue());
                }
                if (controlVar.hasIntValue()) {
                    setIntValue(controlVar.getIntValue());
                }
                if (controlVar.hasStringValue()) {
                    this.bitField0_ |= 16;
                    this.stringValue_ = controlVar.stringValue_;
                    onChanged();
                }
                mergeUnknownFields(controlVar.getUnknownFields());
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVar.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.cyjh.mobileanjian.ipc.share.proto.UiMessage$ControlVar> r1 = com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVar.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.cyjh.mobileanjian.ipc.share.proto.UiMessage$ControlVar r3 = (com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVar) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
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
                    com.cyjh.mobileanjian.ipc.share.proto.UiMessage$ControlVar r4 = (com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVar) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVar.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.cyjh.mobileanjian.ipc.share.proto.UiMessage$ControlVar$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof ControlVar) {
                    return mergeFrom((ControlVar) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder setBoolValue(boolean z) {
                this.bitField0_ |= 4;
                this.boolValue_ = z;
                onChanged();
                return this;
            }

            public final Builder setControlId(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.controlId_ = str;
                onChanged();
                return this;
            }

            public final Builder setControlIdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.controlId_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setIntValue(int i) {
                this.bitField0_ |= 8;
                this.intValue_ = i;
                onChanged();
                return this;
            }

            public final Builder setStringValue(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.stringValue_ = str;
                onChanged();
                return this;
            }

            public final Builder setStringValueBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.stringValue_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setType(Data_Type data_Type) {
                if (data_Type == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.type_ = data_Type;
                onChanged();
                return this;
            }
        }

        /* loaded from: classes.dex */
        public enum Data_Type implements ProtocolMessageEnum {
            BOOL(0, 1),
            INT(1, 2),
            STRING(2, 3);

            public static final int BOOL_VALUE = 1;
            public static final int INT_VALUE = 2;
            public static final int STRING_VALUE = 3;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<Data_Type> internalValueMap = new Internal.EnumLiteMap<Data_Type>() { // from class: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVar.Data_Type.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public final Data_Type findValueByNumber(int i) {
                    return Data_Type.valueOf(i);
                }
            };
            private static final Data_Type[] VALUES = values();

            Data_Type(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return ControlVar.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<Data_Type> internalGetValueMap() {
                return internalValueMap;
            }

            public static Data_Type valueOf(int i) {
                switch (i) {
                    case 1:
                        return BOOL;
                    case 2:
                        return INT;
                    case 3:
                        return STRING;
                    default:
                        return null;
                }
            }

            public static Data_Type valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() != getDescriptor()) {
                    throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(this.index);
            }
        }

        static {
            ControlVar controlVar = new ControlVar(true);
            defaultInstance = controlVar;
            controlVar.initFields();
        }

        private ControlVar(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            if (readTag == 10) {
                                this.bitField0_ |= 1;
                                this.controlId_ = codedInputStream.readBytes();
                            } else if (readTag == 16) {
                                int readEnum = codedInputStream.readEnum();
                                Data_Type valueOf = Data_Type.valueOf(readEnum);
                                if (valueOf == null) {
                                    newBuilder.mergeVarintField(2, readEnum);
                                } else {
                                    this.bitField0_ |= 2;
                                    this.type_ = valueOf;
                                }
                            } else if (readTag == 24) {
                                this.bitField0_ |= 4;
                                this.boolValue_ = codedInputStream.readBool();
                            } else if (readTag == 32) {
                                this.bitField0_ |= 8;
                                this.intValue_ = codedInputStream.readInt32();
                            } else if (readTag == 42) {
                                this.bitField0_ |= 16;
                                this.stringValue_ = codedInputStream.readBytes();
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

        private ControlVar(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ControlVar(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ControlVar getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return UiMessage.f6023g;
        }

        private void initFields() {
            this.controlId_ = "";
            this.type_ = Data_Type.BOOL;
            this.boolValue_ = false;
            this.intValue_ = 0;
            this.stringValue_ = "";
        }

        public static Builder newBuilder() {
            return Builder.access$6200();
        }

        public static Builder newBuilder(ControlVar controlVar) {
            return newBuilder().mergeFrom(controlVar);
        }

        public static ControlVar parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static ControlVar parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ControlVar parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ControlVar parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ControlVar parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static ControlVar parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static ControlVar parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static ControlVar parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ControlVar parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ControlVar parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
        public final boolean getBoolValue() {
            return this.boolValue_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
        public final String getControlId() {
            Object obj = this.controlId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.controlId_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
        public final ByteString getControlIdBytes() {
            Object obj = this.controlId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.controlId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final ControlVar getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
        public final int getIntValue() {
            return this.intValue_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<ControlVar> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeBytesSize = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeBytesSize(1, getControlIdBytes()) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeBytesSize += CodedOutputStream.computeEnumSize(2, this.type_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                computeBytesSize += CodedOutputStream.computeBoolSize(3, this.boolValue_);
            }
            if ((this.bitField0_ & 8) == 8) {
                computeBytesSize += CodedOutputStream.computeInt32Size(4, this.intValue_);
            }
            if ((this.bitField0_ & 16) == 16) {
                computeBytesSize += CodedOutputStream.computeBytesSize(5, getStringValueBytes());
            }
            int serializedSize = computeBytesSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
        public final String getStringValue() {
            Object obj = this.stringValue_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.stringValue_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
        public final ByteString getStringValueBytes() {
            Object obj = this.stringValue_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.stringValue_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
        public final Data_Type getType() {
            return this.type_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
        public final boolean hasBoolValue() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
        public final boolean hasControlId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
        public final boolean hasIntValue() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
        public final boolean hasStringValue() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.ControlVarOrBuilder
        public final boolean hasType() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return UiMessage.f6024h.ensureFieldAccessorsInitialized(ControlVar.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (hasControlId()) {
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

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getControlIdBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeEnum(2, this.type_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBool(3, this.boolValue_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeInt32(4, this.intValue_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getStringValueBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface ControlVarOrBuilder extends MessageOrBuilder {
        boolean getBoolValue();

        String getControlId();

        ByteString getControlIdBytes();

        int getIntValue();

        String getStringValue();

        ByteString getStringValueBytes();

        ControlVar.Data_Type getType();

        boolean hasBoolValue();

        boolean hasControlId();

        boolean hasIntValue();

        boolean hasStringValue();

        boolean hasType();
    }

    /* loaded from: classes.dex */
    public static final class Padding_Var extends GeneratedMessage implements Padding_VarOrBuilder {
        public static final int BOTTOM_FIELD_NUMBER = 3;
        public static final int LEFT_FIELD_NUMBER = 2;
        public static Parser<Padding_Var> PARSER = new AbstractParser<Padding_Var>() { // from class: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_Var.1
            @Override // com.google.protobuf.Parser
            public final Padding_Var parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Padding_Var(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RIGHT_FIELD_NUMBER = 4;
        public static final int TOP_FIELD_NUMBER = 1;
        private static final Padding_Var defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int bottom_;
        private int left_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private int right_;
        private int top_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements Padding_VarOrBuilder {
            private int bitField0_;
            private int bottom_;
            private int left_;
            private int right_;
            private int top_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$300() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return UiMessage.f6017a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = Padding_Var.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Padding_Var build() {
                Padding_Var buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Padding_Var buildPartial() {
                Padding_Var padding_Var = new Padding_Var(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                padding_Var.top_ = this.top_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                padding_Var.left_ = this.left_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                padding_Var.bottom_ = this.bottom_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                padding_Var.right_ = this.right_;
                padding_Var.bitField0_ = i2;
                onBuilt();
                return padding_Var;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.top_ = 0;
                this.bitField0_ &= -2;
                this.left_ = 0;
                this.bitField0_ &= -3;
                this.bottom_ = 0;
                this.bitField0_ &= -5;
                this.right_ = 0;
                this.bitField0_ &= -9;
                return this;
            }

            public final Builder clearBottom() {
                this.bitField0_ &= -5;
                this.bottom_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearLeft() {
                this.bitField0_ &= -3;
                this.left_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearRight() {
                this.bitField0_ &= -9;
                this.right_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearTop() {
                this.bitField0_ &= -2;
                this.top_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_VarOrBuilder
            public final int getBottom() {
                return this.bottom_;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final Padding_Var getDefaultInstanceForType() {
                return Padding_Var.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return UiMessage.f6017a;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_VarOrBuilder
            public final int getLeft() {
                return this.left_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_VarOrBuilder
            public final int getRight() {
                return this.right_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_VarOrBuilder
            public final int getTop() {
                return this.top_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_VarOrBuilder
            public final boolean hasBottom() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_VarOrBuilder
            public final boolean hasLeft() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_VarOrBuilder
            public final boolean hasRight() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_VarOrBuilder
            public final boolean hasTop() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return UiMessage.f6018b.ensureFieldAccessorsInitialized(Padding_Var.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasTop() && hasLeft() && hasBottom() && hasRight();
            }

            public final Builder mergeFrom(Padding_Var padding_Var) {
                if (padding_Var == Padding_Var.getDefaultInstance()) {
                    return this;
                }
                if (padding_Var.hasTop()) {
                    setTop(padding_Var.getTop());
                }
                if (padding_Var.hasLeft()) {
                    setLeft(padding_Var.getLeft());
                }
                if (padding_Var.hasBottom()) {
                    setBottom(padding_Var.getBottom());
                }
                if (padding_Var.hasRight()) {
                    setRight(padding_Var.getRight());
                }
                mergeUnknownFields(padding_Var.getUnknownFields());
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_Var.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.cyjh.mobileanjian.ipc.share.proto.UiMessage$Padding_Var> r1 = com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_Var.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.cyjh.mobileanjian.ipc.share.proto.UiMessage$Padding_Var r3 = (com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_Var) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
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
                    com.cyjh.mobileanjian.ipc.share.proto.UiMessage$Padding_Var r4 = (com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_Var) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_Var.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.cyjh.mobileanjian.ipc.share.proto.UiMessage$Padding_Var$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof Padding_Var) {
                    return mergeFrom((Padding_Var) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder setBottom(int i) {
                this.bitField0_ |= 4;
                this.bottom_ = i;
                onChanged();
                return this;
            }

            public final Builder setLeft(int i) {
                this.bitField0_ |= 2;
                this.left_ = i;
                onChanged();
                return this;
            }

            public final Builder setRight(int i) {
                this.bitField0_ |= 8;
                this.right_ = i;
                onChanged();
                return this;
            }

            public final Builder setTop(int i) {
                this.bitField0_ |= 1;
                this.top_ = i;
                onChanged();
                return this;
            }
        }

        static {
            Padding_Var padding_Var = new Padding_Var(true);
            defaultInstance = padding_Var;
            padding_Var.initFields();
        }

        private Padding_Var(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.bitField0_ |= 1;
                                this.top_ = codedInputStream.readInt32();
                            } else if (readTag == 16) {
                                this.bitField0_ |= 2;
                                this.left_ = codedInputStream.readInt32();
                            } else if (readTag == 24) {
                                this.bitField0_ |= 4;
                                this.bottom_ = codedInputStream.readInt32();
                            } else if (readTag == 32) {
                                this.bitField0_ |= 8;
                                this.right_ = codedInputStream.readInt32();
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

        private Padding_Var(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private Padding_Var(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static Padding_Var getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return UiMessage.f6017a;
        }

        private void initFields() {
            this.top_ = 0;
            this.left_ = 0;
            this.bottom_ = 0;
            this.right_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.access$300();
        }

        public static Builder newBuilder(Padding_Var padding_Var) {
            return newBuilder().mergeFrom(padding_Var);
        }

        public static Padding_Var parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static Padding_Var parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static Padding_Var parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Padding_Var parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Padding_Var parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static Padding_Var parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Padding_Var parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static Padding_Var parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static Padding_Var parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Padding_Var parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_VarOrBuilder
        public final int getBottom() {
            return this.bottom_;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final Padding_Var getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_VarOrBuilder
        public final int getLeft() {
            return this.left_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<Padding_Var> getParserForType() {
            return PARSER;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_VarOrBuilder
        public final int getRight() {
            return this.right_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeInt32Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt32Size(1, this.top_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeInt32Size += CodedOutputStream.computeInt32Size(2, this.left_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeInt32Size += CodedOutputStream.computeInt32Size(3, this.bottom_);
            }
            if ((this.bitField0_ & 8) == 8) {
                computeInt32Size += CodedOutputStream.computeInt32Size(4, this.right_);
            }
            int serializedSize = computeInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_VarOrBuilder
        public final int getTop() {
            return this.top_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_VarOrBuilder
        public final boolean hasBottom() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_VarOrBuilder
        public final boolean hasLeft() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_VarOrBuilder
        public final boolean hasRight() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.Padding_VarOrBuilder
        public final boolean hasTop() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return UiMessage.f6018b.ensureFieldAccessorsInitialized(Padding_Var.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasTop()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasLeft()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasBottom()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasRight()) {
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

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt32(1, this.top_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(2, this.left_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeInt32(3, this.bottom_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeInt32(4, this.right_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface Padding_VarOrBuilder extends MessageOrBuilder {
        int getBottom();

        int getLeft();

        int getRight();

        int getTop();

        boolean hasBottom();

        boolean hasLeft();

        boolean hasRight();

        boolean hasTop();
    }

    /* loaded from: classes.dex */
    public static final class UiToCommand extends GeneratedMessage implements UiToCommandOrBuilder {
        public static final int COMMAND_FIELD_NUMBER = 1;
        public static final int EVENT_FIELD_NUMBER = 2;
        public static final int ISSUCCESS_FIELD_NUMBER = 3;
        public static Parser<UiToCommand> PARSER = new AbstractParser<UiToCommand>() { // from class: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommand.1
            @Override // com.google.protobuf.Parser
            public final UiToCommand parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new UiToCommand(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int VARTABLE_FIELD_NUMBER = 4;
        private static final UiToCommand defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private Command_Type command_;
        private ControlEvent event_;
        private boolean isSuccess_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;
        private List<ControlVar> varTable_;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements UiToCommandOrBuilder {
            private int bitField0_;
            private Command_Type command_;
            private SingleFieldBuilder<ControlEvent, ControlEvent.Builder, ControlEventOrBuilder> eventBuilder_;
            private ControlEvent event_;
            private boolean isSuccess_;
            private RepeatedFieldBuilder<ControlVar, ControlVar.Builder, ControlVarOrBuilder> varTableBuilder_;
            private List<ControlVar> varTable_;

            private Builder() {
                this.command_ = Command_Type.EVENT;
                this.event_ = ControlEvent.getDefaultInstance();
                this.varTable_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.command_ = Command_Type.EVENT;
                this.event_ = ControlEvent.getDefaultInstance();
                this.varTable_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$7500() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            private void ensureVarTableIsMutable() {
                if ((this.bitField0_ & 8) != 8) {
                    this.varTable_ = new ArrayList(this.varTable_);
                    this.bitField0_ |= 8;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return UiMessage.f6025i;
            }

            private SingleFieldBuilder<ControlEvent, ControlEvent.Builder, ControlEventOrBuilder> getEventFieldBuilder() {
                if (this.eventBuilder_ == null) {
                    this.eventBuilder_ = new SingleFieldBuilder<>(this.event_, getParentForChildren(), isClean());
                    this.event_ = null;
                }
                return this.eventBuilder_;
            }

            private RepeatedFieldBuilder<ControlVar, ControlVar.Builder, ControlVarOrBuilder> getVarTableFieldBuilder() {
                if (this.varTableBuilder_ == null) {
                    this.varTableBuilder_ = new RepeatedFieldBuilder<>(this.varTable_, (this.bitField0_ & 8) == 8, getParentForChildren(), isClean());
                    this.varTable_ = null;
                }
                return this.varTableBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (UiToCommand.alwaysUseFieldBuilders) {
                    getEventFieldBuilder();
                    getVarTableFieldBuilder();
                }
            }

            public final Builder addAllVarTable(Iterable<? extends ControlVar> iterable) {
                if (this.varTableBuilder_ != null) {
                    this.varTableBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureVarTableIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.varTable_);
                onChanged();
                return this;
            }

            public final Builder addVarTable(int i, ControlVar.Builder builder) {
                if (this.varTableBuilder_ != null) {
                    this.varTableBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureVarTableIsMutable();
                this.varTable_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addVarTable(int i, ControlVar controlVar) {
                if (this.varTableBuilder_ != null) {
                    this.varTableBuilder_.addMessage(i, controlVar);
                    return this;
                }
                if (controlVar == null) {
                    throw new NullPointerException();
                }
                ensureVarTableIsMutable();
                this.varTable_.add(i, controlVar);
                onChanged();
                return this;
            }

            public final Builder addVarTable(ControlVar.Builder builder) {
                if (this.varTableBuilder_ != null) {
                    this.varTableBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureVarTableIsMutable();
                this.varTable_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addVarTable(ControlVar controlVar) {
                if (this.varTableBuilder_ != null) {
                    this.varTableBuilder_.addMessage(controlVar);
                    return this;
                }
                if (controlVar == null) {
                    throw new NullPointerException();
                }
                ensureVarTableIsMutable();
                this.varTable_.add(controlVar);
                onChanged();
                return this;
            }

            public final ControlVar.Builder addVarTableBuilder() {
                return getVarTableFieldBuilder().addBuilder(ControlVar.getDefaultInstance());
            }

            public final ControlVar.Builder addVarTableBuilder(int i) {
                return getVarTableFieldBuilder().addBuilder(i, ControlVar.getDefaultInstance());
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final UiToCommand build() {
                UiToCommand buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final UiToCommand buildPartial() {
                List<ControlVar> build;
                UiToCommand uiToCommand = new UiToCommand(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                uiToCommand.command_ = this.command_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                uiToCommand.event_ = this.eventBuilder_ == null ? this.event_ : this.eventBuilder_.build();
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                uiToCommand.isSuccess_ = this.isSuccess_;
                if (this.varTableBuilder_ == null) {
                    if ((this.bitField0_ & 8) == 8) {
                        this.varTable_ = Collections.unmodifiableList(this.varTable_);
                        this.bitField0_ &= -9;
                    }
                    build = this.varTable_;
                } else {
                    build = this.varTableBuilder_.build();
                }
                uiToCommand.varTable_ = build;
                uiToCommand.bitField0_ = i2;
                onBuilt();
                return uiToCommand;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.command_ = Command_Type.EVENT;
                this.bitField0_ &= -2;
                if (this.eventBuilder_ == null) {
                    this.event_ = ControlEvent.getDefaultInstance();
                } else {
                    this.eventBuilder_.clear();
                }
                this.bitField0_ &= -3;
                this.isSuccess_ = false;
                this.bitField0_ &= -5;
                if (this.varTableBuilder_ != null) {
                    this.varTableBuilder_.clear();
                    return this;
                }
                this.varTable_ = Collections.emptyList();
                this.bitField0_ &= -9;
                return this;
            }

            public final Builder clearCommand() {
                this.bitField0_ &= -2;
                this.command_ = Command_Type.EVENT;
                onChanged();
                return this;
            }

            public final Builder clearEvent() {
                if (this.eventBuilder_ == null) {
                    this.event_ = ControlEvent.getDefaultInstance();
                    onChanged();
                } else {
                    this.eventBuilder_.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            public final Builder clearIsSuccess() {
                this.bitField0_ &= -5;
                this.isSuccess_ = false;
                onChanged();
                return this;
            }

            public final Builder clearVarTable() {
                if (this.varTableBuilder_ != null) {
                    this.varTableBuilder_.clear();
                    return this;
                }
                this.varTable_ = Collections.emptyList();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
            public final Command_Type getCommand() {
                return this.command_;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final UiToCommand getDefaultInstanceForType() {
                return UiToCommand.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return UiMessage.f6025i;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
            public final ControlEvent getEvent() {
                return this.eventBuilder_ == null ? this.event_ : this.eventBuilder_.getMessage();
            }

            public final ControlEvent.Builder getEventBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return getEventFieldBuilder().getBuilder();
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
            public final ControlEventOrBuilder getEventOrBuilder() {
                return this.eventBuilder_ != null ? this.eventBuilder_.getMessageOrBuilder() : this.event_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
            public final boolean getIsSuccess() {
                return this.isSuccess_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
            public final ControlVar getVarTable(int i) {
                return this.varTableBuilder_ == null ? this.varTable_.get(i) : this.varTableBuilder_.getMessage(i);
            }

            public final ControlVar.Builder getVarTableBuilder(int i) {
                return getVarTableFieldBuilder().getBuilder(i);
            }

            public final List<ControlVar.Builder> getVarTableBuilderList() {
                return getVarTableFieldBuilder().getBuilderList();
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
            public final int getVarTableCount() {
                return this.varTableBuilder_ == null ? this.varTable_.size() : this.varTableBuilder_.getCount();
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
            public final List<ControlVar> getVarTableList() {
                return this.varTableBuilder_ == null ? Collections.unmodifiableList(this.varTable_) : this.varTableBuilder_.getMessageList();
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
            public final ControlVarOrBuilder getVarTableOrBuilder(int i) {
                return (ControlVarOrBuilder) (this.varTableBuilder_ == null ? this.varTable_.get(i) : this.varTableBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
            public final List<? extends ControlVarOrBuilder> getVarTableOrBuilderList() {
                return this.varTableBuilder_ != null ? this.varTableBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.varTable_);
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
            public final boolean hasCommand() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
            public final boolean hasEvent() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
            public final boolean hasIsSuccess() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return UiMessage.f6026j.ensureFieldAccessorsInitialized(UiToCommand.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                if (!hasCommand()) {
                    return false;
                }
                if (hasEvent() && !getEvent().isInitialized()) {
                    return false;
                }
                for (int i = 0; i < getVarTableCount(); i++) {
                    if (!getVarTable(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public final Builder mergeEvent(ControlEvent controlEvent) {
                if (this.eventBuilder_ == null) {
                    if ((this.bitField0_ & 2) == 2 && this.event_ != ControlEvent.getDefaultInstance()) {
                        controlEvent = ControlEvent.newBuilder(this.event_).mergeFrom(controlEvent).buildPartial();
                    }
                    this.event_ = controlEvent;
                    onChanged();
                } else {
                    this.eventBuilder_.mergeFrom(controlEvent);
                }
                this.bitField0_ |= 2;
                return this;
            }

            public final Builder mergeFrom(UiToCommand uiToCommand) {
                if (uiToCommand == UiToCommand.getDefaultInstance()) {
                    return this;
                }
                if (uiToCommand.hasCommand()) {
                    setCommand(uiToCommand.getCommand());
                }
                if (uiToCommand.hasEvent()) {
                    mergeEvent(uiToCommand.getEvent());
                }
                if (uiToCommand.hasIsSuccess()) {
                    setIsSuccess(uiToCommand.getIsSuccess());
                }
                if (this.varTableBuilder_ == null) {
                    if (!uiToCommand.varTable_.isEmpty()) {
                        if (this.varTable_.isEmpty()) {
                            this.varTable_ = uiToCommand.varTable_;
                            this.bitField0_ &= -9;
                        } else {
                            ensureVarTableIsMutable();
                            this.varTable_.addAll(uiToCommand.varTable_);
                        }
                        onChanged();
                    }
                } else if (!uiToCommand.varTable_.isEmpty()) {
                    if (this.varTableBuilder_.isEmpty()) {
                        this.varTableBuilder_.dispose();
                        this.varTableBuilder_ = null;
                        this.varTable_ = uiToCommand.varTable_;
                        this.bitField0_ &= -9;
                        this.varTableBuilder_ = UiToCommand.alwaysUseFieldBuilders ? getVarTableFieldBuilder() : null;
                    } else {
                        this.varTableBuilder_.addAllMessages(uiToCommand.varTable_);
                    }
                }
                mergeUnknownFields(uiToCommand.getUnknownFields());
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommand.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UiToCommand> r1 = com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommand.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UiToCommand r3 = (com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommand) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
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
                    com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UiToCommand r4 = (com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommand) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommand.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UiToCommand$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof UiToCommand) {
                    return mergeFrom((UiToCommand) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder removeVarTable(int i) {
                if (this.varTableBuilder_ != null) {
                    this.varTableBuilder_.remove(i);
                    return this;
                }
                ensureVarTableIsMutable();
                this.varTable_.remove(i);
                onChanged();
                return this;
            }

            public final Builder setCommand(Command_Type command_Type) {
                if (command_Type == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.command_ = command_Type;
                onChanged();
                return this;
            }

            public final Builder setEvent(ControlEvent.Builder builder) {
                if (this.eventBuilder_ == null) {
                    this.event_ = builder.build();
                    onChanged();
                } else {
                    this.eventBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                return this;
            }

            public final Builder setEvent(ControlEvent controlEvent) {
                if (this.eventBuilder_ != null) {
                    this.eventBuilder_.setMessage(controlEvent);
                } else {
                    if (controlEvent == null) {
                        throw new NullPointerException();
                    }
                    this.event_ = controlEvent;
                    onChanged();
                }
                this.bitField0_ |= 2;
                return this;
            }

            public final Builder setIsSuccess(boolean z) {
                this.bitField0_ |= 4;
                this.isSuccess_ = z;
                onChanged();
                return this;
            }

            public final Builder setVarTable(int i, ControlVar.Builder builder) {
                if (this.varTableBuilder_ != null) {
                    this.varTableBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureVarTableIsMutable();
                this.varTable_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setVarTable(int i, ControlVar controlVar) {
                if (this.varTableBuilder_ != null) {
                    this.varTableBuilder_.setMessage(i, controlVar);
                    return this;
                }
                if (controlVar == null) {
                    throw new NullPointerException();
                }
                ensureVarTableIsMutable();
                this.varTable_.set(i, controlVar);
                onChanged();
                return this;
            }
        }

        /* loaded from: classes.dex */
        public enum Command_Type implements ProtocolMessageEnum {
            EVENT(0, 1),
            RSP_MSG(1, 2);

            public static final int EVENT_VALUE = 1;
            public static final int RSP_MSG_VALUE = 2;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<Command_Type> internalValueMap = new Internal.EnumLiteMap<Command_Type>() { // from class: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommand.Command_Type.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public final Command_Type findValueByNumber(int i) {
                    return Command_Type.valueOf(i);
                }
            };
            private static final Command_Type[] VALUES = values();

            Command_Type(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return UiToCommand.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<Command_Type> internalGetValueMap() {
                return internalValueMap;
            }

            public static Command_Type valueOf(int i) {
                switch (i) {
                    case 1:
                        return EVENT;
                    case 2:
                        return RSP_MSG;
                    default:
                        return null;
                }
            }

            public static Command_Type valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() != getDescriptor()) {
                    throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(this.index);
            }
        }

        static {
            UiToCommand uiToCommand = new UiToCommand(true);
            defaultInstance = uiToCommand;
            uiToCommand.initFields();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private UiToCommand(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            int i = 0;
            while (true) {
                if (z) {
                    break;
                }
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 8) {
                                    int readEnum = codedInputStream.readEnum();
                                    Command_Type valueOf = Command_Type.valueOf(readEnum);
                                    if (valueOf == null) {
                                        newBuilder.mergeVarintField(1, readEnum);
                                    } else {
                                        this.bitField0_ |= 1;
                                        this.command_ = valueOf;
                                    }
                                } else if (readTag == 18) {
                                    ControlEvent.Builder builder = (this.bitField0_ & 2) == 2 ? this.event_.toBuilder() : null;
                                    this.event_ = (ControlEvent) codedInputStream.readMessage(ControlEvent.PARSER, extensionRegistryLite);
                                    if (builder != null) {
                                        builder.mergeFrom(this.event_);
                                        this.event_ = builder.buildPartial();
                                    }
                                    this.bitField0_ |= 2;
                                } else if (readTag == 24) {
                                    this.bitField0_ |= 4;
                                    this.isSuccess_ = codedInputStream.readBool();
                                } else if (readTag == 34) {
                                    if ((i & 8) != 8) {
                                        this.varTable_ = new ArrayList();
                                        i |= 8;
                                    }
                                    this.varTable_.add(codedInputStream.readMessage(ControlVar.PARSER, extensionRegistryLite));
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
                    if ((i & 8) == 8) {
                        this.varTable_ = Collections.unmodifiableList(this.varTable_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private UiToCommand(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private UiToCommand(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static UiToCommand getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return UiMessage.f6025i;
        }

        private void initFields() {
            this.command_ = Command_Type.EVENT;
            this.event_ = ControlEvent.getDefaultInstance();
            this.isSuccess_ = false;
            this.varTable_ = Collections.emptyList();
        }

        public static Builder newBuilder() {
            return Builder.access$7500();
        }

        public static Builder newBuilder(UiToCommand uiToCommand) {
            return newBuilder().mergeFrom(uiToCommand);
        }

        public static UiToCommand parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static UiToCommand parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static UiToCommand parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static UiToCommand parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static UiToCommand parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static UiToCommand parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static UiToCommand parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static UiToCommand parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static UiToCommand parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static UiToCommand parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
        public final Command_Type getCommand() {
            return this.command_;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final UiToCommand getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
        public final ControlEvent getEvent() {
            return this.event_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
        public final ControlEventOrBuilder getEventOrBuilder() {
            return this.event_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
        public final boolean getIsSuccess() {
            return this.isSuccess_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<UiToCommand> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = (this.bitField0_ & 1) == 1 ? CodedOutputStream.computeEnumSize(1, this.command_.getNumber()) + 0 : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeEnumSize += CodedOutputStream.computeMessageSize(2, this.event_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeEnumSize += CodedOutputStream.computeBoolSize(3, this.isSuccess_);
            }
            for (int i2 = 0; i2 < this.varTable_.size(); i2++) {
                computeEnumSize += CodedOutputStream.computeMessageSize(4, this.varTable_.get(i2));
            }
            int serializedSize = computeEnumSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
        public final ControlVar getVarTable(int i) {
            return this.varTable_.get(i);
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
        public final int getVarTableCount() {
            return this.varTable_.size();
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
        public final List<ControlVar> getVarTableList() {
            return this.varTable_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
        public final ControlVarOrBuilder getVarTableOrBuilder(int i) {
            return this.varTable_.get(i);
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
        public final List<? extends ControlVarOrBuilder> getVarTableOrBuilderList() {
            return this.varTable_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
        public final boolean hasCommand() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
        public final boolean hasEvent() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UiToCommandOrBuilder
        public final boolean hasIsSuccess() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return UiMessage.f6026j.ensureFieldAccessorsInitialized(UiToCommand.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasCommand()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasEvent() && !getEvent().isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            for (int i = 0; i < getVarTableCount(); i++) {
                if (!getVarTable(i).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
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

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeEnum(1, this.command_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeMessage(2, this.event_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBool(3, this.isSuccess_);
            }
            for (int i = 0; i < this.varTable_.size(); i++) {
                codedOutputStream.writeMessage(4, this.varTable_.get(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface UiToCommandOrBuilder extends MessageOrBuilder {
        UiToCommand.Command_Type getCommand();

        ControlEvent getEvent();

        ControlEventOrBuilder getEventOrBuilder();

        boolean getIsSuccess();

        ControlVar getVarTable(int i);

        int getVarTableCount();

        List<ControlVar> getVarTableList();

        ControlVarOrBuilder getVarTableOrBuilder(int i);

        List<? extends ControlVarOrBuilder> getVarTableOrBuilderList();

        boolean hasCommand();

        boolean hasEvent();

        boolean hasIsSuccess();
    }

    /* loaded from: classes.dex */
    public static final class UipToCommand extends GeneratedMessage implements UipToCommandOrBuilder {
        public static final int COMMAND_FIELD_NUMBER = 1;
        public static final int EVENT_FIELD_NUMBER = 2;
        public static final int ISSUCCESS_FIELD_NUMBER = 3;
        public static Parser<UipToCommand> PARSER = new AbstractParser<UipToCommand>() { // from class: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommand.1
            @Override // com.google.protobuf.Parser
            public final UipToCommand parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new UipToCommand(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int UIP_ATTRIBUTE_DATA_FIELD_NUMBER = 4;
        private static final UipToCommand defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private Command_Type command_;
        private ControlEvent event_;
        private boolean isSuccess_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object uipAttributeData_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements UipToCommandOrBuilder {
            private int bitField0_;
            private Command_Type command_;
            private SingleFieldBuilder<ControlEvent, ControlEvent.Builder, ControlEventOrBuilder> eventBuilder_;
            private ControlEvent event_;
            private boolean isSuccess_;
            private Object uipAttributeData_;

            private Builder() {
                this.command_ = Command_Type.EVENT;
                this.event_ = ControlEvent.getDefaultInstance();
                this.uipAttributeData_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.command_ = Command_Type.EVENT;
                this.event_ = ControlEvent.getDefaultInstance();
                this.uipAttributeData_ = "";
                maybeForceBuilderInitialization();
            }

            static /* synthetic */ Builder access$9900() {
                return create();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return UiMessage.f6029m;
            }

            private SingleFieldBuilder<ControlEvent, ControlEvent.Builder, ControlEventOrBuilder> getEventFieldBuilder() {
                if (this.eventBuilder_ == null) {
                    this.eventBuilder_ = new SingleFieldBuilder<>(this.event_, getParentForChildren(), isClean());
                    this.event_ = null;
                }
                return this.eventBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (UipToCommand.alwaysUseFieldBuilders) {
                    getEventFieldBuilder();
                }
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final UipToCommand build() {
                UipToCommand buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final UipToCommand buildPartial() {
                UipToCommand uipToCommand = new UipToCommand(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                uipToCommand.command_ = this.command_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                uipToCommand.event_ = this.eventBuilder_ == null ? this.event_ : this.eventBuilder_.build();
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                uipToCommand.isSuccess_ = this.isSuccess_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                uipToCommand.uipAttributeData_ = this.uipAttributeData_;
                uipToCommand.bitField0_ = i2;
                onBuilt();
                return uipToCommand;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.command_ = Command_Type.EVENT;
                this.bitField0_ &= -2;
                if (this.eventBuilder_ == null) {
                    this.event_ = ControlEvent.getDefaultInstance();
                } else {
                    this.eventBuilder_.clear();
                }
                this.bitField0_ &= -3;
                this.isSuccess_ = false;
                this.bitField0_ &= -5;
                this.uipAttributeData_ = "";
                this.bitField0_ &= -9;
                return this;
            }

            public final Builder clearCommand() {
                this.bitField0_ &= -2;
                this.command_ = Command_Type.EVENT;
                onChanged();
                return this;
            }

            public final Builder clearEvent() {
                if (this.eventBuilder_ == null) {
                    this.event_ = ControlEvent.getDefaultInstance();
                    onChanged();
                } else {
                    this.eventBuilder_.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            public final Builder clearIsSuccess() {
                this.bitField0_ &= -5;
                this.isSuccess_ = false;
                onChanged();
                return this;
            }

            public final Builder clearUipAttributeData() {
                this.bitField0_ &= -9;
                this.uipAttributeData_ = UipToCommand.getDefaultInstance().getUipAttributeData();
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
            public final Command_Type getCommand() {
                return this.command_;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final UipToCommand getDefaultInstanceForType() {
                return UipToCommand.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return UiMessage.f6029m;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
            public final ControlEvent getEvent() {
                return this.eventBuilder_ == null ? this.event_ : this.eventBuilder_.getMessage();
            }

            public final ControlEvent.Builder getEventBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return getEventFieldBuilder().getBuilder();
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
            public final ControlEventOrBuilder getEventOrBuilder() {
                return this.eventBuilder_ != null ? this.eventBuilder_.getMessageOrBuilder() : this.event_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
            public final boolean getIsSuccess() {
                return this.isSuccess_;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
            public final String getUipAttributeData() {
                Object obj = this.uipAttributeData_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.uipAttributeData_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
            public final ByteString getUipAttributeDataBytes() {
                Object obj = this.uipAttributeData_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.uipAttributeData_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
            public final boolean hasCommand() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
            public final boolean hasEvent() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
            public final boolean hasIsSuccess() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
            public final boolean hasUipAttributeData() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return UiMessage.f6030n.ensureFieldAccessorsInitialized(UipToCommand.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                if (hasCommand()) {
                    return !hasEvent() || getEvent().isInitialized();
                }
                return false;
            }

            public final Builder mergeEvent(ControlEvent controlEvent) {
                if (this.eventBuilder_ == null) {
                    if ((this.bitField0_ & 2) == 2 && this.event_ != ControlEvent.getDefaultInstance()) {
                        controlEvent = ControlEvent.newBuilder(this.event_).mergeFrom(controlEvent).buildPartial();
                    }
                    this.event_ = controlEvent;
                    onChanged();
                } else {
                    this.eventBuilder_.mergeFrom(controlEvent);
                }
                this.bitField0_ |= 2;
                return this;
            }

            public final Builder mergeFrom(UipToCommand uipToCommand) {
                if (uipToCommand == UipToCommand.getDefaultInstance()) {
                    return this;
                }
                if (uipToCommand.hasCommand()) {
                    setCommand(uipToCommand.getCommand());
                }
                if (uipToCommand.hasEvent()) {
                    mergeEvent(uipToCommand.getEvent());
                }
                if (uipToCommand.hasIsSuccess()) {
                    setIsSuccess(uipToCommand.getIsSuccess());
                }
                if (uipToCommand.hasUipAttributeData()) {
                    this.bitField0_ |= 8;
                    this.uipAttributeData_ = uipToCommand.uipAttributeData_;
                    onChanged();
                }
                mergeUnknownFields(uipToCommand.getUnknownFields());
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommand.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UipToCommand> r1 = com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommand.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UipToCommand r3 = (com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommand) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
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
                    com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UipToCommand r4 = (com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommand) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommand.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UipToCommand$Builder");
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof UipToCommand) {
                    return mergeFrom((UipToCommand) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder setCommand(Command_Type command_Type) {
                if (command_Type == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.command_ = command_Type;
                onChanged();
                return this;
            }

            public final Builder setEvent(ControlEvent.Builder builder) {
                if (this.eventBuilder_ == null) {
                    this.event_ = builder.build();
                    onChanged();
                } else {
                    this.eventBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                return this;
            }

            public final Builder setEvent(ControlEvent controlEvent) {
                if (this.eventBuilder_ != null) {
                    this.eventBuilder_.setMessage(controlEvent);
                } else {
                    if (controlEvent == null) {
                        throw new NullPointerException();
                    }
                    this.event_ = controlEvent;
                    onChanged();
                }
                this.bitField0_ |= 2;
                return this;
            }

            public final Builder setIsSuccess(boolean z) {
                this.bitField0_ |= 4;
                this.isSuccess_ = z;
                onChanged();
                return this;
            }

            public final Builder setUipAttributeData(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.uipAttributeData_ = str;
                onChanged();
                return this;
            }

            public final Builder setUipAttributeDataBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.uipAttributeData_ = byteString;
                onChanged();
                return this;
            }
        }

        /* loaded from: classes.dex */
        public enum Command_Type implements ProtocolMessageEnum {
            EVENT(0, 1),
            RSP_MSG(1, 2);

            public static final int EVENT_VALUE = 1;
            public static final int RSP_MSG_VALUE = 2;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<Command_Type> internalValueMap = new Internal.EnumLiteMap<Command_Type>() { // from class: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommand.Command_Type.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public final Command_Type findValueByNumber(int i) {
                    return Command_Type.valueOf(i);
                }
            };
            private static final Command_Type[] VALUES = values();

            Command_Type(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return UipToCommand.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<Command_Type> internalGetValueMap() {
                return internalValueMap;
            }

            public static Command_Type valueOf(int i) {
                switch (i) {
                    case 1:
                        return EVENT;
                    case 2:
                        return RSP_MSG;
                    default:
                        return null;
                }
            }

            public static Command_Type valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() != getDescriptor()) {
                    throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(this.index);
            }
        }

        static {
            UipToCommand uipToCommand = new UipToCommand(true);
            defaultInstance = uipToCommand;
            uipToCommand.initFields();
        }

        private UipToCommand(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                    int readEnum = codedInputStream.readEnum();
                                    Command_Type valueOf = Command_Type.valueOf(readEnum);
                                    if (valueOf == null) {
                                        newBuilder.mergeVarintField(1, readEnum);
                                    } else {
                                        this.bitField0_ |= 1;
                                        this.command_ = valueOf;
                                    }
                                } else if (readTag == 18) {
                                    ControlEvent.Builder builder = (this.bitField0_ & 2) == 2 ? this.event_.toBuilder() : null;
                                    this.event_ = (ControlEvent) codedInputStream.readMessage(ControlEvent.PARSER, extensionRegistryLite);
                                    if (builder != null) {
                                        builder.mergeFrom(this.event_);
                                        this.event_ = builder.buildPartial();
                                    }
                                    this.bitField0_ |= 2;
                                } else if (readTag == 24) {
                                    this.bitField0_ |= 4;
                                    this.isSuccess_ = codedInputStream.readBool();
                                } else if (readTag == 34) {
                                    this.bitField0_ |= 8;
                                    this.uipAttributeData_ = codedInputStream.readBytes();
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

        private UipToCommand(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private UipToCommand(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static UipToCommand getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return UiMessage.f6029m;
        }

        private void initFields() {
            this.command_ = Command_Type.EVENT;
            this.event_ = ControlEvent.getDefaultInstance();
            this.isSuccess_ = false;
            this.uipAttributeData_ = "";
        }

        public static Builder newBuilder() {
            return Builder.access$9900();
        }

        public static Builder newBuilder(UipToCommand uipToCommand) {
            return newBuilder().mergeFrom(uipToCommand);
        }

        public static UipToCommand parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static UipToCommand parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static UipToCommand parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static UipToCommand parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static UipToCommand parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static UipToCommand parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static UipToCommand parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static UipToCommand parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static UipToCommand parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static UipToCommand parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
        public final Command_Type getCommand() {
            return this.command_;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final UipToCommand getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
        public final ControlEvent getEvent() {
            return this.event_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
        public final ControlEventOrBuilder getEventOrBuilder() {
            return this.event_;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
        public final boolean getIsSuccess() {
            return this.isSuccess_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public final Parser<UipToCommand> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeEnumSize(1, this.command_.getNumber()) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeEnumSize += CodedOutputStream.computeMessageSize(2, this.event_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeEnumSize += CodedOutputStream.computeBoolSize(3, this.isSuccess_);
            }
            if ((this.bitField0_ & 8) == 8) {
                computeEnumSize += CodedOutputStream.computeBytesSize(4, getUipAttributeDataBytes());
            }
            int serializedSize = computeEnumSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
        public final String getUipAttributeData() {
            Object obj = this.uipAttributeData_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.uipAttributeData_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
        public final ByteString getUipAttributeDataBytes() {
            Object obj = this.uipAttributeData_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.uipAttributeData_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
        public final boolean hasCommand() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
        public final boolean hasEvent() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
        public final boolean hasIsSuccess() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommandOrBuilder
        public final boolean hasUipAttributeData() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return UiMessage.f6030n.ensureFieldAccessorsInitialized(UipToCommand.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasCommand()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasEvent() || getEvent().isInitialized()) {
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

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public final Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeEnum(1, this.command_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeMessage(2, this.event_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBool(3, this.isSuccess_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getUipAttributeDataBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface UipToCommandOrBuilder extends MessageOrBuilder {
        UipToCommand.Command_Type getCommand();

        ControlEvent getEvent();

        ControlEventOrBuilder getEventOrBuilder();

        boolean getIsSuccess();

        String getUipAttributeData();

        ByteString getUipAttributeDataBytes();

        boolean hasCommand();

        boolean hasEvent();

        boolean hasIsSuccess();

        boolean hasUipAttributeData();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u000fUiMessage.proto\"G\n\u000bPadding_Var\u0012\u000b\n\u0003Top\u0018\u0001 \u0002(\u0005\u0012\f\n\u0004Left\u0018\u0002 \u0002(\u0005\u0012\u000e\n\u0006Bottom\u0018\u0003 \u0002(\u0005\u0012\r\n\u0005Right\u0018\u0004 \u0002(\u0005\"\u008d\u0011\n\u000bCommandToUi\u0012*\n\u0007Command\u0018\u0001 \u0002(\u000e2\u0019.CommandToUi.Command_Type\u0012\u0012\n\nControl_Id\u0018\u0002 \u0001(\t\u0012\u0011\n\tParent_Id\u0018\u0003 \u0001(\t\u0012\f\n\u0004Text\u0018\u0004 \u0001(\t\u0012\r\n\u0005Width\u0018\u0005 \u0001(\u0005\u0012\u000e\n\u0006Height\u0018\u0006 \u0001(\u0005\u0012\u0014\n\fLayout_Style\u0018\u0007 \u0001(\u0005\u0012\u001c\n\u0014Default_Check_Status\u0018\b \u0001(\b\u0012\u0011\n\tItem_Text\u0018\t \u0003(\t\u0012\u0012\n\nItem_Index\u0018\n \u0001(\u0005\u0012\u001a\n\u0012Default_Item_Index\u0018\u000b \u0001(\u0005\u0012\f\n\u0004Path\u0018\f \u0001(\t\u0012\u000b\n\u0003Url\u0018\r \u0001(\t\u0012\u0016\n\u000eEnabled_Status\u0018\u000e", " \u0001(\b\u0012\u0016\n\u000eVisible_Status\u0018\u000f \u0001(\u0005\u0012\r\n\u0005Color\u0018\u0010 \u0001(\t\u0012\u0011\n\tAlignType\u0018\u0011 \u0001(\u0005\u0012\u001d\n\u0007Padding\u0018\u0012 \u0001(\u000b2\f.Padding_Var\u0012\u0010\n\bUip_Data\u0018\u0013 \u0001(\t\u0012\u0017\n\u000fEdit_Input_Type\u0018\u0014 \u0001(\u0005\u0012\u0011\n\tFont_Type\u0018\u0015 \u0001(\t\u0012\u0011\n\tFont_Size\u0018\u0016 \u0001(\u0005\u0012\f\n\u0004Left\u0018\u0017 \u0001(\u0005\u0012\u000b\n\u0003Top\u0018\u0018 \u0001(\u0005\u0012\u0011\n\tInt_Param\u0018\u0019 \u0001(\u0005\u0012\u0011\n\tStr_Param\u0018\u001a \u0001(\t\u0012\u0012\n\nBool_Param\u0018\u001b \u0001(\b\"Ô\f\n\fCommand_Type\u0012\u000e\n\nNEW_LAYOUT\u0010\u0001\u0012\u000f\n\u000bSHOW_LAYOUT\u0010\u0002\u0012\u0010\n\fCLOSE_LAYOUT\u0010\u0003\u0012\r\n\tNEW_FLOAT\u0010\u0004\u0012\u000e\n\nSHOW_FLOAT\u0010\u0005\u0012\u000f\n\u000bCLOSE_FLOAT\u0010\u0006\u0012\u000e\n\nHIDE_FLOAT\u0010\u0007\u0012\u000b\n\u0007NEW_R", "OW\u0010d\u0012\u0011\n\rADD_TEXT_VIEW\u0010e\u0012\u0011\n\rADD_EDIT_TEXT\u0010f\u0012\u000e\n\nADD_BUTTON\u0010g\u0012\u0013\n\u000fADD_RADIO_GROUP\u0010h\u0012\u0011\n\rADD_CHECK_BOX\u0010i\u0012\u0012\n\u000eADD_IMAGE_VIEW\u0010j\u0012\u000f\n\u000bADD_SPINNER\u0010k\u0012\u0010\n\fADD_TAB_HOST\u0010l\u0012\u000b\n\u0007ADD_TAB\u0010m\u0012\u0010\n\fADD_WEB_VIEW\u0010n\u0012\f\n\bADD_LINE\u0010o\u0012\u0011\n\rADD_FW_BUTTON\u0010p\u0012\u0014\n\u0010ADD_FW_TEXT_VIEW\u0010q\u0012\u0015\n\u0011ADD_FW_IMAGE_VIEW\u0010r\u0012\u0012\n\rSET_TEXT_VIEW\u0010É\u0001\u0012\u0012\n\rSET_EDIT_TEXT\u0010Ê\u0001\u0012\u000f\n\nSET_BOTTON\u0010Ë\u0001\u0012\u0014\n\u000fSET_RADIO_GROUP\u0010Ì\u0001\u0012\u0012\n\rSET_CHECK_BOX\u0010Í\u0001\u0012\u0013\n\u000eSET_IMAGE_VIEW\u0010Î\u0001\u0012\u0010\n\u000bSET_SPINNER\u0010Ï\u0001", "\u0012\f\n\u0007SET_TAB\u0010Ð\u0001\u0012\u0011\n\fSET_WEB_VIEW\u0010Ñ\u0001\u0012\r\n\bSET_LINE\u0010Ò\u0001\u0012\u0018\n\u0013SET_EDIT_INPUT_TYPE\u0010Ó\u0001\u0012\r\n\bSET_FONT\u0010Ô\u0001\u0012\u0018\n\u0013SET_FONT_SIZE_LEVEL\u0010Õ\u0001\u0012\u0016\n\u0011SET_ROW_ALIGNMENT\u0010Ö\u0001\u0012\u0012\n\rSET_FW_BUTTON\u0010×\u0001\u0012\u0015\n\u0010SET_FW_TEXT_VIEW\u0010Ø\u0001\u0012\u0016\n\u0011SET_FW_IMAGE_VIEW\u0010Ù\u0001\u0012\u0010\n\u000bSET_ENABLED\u0010\u00ad\u0002\u0012\u0010\n\u000bSET_VISIBLE\u0010®\u0002\u0012\u0013\n\u000eSET_TITLE_TEXT\u0010¯\u0002\u0012\r\n\bSET_TEXT\u0010°\u0002\u0012\u0012\n\rSET_BACKCOLOR\u0010±\u0002\u0012\u0018\n\u0013SET_TITLE_BACKCOLOR\u0010²\u0002\u0012\u0012\n\rSET_TEXTCOLOR\u0010³\u0002\u0012\u000f\n\nSET_FW_PIC\u0010´\u0002\u0012\u000e\n\tSET_FW_BG\u0010µ\u0002\u0012\u0016\n\u0011SET_FW_TEXT_COLOR\u0010¶", "\u0002\u0012\u0015\n\u0010SET_FW_TEXT_SIZE\u0010·\u0002\u0012\u0012\n\rSET_FW_ENABLE\u0010¸\u0002\u0012\u0013\n\u000eSET_FW_VISIBLE\u0010¹\u0002\u0012\u0010\n\u000bGET_ENABLED\u0010\u0091\u0003\u0012\u0010\n\u000bGET_VISIBLE\u0010\u0092\u0003\u0012\u0013\n\u000eGET_TITLE_TEXT\u0010\u0093\u0003\u0012\r\n\bGET_TEXT\u0010\u0094\u0003\u0012\u0012\n\rGET_BACKCOLOR\u0010\u0095\u0003\u0012\u0018\n\u0013GET_TITLE_BACKCOLOR\u0010\u0096\u0003\u0012\u0012\n\rGET_TEXTCOLOR\u0010\u0097\u0003\u0012\u000e\n\tGET_VALUE\u0010\u0098\u0003\u0012\u0012\n\rGET_FW_ENABLE\u0010\u0099\u0003\u0012\u0013\n\u000eGET_FW_VISIBLE\u0010\u009a\u0003\u0012\u0016\n\u0011GET_FW_TEXT_COLOR\u0010\u009b\u0003\u0012\u0017\n\u0012SET_WINDOW_GRAVITY\u0010õ\u0003\u0012\u0018\n\u0013SET_CONTROL_GRAVITY\u0010ö\u0003\u0012\u0010\n\u000bSET_PADDING\u0010÷\u0003\u0012\u0013\n\u000eSET_FULLSCREEN\u0010ø\u0003\u0012\u0011\n\fLOAD_PROFILE\u0010Ù\u0004\u0012\u0011\n\fSAV", "E_PROFILE\u0010Ú\u0004\u0012\u0012\n\rSET_FW_SMOOTH\u0010Û\u0004\u0012\u0014\n\u000fIS_FW_TOUCHMOVE\u0010Ü\u0004\u0012\u000e\n\tFW_ZORDER\u0010Ý\u0004\u0012\u000f\n\nFW_OPACITY\u0010Þ\u0004\u0012\u0011\n\fFW_GET_VALUE\u0010ß\u0004\u0012\u0010\n\u000bFW_SET_LEFT\u0010à\u0004\u0012\u000f\n\nFW_SET_TOP\u0010á\u0004\u0012\u0011\n\fFW_SET_WIDTH\u0010â\u0004\u0012\u0012\n\rFW_SET_HEIGHT\u0010ã\u0004\u0012\u0010\n\u000bFW_SET_TEXT\u0010ä\u0004\u0012\u0011\n\fGET_UIP_DATA\u0010½\u0005\u0012\u0011\n\fSET_UIP_DATA\u0010¾\u0005\u0012\u0017\n\u0012CLOSE_CONTINUE_ACK\u0010¡\u0006\u0012\u0013\n\u000eCLOSE_EXIT_ACK\u0010¢\u0006\"¾\u0002\n\fControlEvent\u0012\u0012\n\nControl_Id\u0018\u0001 \u0002(\t\u0012&\n\u0004Type\u0018\u0002 \u0002(\u000e2\u0018.ControlEvent.Event_Type\u0012\u0012\n\nEvent_Args\u0018\u0003 \u0001(\t\u0012\u001b\n\u0013Event_Function_Na", "me\u0018\u0004 \u0001(\t\"À\u0001\n\nEvent_Type\u0012\r\n\tON_CHANGE\u0010\u0001\u0012\f\n\bON_CLICK\u0010\u0002\u0012\u000b\n\u0007ON_SHOW\u0010\u0003\u0012\u0015\n\u0011ON_CLOSE_CONTINUE\u0010\u0004\u0012\u0011\n\rON_CLOSE_EXIT\u0010\u0005\u0012\f\n\bON_TOUCH\u0010\u0006\u0012\u0011\n\rON_TOUCH_DOWN\u0010\u0007\u0012\u0011\n\rON_TOUCH_MOVE\u0010\b\u0012\u000f\n\u000bON_TOUCH_UP\u0010\t\u0012\f\n\bON_CLOSE\u0010\n\u0012\u000b\n\u0007ON_HIDE\u0010\u000b\"®\u0001\n\nControlVar\u0012\u0012\n\nControl_Id\u0018\u0001 \u0002(\t\u0012#\n\u0004Type\u0018\u0002 \u0001(\u000e2\u0015.ControlVar.Data_Type\u0012\u0012\n\nBool_Value\u0018\u0003 \u0001(\b\u0012\u0011\n\tInt_Value\u0018\u0004 \u0001(\u0005\u0012\u0014\n\fString_Value\u0018\u0005 \u0001(\t\"*\n\tData_Type\u0012\b\n\u0004BOOL\u0010\u0001\u0012\u0007\n\u0003INT\u0010\u0002\u0012\n\n\u0006STRING\u0010\u0003\"±\u0001\n\u000bUiToCommand\u0012*\n\u0007", "Command\u0018\u0001 \u0002(\u000e2\u0019.UiToCommand.Command_Type\u0012\u001c\n\u0005Event\u0018\u0002 \u0001(\u000b2\r.ControlEvent\u0012\u0011\n\tIsSuccess\u0018\u0003 \u0001(\b\u0012\u001d\n\bVarTable\u0018\u0004 \u0003(\u000b2\u000b.ControlVar\"&\n\fCommand_Type\u0012\t\n\u0005EVENT\u0010\u0001\u0012\u000b\n\u0007RSP_MSG\u0010\u0002\"©\u0001\n\fCommandToUip\u0012+\n\u0007Command\u0018\u0001 \u0002(\u000e2\u001a.CommandToUip.Command_Type\u0012\u0012\n\nControl_Id\u0018\u0002 \u0001(\t\u0012\u001a\n\u0012Uip_Attribute_Data\u0018\u0003 \u0001(\t\"<\n\fCommand_Type\u0012\u0015\n\u0011GET_UIP_ATTRIBUTE\u0010e\u0012\u0015\n\u0011SET_UIP_ATTRIBUTE\u0010f\"°\u0001\n\fUipToCommand\u0012+\n\u0007Command\u0018\u0001 \u0002(\u000e2\u001a.UipToCommand.Command_Type\u0012\u001c\n\u0005Ev", "ent\u0018\u0002 \u0001(\u000b2\r.ControlEvent\u0012\u0011\n\tIsSuccess\u0018\u0003 \u0001(\b\u0012\u001a\n\u0012Uip_Attribute_Data\u0018\u0004 \u0001(\t\"&\n\fCommand_Type\u0012\t\n\u0005EVENT\u0010\u0001\u0012\u000b\n\u0007RSP_MSG\u0010\u0002B2\n%com.cyjh.mobileanjian.ipc.share.protoB\tUiMessage"}, new Descriptors.FileDescriptor[0], new Descriptors.FileDescriptor.InternalDescriptorAssigner() { // from class: com.cyjh.mobileanjian.ipc.share.proto.UiMessage.1
            @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
            public final ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
                Descriptors.FileDescriptor unused = UiMessage.f6031o = fileDescriptor;
                Descriptors.Descriptor unused2 = UiMessage.f6017a = UiMessage.m7173a().getMessageTypes().get(0);
                GeneratedMessage.FieldAccessorTable unused3 = UiMessage.f6018b = new GeneratedMessage.FieldAccessorTable(UiMessage.f6017a, new String[]{"Top", "Left", "Bottom", "Right"});
                Descriptors.Descriptor unused4 = UiMessage.f6019c = UiMessage.m7173a().getMessageTypes().get(1);
                GeneratedMessage.FieldAccessorTable unused5 = UiMessage.f6020d = new GeneratedMessage.FieldAccessorTable(UiMessage.f6019c, new String[]{"Command", "ControlId", "ParentId", "Text", "Width", "Height", "LayoutStyle", "DefaultCheckStatus", "ItemText", "ItemIndex", "DefaultItemIndex", "Path", "Url", "EnabledStatus", "VisibleStatus", "Color", "AlignType", "Padding", "UipData", "EditInputType", "FontType", "FontSize", "Left", "Top", "IntParam", "StrParam", "BoolParam"});
                Descriptors.Descriptor unused6 = UiMessage.f6021e = UiMessage.m7173a().getMessageTypes().get(2);
                GeneratedMessage.FieldAccessorTable unused7 = UiMessage.f6022f = new GeneratedMessage.FieldAccessorTable(UiMessage.f6021e, new String[]{"ControlId", "Type", "EventArgs", "EventFunctionName"});
                Descriptors.Descriptor unused8 = UiMessage.f6023g = UiMessage.m7173a().getMessageTypes().get(3);
                GeneratedMessage.FieldAccessorTable unused9 = UiMessage.f6024h = new GeneratedMessage.FieldAccessorTable(UiMessage.f6023g, new String[]{"ControlId", "Type", "BoolValue", "IntValue", "StringValue"});
                Descriptors.Descriptor unused10 = UiMessage.f6025i = UiMessage.m7173a().getMessageTypes().get(4);
                GeneratedMessage.FieldAccessorTable unused11 = UiMessage.f6026j = new GeneratedMessage.FieldAccessorTable(UiMessage.f6025i, new String[]{"Command", "Event", "IsSuccess", "VarTable"});
                Descriptors.Descriptor unused12 = UiMessage.f6027k = UiMessage.m7173a().getMessageTypes().get(5);
                GeneratedMessage.FieldAccessorTable unused13 = UiMessage.f6028l = new GeneratedMessage.FieldAccessorTable(UiMessage.f6027k, new String[]{"Command", "ControlId", "UipAttributeData"});
                Descriptors.Descriptor unused14 = UiMessage.f6029m = UiMessage.m7173a().getMessageTypes().get(6);
                GeneratedMessage.FieldAccessorTable unused15 = UiMessage.f6030n = new GeneratedMessage.FieldAccessorTable(UiMessage.f6029m, new String[]{"Command", "Event", "IsSuccess", "UipAttributeData"});
                return null;
            }
        });
    }

    private UiMessage() {
    }

    /* renamed from: a */
    public static Descriptors.FileDescriptor m7173a() {
        return f6031o;
    }

    /* renamed from: p */
    private static void m7202p() {
    }
}
