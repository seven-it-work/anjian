package com.google.protobuf;

import com.cyjh.common.p067b.InterfaceC1133a;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.Internal;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class DescriptorProtos {
    private static Descriptors.FileDescriptor descriptor;

    /* renamed from: internal_static_google_protobuf_DescriptorProto_ExtensionRange_descriptor */
    private static Descriptors.Descriptor f7905x1458f8d;

    /* renamed from: internal_static_google_protobuf_DescriptorProto_ExtensionRange_fieldAccessorTable */
    private static GeneratedMessage.FieldAccessorTable f7906xf366d90b;
    private static Descriptors.Descriptor internal_static_google_protobuf_DescriptorProto_descriptor;

    /* renamed from: internal_static_google_protobuf_DescriptorProto_fieldAccessorTable */
    private static GeneratedMessage.FieldAccessorTable f7907x907d0bf0;
    private static Descriptors.Descriptor internal_static_google_protobuf_EnumDescriptorProto_descriptor;

    /* renamed from: internal_static_google_protobuf_EnumDescriptorProto_fieldAccessorTable */
    private static GeneratedMessage.FieldAccessorTable f7908x9945f651;
    private static Descriptors.Descriptor internal_static_google_protobuf_EnumOptions_descriptor;
    private static GeneratedMessage.FieldAccessorTable internal_static_google_protobuf_EnumOptions_fieldAccessorTable;

    /* renamed from: internal_static_google_protobuf_EnumValueDescriptorProto_descriptor */
    private static Descriptors.Descriptor f7909xf18031a8;

    /* renamed from: internal_static_google_protobuf_EnumValueDescriptorProto_fieldAccessorTable */
    private static GeneratedMessage.FieldAccessorTable f7910xfb173026;
    private static Descriptors.Descriptor internal_static_google_protobuf_EnumValueOptions_descriptor;

    /* renamed from: internal_static_google_protobuf_EnumValueOptions_fieldAccessorTable */
    private static GeneratedMessage.FieldAccessorTable f7911xdf65a421;
    private static Descriptors.Descriptor internal_static_google_protobuf_FieldDescriptorProto_descriptor;

    /* renamed from: internal_static_google_protobuf_FieldDescriptorProto_fieldAccessorTable */
    private static GeneratedMessage.FieldAccessorTable f7912x4734b330;
    private static Descriptors.Descriptor internal_static_google_protobuf_FieldOptions_descriptor;
    private static GeneratedMessage.FieldAccessorTable internal_static_google_protobuf_FieldOptions_fieldAccessorTable;
    private static Descriptors.Descriptor internal_static_google_protobuf_FileDescriptorProto_descriptor;

    /* renamed from: internal_static_google_protobuf_FileDescriptorProto_fieldAccessorTable */
    private static GeneratedMessage.FieldAccessorTable f7913x4b52780c;
    private static Descriptors.Descriptor internal_static_google_protobuf_FileDescriptorSet_descriptor;

    /* renamed from: internal_static_google_protobuf_FileDescriptorSet_fieldAccessorTable */
    private static GeneratedMessage.FieldAccessorTable f7914x15a6a952;
    private static Descriptors.Descriptor internal_static_google_protobuf_FileOptions_descriptor;
    private static GeneratedMessage.FieldAccessorTable internal_static_google_protobuf_FileOptions_fieldAccessorTable;
    private static Descriptors.Descriptor internal_static_google_protobuf_MessageOptions_descriptor;

    /* renamed from: internal_static_google_protobuf_MessageOptions_fieldAccessorTable */
    private static GeneratedMessage.FieldAccessorTable f7915x9c0b3d38;
    private static Descriptors.Descriptor internal_static_google_protobuf_MethodDescriptorProto_descriptor;

    /* renamed from: internal_static_google_protobuf_MethodDescriptorProto_fieldAccessorTable */
    private static GeneratedMessage.FieldAccessorTable f7916xc5331ef1;
    private static Descriptors.Descriptor internal_static_google_protobuf_MethodOptions_descriptor;
    private static GeneratedMessage.FieldAccessorTable internal_static_google_protobuf_MethodOptions_fieldAccessorTable;

    /* renamed from: internal_static_google_protobuf_ServiceDescriptorProto_descriptor */
    private static Descriptors.Descriptor f7917x158c73ed;

    /* renamed from: internal_static_google_protobuf_ServiceDescriptorProto_fieldAccessorTable */
    private static GeneratedMessage.FieldAccessorTable f7918xee335d6b;
    private static Descriptors.Descriptor internal_static_google_protobuf_ServiceOptions_descriptor;

    /* renamed from: internal_static_google_protobuf_ServiceOptions_fieldAccessorTable */
    private static GeneratedMessage.FieldAccessorTable f7919x371e666;

    /* renamed from: internal_static_google_protobuf_SourceCodeInfo_Location_descriptor */
    private static Descriptors.Descriptor f7920xb210d08d;

    /* renamed from: internal_static_google_protobuf_SourceCodeInfo_Location_fieldAccessorTable */
    private static GeneratedMessage.FieldAccessorTable f7921x9611a0b;
    private static Descriptors.Descriptor internal_static_google_protobuf_SourceCodeInfo_descriptor;

    /* renamed from: internal_static_google_protobuf_SourceCodeInfo_fieldAccessorTable */
    private static GeneratedMessage.FieldAccessorTable f7922x532209f9;

    /* renamed from: internal_static_google_protobuf_UninterpretedOption_NamePart_descriptor */
    private static Descriptors.Descriptor f7923xb111d23c;

    /* renamed from: internal_static_google_protobuf_UninterpretedOption_NamePart_fieldAccessorTable */
    private static GeneratedMessage.FieldAccessorTable f7924x1698fcba;
    private static Descriptors.Descriptor internal_static_google_protobuf_UninterpretedOption_descriptor;

    /* renamed from: internal_static_google_protobuf_UninterpretedOption_fieldAccessorTable */
    private static GeneratedMessage.FieldAccessorTable f7925x2101041;

    /* loaded from: classes.dex */
    public static final class DescriptorProto extends GeneratedMessage implements DescriptorProtoOrBuilder {
        public static final int ENUM_TYPE_FIELD_NUMBER = 4;
        public static final int EXTENSION_FIELD_NUMBER = 6;
        public static final int EXTENSION_RANGE_FIELD_NUMBER = 5;
        public static final int FIELD_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int NESTED_TYPE_FIELD_NUMBER = 3;
        public static final int OPTIONS_FIELD_NUMBER = 7;
        private static final DescriptorProto defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private List<EnumDescriptorProto> enumType_;
        private List<ExtensionRange> extensionRange_;
        private List<FieldDescriptorProto> extension_;
        private List<FieldDescriptorProto> field_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object name_;
        private List<DescriptorProto> nestedType_;
        private MessageOptions options_;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements DescriptorProtoOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<EnumDescriptorProto, EnumDescriptorProto.Builder, EnumDescriptorProtoOrBuilder> enumTypeBuilder_;
            private List<EnumDescriptorProto> enumType_;
            private RepeatedFieldBuilder<FieldDescriptorProto, FieldDescriptorProto.Builder, FieldDescriptorProtoOrBuilder> extensionBuilder_;
            private RepeatedFieldBuilder<ExtensionRange, ExtensionRange.Builder, ExtensionRangeOrBuilder> extensionRangeBuilder_;
            private List<ExtensionRange> extensionRange_;
            private List<FieldDescriptorProto> extension_;
            private RepeatedFieldBuilder<FieldDescriptorProto, FieldDescriptorProto.Builder, FieldDescriptorProtoOrBuilder> fieldBuilder_;
            private List<FieldDescriptorProto> field_;
            private Object name_;
            private RepeatedFieldBuilder<DescriptorProto, Builder, DescriptorProtoOrBuilder> nestedTypeBuilder_;
            private List<DescriptorProto> nestedType_;
            private SingleFieldBuilder<MessageOptions, MessageOptions.Builder, MessageOptionsOrBuilder> optionsBuilder_;
            private MessageOptions options_;

            private Builder() {
                this.name_ = "";
                this.field_ = Collections.emptyList();
                this.extension_ = Collections.emptyList();
                this.nestedType_ = Collections.emptyList();
                this.enumType_ = Collections.emptyList();
                this.extensionRange_ = Collections.emptyList();
                this.options_ = MessageOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.name_ = "";
                this.field_ = Collections.emptyList();
                this.extension_ = Collections.emptyList();
                this.nestedType_ = Collections.emptyList();
                this.enumType_ = Collections.emptyList();
                this.extensionRange_ = Collections.emptyList();
                this.options_ = MessageOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                this(builderParent);
            }

            static /* synthetic */ Builder access$18() {
                return create();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public DescriptorProto buildParsed() throws InvalidProtocolBufferException {
                DescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
            }

            private static Builder create() {
                return new Builder();
            }

            private void ensureEnumTypeIsMutable() {
                if ((this.bitField0_ & 16) != 16) {
                    this.enumType_ = new ArrayList(this.enumType_);
                    this.bitField0_ |= 16;
                }
            }

            private void ensureExtensionIsMutable() {
                if ((this.bitField0_ & 4) != 4) {
                    this.extension_ = new ArrayList(this.extension_);
                    this.bitField0_ |= 4;
                }
            }

            private void ensureExtensionRangeIsMutable() {
                if ((this.bitField0_ & 32) != 32) {
                    this.extensionRange_ = new ArrayList(this.extensionRange_);
                    this.bitField0_ |= 32;
                }
            }

            private void ensureFieldIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.field_ = new ArrayList(this.field_);
                    this.bitField0_ |= 2;
                }
            }

            private void ensureNestedTypeIsMutable() {
                if ((this.bitField0_ & 8) != 8) {
                    this.nestedType_ = new ArrayList(this.nestedType_);
                    this.bitField0_ |= 8;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_DescriptorProto_descriptor;
            }

            private RepeatedFieldBuilder<EnumDescriptorProto, EnumDescriptorProto.Builder, EnumDescriptorProtoOrBuilder> getEnumTypeFieldBuilder() {
                if (this.enumTypeBuilder_ == null) {
                    this.enumTypeBuilder_ = new RepeatedFieldBuilder<>(this.enumType_, (this.bitField0_ & 16) == 16, getParentForChildren(), isClean());
                    this.enumType_ = null;
                }
                return this.enumTypeBuilder_;
            }

            private RepeatedFieldBuilder<FieldDescriptorProto, FieldDescriptorProto.Builder, FieldDescriptorProtoOrBuilder> getExtensionFieldBuilder() {
                if (this.extensionBuilder_ == null) {
                    this.extensionBuilder_ = new RepeatedFieldBuilder<>(this.extension_, (this.bitField0_ & 4) == 4, getParentForChildren(), isClean());
                    this.extension_ = null;
                }
                return this.extensionBuilder_;
            }

            private RepeatedFieldBuilder<ExtensionRange, ExtensionRange.Builder, ExtensionRangeOrBuilder> getExtensionRangeFieldBuilder() {
                if (this.extensionRangeBuilder_ == null) {
                    this.extensionRangeBuilder_ = new RepeatedFieldBuilder<>(this.extensionRange_, (this.bitField0_ & 32) == 32, getParentForChildren(), isClean());
                    this.extensionRange_ = null;
                }
                return this.extensionRangeBuilder_;
            }

            private RepeatedFieldBuilder<FieldDescriptorProto, FieldDescriptorProto.Builder, FieldDescriptorProtoOrBuilder> getFieldFieldBuilder() {
                if (this.fieldBuilder_ == null) {
                    this.fieldBuilder_ = new RepeatedFieldBuilder<>(this.field_, (this.bitField0_ & 2) == 2, getParentForChildren(), isClean());
                    this.field_ = null;
                }
                return this.fieldBuilder_;
            }

            private RepeatedFieldBuilder<DescriptorProto, Builder, DescriptorProtoOrBuilder> getNestedTypeFieldBuilder() {
                if (this.nestedTypeBuilder_ == null) {
                    this.nestedTypeBuilder_ = new RepeatedFieldBuilder<>(this.nestedType_, (this.bitField0_ & 8) == 8, getParentForChildren(), isClean());
                    this.nestedType_ = null;
                }
                return this.nestedTypeBuilder_;
            }

            private SingleFieldBuilder<MessageOptions, MessageOptions.Builder, MessageOptionsOrBuilder> getOptionsFieldBuilder() {
                if (this.optionsBuilder_ == null) {
                    this.optionsBuilder_ = new SingleFieldBuilder<>(this.options_, getParentForChildren(), isClean());
                    this.options_ = null;
                }
                return this.optionsBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getFieldFieldBuilder();
                    getExtensionFieldBuilder();
                    getNestedTypeFieldBuilder();
                    getEnumTypeFieldBuilder();
                    getExtensionRangeFieldBuilder();
                    getOptionsFieldBuilder();
                }
            }

            public final Builder addAllEnumType(Iterable<? extends EnumDescriptorProto> iterable) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureEnumTypeIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.enumType_);
                onChanged();
                return this;
            }

            public final Builder addAllExtension(Iterable<? extends FieldDescriptorProto> iterable) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureExtensionIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.extension_);
                onChanged();
                return this;
            }

            public final Builder addAllExtensionRange(Iterable<? extends ExtensionRange> iterable) {
                if (this.extensionRangeBuilder_ != null) {
                    this.extensionRangeBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureExtensionRangeIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.extensionRange_);
                onChanged();
                return this;
            }

            public final Builder addAllField(Iterable<? extends FieldDescriptorProto> iterable) {
                if (this.fieldBuilder_ != null) {
                    this.fieldBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureFieldIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.field_);
                onChanged();
                return this;
            }

            public final Builder addAllNestedType(Iterable<? extends DescriptorProto> iterable) {
                if (this.nestedTypeBuilder_ != null) {
                    this.nestedTypeBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureNestedTypeIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.nestedType_);
                onChanged();
                return this;
            }

            public final Builder addEnumType(int i, EnumDescriptorProto.Builder builder) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureEnumTypeIsMutable();
                this.enumType_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addEnumType(int i, EnumDescriptorProto enumDescriptorProto) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.addMessage(i, enumDescriptorProto);
                    return this;
                }
                if (enumDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureEnumTypeIsMutable();
                this.enumType_.add(i, enumDescriptorProto);
                onChanged();
                return this;
            }

            public final Builder addEnumType(EnumDescriptorProto.Builder builder) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureEnumTypeIsMutable();
                this.enumType_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addEnumType(EnumDescriptorProto enumDescriptorProto) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.addMessage(enumDescriptorProto);
                    return this;
                }
                if (enumDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureEnumTypeIsMutable();
                this.enumType_.add(enumDescriptorProto);
                onChanged();
                return this;
            }

            public final EnumDescriptorProto.Builder addEnumTypeBuilder() {
                return getEnumTypeFieldBuilder().addBuilder(EnumDescriptorProto.getDefaultInstance());
            }

            public final EnumDescriptorProto.Builder addEnumTypeBuilder(int i) {
                return getEnumTypeFieldBuilder().addBuilder(i, EnumDescriptorProto.getDefaultInstance());
            }

            public final Builder addExtension(int i, FieldDescriptorProto.Builder builder) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureExtensionIsMutable();
                this.extension_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addExtension(int i, FieldDescriptorProto fieldDescriptorProto) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.addMessage(i, fieldDescriptorProto);
                    return this;
                }
                if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureExtensionIsMutable();
                this.extension_.add(i, fieldDescriptorProto);
                onChanged();
                return this;
            }

            public final Builder addExtension(FieldDescriptorProto.Builder builder) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureExtensionIsMutable();
                this.extension_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addExtension(FieldDescriptorProto fieldDescriptorProto) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.addMessage(fieldDescriptorProto);
                    return this;
                }
                if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureExtensionIsMutable();
                this.extension_.add(fieldDescriptorProto);
                onChanged();
                return this;
            }

            public final FieldDescriptorProto.Builder addExtensionBuilder() {
                return getExtensionFieldBuilder().addBuilder(FieldDescriptorProto.getDefaultInstance());
            }

            public final FieldDescriptorProto.Builder addExtensionBuilder(int i) {
                return getExtensionFieldBuilder().addBuilder(i, FieldDescriptorProto.getDefaultInstance());
            }

            public final Builder addExtensionRange(int i, ExtensionRange.Builder builder) {
                if (this.extensionRangeBuilder_ != null) {
                    this.extensionRangeBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureExtensionRangeIsMutable();
                this.extensionRange_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addExtensionRange(int i, ExtensionRange extensionRange) {
                if (this.extensionRangeBuilder_ != null) {
                    this.extensionRangeBuilder_.addMessage(i, extensionRange);
                    return this;
                }
                if (extensionRange == null) {
                    throw new NullPointerException();
                }
                ensureExtensionRangeIsMutable();
                this.extensionRange_.add(i, extensionRange);
                onChanged();
                return this;
            }

            public final Builder addExtensionRange(ExtensionRange.Builder builder) {
                if (this.extensionRangeBuilder_ != null) {
                    this.extensionRangeBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureExtensionRangeIsMutable();
                this.extensionRange_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addExtensionRange(ExtensionRange extensionRange) {
                if (this.extensionRangeBuilder_ != null) {
                    this.extensionRangeBuilder_.addMessage(extensionRange);
                    return this;
                }
                if (extensionRange == null) {
                    throw new NullPointerException();
                }
                ensureExtensionRangeIsMutable();
                this.extensionRange_.add(extensionRange);
                onChanged();
                return this;
            }

            public final ExtensionRange.Builder addExtensionRangeBuilder() {
                return getExtensionRangeFieldBuilder().addBuilder(ExtensionRange.getDefaultInstance());
            }

            public final ExtensionRange.Builder addExtensionRangeBuilder(int i) {
                return getExtensionRangeFieldBuilder().addBuilder(i, ExtensionRange.getDefaultInstance());
            }

            public final Builder addField(int i, FieldDescriptorProto.Builder builder) {
                if (this.fieldBuilder_ != null) {
                    this.fieldBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureFieldIsMutable();
                this.field_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addField(int i, FieldDescriptorProto fieldDescriptorProto) {
                if (this.fieldBuilder_ != null) {
                    this.fieldBuilder_.addMessage(i, fieldDescriptorProto);
                    return this;
                }
                if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureFieldIsMutable();
                this.field_.add(i, fieldDescriptorProto);
                onChanged();
                return this;
            }

            public final Builder addField(FieldDescriptorProto.Builder builder) {
                if (this.fieldBuilder_ != null) {
                    this.fieldBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureFieldIsMutable();
                this.field_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addField(FieldDescriptorProto fieldDescriptorProto) {
                if (this.fieldBuilder_ != null) {
                    this.fieldBuilder_.addMessage(fieldDescriptorProto);
                    return this;
                }
                if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureFieldIsMutable();
                this.field_.add(fieldDescriptorProto);
                onChanged();
                return this;
            }

            public final FieldDescriptorProto.Builder addFieldBuilder() {
                return getFieldFieldBuilder().addBuilder(FieldDescriptorProto.getDefaultInstance());
            }

            public final FieldDescriptorProto.Builder addFieldBuilder(int i) {
                return getFieldFieldBuilder().addBuilder(i, FieldDescriptorProto.getDefaultInstance());
            }

            public final Builder addNestedType(int i, Builder builder) {
                if (this.nestedTypeBuilder_ != null) {
                    this.nestedTypeBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureNestedTypeIsMutable();
                this.nestedType_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addNestedType(int i, DescriptorProto descriptorProto) {
                if (this.nestedTypeBuilder_ != null) {
                    this.nestedTypeBuilder_.addMessage(i, descriptorProto);
                    return this;
                }
                if (descriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureNestedTypeIsMutable();
                this.nestedType_.add(i, descriptorProto);
                onChanged();
                return this;
            }

            public final Builder addNestedType(Builder builder) {
                if (this.nestedTypeBuilder_ != null) {
                    this.nestedTypeBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureNestedTypeIsMutable();
                this.nestedType_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addNestedType(DescriptorProto descriptorProto) {
                if (this.nestedTypeBuilder_ != null) {
                    this.nestedTypeBuilder_.addMessage(descriptorProto);
                    return this;
                }
                if (descriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureNestedTypeIsMutable();
                this.nestedType_.add(descriptorProto);
                onChanged();
                return this;
            }

            public final Builder addNestedTypeBuilder() {
                return getNestedTypeFieldBuilder().addBuilder(DescriptorProto.getDefaultInstance());
            }

            public final Builder addNestedTypeBuilder(int i) {
                return getNestedTypeFieldBuilder().addBuilder(i, DescriptorProto.getDefaultInstance());
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final DescriptorProto build() {
                DescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final DescriptorProto buildPartial() {
                List<FieldDescriptorProto> build;
                List<FieldDescriptorProto> build2;
                List<DescriptorProto> build3;
                List<EnumDescriptorProto> build4;
                List<ExtensionRange> build5;
                DescriptorProto descriptorProto = new DescriptorProto(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                descriptorProto.name_ = this.name_;
                if (this.fieldBuilder_ == null) {
                    if ((this.bitField0_ & 2) == 2) {
                        this.field_ = Collections.unmodifiableList(this.field_);
                        this.bitField0_ &= -3;
                    }
                    build = this.field_;
                } else {
                    build = this.fieldBuilder_.build();
                }
                descriptorProto.field_ = build;
                if (this.extensionBuilder_ == null) {
                    if ((this.bitField0_ & 4) == 4) {
                        this.extension_ = Collections.unmodifiableList(this.extension_);
                        this.bitField0_ &= -5;
                    }
                    build2 = this.extension_;
                } else {
                    build2 = this.extensionBuilder_.build();
                }
                descriptorProto.extension_ = build2;
                if (this.nestedTypeBuilder_ == null) {
                    if ((this.bitField0_ & 8) == 8) {
                        this.nestedType_ = Collections.unmodifiableList(this.nestedType_);
                        this.bitField0_ &= -9;
                    }
                    build3 = this.nestedType_;
                } else {
                    build3 = this.nestedTypeBuilder_.build();
                }
                descriptorProto.nestedType_ = build3;
                if (this.enumTypeBuilder_ == null) {
                    if ((this.bitField0_ & 16) == 16) {
                        this.enumType_ = Collections.unmodifiableList(this.enumType_);
                        this.bitField0_ &= -17;
                    }
                    build4 = this.enumType_;
                } else {
                    build4 = this.enumTypeBuilder_.build();
                }
                descriptorProto.enumType_ = build4;
                if (this.extensionRangeBuilder_ == null) {
                    if ((this.bitField0_ & 32) == 32) {
                        this.extensionRange_ = Collections.unmodifiableList(this.extensionRange_);
                        this.bitField0_ &= -33;
                    }
                    build5 = this.extensionRange_;
                } else {
                    build5 = this.extensionRangeBuilder_.build();
                }
                descriptorProto.extensionRange_ = build5;
                if ((i & 64) == 64) {
                    i2 |= 2;
                }
                descriptorProto.options_ = this.optionsBuilder_ == null ? this.options_ : this.optionsBuilder_.build();
                descriptorProto.bitField0_ = i2;
                onBuilt();
                return descriptorProto;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.name_ = "";
                this.bitField0_ &= -2;
                if (this.fieldBuilder_ == null) {
                    this.field_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    this.fieldBuilder_.clear();
                }
                if (this.extensionBuilder_ == null) {
                    this.extension_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                } else {
                    this.extensionBuilder_.clear();
                }
                if (this.nestedTypeBuilder_ == null) {
                    this.nestedType_ = Collections.emptyList();
                    this.bitField0_ &= -9;
                } else {
                    this.nestedTypeBuilder_.clear();
                }
                if (this.enumTypeBuilder_ == null) {
                    this.enumType_ = Collections.emptyList();
                    this.bitField0_ &= -17;
                } else {
                    this.enumTypeBuilder_.clear();
                }
                if (this.extensionRangeBuilder_ == null) {
                    this.extensionRange_ = Collections.emptyList();
                    this.bitField0_ &= -33;
                } else {
                    this.extensionRangeBuilder_.clear();
                }
                if (this.optionsBuilder_ == null) {
                    this.options_ = MessageOptions.getDefaultInstance();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -65;
                return this;
            }

            public final Builder clearEnumType() {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.clear();
                    return this;
                }
                this.enumType_ = Collections.emptyList();
                this.bitField0_ &= -17;
                onChanged();
                return this;
            }

            public final Builder clearExtension() {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.clear();
                    return this;
                }
                this.extension_ = Collections.emptyList();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public final Builder clearExtensionRange() {
                if (this.extensionRangeBuilder_ != null) {
                    this.extensionRangeBuilder_.clear();
                    return this;
                }
                this.extensionRange_ = Collections.emptyList();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }

            public final Builder clearField() {
                if (this.fieldBuilder_ != null) {
                    this.fieldBuilder_.clear();
                    return this;
                }
                this.field_ = Collections.emptyList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public final Builder clearName() {
                this.bitField0_ &= -2;
                this.name_ = DescriptorProto.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public final Builder clearNestedType() {
                if (this.nestedTypeBuilder_ != null) {
                    this.nestedTypeBuilder_.clear();
                    return this;
                }
                this.nestedType_ = Collections.emptyList();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public final Builder clearOptions() {
                if (this.optionsBuilder_ == null) {
                    this.options_ = MessageOptions.getDefaultInstance();
                    onChanged();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -65;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final DescriptorProto getDefaultInstanceForType() {
                return DescriptorProto.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProto.getDescriptor();
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final EnumDescriptorProto getEnumType(int i) {
                return this.enumTypeBuilder_ == null ? this.enumType_.get(i) : this.enumTypeBuilder_.getMessage(i);
            }

            public final EnumDescriptorProto.Builder getEnumTypeBuilder(int i) {
                return getEnumTypeFieldBuilder().getBuilder(i);
            }

            public final List<EnumDescriptorProto.Builder> getEnumTypeBuilderList() {
                return getEnumTypeFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final int getEnumTypeCount() {
                return this.enumTypeBuilder_ == null ? this.enumType_.size() : this.enumTypeBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final List<EnumDescriptorProto> getEnumTypeList() {
                return this.enumTypeBuilder_ == null ? Collections.unmodifiableList(this.enumType_) : this.enumTypeBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final EnumDescriptorProtoOrBuilder getEnumTypeOrBuilder(int i) {
                return (EnumDescriptorProtoOrBuilder) (this.enumTypeBuilder_ == null ? this.enumType_.get(i) : this.enumTypeBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final List<? extends EnumDescriptorProtoOrBuilder> getEnumTypeOrBuilderList() {
                return this.enumTypeBuilder_ != null ? this.enumTypeBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.enumType_);
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final FieldDescriptorProto getExtension(int i) {
                return this.extensionBuilder_ == null ? this.extension_.get(i) : this.extensionBuilder_.getMessage(i);
            }

            public final FieldDescriptorProto.Builder getExtensionBuilder(int i) {
                return getExtensionFieldBuilder().getBuilder(i);
            }

            public final List<FieldDescriptorProto.Builder> getExtensionBuilderList() {
                return getExtensionFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final int getExtensionCount() {
                return this.extensionBuilder_ == null ? this.extension_.size() : this.extensionBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final List<FieldDescriptorProto> getExtensionList() {
                return this.extensionBuilder_ == null ? Collections.unmodifiableList(this.extension_) : this.extensionBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final FieldDescriptorProtoOrBuilder getExtensionOrBuilder(int i) {
                return (FieldDescriptorProtoOrBuilder) (this.extensionBuilder_ == null ? this.extension_.get(i) : this.extensionBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final List<? extends FieldDescriptorProtoOrBuilder> getExtensionOrBuilderList() {
                return this.extensionBuilder_ != null ? this.extensionBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.extension_);
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final ExtensionRange getExtensionRange(int i) {
                return this.extensionRangeBuilder_ == null ? this.extensionRange_.get(i) : this.extensionRangeBuilder_.getMessage(i);
            }

            public final ExtensionRange.Builder getExtensionRangeBuilder(int i) {
                return getExtensionRangeFieldBuilder().getBuilder(i);
            }

            public final List<ExtensionRange.Builder> getExtensionRangeBuilderList() {
                return getExtensionRangeFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final int getExtensionRangeCount() {
                return this.extensionRangeBuilder_ == null ? this.extensionRange_.size() : this.extensionRangeBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final List<ExtensionRange> getExtensionRangeList() {
                return this.extensionRangeBuilder_ == null ? Collections.unmodifiableList(this.extensionRange_) : this.extensionRangeBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final ExtensionRangeOrBuilder getExtensionRangeOrBuilder(int i) {
                return (ExtensionRangeOrBuilder) (this.extensionRangeBuilder_ == null ? this.extensionRange_.get(i) : this.extensionRangeBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final List<? extends ExtensionRangeOrBuilder> getExtensionRangeOrBuilderList() {
                return this.extensionRangeBuilder_ != null ? this.extensionRangeBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.extensionRange_);
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final FieldDescriptorProto getField(int i) {
                return this.fieldBuilder_ == null ? this.field_.get(i) : this.fieldBuilder_.getMessage(i);
            }

            public final FieldDescriptorProto.Builder getFieldBuilder(int i) {
                return getFieldFieldBuilder().getBuilder(i);
            }

            public final List<FieldDescriptorProto.Builder> getFieldBuilderList() {
                return getFieldFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final int getFieldCount() {
                return this.fieldBuilder_ == null ? this.field_.size() : this.fieldBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final List<FieldDescriptorProto> getFieldList() {
                return this.fieldBuilder_ == null ? Collections.unmodifiableList(this.field_) : this.fieldBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final FieldDescriptorProtoOrBuilder getFieldOrBuilder(int i) {
                return (FieldDescriptorProtoOrBuilder) (this.fieldBuilder_ == null ? this.field_.get(i) : this.fieldBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final List<? extends FieldDescriptorProtoOrBuilder> getFieldOrBuilderList() {
                return this.fieldBuilder_ != null ? this.fieldBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.field_);
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final DescriptorProto getNestedType(int i) {
                return this.nestedTypeBuilder_ == null ? this.nestedType_.get(i) : this.nestedTypeBuilder_.getMessage(i);
            }

            public final Builder getNestedTypeBuilder(int i) {
                return getNestedTypeFieldBuilder().getBuilder(i);
            }

            public final List<Builder> getNestedTypeBuilderList() {
                return getNestedTypeFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final int getNestedTypeCount() {
                return this.nestedTypeBuilder_ == null ? this.nestedType_.size() : this.nestedTypeBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final List<DescriptorProto> getNestedTypeList() {
                return this.nestedTypeBuilder_ == null ? Collections.unmodifiableList(this.nestedType_) : this.nestedTypeBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final DescriptorProtoOrBuilder getNestedTypeOrBuilder(int i) {
                return (DescriptorProtoOrBuilder) (this.nestedTypeBuilder_ == null ? this.nestedType_.get(i) : this.nestedTypeBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final List<? extends DescriptorProtoOrBuilder> getNestedTypeOrBuilderList() {
                return this.nestedTypeBuilder_ != null ? this.nestedTypeBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.nestedType_);
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final MessageOptions getOptions() {
                return this.optionsBuilder_ == null ? this.options_ : this.optionsBuilder_.getMessage();
            }

            public final MessageOptions.Builder getOptionsBuilder() {
                this.bitField0_ |= 64;
                onChanged();
                return getOptionsFieldBuilder().getBuilder();
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final MessageOptionsOrBuilder getOptionsOrBuilder() {
                return this.optionsBuilder_ != null ? this.optionsBuilder_.getMessageOrBuilder() : this.options_;
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final boolean hasName() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
            public final boolean hasOptions() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.f7907x907d0bf0;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                for (int i = 0; i < getFieldCount(); i++) {
                    if (!getField(i).isInitialized()) {
                        return false;
                    }
                }
                for (int i2 = 0; i2 < getExtensionCount(); i2++) {
                    if (!getExtension(i2).isInitialized()) {
                        return false;
                    }
                }
                for (int i3 = 0; i3 < getNestedTypeCount(); i3++) {
                    if (!getNestedType(i3).isInitialized()) {
                        return false;
                    }
                }
                for (int i4 = 0; i4 < getEnumTypeCount(); i4++) {
                    if (!getEnumType(i4).isInitialized()) {
                        return false;
                    }
                }
                return !hasOptions() || getOptions().isInitialized();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                while (true) {
                    int readTag = codedInputStream.readTag();
                    if (readTag == 0) {
                        break;
                    }
                    if (readTag == 10) {
                        this.bitField0_ |= 1;
                        this.name_ = codedInputStream.readBytes();
                    } else if (readTag == 18) {
                        FieldDescriptorProto.Builder newBuilder2 = FieldDescriptorProto.newBuilder();
                        codedInputStream.readMessage(newBuilder2, extensionRegistryLite);
                        addField(newBuilder2.buildPartial());
                    } else if (readTag == 26) {
                        Builder newBuilder3 = DescriptorProto.newBuilder();
                        codedInputStream.readMessage(newBuilder3, extensionRegistryLite);
                        addNestedType(newBuilder3.buildPartial());
                    } else if (readTag == 34) {
                        EnumDescriptorProto.Builder newBuilder4 = EnumDescriptorProto.newBuilder();
                        codedInputStream.readMessage(newBuilder4, extensionRegistryLite);
                        addEnumType(newBuilder4.buildPartial());
                    } else if (readTag == 42) {
                        ExtensionRange.Builder newBuilder5 = ExtensionRange.newBuilder();
                        codedInputStream.readMessage(newBuilder5, extensionRegistryLite);
                        addExtensionRange(newBuilder5.buildPartial());
                    } else if (readTag == 50) {
                        FieldDescriptorProto.Builder newBuilder6 = FieldDescriptorProto.newBuilder();
                        codedInputStream.readMessage(newBuilder6, extensionRegistryLite);
                        addExtension(newBuilder6.buildPartial());
                    } else if (readTag == 58) {
                        MessageOptions.Builder newBuilder7 = MessageOptions.newBuilder();
                        if (hasOptions()) {
                            newBuilder7.mergeFrom(getOptions());
                        }
                        codedInputStream.readMessage(newBuilder7, extensionRegistryLite);
                        setOptions(newBuilder7.buildPartial());
                    } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        break;
                    }
                }
                setUnknownFields(newBuilder.build());
                onChanged();
                return this;
            }

            public final Builder mergeFrom(DescriptorProto descriptorProto) {
                if (descriptorProto == DescriptorProto.getDefaultInstance()) {
                    return this;
                }
                if (descriptorProto.hasName()) {
                    setName(descriptorProto.getName());
                }
                if (this.fieldBuilder_ == null) {
                    if (!descriptorProto.field_.isEmpty()) {
                        if (this.field_.isEmpty()) {
                            this.field_ = descriptorProto.field_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureFieldIsMutable();
                            this.field_.addAll(descriptorProto.field_);
                        }
                        onChanged();
                    }
                } else if (!descriptorProto.field_.isEmpty()) {
                    if (this.fieldBuilder_.isEmpty()) {
                        this.fieldBuilder_.dispose();
                        this.fieldBuilder_ = null;
                        this.field_ = descriptorProto.field_;
                        this.bitField0_ &= -3;
                        this.fieldBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getFieldFieldBuilder() : null;
                    } else {
                        this.fieldBuilder_.addAllMessages(descriptorProto.field_);
                    }
                }
                if (this.extensionBuilder_ == null) {
                    if (!descriptorProto.extension_.isEmpty()) {
                        if (this.extension_.isEmpty()) {
                            this.extension_ = descriptorProto.extension_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureExtensionIsMutable();
                            this.extension_.addAll(descriptorProto.extension_);
                        }
                        onChanged();
                    }
                } else if (!descriptorProto.extension_.isEmpty()) {
                    if (this.extensionBuilder_.isEmpty()) {
                        this.extensionBuilder_.dispose();
                        this.extensionBuilder_ = null;
                        this.extension_ = descriptorProto.extension_;
                        this.bitField0_ &= -5;
                        this.extensionBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getExtensionFieldBuilder() : null;
                    } else {
                        this.extensionBuilder_.addAllMessages(descriptorProto.extension_);
                    }
                }
                if (this.nestedTypeBuilder_ == null) {
                    if (!descriptorProto.nestedType_.isEmpty()) {
                        if (this.nestedType_.isEmpty()) {
                            this.nestedType_ = descriptorProto.nestedType_;
                            this.bitField0_ &= -9;
                        } else {
                            ensureNestedTypeIsMutable();
                            this.nestedType_.addAll(descriptorProto.nestedType_);
                        }
                        onChanged();
                    }
                } else if (!descriptorProto.nestedType_.isEmpty()) {
                    if (this.nestedTypeBuilder_.isEmpty()) {
                        this.nestedTypeBuilder_.dispose();
                        this.nestedTypeBuilder_ = null;
                        this.nestedType_ = descriptorProto.nestedType_;
                        this.bitField0_ &= -9;
                        this.nestedTypeBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getNestedTypeFieldBuilder() : null;
                    } else {
                        this.nestedTypeBuilder_.addAllMessages(descriptorProto.nestedType_);
                    }
                }
                if (this.enumTypeBuilder_ == null) {
                    if (!descriptorProto.enumType_.isEmpty()) {
                        if (this.enumType_.isEmpty()) {
                            this.enumType_ = descriptorProto.enumType_;
                            this.bitField0_ &= -17;
                        } else {
                            ensureEnumTypeIsMutable();
                            this.enumType_.addAll(descriptorProto.enumType_);
                        }
                        onChanged();
                    }
                } else if (!descriptorProto.enumType_.isEmpty()) {
                    if (this.enumTypeBuilder_.isEmpty()) {
                        this.enumTypeBuilder_.dispose();
                        this.enumTypeBuilder_ = null;
                        this.enumType_ = descriptorProto.enumType_;
                        this.bitField0_ &= -17;
                        this.enumTypeBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getEnumTypeFieldBuilder() : null;
                    } else {
                        this.enumTypeBuilder_.addAllMessages(descriptorProto.enumType_);
                    }
                }
                if (this.extensionRangeBuilder_ == null) {
                    if (!descriptorProto.extensionRange_.isEmpty()) {
                        if (this.extensionRange_.isEmpty()) {
                            this.extensionRange_ = descriptorProto.extensionRange_;
                            this.bitField0_ &= -33;
                        } else {
                            ensureExtensionRangeIsMutable();
                            this.extensionRange_.addAll(descriptorProto.extensionRange_);
                        }
                        onChanged();
                    }
                } else if (!descriptorProto.extensionRange_.isEmpty()) {
                    if (this.extensionRangeBuilder_.isEmpty()) {
                        this.extensionRangeBuilder_.dispose();
                        this.extensionRangeBuilder_ = null;
                        this.extensionRange_ = descriptorProto.extensionRange_;
                        this.bitField0_ &= -33;
                        this.extensionRangeBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getExtensionRangeFieldBuilder() : null;
                    } else {
                        this.extensionRangeBuilder_.addAllMessages(descriptorProto.extensionRange_);
                    }
                }
                if (descriptorProto.hasOptions()) {
                    mergeOptions(descriptorProto.getOptions());
                }
                mergeUnknownFields(descriptorProto.getUnknownFields());
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof DescriptorProto) {
                    return mergeFrom((DescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeOptions(MessageOptions messageOptions) {
                if (this.optionsBuilder_ == null) {
                    if ((this.bitField0_ & 64) == 64 && this.options_ != MessageOptions.getDefaultInstance()) {
                        messageOptions = MessageOptions.newBuilder(this.options_).mergeFrom(messageOptions).buildPartial();
                    }
                    this.options_ = messageOptions;
                    onChanged();
                } else {
                    this.optionsBuilder_.mergeFrom(messageOptions);
                }
                this.bitField0_ |= 64;
                return this;
            }

            public final Builder removeEnumType(int i) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.remove(i);
                    return this;
                }
                ensureEnumTypeIsMutable();
                this.enumType_.remove(i);
                onChanged();
                return this;
            }

            public final Builder removeExtension(int i) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.remove(i);
                    return this;
                }
                ensureExtensionIsMutable();
                this.extension_.remove(i);
                onChanged();
                return this;
            }

            public final Builder removeExtensionRange(int i) {
                if (this.extensionRangeBuilder_ != null) {
                    this.extensionRangeBuilder_.remove(i);
                    return this;
                }
                ensureExtensionRangeIsMutable();
                this.extensionRange_.remove(i);
                onChanged();
                return this;
            }

            public final Builder removeField(int i) {
                if (this.fieldBuilder_ != null) {
                    this.fieldBuilder_.remove(i);
                    return this;
                }
                ensureFieldIsMutable();
                this.field_.remove(i);
                onChanged();
                return this;
            }

            public final Builder removeNestedType(int i) {
                if (this.nestedTypeBuilder_ != null) {
                    this.nestedTypeBuilder_.remove(i);
                    return this;
                }
                ensureNestedTypeIsMutable();
                this.nestedType_.remove(i);
                onChanged();
                return this;
            }

            public final Builder setEnumType(int i, EnumDescriptorProto.Builder builder) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureEnumTypeIsMutable();
                this.enumType_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setEnumType(int i, EnumDescriptorProto enumDescriptorProto) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.setMessage(i, enumDescriptorProto);
                    return this;
                }
                if (enumDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureEnumTypeIsMutable();
                this.enumType_.set(i, enumDescriptorProto);
                onChanged();
                return this;
            }

            public final Builder setExtension(int i, FieldDescriptorProto.Builder builder) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureExtensionIsMutable();
                this.extension_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setExtension(int i, FieldDescriptorProto fieldDescriptorProto) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.setMessage(i, fieldDescriptorProto);
                    return this;
                }
                if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureExtensionIsMutable();
                this.extension_.set(i, fieldDescriptorProto);
                onChanged();
                return this;
            }

            public final Builder setExtensionRange(int i, ExtensionRange.Builder builder) {
                if (this.extensionRangeBuilder_ != null) {
                    this.extensionRangeBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureExtensionRangeIsMutable();
                this.extensionRange_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setExtensionRange(int i, ExtensionRange extensionRange) {
                if (this.extensionRangeBuilder_ != null) {
                    this.extensionRangeBuilder_.setMessage(i, extensionRange);
                    return this;
                }
                if (extensionRange == null) {
                    throw new NullPointerException();
                }
                ensureExtensionRangeIsMutable();
                this.extensionRange_.set(i, extensionRange);
                onChanged();
                return this;
            }

            public final Builder setField(int i, FieldDescriptorProto.Builder builder) {
                if (this.fieldBuilder_ != null) {
                    this.fieldBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureFieldIsMutable();
                this.field_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setField(int i, FieldDescriptorProto fieldDescriptorProto) {
                if (this.fieldBuilder_ != null) {
                    this.fieldBuilder_.setMessage(i, fieldDescriptorProto);
                    return this;
                }
                if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureFieldIsMutable();
                this.field_.set(i, fieldDescriptorProto);
                onChanged();
                return this;
            }

            public final Builder setName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = str;
                onChanged();
                return this;
            }

            final void setName(ByteString byteString) {
                this.bitField0_ |= 1;
                this.name_ = byteString;
                onChanged();
            }

            public final Builder setNestedType(int i, Builder builder) {
                if (this.nestedTypeBuilder_ != null) {
                    this.nestedTypeBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureNestedTypeIsMutable();
                this.nestedType_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setNestedType(int i, DescriptorProto descriptorProto) {
                if (this.nestedTypeBuilder_ != null) {
                    this.nestedTypeBuilder_.setMessage(i, descriptorProto);
                    return this;
                }
                if (descriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureNestedTypeIsMutable();
                this.nestedType_.set(i, descriptorProto);
                onChanged();
                return this;
            }

            public final Builder setOptions(MessageOptions.Builder builder) {
                if (this.optionsBuilder_ == null) {
                    this.options_ = builder.build();
                    onChanged();
                } else {
                    this.optionsBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 64;
                return this;
            }

            public final Builder setOptions(MessageOptions messageOptions) {
                if (this.optionsBuilder_ != null) {
                    this.optionsBuilder_.setMessage(messageOptions);
                } else {
                    if (messageOptions == null) {
                        throw new NullPointerException();
                    }
                    this.options_ = messageOptions;
                    onChanged();
                }
                this.bitField0_ |= 64;
                return this;
            }
        }

        /* loaded from: classes.dex */
        public static final class ExtensionRange extends GeneratedMessage implements ExtensionRangeOrBuilder {
            public static final int END_FIELD_NUMBER = 2;
            public static final int START_FIELD_NUMBER = 1;
            private static final ExtensionRange defaultInstance;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private int end_;
            private byte memoizedIsInitialized;
            private int memoizedSerializedSize;
            private int start_;

            /* loaded from: classes.dex */
            public static final class Builder extends GeneratedMessage.Builder<Builder> implements ExtensionRangeOrBuilder {
                private int bitField0_;
                private int end_;
                private int start_;

                private Builder() {
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessage.BuilderParent builderParent) {
                    super(builderParent);
                    maybeForceBuilderInitialization();
                }

                /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                    this(builderParent);
                }

                static /* synthetic */ Builder access$18() {
                    return create();
                }

                /* JADX INFO: Access modifiers changed from: private */
                public ExtensionRange buildParsed() throws InvalidProtocolBufferException {
                    ExtensionRange buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
                }

                private static Builder create() {
                    return new Builder();
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return DescriptorProtos.f7905x1458f8d;
                }

                private void maybeForceBuilderInitialization() {
                    boolean z = GeneratedMessage.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public final ExtensionRange build() {
                    ExtensionRange buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public final ExtensionRange buildPartial() {
                    ExtensionRange extensionRange = new ExtensionRange(this, null);
                    int i = this.bitField0_;
                    int i2 = (i & 1) != 1 ? 0 : 1;
                    extensionRange.start_ = this.start_;
                    if ((i & 2) == 2) {
                        i2 |= 2;
                    }
                    extensionRange.end_ = this.end_;
                    extensionRange.bitField0_ = i2;
                    onBuilt();
                    return extensionRange;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public final Builder clear() {
                    super.clear();
                    this.start_ = 0;
                    this.bitField0_ &= -2;
                    this.end_ = 0;
                    this.bitField0_ &= -3;
                    return this;
                }

                public final Builder clearEnd() {
                    this.bitField0_ &= -3;
                    this.end_ = 0;
                    onChanged();
                    return this;
                }

                public final Builder clearStart() {
                    this.bitField0_ &= -2;
                    this.start_ = 0;
                    onChanged();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                /* renamed from: clone */
                public final Builder mo13986clone() {
                    return create().mergeFrom(buildPartial());
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public final ExtensionRange getDefaultInstanceForType() {
                    return ExtensionRange.getDefaultInstance();
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public final Descriptors.Descriptor getDescriptorForType() {
                    return ExtensionRange.getDescriptor();
                }

                @Override // com.google.protobuf.DescriptorProtos.DescriptorProto.ExtensionRangeOrBuilder
                public final int getEnd() {
                    return this.end_;
                }

                @Override // com.google.protobuf.DescriptorProtos.DescriptorProto.ExtensionRangeOrBuilder
                public final int getStart() {
                    return this.start_;
                }

                @Override // com.google.protobuf.DescriptorProtos.DescriptorProto.ExtensionRangeOrBuilder
                public final boolean hasEnd() {
                    return (this.bitField0_ & 2) == 2;
                }

                @Override // com.google.protobuf.DescriptorProtos.DescriptorProto.ExtensionRangeOrBuilder
                public final boolean hasStart() {
                    return (this.bitField0_ & 1) == 1;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return DescriptorProtos.f7906xf366d90b;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                    while (true) {
                        int readTag = codedInputStream.readTag();
                        if (readTag == 0) {
                            break;
                        }
                        if (readTag == 8) {
                            this.bitField0_ |= 1;
                            this.start_ = codedInputStream.readInt32();
                        } else if (readTag == 16) {
                            this.bitField0_ |= 2;
                            this.end_ = codedInputStream.readInt32();
                        } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            break;
                        }
                    }
                    setUnknownFields(newBuilder.build());
                    onChanged();
                    return this;
                }

                public final Builder mergeFrom(ExtensionRange extensionRange) {
                    if (extensionRange == ExtensionRange.getDefaultInstance()) {
                        return this;
                    }
                    if (extensionRange.hasStart()) {
                        setStart(extensionRange.getStart());
                    }
                    if (extensionRange.hasEnd()) {
                        setEnd(extensionRange.getEnd());
                    }
                    mergeUnknownFields(extensionRange.getUnknownFields());
                    return this;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public final Builder mergeFrom(Message message) {
                    if (message instanceof ExtensionRange) {
                        return mergeFrom((ExtensionRange) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public final Builder setEnd(int i) {
                    this.bitField0_ |= 2;
                    this.end_ = i;
                    onChanged();
                    return this;
                }

                public final Builder setStart(int i) {
                    this.bitField0_ |= 1;
                    this.start_ = i;
                    onChanged();
                    return this;
                }
            }

            static {
                ExtensionRange extensionRange = new ExtensionRange(true);
                defaultInstance = extensionRange;
                extensionRange.initFields();
            }

            private ExtensionRange(Builder builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
            }

            /* synthetic */ ExtensionRange(Builder builder, ExtensionRange extensionRange) {
                this(builder);
            }

            private ExtensionRange(boolean z) {
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
            }

            public static ExtensionRange getDefaultInstance() {
                return defaultInstance;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.f7905x1458f8d;
            }

            private void initFields() {
                this.start_ = 0;
                this.end_ = 0;
            }

            public static Builder newBuilder() {
                return Builder.access$18();
            }

            public static Builder newBuilder(ExtensionRange extensionRange) {
                return newBuilder().mergeFrom(extensionRange);
            }

            public static ExtensionRange parseDelimitedFrom(InputStream inputStream) throws IOException {
                Builder newBuilder = newBuilder();
                if (newBuilder.mergeDelimitedFrom(inputStream)) {
                    return newBuilder.buildParsed();
                }
                return null;
            }

            public static ExtensionRange parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                Builder newBuilder = newBuilder();
                if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                    return newBuilder.buildParsed();
                }
                return null;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static ExtensionRange parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static ExtensionRange parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static ExtensionRange parseFrom(CodedInputStream codedInputStream) throws IOException {
                return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
            }

            public static ExtensionRange parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static ExtensionRange parseFrom(InputStream inputStream) throws IOException {
                return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static ExtensionRange parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static ExtensionRange parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static ExtensionRange parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final ExtensionRange getDefaultInstanceForType() {
                return defaultInstance;
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProto.ExtensionRangeOrBuilder
            public final int getEnd() {
                return this.end_;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public final int getSerializedSize() {
                int i = this.memoizedSerializedSize;
                if (i != -1) {
                    return i;
                }
                int computeInt32Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt32Size(1, this.start_) : 0;
                if ((this.bitField0_ & 2) == 2) {
                    computeInt32Size += CodedOutputStream.computeInt32Size(2, this.end_);
                }
                int serializedSize = computeInt32Size + getUnknownFields().getSerializedSize();
                this.memoizedSerializedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProto.ExtensionRangeOrBuilder
            public final int getStart() {
                return this.start_;
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProto.ExtensionRangeOrBuilder
            public final boolean hasEnd() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.DescriptorProtos.DescriptorProto.ExtensionRangeOrBuilder
            public final boolean hasStart() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.f7906xf366d90b;
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
                return new Builder(builderParent, null);
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
                    codedOutputStream.writeInt32(1, this.start_);
                }
                if ((this.bitField0_ & 2) == 2) {
                    codedOutputStream.writeInt32(2, this.end_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }
        }

        /* loaded from: classes.dex */
        public interface ExtensionRangeOrBuilder extends MessageOrBuilder {
            int getEnd();

            int getStart();

            boolean hasEnd();

            boolean hasStart();
        }

        static {
            DescriptorProto descriptorProto = new DescriptorProto(true);
            defaultInstance = descriptorProto;
            descriptorProto.initFields();
        }

        private DescriptorProto(Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        /* synthetic */ DescriptorProto(Builder builder, DescriptorProto descriptorProto) {
            this(builder);
        }

        private DescriptorProto(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        public static DescriptorProto getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_DescriptorProto_descriptor;
        }

        private ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.name_ = "";
            this.field_ = Collections.emptyList();
            this.extension_ = Collections.emptyList();
            this.nestedType_ = Collections.emptyList();
            this.enumType_ = Collections.emptyList();
            this.extensionRange_ = Collections.emptyList();
            this.options_ = MessageOptions.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.access$18();
        }

        public static Builder newBuilder(DescriptorProto descriptorProto) {
            return newBuilder().mergeFrom(descriptorProto);
        }

        public static DescriptorProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        public static DescriptorProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static DescriptorProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static DescriptorProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static DescriptorProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
        }

        public static DescriptorProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static DescriptorProto parseFrom(InputStream inputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static DescriptorProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static DescriptorProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static DescriptorProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final DescriptorProto getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final EnumDescriptorProto getEnumType(int i) {
            return this.enumType_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final int getEnumTypeCount() {
            return this.enumType_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final List<EnumDescriptorProto> getEnumTypeList() {
            return this.enumType_;
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final EnumDescriptorProtoOrBuilder getEnumTypeOrBuilder(int i) {
            return this.enumType_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final List<? extends EnumDescriptorProtoOrBuilder> getEnumTypeOrBuilderList() {
            return this.enumType_;
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final FieldDescriptorProto getExtension(int i) {
            return this.extension_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final int getExtensionCount() {
            return this.extension_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final List<FieldDescriptorProto> getExtensionList() {
            return this.extension_;
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final FieldDescriptorProtoOrBuilder getExtensionOrBuilder(int i) {
            return this.extension_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final List<? extends FieldDescriptorProtoOrBuilder> getExtensionOrBuilderList() {
            return this.extension_;
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final ExtensionRange getExtensionRange(int i) {
            return this.extensionRange_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final int getExtensionRangeCount() {
            return this.extensionRange_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final List<ExtensionRange> getExtensionRangeList() {
            return this.extensionRange_;
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final ExtensionRangeOrBuilder getExtensionRangeOrBuilder(int i) {
            return this.extensionRange_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final List<? extends ExtensionRangeOrBuilder> getExtensionRangeOrBuilderList() {
            return this.extensionRange_;
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final FieldDescriptorProto getField(int i) {
            return this.field_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final int getFieldCount() {
            return this.field_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final List<FieldDescriptorProto> getFieldList() {
            return this.field_;
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final FieldDescriptorProtoOrBuilder getFieldOrBuilder(int i) {
            return this.field_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final List<? extends FieldDescriptorProtoOrBuilder> getFieldOrBuilderList() {
            return this.field_;
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.name_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final DescriptorProto getNestedType(int i) {
            return this.nestedType_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final int getNestedTypeCount() {
            return this.nestedType_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final List<DescriptorProto> getNestedTypeList() {
            return this.nestedType_;
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final DescriptorProtoOrBuilder getNestedTypeOrBuilder(int i) {
            return this.nestedType_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final List<? extends DescriptorProtoOrBuilder> getNestedTypeOrBuilderList() {
            return this.nestedType_;
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final MessageOptions getOptions() {
            return this.options_;
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final MessageOptionsOrBuilder getOptionsOrBuilder() {
            return this.options_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeBytesSize = (this.bitField0_ & 1) == 1 ? CodedOutputStream.computeBytesSize(1, getNameBytes()) + 0 : 0;
            for (int i2 = 0; i2 < this.field_.size(); i2++) {
                computeBytesSize += CodedOutputStream.computeMessageSize(2, this.field_.get(i2));
            }
            for (int i3 = 0; i3 < this.nestedType_.size(); i3++) {
                computeBytesSize += CodedOutputStream.computeMessageSize(3, this.nestedType_.get(i3));
            }
            for (int i4 = 0; i4 < this.enumType_.size(); i4++) {
                computeBytesSize += CodedOutputStream.computeMessageSize(4, this.enumType_.get(i4));
            }
            for (int i5 = 0; i5 < this.extensionRange_.size(); i5++) {
                computeBytesSize += CodedOutputStream.computeMessageSize(5, this.extensionRange_.get(i5));
            }
            for (int i6 = 0; i6 < this.extension_.size(); i6++) {
                computeBytesSize += CodedOutputStream.computeMessageSize(6, this.extension_.get(i6));
            }
            if ((this.bitField0_ & 2) == 2) {
                computeBytesSize += CodedOutputStream.computeMessageSize(7, this.options_);
            }
            int serializedSize = computeBytesSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final boolean hasName() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.DescriptorProtos.DescriptorProtoOrBuilder
        public final boolean hasOptions() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.f7907x907d0bf0;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            for (int i = 0; i < getFieldCount(); i++) {
                if (!getField(i).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            for (int i2 = 0; i2 < getExtensionCount(); i2++) {
                if (!getExtension(i2).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            for (int i3 = 0; i3 < getNestedTypeCount(); i3++) {
                if (!getNestedType(i3).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            for (int i4 = 0; i4 < getEnumTypeCount(); i4++) {
                if (!getEnumType(i4).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            if (!hasOptions() || getOptions().isInitialized()) {
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
            return new Builder(builderParent, null);
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
                codedOutputStream.writeBytes(1, getNameBytes());
            }
            for (int i = 0; i < this.field_.size(); i++) {
                codedOutputStream.writeMessage(2, this.field_.get(i));
            }
            for (int i2 = 0; i2 < this.nestedType_.size(); i2++) {
                codedOutputStream.writeMessage(3, this.nestedType_.get(i2));
            }
            for (int i3 = 0; i3 < this.enumType_.size(); i3++) {
                codedOutputStream.writeMessage(4, this.enumType_.get(i3));
            }
            for (int i4 = 0; i4 < this.extensionRange_.size(); i4++) {
                codedOutputStream.writeMessage(5, this.extensionRange_.get(i4));
            }
            for (int i5 = 0; i5 < this.extension_.size(); i5++) {
                codedOutputStream.writeMessage(6, this.extension_.get(i5));
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeMessage(7, this.options_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface DescriptorProtoOrBuilder extends MessageOrBuilder {
        EnumDescriptorProto getEnumType(int i);

        int getEnumTypeCount();

        List<EnumDescriptorProto> getEnumTypeList();

        EnumDescriptorProtoOrBuilder getEnumTypeOrBuilder(int i);

        List<? extends EnumDescriptorProtoOrBuilder> getEnumTypeOrBuilderList();

        FieldDescriptorProto getExtension(int i);

        int getExtensionCount();

        List<FieldDescriptorProto> getExtensionList();

        FieldDescriptorProtoOrBuilder getExtensionOrBuilder(int i);

        List<? extends FieldDescriptorProtoOrBuilder> getExtensionOrBuilderList();

        DescriptorProto.ExtensionRange getExtensionRange(int i);

        int getExtensionRangeCount();

        List<DescriptorProto.ExtensionRange> getExtensionRangeList();

        DescriptorProto.ExtensionRangeOrBuilder getExtensionRangeOrBuilder(int i);

        List<? extends DescriptorProto.ExtensionRangeOrBuilder> getExtensionRangeOrBuilderList();

        FieldDescriptorProto getField(int i);

        int getFieldCount();

        List<FieldDescriptorProto> getFieldList();

        FieldDescriptorProtoOrBuilder getFieldOrBuilder(int i);

        List<? extends FieldDescriptorProtoOrBuilder> getFieldOrBuilderList();

        String getName();

        DescriptorProto getNestedType(int i);

        int getNestedTypeCount();

        List<DescriptorProto> getNestedTypeList();

        DescriptorProtoOrBuilder getNestedTypeOrBuilder(int i);

        List<? extends DescriptorProtoOrBuilder> getNestedTypeOrBuilderList();

        MessageOptions getOptions();

        MessageOptionsOrBuilder getOptionsOrBuilder();

        boolean hasName();

        boolean hasOptions();
    }

    /* loaded from: classes.dex */
    public static final class EnumDescriptorProto extends GeneratedMessage implements EnumDescriptorProtoOrBuilder {
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int OPTIONS_FIELD_NUMBER = 3;
        public static final int VALUE_FIELD_NUMBER = 2;
        private static final EnumDescriptorProto defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object name_;
        private EnumOptions options_;
        private List<EnumValueDescriptorProto> value_;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements EnumDescriptorProtoOrBuilder {
            private int bitField0_;
            private Object name_;
            private SingleFieldBuilder<EnumOptions, EnumOptions.Builder, EnumOptionsOrBuilder> optionsBuilder_;
            private EnumOptions options_;
            private RepeatedFieldBuilder<EnumValueDescriptorProto, EnumValueDescriptorProto.Builder, EnumValueDescriptorProtoOrBuilder> valueBuilder_;
            private List<EnumValueDescriptorProto> value_;

            private Builder() {
                this.name_ = "";
                this.value_ = Collections.emptyList();
                this.options_ = EnumOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.name_ = "";
                this.value_ = Collections.emptyList();
                this.options_ = EnumOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                this(builderParent);
            }

            static /* synthetic */ Builder access$18() {
                return create();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public EnumDescriptorProto buildParsed() throws InvalidProtocolBufferException {
                EnumDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
            }

            private static Builder create() {
                return new Builder();
            }

            private void ensureValueIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.value_ = new ArrayList(this.value_);
                    this.bitField0_ |= 2;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_EnumDescriptorProto_descriptor;
            }

            private SingleFieldBuilder<EnumOptions, EnumOptions.Builder, EnumOptionsOrBuilder> getOptionsFieldBuilder() {
                if (this.optionsBuilder_ == null) {
                    this.optionsBuilder_ = new SingleFieldBuilder<>(this.options_, getParentForChildren(), isClean());
                    this.options_ = null;
                }
                return this.optionsBuilder_;
            }

            private RepeatedFieldBuilder<EnumValueDescriptorProto, EnumValueDescriptorProto.Builder, EnumValueDescriptorProtoOrBuilder> getValueFieldBuilder() {
                if (this.valueBuilder_ == null) {
                    this.valueBuilder_ = new RepeatedFieldBuilder<>(this.value_, (this.bitField0_ & 2) == 2, getParentForChildren(), isClean());
                    this.value_ = null;
                }
                return this.valueBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getValueFieldBuilder();
                    getOptionsFieldBuilder();
                }
            }

            public final Builder addAllValue(Iterable<? extends EnumValueDescriptorProto> iterable) {
                if (this.valueBuilder_ != null) {
                    this.valueBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureValueIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.value_);
                onChanged();
                return this;
            }

            public final Builder addValue(int i, EnumValueDescriptorProto.Builder builder) {
                if (this.valueBuilder_ != null) {
                    this.valueBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureValueIsMutable();
                this.value_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addValue(int i, EnumValueDescriptorProto enumValueDescriptorProto) {
                if (this.valueBuilder_ != null) {
                    this.valueBuilder_.addMessage(i, enumValueDescriptorProto);
                    return this;
                }
                if (enumValueDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureValueIsMutable();
                this.value_.add(i, enumValueDescriptorProto);
                onChanged();
                return this;
            }

            public final Builder addValue(EnumValueDescriptorProto.Builder builder) {
                if (this.valueBuilder_ != null) {
                    this.valueBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureValueIsMutable();
                this.value_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addValue(EnumValueDescriptorProto enumValueDescriptorProto) {
                if (this.valueBuilder_ != null) {
                    this.valueBuilder_.addMessage(enumValueDescriptorProto);
                    return this;
                }
                if (enumValueDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureValueIsMutable();
                this.value_.add(enumValueDescriptorProto);
                onChanged();
                return this;
            }

            public final EnumValueDescriptorProto.Builder addValueBuilder() {
                return getValueFieldBuilder().addBuilder(EnumValueDescriptorProto.getDefaultInstance());
            }

            public final EnumValueDescriptorProto.Builder addValueBuilder(int i) {
                return getValueFieldBuilder().addBuilder(i, EnumValueDescriptorProto.getDefaultInstance());
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final EnumDescriptorProto build() {
                EnumDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final EnumDescriptorProto buildPartial() {
                List<EnumValueDescriptorProto> build;
                EnumDescriptorProto enumDescriptorProto = new EnumDescriptorProto(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                enumDescriptorProto.name_ = this.name_;
                if (this.valueBuilder_ == null) {
                    if ((this.bitField0_ & 2) == 2) {
                        this.value_ = Collections.unmodifiableList(this.value_);
                        this.bitField0_ &= -3;
                    }
                    build = this.value_;
                } else {
                    build = this.valueBuilder_.build();
                }
                enumDescriptorProto.value_ = build;
                if ((i & 4) == 4) {
                    i2 |= 2;
                }
                enumDescriptorProto.options_ = this.optionsBuilder_ == null ? this.options_ : this.optionsBuilder_.build();
                enumDescriptorProto.bitField0_ = i2;
                onBuilt();
                return enumDescriptorProto;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.name_ = "";
                this.bitField0_ &= -2;
                if (this.valueBuilder_ == null) {
                    this.value_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    this.valueBuilder_.clear();
                }
                if (this.optionsBuilder_ == null) {
                    this.options_ = EnumOptions.getDefaultInstance();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public final Builder clearName() {
                this.bitField0_ &= -2;
                this.name_ = EnumDescriptorProto.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public final Builder clearOptions() {
                if (this.optionsBuilder_ == null) {
                    this.options_ = EnumOptions.getDefaultInstance();
                    onChanged();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public final Builder clearValue() {
                if (this.valueBuilder_ != null) {
                    this.valueBuilder_.clear();
                    return this;
                }
                this.value_ = Collections.emptyList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final EnumDescriptorProto getDefaultInstanceForType() {
                return EnumDescriptorProto.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return EnumDescriptorProto.getDescriptor();
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
            public final String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
            public final EnumOptions getOptions() {
                return this.optionsBuilder_ == null ? this.options_ : this.optionsBuilder_.getMessage();
            }

            public final EnumOptions.Builder getOptionsBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return getOptionsFieldBuilder().getBuilder();
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
            public final EnumOptionsOrBuilder getOptionsOrBuilder() {
                return this.optionsBuilder_ != null ? this.optionsBuilder_.getMessageOrBuilder() : this.options_;
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
            public final EnumValueDescriptorProto getValue(int i) {
                return this.valueBuilder_ == null ? this.value_.get(i) : this.valueBuilder_.getMessage(i);
            }

            public final EnumValueDescriptorProto.Builder getValueBuilder(int i) {
                return getValueFieldBuilder().getBuilder(i);
            }

            public final List<EnumValueDescriptorProto.Builder> getValueBuilderList() {
                return getValueFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
            public final int getValueCount() {
                return this.valueBuilder_ == null ? this.value_.size() : this.valueBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
            public final List<EnumValueDescriptorProto> getValueList() {
                return this.valueBuilder_ == null ? Collections.unmodifiableList(this.value_) : this.valueBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
            public final EnumValueDescriptorProtoOrBuilder getValueOrBuilder(int i) {
                return (EnumValueDescriptorProtoOrBuilder) (this.valueBuilder_ == null ? this.value_.get(i) : this.valueBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
            public final List<? extends EnumValueDescriptorProtoOrBuilder> getValueOrBuilderList() {
                return this.valueBuilder_ != null ? this.valueBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.value_);
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
            public final boolean hasName() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
            public final boolean hasOptions() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.f7908x9945f651;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                for (int i = 0; i < getValueCount(); i++) {
                    if (!getValue(i).isInitialized()) {
                        return false;
                    }
                }
                return !hasOptions() || getOptions().isInitialized();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                while (true) {
                    int readTag = codedInputStream.readTag();
                    if (readTag == 0) {
                        break;
                    }
                    if (readTag == 10) {
                        this.bitField0_ |= 1;
                        this.name_ = codedInputStream.readBytes();
                    } else if (readTag == 18) {
                        EnumValueDescriptorProto.Builder newBuilder2 = EnumValueDescriptorProto.newBuilder();
                        codedInputStream.readMessage(newBuilder2, extensionRegistryLite);
                        addValue(newBuilder2.buildPartial());
                    } else if (readTag == 26) {
                        EnumOptions.Builder newBuilder3 = EnumOptions.newBuilder();
                        if (hasOptions()) {
                            newBuilder3.mergeFrom(getOptions());
                        }
                        codedInputStream.readMessage(newBuilder3, extensionRegistryLite);
                        setOptions(newBuilder3.buildPartial());
                    } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        break;
                    }
                }
                setUnknownFields(newBuilder.build());
                onChanged();
                return this;
            }

            public final Builder mergeFrom(EnumDescriptorProto enumDescriptorProto) {
                if (enumDescriptorProto == EnumDescriptorProto.getDefaultInstance()) {
                    return this;
                }
                if (enumDescriptorProto.hasName()) {
                    setName(enumDescriptorProto.getName());
                }
                if (this.valueBuilder_ == null) {
                    if (!enumDescriptorProto.value_.isEmpty()) {
                        if (this.value_.isEmpty()) {
                            this.value_ = enumDescriptorProto.value_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureValueIsMutable();
                            this.value_.addAll(enumDescriptorProto.value_);
                        }
                        onChanged();
                    }
                } else if (!enumDescriptorProto.value_.isEmpty()) {
                    if (this.valueBuilder_.isEmpty()) {
                        this.valueBuilder_.dispose();
                        this.valueBuilder_ = null;
                        this.value_ = enumDescriptorProto.value_;
                        this.bitField0_ &= -3;
                        this.valueBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getValueFieldBuilder() : null;
                    } else {
                        this.valueBuilder_.addAllMessages(enumDescriptorProto.value_);
                    }
                }
                if (enumDescriptorProto.hasOptions()) {
                    mergeOptions(enumDescriptorProto.getOptions());
                }
                mergeUnknownFields(enumDescriptorProto.getUnknownFields());
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof EnumDescriptorProto) {
                    return mergeFrom((EnumDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeOptions(EnumOptions enumOptions) {
                if (this.optionsBuilder_ == null) {
                    if ((this.bitField0_ & 4) == 4 && this.options_ != EnumOptions.getDefaultInstance()) {
                        enumOptions = EnumOptions.newBuilder(this.options_).mergeFrom(enumOptions).buildPartial();
                    }
                    this.options_ = enumOptions;
                    onChanged();
                } else {
                    this.optionsBuilder_.mergeFrom(enumOptions);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public final Builder removeValue(int i) {
                if (this.valueBuilder_ != null) {
                    this.valueBuilder_.remove(i);
                    return this;
                }
                ensureValueIsMutable();
                this.value_.remove(i);
                onChanged();
                return this;
            }

            public final Builder setName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = str;
                onChanged();
                return this;
            }

            final void setName(ByteString byteString) {
                this.bitField0_ |= 1;
                this.name_ = byteString;
                onChanged();
            }

            public final Builder setOptions(EnumOptions.Builder builder) {
                if (this.optionsBuilder_ == null) {
                    this.options_ = builder.build();
                    onChanged();
                } else {
                    this.optionsBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                return this;
            }

            public final Builder setOptions(EnumOptions enumOptions) {
                if (this.optionsBuilder_ != null) {
                    this.optionsBuilder_.setMessage(enumOptions);
                } else {
                    if (enumOptions == null) {
                        throw new NullPointerException();
                    }
                    this.options_ = enumOptions;
                    onChanged();
                }
                this.bitField0_ |= 4;
                return this;
            }

            public final Builder setValue(int i, EnumValueDescriptorProto.Builder builder) {
                if (this.valueBuilder_ != null) {
                    this.valueBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureValueIsMutable();
                this.value_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setValue(int i, EnumValueDescriptorProto enumValueDescriptorProto) {
                if (this.valueBuilder_ != null) {
                    this.valueBuilder_.setMessage(i, enumValueDescriptorProto);
                    return this;
                }
                if (enumValueDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureValueIsMutable();
                this.value_.set(i, enumValueDescriptorProto);
                onChanged();
                return this;
            }
        }

        static {
            EnumDescriptorProto enumDescriptorProto = new EnumDescriptorProto(true);
            defaultInstance = enumDescriptorProto;
            enumDescriptorProto.initFields();
        }

        private EnumDescriptorProto(Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        /* synthetic */ EnumDescriptorProto(Builder builder, EnumDescriptorProto enumDescriptorProto) {
            this(builder);
        }

        private EnumDescriptorProto(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        public static EnumDescriptorProto getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_EnumDescriptorProto_descriptor;
        }

        private ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.name_ = "";
            this.value_ = Collections.emptyList();
            this.options_ = EnumOptions.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.access$18();
        }

        public static Builder newBuilder(EnumDescriptorProto enumDescriptorProto) {
            return newBuilder().mergeFrom(enumDescriptorProto);
        }

        public static EnumDescriptorProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        public static EnumDescriptorProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumDescriptorProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumDescriptorProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumDescriptorProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
        }

        public static EnumDescriptorProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumDescriptorProto parseFrom(InputStream inputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumDescriptorProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumDescriptorProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumDescriptorProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final EnumDescriptorProto getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
        public final String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.name_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
        public final EnumOptions getOptions() {
            return this.options_;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
        public final EnumOptionsOrBuilder getOptionsOrBuilder() {
            return this.options_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeBytesSize = (this.bitField0_ & 1) == 1 ? CodedOutputStream.computeBytesSize(1, getNameBytes()) + 0 : 0;
            for (int i2 = 0; i2 < this.value_.size(); i2++) {
                computeBytesSize += CodedOutputStream.computeMessageSize(2, this.value_.get(i2));
            }
            if ((this.bitField0_ & 2) == 2) {
                computeBytesSize += CodedOutputStream.computeMessageSize(3, this.options_);
            }
            int serializedSize = computeBytesSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
        public final EnumValueDescriptorProto getValue(int i) {
            return this.value_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
        public final int getValueCount() {
            return this.value_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
        public final List<EnumValueDescriptorProto> getValueList() {
            return this.value_;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
        public final EnumValueDescriptorProtoOrBuilder getValueOrBuilder(int i) {
            return this.value_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
        public final List<? extends EnumValueDescriptorProtoOrBuilder> getValueOrBuilderList() {
            return this.value_;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
        public final boolean hasName() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumDescriptorProtoOrBuilder
        public final boolean hasOptions() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.f7908x9945f651;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            for (int i = 0; i < getValueCount(); i++) {
                if (!getValue(i).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            if (!hasOptions() || getOptions().isInitialized()) {
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
            return new Builder(builderParent, null);
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
                codedOutputStream.writeBytes(1, getNameBytes());
            }
            for (int i = 0; i < this.value_.size(); i++) {
                codedOutputStream.writeMessage(2, this.value_.get(i));
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeMessage(3, this.options_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface EnumDescriptorProtoOrBuilder extends MessageOrBuilder {
        String getName();

        EnumOptions getOptions();

        EnumOptionsOrBuilder getOptionsOrBuilder();

        EnumValueDescriptorProto getValue(int i);

        int getValueCount();

        List<EnumValueDescriptorProto> getValueList();

        EnumValueDescriptorProtoOrBuilder getValueOrBuilder(int i);

        List<? extends EnumValueDescriptorProtoOrBuilder> getValueOrBuilderList();

        boolean hasName();

        boolean hasOptions();
    }

    /* loaded from: classes.dex */
    public static final class EnumOptions extends GeneratedMessage.ExtendableMessage<EnumOptions> implements EnumOptionsOrBuilder {
        public static final int ALLOW_ALIAS_FIELD_NUMBER = 2;
        public static final int UNINTERPRETED_OPTION_FIELD_NUMBER = 999;
        private static final EnumOptions defaultInstance;
        private static final long serialVersionUID = 0;
        private boolean allowAlias_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private List<UninterpretedOption> uninterpretedOption_;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.ExtendableBuilder<EnumOptions, Builder> implements EnumOptionsOrBuilder {
            private boolean allowAlias_;
            private int bitField0_;
            private RepeatedFieldBuilder<UninterpretedOption, UninterpretedOption.Builder, UninterpretedOptionOrBuilder> uninterpretedOptionBuilder_;
            private List<UninterpretedOption> uninterpretedOption_;

            private Builder() {
                this.allowAlias_ = true;
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.allowAlias_ = true;
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                this(builderParent);
            }

            static /* synthetic */ Builder access$18() {
                return create();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public EnumOptions buildParsed() throws InvalidProtocolBufferException {
                EnumOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
            }

            private static Builder create() {
                return new Builder();
            }

            private void ensureUninterpretedOptionIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.uninterpretedOption_ = new ArrayList(this.uninterpretedOption_);
                    this.bitField0_ |= 2;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_EnumOptions_descriptor;
            }

            private RepeatedFieldBuilder<UninterpretedOption, UninterpretedOption.Builder, UninterpretedOptionOrBuilder> getUninterpretedOptionFieldBuilder() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOptionBuilder_ = new RepeatedFieldBuilder<>(this.uninterpretedOption_, (this.bitField0_ & 2) == 2, getParentForChildren(), isClean());
                    this.uninterpretedOption_ = null;
                }
                return this.uninterpretedOptionBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getUninterpretedOptionFieldBuilder();
                }
            }

            public final Builder addAllUninterpretedOption(Iterable<? extends UninterpretedOption> iterable) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                GeneratedMessage.ExtendableBuilder.addAll(iterable, this.uninterpretedOption_);
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(int i, UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(i, uninterpretedOption);
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(uninterpretedOption);
                onChanged();
                return this;
            }

            public final UninterpretedOption.Builder addUninterpretedOptionBuilder() {
                return getUninterpretedOptionFieldBuilder().addBuilder(UninterpretedOption.getDefaultInstance());
            }

            public final UninterpretedOption.Builder addUninterpretedOptionBuilder(int i) {
                return getUninterpretedOptionFieldBuilder().addBuilder(i, UninterpretedOption.getDefaultInstance());
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final EnumOptions build() {
                EnumOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final EnumOptions buildPartial() {
                List<UninterpretedOption> build;
                EnumOptions enumOptions = new EnumOptions(this, null);
                int i = (this.bitField0_ & 1) != 1 ? 0 : 1;
                enumOptions.allowAlias_ = this.allowAlias_;
                if (this.uninterpretedOptionBuilder_ == null) {
                    if ((this.bitField0_ & 2) == 2) {
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                        this.bitField0_ &= -3;
                    }
                    build = this.uninterpretedOption_;
                } else {
                    build = this.uninterpretedOptionBuilder_.build();
                }
                enumOptions.uninterpretedOption_ = build;
                enumOptions.bitField0_ = i;
                onBuilt();
                return enumOptions;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.allowAlias_ = true;
                this.bitField0_ &= -2;
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.clear();
                    return this;
                }
                this.uninterpretedOption_ = Collections.emptyList();
                this.bitField0_ &= -3;
                return this;
            }

            public final Builder clearAllowAlias() {
                this.bitField0_ &= -2;
                this.allowAlias_ = true;
                onChanged();
                return this;
            }

            public final Builder clearUninterpretedOption() {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.clear();
                    return this;
                }
                this.uninterpretedOption_ = Collections.emptyList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumOptionsOrBuilder
            public final boolean getAllowAlias() {
                return this.allowAlias_;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final EnumOptions getDefaultInstanceForType() {
                return EnumOptions.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return EnumOptions.getDescriptor();
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumOptionsOrBuilder
            public final UninterpretedOption getUninterpretedOption(int i) {
                return this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.get(i) : this.uninterpretedOptionBuilder_.getMessage(i);
            }

            public final UninterpretedOption.Builder getUninterpretedOptionBuilder(int i) {
                return getUninterpretedOptionFieldBuilder().getBuilder(i);
            }

            public final List<UninterpretedOption.Builder> getUninterpretedOptionBuilderList() {
                return getUninterpretedOptionFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumOptionsOrBuilder
            public final int getUninterpretedOptionCount() {
                return this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.size() : this.uninterpretedOptionBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumOptionsOrBuilder
            public final List<UninterpretedOption> getUninterpretedOptionList() {
                return this.uninterpretedOptionBuilder_ == null ? Collections.unmodifiableList(this.uninterpretedOption_) : this.uninterpretedOptionBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumOptionsOrBuilder
            public final UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
                return (UninterpretedOptionOrBuilder) (this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.get(i) : this.uninterpretedOptionBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumOptionsOrBuilder
            public final List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
                return this.uninterpretedOptionBuilder_ != null ? this.uninterpretedOptionBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.uninterpretedOption_);
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumOptionsOrBuilder
            public final boolean hasAllowAlias() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_EnumOptions_fieldAccessorTable;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                    if (!getUninterpretedOption(i).isInitialized()) {
                        return false;
                    }
                }
                return extensionsAreInitialized();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                while (true) {
                    int readTag = codedInputStream.readTag();
                    if (readTag == 0) {
                        break;
                    }
                    if (readTag == 16) {
                        this.bitField0_ |= 1;
                        this.allowAlias_ = codedInputStream.readBool();
                    } else if (readTag == 7994) {
                        UninterpretedOption.Builder newBuilder2 = UninterpretedOption.newBuilder();
                        codedInputStream.readMessage(newBuilder2, extensionRegistryLite);
                        addUninterpretedOption(newBuilder2.buildPartial());
                    } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        break;
                    }
                }
                setUnknownFields(newBuilder.build());
                onChanged();
                return this;
            }

            public final Builder mergeFrom(EnumOptions enumOptions) {
                if (enumOptions == EnumOptions.getDefaultInstance()) {
                    return this;
                }
                if (enumOptions.hasAllowAlias()) {
                    setAllowAlias(enumOptions.getAllowAlias());
                }
                if (this.uninterpretedOptionBuilder_ == null) {
                    if (!enumOptions.uninterpretedOption_.isEmpty()) {
                        if (this.uninterpretedOption_.isEmpty()) {
                            this.uninterpretedOption_ = enumOptions.uninterpretedOption_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureUninterpretedOptionIsMutable();
                            this.uninterpretedOption_.addAll(enumOptions.uninterpretedOption_);
                        }
                        onChanged();
                    }
                } else if (!enumOptions.uninterpretedOption_.isEmpty()) {
                    if (this.uninterpretedOptionBuilder_.isEmpty()) {
                        this.uninterpretedOptionBuilder_.dispose();
                        this.uninterpretedOptionBuilder_ = null;
                        this.uninterpretedOption_ = enumOptions.uninterpretedOption_;
                        this.bitField0_ &= -3;
                        this.uninterpretedOptionBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getUninterpretedOptionFieldBuilder() : null;
                    } else {
                        this.uninterpretedOptionBuilder_.addAllMessages(enumOptions.uninterpretedOption_);
                    }
                }
                mergeExtensionFields(enumOptions);
                mergeUnknownFields(enumOptions.getUnknownFields());
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof EnumOptions) {
                    return mergeFrom((EnumOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder removeUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.remove(i);
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.remove(i);
                onChanged();
                return this;
            }

            public final Builder setAllowAlias(boolean z) {
                this.bitField0_ |= 1;
                this.allowAlias_ = z;
                onChanged();
                return this;
            }

            public final Builder setUninterpretedOption(int i, UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.set(i, uninterpretedOption);
                onChanged();
                return this;
            }
        }

        static {
            EnumOptions enumOptions = new EnumOptions(true);
            defaultInstance = enumOptions;
            enumOptions.initFields();
        }

        private EnumOptions(Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        /* synthetic */ EnumOptions(Builder builder, EnumOptions enumOptions) {
            this(builder);
        }

        private EnumOptions(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        public static EnumOptions getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_EnumOptions_descriptor;
        }

        private void initFields() {
            this.allowAlias_ = true;
            this.uninterpretedOption_ = Collections.emptyList();
        }

        public static Builder newBuilder() {
            return Builder.access$18();
        }

        public static Builder newBuilder(EnumOptions enumOptions) {
            return newBuilder().mergeFrom(enumOptions);
        }

        public static EnumOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        public static EnumOptions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumOptions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumOptions parseFrom(CodedInputStream codedInputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
        }

        public static EnumOptions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumOptions parseFrom(InputStream inputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumOptions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumOptions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumOptionsOrBuilder
        public final boolean getAllowAlias() {
            return this.allowAlias_;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final EnumOptions getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeBoolSize = (this.bitField0_ & 1) == 1 ? CodedOutputStream.computeBoolSize(2, this.allowAlias_) + 0 : 0;
            for (int i2 = 0; i2 < this.uninterpretedOption_.size(); i2++) {
                computeBoolSize += CodedOutputStream.computeMessageSize(999, this.uninterpretedOption_.get(i2));
            }
            int extensionsSerializedSize = computeBoolSize + extensionsSerializedSize() + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = extensionsSerializedSize;
            return extensionsSerializedSize;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumOptionsOrBuilder
        public final UninterpretedOption getUninterpretedOption(int i) {
            return this.uninterpretedOption_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumOptionsOrBuilder
        public final int getUninterpretedOptionCount() {
            return this.uninterpretedOption_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumOptionsOrBuilder
        public final List<UninterpretedOption> getUninterpretedOptionList() {
            return this.uninterpretedOption_;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumOptionsOrBuilder
        public final UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
            return this.uninterpretedOption_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumOptionsOrBuilder
        public final List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
            return this.uninterpretedOption_;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumOptionsOrBuilder
        public final boolean hasAllowAlias() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_EnumOptions_fieldAccessorTable;
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessage, com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                if (!getUninterpretedOption(i).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            if (extensionsAreInitialized()) {
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
            return new Builder(builderParent, null);
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
            GeneratedMessage.ExtendableMessage<MessageType>.ExtensionWriter newExtensionWriter = newExtensionWriter();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBool(2, this.allowAlias_);
            }
            for (int i = 0; i < this.uninterpretedOption_.size(); i++) {
                codedOutputStream.writeMessage(999, this.uninterpretedOption_.get(i));
            }
            newExtensionWriter.writeUntil(536870912, codedOutputStream);
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface EnumOptionsOrBuilder extends GeneratedMessage.ExtendableMessageOrBuilder<EnumOptions> {
        boolean getAllowAlias();

        UninterpretedOption getUninterpretedOption(int i);

        int getUninterpretedOptionCount();

        List<UninterpretedOption> getUninterpretedOptionList();

        UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i);

        List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList();

        boolean hasAllowAlias();
    }

    /* loaded from: classes.dex */
    public static final class EnumValueDescriptorProto extends GeneratedMessage implements EnumValueDescriptorProtoOrBuilder {
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int NUMBER_FIELD_NUMBER = 2;
        public static final int OPTIONS_FIELD_NUMBER = 3;
        private static final EnumValueDescriptorProto defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object name_;
        private int number_;
        private EnumValueOptions options_;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements EnumValueDescriptorProtoOrBuilder {
            private int bitField0_;
            private Object name_;
            private int number_;
            private SingleFieldBuilder<EnumValueOptions, EnumValueOptions.Builder, EnumValueOptionsOrBuilder> optionsBuilder_;
            private EnumValueOptions options_;

            private Builder() {
                this.name_ = "";
                this.options_ = EnumValueOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.name_ = "";
                this.options_ = EnumValueOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                this(builderParent);
            }

            static /* synthetic */ Builder access$18() {
                return create();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public EnumValueDescriptorProto buildParsed() throws InvalidProtocolBufferException {
                EnumValueDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.f7909xf18031a8;
            }

            private SingleFieldBuilder<EnumValueOptions, EnumValueOptions.Builder, EnumValueOptionsOrBuilder> getOptionsFieldBuilder() {
                if (this.optionsBuilder_ == null) {
                    this.optionsBuilder_ = new SingleFieldBuilder<>(this.options_, getParentForChildren(), isClean());
                    this.options_ = null;
                }
                return this.optionsBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getOptionsFieldBuilder();
                }
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final EnumValueDescriptorProto build() {
                EnumValueDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final EnumValueDescriptorProto buildPartial() {
                EnumValueDescriptorProto enumValueDescriptorProto = new EnumValueDescriptorProto(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                enumValueDescriptorProto.name_ = this.name_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                enumValueDescriptorProto.number_ = this.number_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                enumValueDescriptorProto.options_ = this.optionsBuilder_ == null ? this.options_ : this.optionsBuilder_.build();
                enumValueDescriptorProto.bitField0_ = i2;
                onBuilt();
                return enumValueDescriptorProto;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.name_ = "";
                this.bitField0_ &= -2;
                this.number_ = 0;
                this.bitField0_ &= -3;
                if (this.optionsBuilder_ == null) {
                    this.options_ = EnumValueOptions.getDefaultInstance();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public final Builder clearName() {
                this.bitField0_ &= -2;
                this.name_ = EnumValueDescriptorProto.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public final Builder clearNumber() {
                this.bitField0_ &= -3;
                this.number_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearOptions() {
                if (this.optionsBuilder_ == null) {
                    this.options_ = EnumValueOptions.getDefaultInstance();
                    onChanged();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final EnumValueDescriptorProto getDefaultInstanceForType() {
                return EnumValueDescriptorProto.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return EnumValueDescriptorProto.getDescriptor();
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumValueDescriptorProtoOrBuilder
            public final String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumValueDescriptorProtoOrBuilder
            public final int getNumber() {
                return this.number_;
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumValueDescriptorProtoOrBuilder
            public final EnumValueOptions getOptions() {
                return this.optionsBuilder_ == null ? this.options_ : this.optionsBuilder_.getMessage();
            }

            public final EnumValueOptions.Builder getOptionsBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return getOptionsFieldBuilder().getBuilder();
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumValueDescriptorProtoOrBuilder
            public final EnumValueOptionsOrBuilder getOptionsOrBuilder() {
                return this.optionsBuilder_ != null ? this.optionsBuilder_.getMessageOrBuilder() : this.options_;
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumValueDescriptorProtoOrBuilder
            public final boolean hasName() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumValueDescriptorProtoOrBuilder
            public final boolean hasNumber() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumValueDescriptorProtoOrBuilder
            public final boolean hasOptions() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.f7910xfb173026;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return !hasOptions() || getOptions().isInitialized();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                while (true) {
                    int readTag = codedInputStream.readTag();
                    if (readTag == 0) {
                        break;
                    }
                    if (readTag == 10) {
                        this.bitField0_ |= 1;
                        this.name_ = codedInputStream.readBytes();
                    } else if (readTag == 16) {
                        this.bitField0_ |= 2;
                        this.number_ = codedInputStream.readInt32();
                    } else if (readTag == 26) {
                        EnumValueOptions.Builder newBuilder2 = EnumValueOptions.newBuilder();
                        if (hasOptions()) {
                            newBuilder2.mergeFrom(getOptions());
                        }
                        codedInputStream.readMessage(newBuilder2, extensionRegistryLite);
                        setOptions(newBuilder2.buildPartial());
                    } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        break;
                    }
                }
                setUnknownFields(newBuilder.build());
                onChanged();
                return this;
            }

            public final Builder mergeFrom(EnumValueDescriptorProto enumValueDescriptorProto) {
                if (enumValueDescriptorProto == EnumValueDescriptorProto.getDefaultInstance()) {
                    return this;
                }
                if (enumValueDescriptorProto.hasName()) {
                    setName(enumValueDescriptorProto.getName());
                }
                if (enumValueDescriptorProto.hasNumber()) {
                    setNumber(enumValueDescriptorProto.getNumber());
                }
                if (enumValueDescriptorProto.hasOptions()) {
                    mergeOptions(enumValueDescriptorProto.getOptions());
                }
                mergeUnknownFields(enumValueDescriptorProto.getUnknownFields());
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof EnumValueDescriptorProto) {
                    return mergeFrom((EnumValueDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeOptions(EnumValueOptions enumValueOptions) {
                if (this.optionsBuilder_ == null) {
                    if ((this.bitField0_ & 4) == 4 && this.options_ != EnumValueOptions.getDefaultInstance()) {
                        enumValueOptions = EnumValueOptions.newBuilder(this.options_).mergeFrom(enumValueOptions).buildPartial();
                    }
                    this.options_ = enumValueOptions;
                    onChanged();
                } else {
                    this.optionsBuilder_.mergeFrom(enumValueOptions);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public final Builder setName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = str;
                onChanged();
                return this;
            }

            final void setName(ByteString byteString) {
                this.bitField0_ |= 1;
                this.name_ = byteString;
                onChanged();
            }

            public final Builder setNumber(int i) {
                this.bitField0_ |= 2;
                this.number_ = i;
                onChanged();
                return this;
            }

            public final Builder setOptions(EnumValueOptions.Builder builder) {
                if (this.optionsBuilder_ == null) {
                    this.options_ = builder.build();
                    onChanged();
                } else {
                    this.optionsBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                return this;
            }

            public final Builder setOptions(EnumValueOptions enumValueOptions) {
                if (this.optionsBuilder_ != null) {
                    this.optionsBuilder_.setMessage(enumValueOptions);
                } else {
                    if (enumValueOptions == null) {
                        throw new NullPointerException();
                    }
                    this.options_ = enumValueOptions;
                    onChanged();
                }
                this.bitField0_ |= 4;
                return this;
            }
        }

        static {
            EnumValueDescriptorProto enumValueDescriptorProto = new EnumValueDescriptorProto(true);
            defaultInstance = enumValueDescriptorProto;
            enumValueDescriptorProto.initFields();
        }

        private EnumValueDescriptorProto(Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        /* synthetic */ EnumValueDescriptorProto(Builder builder, EnumValueDescriptorProto enumValueDescriptorProto) {
            this(builder);
        }

        private EnumValueDescriptorProto(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        public static EnumValueDescriptorProto getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.f7909xf18031a8;
        }

        private ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.name_ = "";
            this.number_ = 0;
            this.options_ = EnumValueOptions.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.access$18();
        }

        public static Builder newBuilder(EnumValueDescriptorProto enumValueDescriptorProto) {
            return newBuilder().mergeFrom(enumValueDescriptorProto);
        }

        public static EnumValueDescriptorProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        public static EnumValueDescriptorProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumValueDescriptorProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumValueDescriptorProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumValueDescriptorProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
        }

        public static EnumValueDescriptorProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumValueDescriptorProto parseFrom(InputStream inputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumValueDescriptorProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumValueDescriptorProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumValueDescriptorProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final EnumValueDescriptorProto getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumValueDescriptorProtoOrBuilder
        public final String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.name_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumValueDescriptorProtoOrBuilder
        public final int getNumber() {
            return this.number_;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumValueDescriptorProtoOrBuilder
        public final EnumValueOptions getOptions() {
            return this.options_;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumValueDescriptorProtoOrBuilder
        public final EnumValueOptionsOrBuilder getOptionsOrBuilder() {
            return this.options_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeBytesSize = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeBytesSize(1, getNameBytes()) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeBytesSize += CodedOutputStream.computeInt32Size(2, this.number_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeBytesSize += CodedOutputStream.computeMessageSize(3, this.options_);
            }
            int serializedSize = computeBytesSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumValueDescriptorProtoOrBuilder
        public final boolean hasName() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumValueDescriptorProtoOrBuilder
        public final boolean hasNumber() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumValueDescriptorProtoOrBuilder
        public final boolean hasOptions() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.f7910xfb173026;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasOptions() || getOptions().isInitialized()) {
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
            return new Builder(builderParent, null);
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
                codedOutputStream.writeBytes(1, getNameBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(2, this.number_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeMessage(3, this.options_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface EnumValueDescriptorProtoOrBuilder extends MessageOrBuilder {
        String getName();

        int getNumber();

        EnumValueOptions getOptions();

        EnumValueOptionsOrBuilder getOptionsOrBuilder();

        boolean hasName();

        boolean hasNumber();

        boolean hasOptions();
    }

    /* loaded from: classes.dex */
    public static final class EnumValueOptions extends GeneratedMessage.ExtendableMessage<EnumValueOptions> implements EnumValueOptionsOrBuilder {
        public static final int UNINTERPRETED_OPTION_FIELD_NUMBER = 999;
        private static final EnumValueOptions defaultInstance;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private List<UninterpretedOption> uninterpretedOption_;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.ExtendableBuilder<EnumValueOptions, Builder> implements EnumValueOptionsOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<UninterpretedOption, UninterpretedOption.Builder, UninterpretedOptionOrBuilder> uninterpretedOptionBuilder_;
            private List<UninterpretedOption> uninterpretedOption_;

            private Builder() {
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                this(builderParent);
            }

            static /* synthetic */ Builder access$18() {
                return create();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public EnumValueOptions buildParsed() throws InvalidProtocolBufferException {
                EnumValueOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
            }

            private static Builder create() {
                return new Builder();
            }

            private void ensureUninterpretedOptionIsMutable() {
                if ((this.bitField0_ & 1) != 1) {
                    this.uninterpretedOption_ = new ArrayList(this.uninterpretedOption_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_EnumValueOptions_descriptor;
            }

            private RepeatedFieldBuilder<UninterpretedOption, UninterpretedOption.Builder, UninterpretedOptionOrBuilder> getUninterpretedOptionFieldBuilder() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOptionBuilder_ = new RepeatedFieldBuilder<>(this.uninterpretedOption_, (this.bitField0_ & 1) == 1, getParentForChildren(), isClean());
                    this.uninterpretedOption_ = null;
                }
                return this.uninterpretedOptionBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getUninterpretedOptionFieldBuilder();
                }
            }

            public final Builder addAllUninterpretedOption(Iterable<? extends UninterpretedOption> iterable) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                GeneratedMessage.ExtendableBuilder.addAll(iterable, this.uninterpretedOption_);
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(int i, UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(i, uninterpretedOption);
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(uninterpretedOption);
                onChanged();
                return this;
            }

            public final UninterpretedOption.Builder addUninterpretedOptionBuilder() {
                return getUninterpretedOptionFieldBuilder().addBuilder(UninterpretedOption.getDefaultInstance());
            }

            public final UninterpretedOption.Builder addUninterpretedOptionBuilder(int i) {
                return getUninterpretedOptionFieldBuilder().addBuilder(i, UninterpretedOption.getDefaultInstance());
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final EnumValueOptions build() {
                EnumValueOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final EnumValueOptions buildPartial() {
                List<UninterpretedOption> build;
                EnumValueOptions enumValueOptions = new EnumValueOptions(this, null);
                if (this.uninterpretedOptionBuilder_ == null) {
                    if ((this.bitField0_ & 1) == 1) {
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                        this.bitField0_ &= -2;
                    }
                    build = this.uninterpretedOption_;
                } else {
                    build = this.uninterpretedOptionBuilder_.build();
                }
                enumValueOptions.uninterpretedOption_ = build;
                onBuilt();
                return enumValueOptions;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.clear();
                    return this;
                }
                this.uninterpretedOption_ = Collections.emptyList();
                this.bitField0_ &= -2;
                return this;
            }

            public final Builder clearUninterpretedOption() {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.clear();
                    return this;
                }
                this.uninterpretedOption_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final EnumValueOptions getDefaultInstanceForType() {
                return EnumValueOptions.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return EnumValueOptions.getDescriptor();
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumValueOptionsOrBuilder
            public final UninterpretedOption getUninterpretedOption(int i) {
                return this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.get(i) : this.uninterpretedOptionBuilder_.getMessage(i);
            }

            public final UninterpretedOption.Builder getUninterpretedOptionBuilder(int i) {
                return getUninterpretedOptionFieldBuilder().getBuilder(i);
            }

            public final List<UninterpretedOption.Builder> getUninterpretedOptionBuilderList() {
                return getUninterpretedOptionFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumValueOptionsOrBuilder
            public final int getUninterpretedOptionCount() {
                return this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.size() : this.uninterpretedOptionBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumValueOptionsOrBuilder
            public final List<UninterpretedOption> getUninterpretedOptionList() {
                return this.uninterpretedOptionBuilder_ == null ? Collections.unmodifiableList(this.uninterpretedOption_) : this.uninterpretedOptionBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumValueOptionsOrBuilder
            public final UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
                return (UninterpretedOptionOrBuilder) (this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.get(i) : this.uninterpretedOptionBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.EnumValueOptionsOrBuilder
            public final List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
                return this.uninterpretedOptionBuilder_ != null ? this.uninterpretedOptionBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.uninterpretedOption_);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.f7911xdf65a421;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                    if (!getUninterpretedOption(i).isInitialized()) {
                        return false;
                    }
                }
                return extensionsAreInitialized();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                while (true) {
                    int readTag = codedInputStream.readTag();
                    if (readTag == 0) {
                        break;
                    }
                    if (readTag == 7994) {
                        UninterpretedOption.Builder newBuilder2 = UninterpretedOption.newBuilder();
                        codedInputStream.readMessage(newBuilder2, extensionRegistryLite);
                        addUninterpretedOption(newBuilder2.buildPartial());
                    } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        break;
                    }
                }
                setUnknownFields(newBuilder.build());
                onChanged();
                return this;
            }

            public final Builder mergeFrom(EnumValueOptions enumValueOptions) {
                if (enumValueOptions == EnumValueOptions.getDefaultInstance()) {
                    return this;
                }
                if (this.uninterpretedOptionBuilder_ == null) {
                    if (!enumValueOptions.uninterpretedOption_.isEmpty()) {
                        if (this.uninterpretedOption_.isEmpty()) {
                            this.uninterpretedOption_ = enumValueOptions.uninterpretedOption_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureUninterpretedOptionIsMutable();
                            this.uninterpretedOption_.addAll(enumValueOptions.uninterpretedOption_);
                        }
                        onChanged();
                    }
                } else if (!enumValueOptions.uninterpretedOption_.isEmpty()) {
                    if (this.uninterpretedOptionBuilder_.isEmpty()) {
                        this.uninterpretedOptionBuilder_.dispose();
                        this.uninterpretedOptionBuilder_ = null;
                        this.uninterpretedOption_ = enumValueOptions.uninterpretedOption_;
                        this.bitField0_ &= -2;
                        this.uninterpretedOptionBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getUninterpretedOptionFieldBuilder() : null;
                    } else {
                        this.uninterpretedOptionBuilder_.addAllMessages(enumValueOptions.uninterpretedOption_);
                    }
                }
                mergeExtensionFields(enumValueOptions);
                mergeUnknownFields(enumValueOptions.getUnknownFields());
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof EnumValueOptions) {
                    return mergeFrom((EnumValueOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder removeUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.remove(i);
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.remove(i);
                onChanged();
                return this;
            }

            public final Builder setUninterpretedOption(int i, UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.set(i, uninterpretedOption);
                onChanged();
                return this;
            }
        }

        static {
            EnumValueOptions enumValueOptions = new EnumValueOptions(true);
            defaultInstance = enumValueOptions;
            enumValueOptions.initFields();
        }

        private EnumValueOptions(Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        /* synthetic */ EnumValueOptions(Builder builder, EnumValueOptions enumValueOptions) {
            this(builder);
        }

        private EnumValueOptions(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        public static EnumValueOptions getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_EnumValueOptions_descriptor;
        }

        private void initFields() {
            this.uninterpretedOption_ = Collections.emptyList();
        }

        public static Builder newBuilder() {
            return Builder.access$18();
        }

        public static Builder newBuilder(EnumValueOptions enumValueOptions) {
            return newBuilder().mergeFrom(enumValueOptions);
        }

        public static EnumValueOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        public static EnumValueOptions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumValueOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumValueOptions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumValueOptions parseFrom(CodedInputStream codedInputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
        }

        public static EnumValueOptions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumValueOptions parseFrom(InputStream inputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumValueOptions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumValueOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumValueOptions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final EnumValueOptions getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.uninterpretedOption_.size(); i3++) {
                i2 += CodedOutputStream.computeMessageSize(999, this.uninterpretedOption_.get(i3));
            }
            int extensionsSerializedSize = i2 + extensionsSerializedSize() + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = extensionsSerializedSize;
            return extensionsSerializedSize;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumValueOptionsOrBuilder
        public final UninterpretedOption getUninterpretedOption(int i) {
            return this.uninterpretedOption_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumValueOptionsOrBuilder
        public final int getUninterpretedOptionCount() {
            return this.uninterpretedOption_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumValueOptionsOrBuilder
        public final List<UninterpretedOption> getUninterpretedOptionList() {
            return this.uninterpretedOption_;
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumValueOptionsOrBuilder
        public final UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
            return this.uninterpretedOption_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.EnumValueOptionsOrBuilder
        public final List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
            return this.uninterpretedOption_;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.f7911xdf65a421;
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessage, com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                if (!getUninterpretedOption(i).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            if (extensionsAreInitialized()) {
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
            return new Builder(builderParent, null);
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
            GeneratedMessage.ExtendableMessage<MessageType>.ExtensionWriter newExtensionWriter = newExtensionWriter();
            for (int i = 0; i < this.uninterpretedOption_.size(); i++) {
                codedOutputStream.writeMessage(999, this.uninterpretedOption_.get(i));
            }
            newExtensionWriter.writeUntil(536870912, codedOutputStream);
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface EnumValueOptionsOrBuilder extends GeneratedMessage.ExtendableMessageOrBuilder<EnumValueOptions> {
        UninterpretedOption getUninterpretedOption(int i);

        int getUninterpretedOptionCount();

        List<UninterpretedOption> getUninterpretedOptionList();

        UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i);

        List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList();
    }

    /* loaded from: classes.dex */
    public static final class FieldDescriptorProto extends GeneratedMessage implements FieldDescriptorProtoOrBuilder {
        public static final int DEFAULT_VALUE_FIELD_NUMBER = 7;
        public static final int EXTENDEE_FIELD_NUMBER = 2;
        public static final int LABEL_FIELD_NUMBER = 4;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int NUMBER_FIELD_NUMBER = 3;
        public static final int OPTIONS_FIELD_NUMBER = 8;
        public static final int TYPE_FIELD_NUMBER = 5;
        public static final int TYPE_NAME_FIELD_NUMBER = 6;
        private static final FieldDescriptorProto defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private Object defaultValue_;
        private Object extendee_;
        private Label label_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object name_;
        private int number_;
        private FieldOptions options_;
        private Object typeName_;
        private Type type_;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements FieldDescriptorProtoOrBuilder {
            private int bitField0_;
            private Object defaultValue_;
            private Object extendee_;
            private Label label_;
            private Object name_;
            private int number_;
            private SingleFieldBuilder<FieldOptions, FieldOptions.Builder, FieldOptionsOrBuilder> optionsBuilder_;
            private FieldOptions options_;
            private Object typeName_;
            private Type type_;

            private Builder() {
                this.name_ = "";
                this.label_ = Label.LABEL_OPTIONAL;
                this.type_ = Type.TYPE_DOUBLE;
                this.typeName_ = "";
                this.extendee_ = "";
                this.defaultValue_ = "";
                this.options_ = FieldOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.name_ = "";
                this.label_ = Label.LABEL_OPTIONAL;
                this.type_ = Type.TYPE_DOUBLE;
                this.typeName_ = "";
                this.extendee_ = "";
                this.defaultValue_ = "";
                this.options_ = FieldOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                this(builderParent);
            }

            static /* synthetic */ Builder access$18() {
                return create();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public FieldDescriptorProto buildParsed() throws InvalidProtocolBufferException {
                FieldDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_FieldDescriptorProto_descriptor;
            }

            private SingleFieldBuilder<FieldOptions, FieldOptions.Builder, FieldOptionsOrBuilder> getOptionsFieldBuilder() {
                if (this.optionsBuilder_ == null) {
                    this.optionsBuilder_ = new SingleFieldBuilder<>(this.options_, getParentForChildren(), isClean());
                    this.options_ = null;
                }
                return this.optionsBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getOptionsFieldBuilder();
                }
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final FieldDescriptorProto build() {
                FieldDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final FieldDescriptorProto buildPartial() {
                FieldDescriptorProto fieldDescriptorProto = new FieldDescriptorProto(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                fieldDescriptorProto.name_ = this.name_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                fieldDescriptorProto.number_ = this.number_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                fieldDescriptorProto.label_ = this.label_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                fieldDescriptorProto.type_ = this.type_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                fieldDescriptorProto.typeName_ = this.typeName_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                fieldDescriptorProto.extendee_ = this.extendee_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                fieldDescriptorProto.defaultValue_ = this.defaultValue_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                fieldDescriptorProto.options_ = this.optionsBuilder_ == null ? this.options_ : this.optionsBuilder_.build();
                fieldDescriptorProto.bitField0_ = i2;
                onBuilt();
                return fieldDescriptorProto;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.name_ = "";
                this.bitField0_ &= -2;
                this.number_ = 0;
                this.bitField0_ &= -3;
                this.label_ = Label.LABEL_OPTIONAL;
                this.bitField0_ &= -5;
                this.type_ = Type.TYPE_DOUBLE;
                this.bitField0_ &= -9;
                this.typeName_ = "";
                this.bitField0_ &= -17;
                this.extendee_ = "";
                this.bitField0_ &= -33;
                this.defaultValue_ = "";
                this.bitField0_ &= -65;
                if (this.optionsBuilder_ == null) {
                    this.options_ = FieldOptions.getDefaultInstance();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -129;
                return this;
            }

            public final Builder clearDefaultValue() {
                this.bitField0_ &= -65;
                this.defaultValue_ = FieldDescriptorProto.getDefaultInstance().getDefaultValue();
                onChanged();
                return this;
            }

            public final Builder clearExtendee() {
                this.bitField0_ &= -33;
                this.extendee_ = FieldDescriptorProto.getDefaultInstance().getExtendee();
                onChanged();
                return this;
            }

            public final Builder clearLabel() {
                this.bitField0_ &= -5;
                this.label_ = Label.LABEL_OPTIONAL;
                onChanged();
                return this;
            }

            public final Builder clearName() {
                this.bitField0_ &= -2;
                this.name_ = FieldDescriptorProto.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public final Builder clearNumber() {
                this.bitField0_ &= -3;
                this.number_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearOptions() {
                if (this.optionsBuilder_ == null) {
                    this.options_ = FieldOptions.getDefaultInstance();
                    onChanged();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -129;
                return this;
            }

            public final Builder clearType() {
                this.bitField0_ &= -9;
                this.type_ = Type.TYPE_DOUBLE;
                onChanged();
                return this;
            }

            public final Builder clearTypeName() {
                this.bitField0_ &= -17;
                this.typeName_ = FieldDescriptorProto.getDefaultInstance().getTypeName();
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final FieldDescriptorProto getDefaultInstanceForType() {
                return FieldDescriptorProto.getDefaultInstance();
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
            public final String getDefaultValue() {
                Object obj = this.defaultValue_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.defaultValue_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return FieldDescriptorProto.getDescriptor();
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
            public final String getExtendee() {
                Object obj = this.extendee_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.extendee_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
            public final Label getLabel() {
                return this.label_;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
            public final String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
            public final int getNumber() {
                return this.number_;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
            public final FieldOptions getOptions() {
                return this.optionsBuilder_ == null ? this.options_ : this.optionsBuilder_.getMessage();
            }

            public final FieldOptions.Builder getOptionsBuilder() {
                this.bitField0_ |= 128;
                onChanged();
                return getOptionsFieldBuilder().getBuilder();
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
            public final FieldOptionsOrBuilder getOptionsOrBuilder() {
                return this.optionsBuilder_ != null ? this.optionsBuilder_.getMessageOrBuilder() : this.options_;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
            public final Type getType() {
                return this.type_;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
            public final String getTypeName() {
                Object obj = this.typeName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.typeName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
            public final boolean hasDefaultValue() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
            public final boolean hasExtendee() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
            public final boolean hasLabel() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
            public final boolean hasName() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
            public final boolean hasNumber() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
            public final boolean hasOptions() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
            public final boolean hasType() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
            public final boolean hasTypeName() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.f7912x4734b330;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return !hasOptions() || getOptions().isInitialized();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                while (true) {
                    int readTag = codedInputStream.readTag();
                    if (readTag == 0) {
                        break;
                    }
                    if (readTag == 10) {
                        this.bitField0_ |= 1;
                        this.name_ = codedInputStream.readBytes();
                    } else if (readTag == 18) {
                        this.bitField0_ |= 32;
                        this.extendee_ = codedInputStream.readBytes();
                    } else if (readTag == 24) {
                        this.bitField0_ |= 2;
                        this.number_ = codedInputStream.readInt32();
                    } else if (readTag == 32) {
                        int readEnum = codedInputStream.readEnum();
                        Label valueOf = Label.valueOf(readEnum);
                        if (valueOf == null) {
                            newBuilder.mergeVarintField(4, readEnum);
                        } else {
                            this.bitField0_ |= 4;
                            this.label_ = valueOf;
                        }
                    } else if (readTag == 40) {
                        int readEnum2 = codedInputStream.readEnum();
                        Type valueOf2 = Type.valueOf(readEnum2);
                        if (valueOf2 == null) {
                            newBuilder.mergeVarintField(5, readEnum2);
                        } else {
                            this.bitField0_ |= 8;
                            this.type_ = valueOf2;
                        }
                    } else if (readTag == 50) {
                        this.bitField0_ |= 16;
                        this.typeName_ = codedInputStream.readBytes();
                    } else if (readTag == 58) {
                        this.bitField0_ |= 64;
                        this.defaultValue_ = codedInputStream.readBytes();
                    } else if (readTag == 66) {
                        FieldOptions.Builder newBuilder2 = FieldOptions.newBuilder();
                        if (hasOptions()) {
                            newBuilder2.mergeFrom(getOptions());
                        }
                        codedInputStream.readMessage(newBuilder2, extensionRegistryLite);
                        setOptions(newBuilder2.buildPartial());
                    } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        break;
                    }
                }
                setUnknownFields(newBuilder.build());
                onChanged();
                return this;
            }

            public final Builder mergeFrom(FieldDescriptorProto fieldDescriptorProto) {
                if (fieldDescriptorProto == FieldDescriptorProto.getDefaultInstance()) {
                    return this;
                }
                if (fieldDescriptorProto.hasName()) {
                    setName(fieldDescriptorProto.getName());
                }
                if (fieldDescriptorProto.hasNumber()) {
                    setNumber(fieldDescriptorProto.getNumber());
                }
                if (fieldDescriptorProto.hasLabel()) {
                    setLabel(fieldDescriptorProto.getLabel());
                }
                if (fieldDescriptorProto.hasType()) {
                    setType(fieldDescriptorProto.getType());
                }
                if (fieldDescriptorProto.hasTypeName()) {
                    setTypeName(fieldDescriptorProto.getTypeName());
                }
                if (fieldDescriptorProto.hasExtendee()) {
                    setExtendee(fieldDescriptorProto.getExtendee());
                }
                if (fieldDescriptorProto.hasDefaultValue()) {
                    setDefaultValue(fieldDescriptorProto.getDefaultValue());
                }
                if (fieldDescriptorProto.hasOptions()) {
                    mergeOptions(fieldDescriptorProto.getOptions());
                }
                mergeUnknownFields(fieldDescriptorProto.getUnknownFields());
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof FieldDescriptorProto) {
                    return mergeFrom((FieldDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeOptions(FieldOptions fieldOptions) {
                if (this.optionsBuilder_ == null) {
                    if ((this.bitField0_ & 128) == 128 && this.options_ != FieldOptions.getDefaultInstance()) {
                        fieldOptions = FieldOptions.newBuilder(this.options_).mergeFrom(fieldOptions).buildPartial();
                    }
                    this.options_ = fieldOptions;
                    onChanged();
                } else {
                    this.optionsBuilder_.mergeFrom(fieldOptions);
                }
                this.bitField0_ |= 128;
                return this;
            }

            public final Builder setDefaultValue(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.defaultValue_ = str;
                onChanged();
                return this;
            }

            final void setDefaultValue(ByteString byteString) {
                this.bitField0_ |= 64;
                this.defaultValue_ = byteString;
                onChanged();
            }

            public final Builder setExtendee(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.extendee_ = str;
                onChanged();
                return this;
            }

            final void setExtendee(ByteString byteString) {
                this.bitField0_ |= 32;
                this.extendee_ = byteString;
                onChanged();
            }

            public final Builder setLabel(Label label) {
                if (label == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.label_ = label;
                onChanged();
                return this;
            }

            public final Builder setName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = str;
                onChanged();
                return this;
            }

            final void setName(ByteString byteString) {
                this.bitField0_ |= 1;
                this.name_ = byteString;
                onChanged();
            }

            public final Builder setNumber(int i) {
                this.bitField0_ |= 2;
                this.number_ = i;
                onChanged();
                return this;
            }

            public final Builder setOptions(FieldOptions.Builder builder) {
                if (this.optionsBuilder_ == null) {
                    this.options_ = builder.build();
                    onChanged();
                } else {
                    this.optionsBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 128;
                return this;
            }

            public final Builder setOptions(FieldOptions fieldOptions) {
                if (this.optionsBuilder_ != null) {
                    this.optionsBuilder_.setMessage(fieldOptions);
                } else {
                    if (fieldOptions == null) {
                        throw new NullPointerException();
                    }
                    this.options_ = fieldOptions;
                    onChanged();
                }
                this.bitField0_ |= 128;
                return this;
            }

            public final Builder setType(Type type) {
                if (type == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.type_ = type;
                onChanged();
                return this;
            }

            public final Builder setTypeName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.typeName_ = str;
                onChanged();
                return this;
            }

            final void setTypeName(ByteString byteString) {
                this.bitField0_ |= 16;
                this.typeName_ = byteString;
                onChanged();
            }
        }

        /* loaded from: classes.dex */
        public enum Label implements ProtocolMessageEnum {
            LABEL_OPTIONAL(0, 1),
            LABEL_REQUIRED(1, 2),
            LABEL_REPEATED(2, 3);

            public static final int LABEL_OPTIONAL_VALUE = 1;
            public static final int LABEL_REPEATED_VALUE = 3;
            public static final int LABEL_REQUIRED_VALUE = 2;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<Label> internalValueMap = new Internal.EnumLiteMap<Label>() { // from class: com.google.protobuf.DescriptorProtos.FieldDescriptorProto.Label.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public Label findValueByNumber(int i) {
                    return Label.valueOf(i);
                }
            };
            private static final Label[] VALUES = {LABEL_OPTIONAL, LABEL_REQUIRED, LABEL_REPEATED};

            Label(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return FieldDescriptorProto.getDescriptor().getEnumTypes().get(1);
            }

            public static Internal.EnumLiteMap<Label> internalGetValueMap() {
                return internalValueMap;
            }

            public static Label valueOf(int i) {
                switch (i) {
                    case 1:
                        return LABEL_OPTIONAL;
                    case 2:
                        return LABEL_REQUIRED;
                    case 3:
                        return LABEL_REPEATED;
                    default:
                        return null;
                }
            }

            public static Label valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() != getDescriptor()) {
                    throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }

            /* renamed from: values, reason: to resolve conflict with enum method */
            public static Label[] valuesCustom() {
                Label[] valuesCustom = values();
                int length = valuesCustom.length;
                Label[] labelArr = new Label[length];
                System.arraycopy(valuesCustom, 0, labelArr, 0, length);
                return labelArr;
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

        /* loaded from: classes.dex */
        public enum Type implements ProtocolMessageEnum {
            TYPE_DOUBLE(0, 1),
            TYPE_FLOAT(1, 2),
            TYPE_INT64(2, 3),
            TYPE_UINT64(3, 4),
            TYPE_INT32(4, 5),
            TYPE_FIXED64(5, 6),
            TYPE_FIXED32(6, 7),
            TYPE_BOOL(7, 8),
            TYPE_STRING(8, 9),
            TYPE_GROUP(9, 10),
            TYPE_MESSAGE(10, 11),
            TYPE_BYTES(11, 12),
            TYPE_UINT32(12, 13),
            TYPE_ENUM(13, 14),
            TYPE_SFIXED32(14, 15),
            TYPE_SFIXED64(15, 16),
            TYPE_SINT32(16, 17),
            TYPE_SINT64(17, 18);

            public static final int TYPE_BOOL_VALUE = 8;
            public static final int TYPE_BYTES_VALUE = 12;
            public static final int TYPE_DOUBLE_VALUE = 1;
            public static final int TYPE_ENUM_VALUE = 14;
            public static final int TYPE_FIXED32_VALUE = 7;
            public static final int TYPE_FIXED64_VALUE = 6;
            public static final int TYPE_FLOAT_VALUE = 2;
            public static final int TYPE_GROUP_VALUE = 10;
            public static final int TYPE_INT32_VALUE = 5;
            public static final int TYPE_INT64_VALUE = 3;
            public static final int TYPE_MESSAGE_VALUE = 11;
            public static final int TYPE_SFIXED32_VALUE = 15;
            public static final int TYPE_SFIXED64_VALUE = 16;
            public static final int TYPE_SINT32_VALUE = 17;
            public static final int TYPE_SINT64_VALUE = 18;
            public static final int TYPE_STRING_VALUE = 9;
            public static final int TYPE_UINT32_VALUE = 13;
            public static final int TYPE_UINT64_VALUE = 4;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<Type> internalValueMap = new Internal.EnumLiteMap<Type>() { // from class: com.google.protobuf.DescriptorProtos.FieldDescriptorProto.Type.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public Type findValueByNumber(int i) {
                    return Type.valueOf(i);
                }
            };
            private static final Type[] VALUES = {TYPE_DOUBLE, TYPE_FLOAT, TYPE_INT64, TYPE_UINT64, TYPE_INT32, TYPE_FIXED64, TYPE_FIXED32, TYPE_BOOL, TYPE_STRING, TYPE_GROUP, TYPE_MESSAGE, TYPE_BYTES, TYPE_UINT32, TYPE_ENUM, TYPE_SFIXED32, TYPE_SFIXED64, TYPE_SINT32, TYPE_SINT64};

            Type(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return FieldDescriptorProto.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<Type> internalGetValueMap() {
                return internalValueMap;
            }

            public static Type valueOf(int i) {
                switch (i) {
                    case 1:
                        return TYPE_DOUBLE;
                    case 2:
                        return TYPE_FLOAT;
                    case 3:
                        return TYPE_INT64;
                    case 4:
                        return TYPE_UINT64;
                    case 5:
                        return TYPE_INT32;
                    case 6:
                        return TYPE_FIXED64;
                    case 7:
                        return TYPE_FIXED32;
                    case 8:
                        return TYPE_BOOL;
                    case 9:
                        return TYPE_STRING;
                    case 10:
                        return TYPE_GROUP;
                    case 11:
                        return TYPE_MESSAGE;
                    case 12:
                        return TYPE_BYTES;
                    case 13:
                        return TYPE_UINT32;
                    case 14:
                        return TYPE_ENUM;
                    case 15:
                        return TYPE_SFIXED32;
                    case 16:
                        return TYPE_SFIXED64;
                    case 17:
                        return TYPE_SINT32;
                    case 18:
                        return TYPE_SINT64;
                    default:
                        return null;
                }
            }

            public static Type valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() != getDescriptor()) {
                    throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }

            /* renamed from: values, reason: to resolve conflict with enum method */
            public static Type[] valuesCustom() {
                Type[] valuesCustom = values();
                int length = valuesCustom.length;
                Type[] typeArr = new Type[length];
                System.arraycopy(valuesCustom, 0, typeArr, 0, length);
                return typeArr;
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
            FieldDescriptorProto fieldDescriptorProto = new FieldDescriptorProto(true);
            defaultInstance = fieldDescriptorProto;
            fieldDescriptorProto.initFields();
        }

        private FieldDescriptorProto(Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        /* synthetic */ FieldDescriptorProto(Builder builder, FieldDescriptorProto fieldDescriptorProto) {
            this(builder);
        }

        private FieldDescriptorProto(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        public static FieldDescriptorProto getDefaultInstance() {
            return defaultInstance;
        }

        private ByteString getDefaultValueBytes() {
            Object obj = this.defaultValue_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.defaultValue_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_FieldDescriptorProto_descriptor;
        }

        private ByteString getExtendeeBytes() {
            Object obj = this.extendee_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.extendee_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private ByteString getTypeNameBytes() {
            Object obj = this.typeName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.typeName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.name_ = "";
            this.number_ = 0;
            this.label_ = Label.LABEL_OPTIONAL;
            this.type_ = Type.TYPE_DOUBLE;
            this.typeName_ = "";
            this.extendee_ = "";
            this.defaultValue_ = "";
            this.options_ = FieldOptions.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.access$18();
        }

        public static Builder newBuilder(FieldDescriptorProto fieldDescriptorProto) {
            return newBuilder().mergeFrom(fieldDescriptorProto);
        }

        public static FieldDescriptorProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        public static FieldDescriptorProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FieldDescriptorProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FieldDescriptorProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FieldDescriptorProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
        }

        public static FieldDescriptorProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FieldDescriptorProto parseFrom(InputStream inputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FieldDescriptorProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FieldDescriptorProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FieldDescriptorProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final FieldDescriptorProto getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
        public final String getDefaultValue() {
            Object obj = this.defaultValue_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.defaultValue_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
        public final String getExtendee() {
            Object obj = this.extendee_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.extendee_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
        public final Label getLabel() {
            return this.label_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
        public final String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.name_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
        public final int getNumber() {
            return this.number_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
        public final FieldOptions getOptions() {
            return this.options_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
        public final FieldOptionsOrBuilder getOptionsOrBuilder() {
            return this.options_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeBytesSize = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeBytesSize(1, getNameBytes()) : 0;
            if ((this.bitField0_ & 32) == 32) {
                computeBytesSize += CodedOutputStream.computeBytesSize(2, getExtendeeBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                computeBytesSize += CodedOutputStream.computeInt32Size(3, this.number_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeBytesSize += CodedOutputStream.computeEnumSize(4, this.label_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                computeBytesSize += CodedOutputStream.computeEnumSize(5, this.type_.getNumber());
            }
            if ((this.bitField0_ & 16) == 16) {
                computeBytesSize += CodedOutputStream.computeBytesSize(6, getTypeNameBytes());
            }
            if ((this.bitField0_ & 64) == 64) {
                computeBytesSize += CodedOutputStream.computeBytesSize(7, getDefaultValueBytes());
            }
            if ((this.bitField0_ & 128) == 128) {
                computeBytesSize += CodedOutputStream.computeMessageSize(8, this.options_);
            }
            int serializedSize = computeBytesSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
        public final Type getType() {
            return this.type_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
        public final String getTypeName() {
            Object obj = this.typeName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.typeName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
        public final boolean hasDefaultValue() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
        public final boolean hasExtendee() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
        public final boolean hasLabel() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
        public final boolean hasName() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
        public final boolean hasNumber() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
        public final boolean hasOptions() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
        public final boolean hasType() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldDescriptorProtoOrBuilder
        public final boolean hasTypeName() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.f7912x4734b330;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasOptions() || getOptions().isInitialized()) {
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
            return new Builder(builderParent, null);
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
                codedOutputStream.writeBytes(1, getNameBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(2, getExtendeeBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(3, this.number_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeEnum(4, this.label_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeEnum(5, this.type_.getNumber());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(6, getTypeNameBytes());
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeBytes(7, getDefaultValueBytes());
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeMessage(8, this.options_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface FieldDescriptorProtoOrBuilder extends MessageOrBuilder {
        String getDefaultValue();

        String getExtendee();

        FieldDescriptorProto.Label getLabel();

        String getName();

        int getNumber();

        FieldOptions getOptions();

        FieldOptionsOrBuilder getOptionsOrBuilder();

        FieldDescriptorProto.Type getType();

        String getTypeName();

        boolean hasDefaultValue();

        boolean hasExtendee();

        boolean hasLabel();

        boolean hasName();

        boolean hasNumber();

        boolean hasOptions();

        boolean hasType();

        boolean hasTypeName();
    }

    /* loaded from: classes.dex */
    public static final class FieldOptions extends GeneratedMessage.ExtendableMessage<FieldOptions> implements FieldOptionsOrBuilder {
        public static final int CTYPE_FIELD_NUMBER = 1;
        public static final int DEPRECATED_FIELD_NUMBER = 3;
        public static final int EXPERIMENTAL_MAP_KEY_FIELD_NUMBER = 9;
        public static final int LAZY_FIELD_NUMBER = 5;
        public static final int PACKED_FIELD_NUMBER = 2;
        public static final int UNINTERPRETED_OPTION_FIELD_NUMBER = 999;
        public static final int WEAK_FIELD_NUMBER = 10;
        private static final FieldOptions defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private CType ctype_;
        private boolean deprecated_;
        private Object experimentalMapKey_;
        private boolean lazy_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private boolean packed_;
        private List<UninterpretedOption> uninterpretedOption_;
        private boolean weak_;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.ExtendableBuilder<FieldOptions, Builder> implements FieldOptionsOrBuilder {
            private int bitField0_;
            private CType ctype_;
            private boolean deprecated_;
            private Object experimentalMapKey_;
            private boolean lazy_;
            private boolean packed_;
            private RepeatedFieldBuilder<UninterpretedOption, UninterpretedOption.Builder, UninterpretedOptionOrBuilder> uninterpretedOptionBuilder_;
            private List<UninterpretedOption> uninterpretedOption_;
            private boolean weak_;

            private Builder() {
                this.ctype_ = CType.STRING;
                this.experimentalMapKey_ = "";
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.ctype_ = CType.STRING;
                this.experimentalMapKey_ = "";
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                this(builderParent);
            }

            static /* synthetic */ Builder access$18() {
                return create();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public FieldOptions buildParsed() throws InvalidProtocolBufferException {
                FieldOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
            }

            private static Builder create() {
                return new Builder();
            }

            private void ensureUninterpretedOptionIsMutable() {
                if ((this.bitField0_ & 64) != 64) {
                    this.uninterpretedOption_ = new ArrayList(this.uninterpretedOption_);
                    this.bitField0_ |= 64;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_FieldOptions_descriptor;
            }

            private RepeatedFieldBuilder<UninterpretedOption, UninterpretedOption.Builder, UninterpretedOptionOrBuilder> getUninterpretedOptionFieldBuilder() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOptionBuilder_ = new RepeatedFieldBuilder<>(this.uninterpretedOption_, (this.bitField0_ & 64) == 64, getParentForChildren(), isClean());
                    this.uninterpretedOption_ = null;
                }
                return this.uninterpretedOptionBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getUninterpretedOptionFieldBuilder();
                }
            }

            public final Builder addAllUninterpretedOption(Iterable<? extends UninterpretedOption> iterable) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                GeneratedMessage.ExtendableBuilder.addAll(iterable, this.uninterpretedOption_);
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(int i, UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(i, uninterpretedOption);
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(uninterpretedOption);
                onChanged();
                return this;
            }

            public final UninterpretedOption.Builder addUninterpretedOptionBuilder() {
                return getUninterpretedOptionFieldBuilder().addBuilder(UninterpretedOption.getDefaultInstance());
            }

            public final UninterpretedOption.Builder addUninterpretedOptionBuilder(int i) {
                return getUninterpretedOptionFieldBuilder().addBuilder(i, UninterpretedOption.getDefaultInstance());
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final FieldOptions build() {
                FieldOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final FieldOptions buildPartial() {
                List<UninterpretedOption> build;
                FieldOptions fieldOptions = new FieldOptions(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                fieldOptions.ctype_ = this.ctype_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                fieldOptions.packed_ = this.packed_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                fieldOptions.lazy_ = this.lazy_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                fieldOptions.deprecated_ = this.deprecated_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                fieldOptions.experimentalMapKey_ = this.experimentalMapKey_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                fieldOptions.weak_ = this.weak_;
                if (this.uninterpretedOptionBuilder_ == null) {
                    if ((this.bitField0_ & 64) == 64) {
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                        this.bitField0_ &= -65;
                    }
                    build = this.uninterpretedOption_;
                } else {
                    build = this.uninterpretedOptionBuilder_.build();
                }
                fieldOptions.uninterpretedOption_ = build;
                fieldOptions.bitField0_ = i2;
                onBuilt();
                return fieldOptions;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.ctype_ = CType.STRING;
                this.bitField0_ &= -2;
                this.packed_ = false;
                this.bitField0_ &= -3;
                this.lazy_ = false;
                this.bitField0_ &= -5;
                this.deprecated_ = false;
                this.bitField0_ &= -9;
                this.experimentalMapKey_ = "";
                this.bitField0_ &= -17;
                this.weak_ = false;
                this.bitField0_ &= -33;
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.clear();
                    return this;
                }
                this.uninterpretedOption_ = Collections.emptyList();
                this.bitField0_ &= -65;
                return this;
            }

            public final Builder clearCtype() {
                this.bitField0_ &= -2;
                this.ctype_ = CType.STRING;
                onChanged();
                return this;
            }

            public final Builder clearDeprecated() {
                this.bitField0_ &= -9;
                this.deprecated_ = false;
                onChanged();
                return this;
            }

            public final Builder clearExperimentalMapKey() {
                this.bitField0_ &= -17;
                this.experimentalMapKey_ = FieldOptions.getDefaultInstance().getExperimentalMapKey();
                onChanged();
                return this;
            }

            public final Builder clearLazy() {
                this.bitField0_ &= -5;
                this.lazy_ = false;
                onChanged();
                return this;
            }

            public final Builder clearPacked() {
                this.bitField0_ &= -3;
                this.packed_ = false;
                onChanged();
                return this;
            }

            public final Builder clearUninterpretedOption() {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.clear();
                    return this;
                }
                this.uninterpretedOption_ = Collections.emptyList();
                this.bitField0_ &= -65;
                onChanged();
                return this;
            }

            public final Builder clearWeak() {
                this.bitField0_ &= -33;
                this.weak_ = false;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
            public final CType getCtype() {
                return this.ctype_;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final FieldOptions getDefaultInstanceForType() {
                return FieldOptions.getDefaultInstance();
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
            public final boolean getDeprecated() {
                return this.deprecated_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return FieldOptions.getDescriptor();
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
            public final String getExperimentalMapKey() {
                Object obj = this.experimentalMapKey_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.experimentalMapKey_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
            public final boolean getLazy() {
                return this.lazy_;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
            public final boolean getPacked() {
                return this.packed_;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
            public final UninterpretedOption getUninterpretedOption(int i) {
                return this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.get(i) : this.uninterpretedOptionBuilder_.getMessage(i);
            }

            public final UninterpretedOption.Builder getUninterpretedOptionBuilder(int i) {
                return getUninterpretedOptionFieldBuilder().getBuilder(i);
            }

            public final List<UninterpretedOption.Builder> getUninterpretedOptionBuilderList() {
                return getUninterpretedOptionFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
            public final int getUninterpretedOptionCount() {
                return this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.size() : this.uninterpretedOptionBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
            public final List<UninterpretedOption> getUninterpretedOptionList() {
                return this.uninterpretedOptionBuilder_ == null ? Collections.unmodifiableList(this.uninterpretedOption_) : this.uninterpretedOptionBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
            public final UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
                return (UninterpretedOptionOrBuilder) (this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.get(i) : this.uninterpretedOptionBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
            public final List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
                return this.uninterpretedOptionBuilder_ != null ? this.uninterpretedOptionBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.uninterpretedOption_);
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
            public final boolean getWeak() {
                return this.weak_;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
            public final boolean hasCtype() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
            public final boolean hasDeprecated() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
            public final boolean hasExperimentalMapKey() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
            public final boolean hasLazy() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
            public final boolean hasPacked() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
            public final boolean hasWeak() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_FieldOptions_fieldAccessorTable;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                    if (!getUninterpretedOption(i).isInitialized()) {
                        return false;
                    }
                }
                return extensionsAreInitialized();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                while (true) {
                    int readTag = codedInputStream.readTag();
                    if (readTag == 0) {
                        break;
                    }
                    if (readTag == 8) {
                        int readEnum = codedInputStream.readEnum();
                        CType valueOf = CType.valueOf(readEnum);
                        if (valueOf == null) {
                            newBuilder.mergeVarintField(1, readEnum);
                        } else {
                            this.bitField0_ |= 1;
                            this.ctype_ = valueOf;
                        }
                    } else if (readTag == 16) {
                        this.bitField0_ |= 2;
                        this.packed_ = codedInputStream.readBool();
                    } else if (readTag == 24) {
                        this.bitField0_ |= 8;
                        this.deprecated_ = codedInputStream.readBool();
                    } else if (readTag == 40) {
                        this.bitField0_ |= 4;
                        this.lazy_ = codedInputStream.readBool();
                    } else if (readTag == 74) {
                        this.bitField0_ |= 16;
                        this.experimentalMapKey_ = codedInputStream.readBytes();
                    } else if (readTag == 80) {
                        this.bitField0_ |= 32;
                        this.weak_ = codedInputStream.readBool();
                    } else if (readTag == 7994) {
                        UninterpretedOption.Builder newBuilder2 = UninterpretedOption.newBuilder();
                        codedInputStream.readMessage(newBuilder2, extensionRegistryLite);
                        addUninterpretedOption(newBuilder2.buildPartial());
                    } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        break;
                    }
                }
                setUnknownFields(newBuilder.build());
                onChanged();
                return this;
            }

            public final Builder mergeFrom(FieldOptions fieldOptions) {
                if (fieldOptions == FieldOptions.getDefaultInstance()) {
                    return this;
                }
                if (fieldOptions.hasCtype()) {
                    setCtype(fieldOptions.getCtype());
                }
                if (fieldOptions.hasPacked()) {
                    setPacked(fieldOptions.getPacked());
                }
                if (fieldOptions.hasLazy()) {
                    setLazy(fieldOptions.getLazy());
                }
                if (fieldOptions.hasDeprecated()) {
                    setDeprecated(fieldOptions.getDeprecated());
                }
                if (fieldOptions.hasExperimentalMapKey()) {
                    setExperimentalMapKey(fieldOptions.getExperimentalMapKey());
                }
                if (fieldOptions.hasWeak()) {
                    setWeak(fieldOptions.getWeak());
                }
                if (this.uninterpretedOptionBuilder_ == null) {
                    if (!fieldOptions.uninterpretedOption_.isEmpty()) {
                        if (this.uninterpretedOption_.isEmpty()) {
                            this.uninterpretedOption_ = fieldOptions.uninterpretedOption_;
                            this.bitField0_ &= -65;
                        } else {
                            ensureUninterpretedOptionIsMutable();
                            this.uninterpretedOption_.addAll(fieldOptions.uninterpretedOption_);
                        }
                        onChanged();
                    }
                } else if (!fieldOptions.uninterpretedOption_.isEmpty()) {
                    if (this.uninterpretedOptionBuilder_.isEmpty()) {
                        this.uninterpretedOptionBuilder_.dispose();
                        this.uninterpretedOptionBuilder_ = null;
                        this.uninterpretedOption_ = fieldOptions.uninterpretedOption_;
                        this.bitField0_ &= -65;
                        this.uninterpretedOptionBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getUninterpretedOptionFieldBuilder() : null;
                    } else {
                        this.uninterpretedOptionBuilder_.addAllMessages(fieldOptions.uninterpretedOption_);
                    }
                }
                mergeExtensionFields(fieldOptions);
                mergeUnknownFields(fieldOptions.getUnknownFields());
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof FieldOptions) {
                    return mergeFrom((FieldOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder removeUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.remove(i);
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.remove(i);
                onChanged();
                return this;
            }

            public final Builder setCtype(CType cType) {
                if (cType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.ctype_ = cType;
                onChanged();
                return this;
            }

            public final Builder setDeprecated(boolean z) {
                this.bitField0_ |= 8;
                this.deprecated_ = z;
                onChanged();
                return this;
            }

            public final Builder setExperimentalMapKey(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.experimentalMapKey_ = str;
                onChanged();
                return this;
            }

            final void setExperimentalMapKey(ByteString byteString) {
                this.bitField0_ |= 16;
                this.experimentalMapKey_ = byteString;
                onChanged();
            }

            public final Builder setLazy(boolean z) {
                this.bitField0_ |= 4;
                this.lazy_ = z;
                onChanged();
                return this;
            }

            public final Builder setPacked(boolean z) {
                this.bitField0_ |= 2;
                this.packed_ = z;
                onChanged();
                return this;
            }

            public final Builder setUninterpretedOption(int i, UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.set(i, uninterpretedOption);
                onChanged();
                return this;
            }

            public final Builder setWeak(boolean z) {
                this.bitField0_ |= 32;
                this.weak_ = z;
                onChanged();
                return this;
            }
        }

        /* loaded from: classes.dex */
        public enum CType implements ProtocolMessageEnum {
            STRING(0, 0),
            CORD(1, 1),
            STRING_PIECE(2, 2);

            public static final int CORD_VALUE = 1;
            public static final int STRING_PIECE_VALUE = 2;
            public static final int STRING_VALUE = 0;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<CType> internalValueMap = new Internal.EnumLiteMap<CType>() { // from class: com.google.protobuf.DescriptorProtos.FieldOptions.CType.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public CType findValueByNumber(int i) {
                    return CType.valueOf(i);
                }
            };
            private static final CType[] VALUES = {STRING, CORD, STRING_PIECE};

            CType(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return FieldOptions.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<CType> internalGetValueMap() {
                return internalValueMap;
            }

            public static CType valueOf(int i) {
                switch (i) {
                    case 0:
                        return STRING;
                    case 1:
                        return CORD;
                    case 2:
                        return STRING_PIECE;
                    default:
                        return null;
                }
            }

            public static CType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() != getDescriptor()) {
                    throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }

            /* renamed from: values, reason: to resolve conflict with enum method */
            public static CType[] valuesCustom() {
                CType[] valuesCustom = values();
                int length = valuesCustom.length;
                CType[] cTypeArr = new CType[length];
                System.arraycopy(valuesCustom, 0, cTypeArr, 0, length);
                return cTypeArr;
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
            FieldOptions fieldOptions = new FieldOptions(true);
            defaultInstance = fieldOptions;
            fieldOptions.initFields();
        }

        private FieldOptions(Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        /* synthetic */ FieldOptions(Builder builder, FieldOptions fieldOptions) {
            this(builder);
        }

        private FieldOptions(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        public static FieldOptions getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_FieldOptions_descriptor;
        }

        private ByteString getExperimentalMapKeyBytes() {
            Object obj = this.experimentalMapKey_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.experimentalMapKey_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.ctype_ = CType.STRING;
            this.packed_ = false;
            this.lazy_ = false;
            this.deprecated_ = false;
            this.experimentalMapKey_ = "";
            this.weak_ = false;
            this.uninterpretedOption_ = Collections.emptyList();
        }

        public static Builder newBuilder() {
            return Builder.access$18();
        }

        public static Builder newBuilder(FieldOptions fieldOptions) {
            return newBuilder().mergeFrom(fieldOptions);
        }

        public static FieldOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        public static FieldOptions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FieldOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FieldOptions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FieldOptions parseFrom(CodedInputStream codedInputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
        }

        public static FieldOptions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FieldOptions parseFrom(InputStream inputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FieldOptions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FieldOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FieldOptions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
        public final CType getCtype() {
            return this.ctype_;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final FieldOptions getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
        public final boolean getDeprecated() {
            return this.deprecated_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
        public final String getExperimentalMapKey() {
            Object obj = this.experimentalMapKey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.experimentalMapKey_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
        public final boolean getLazy() {
            return this.lazy_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
        public final boolean getPacked() {
            return this.packed_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = (this.bitField0_ & 1) == 1 ? CodedOutputStream.computeEnumSize(1, this.ctype_.getNumber()) + 0 : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeEnumSize += CodedOutputStream.computeBoolSize(2, this.packed_);
            }
            if ((this.bitField0_ & 8) == 8) {
                computeEnumSize += CodedOutputStream.computeBoolSize(3, this.deprecated_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeEnumSize += CodedOutputStream.computeBoolSize(5, this.lazy_);
            }
            if ((this.bitField0_ & 16) == 16) {
                computeEnumSize += CodedOutputStream.computeBytesSize(9, getExperimentalMapKeyBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                computeEnumSize += CodedOutputStream.computeBoolSize(10, this.weak_);
            }
            for (int i2 = 0; i2 < this.uninterpretedOption_.size(); i2++) {
                computeEnumSize += CodedOutputStream.computeMessageSize(999, this.uninterpretedOption_.get(i2));
            }
            int extensionsSerializedSize = computeEnumSize + extensionsSerializedSize() + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = extensionsSerializedSize;
            return extensionsSerializedSize;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
        public final UninterpretedOption getUninterpretedOption(int i) {
            return this.uninterpretedOption_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
        public final int getUninterpretedOptionCount() {
            return this.uninterpretedOption_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
        public final List<UninterpretedOption> getUninterpretedOptionList() {
            return this.uninterpretedOption_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
        public final UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
            return this.uninterpretedOption_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
        public final List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
            return this.uninterpretedOption_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
        public final boolean getWeak() {
            return this.weak_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
        public final boolean hasCtype() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
        public final boolean hasDeprecated() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
        public final boolean hasExperimentalMapKey() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
        public final boolean hasLazy() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
        public final boolean hasPacked() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.DescriptorProtos.FieldOptionsOrBuilder
        public final boolean hasWeak() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_FieldOptions_fieldAccessorTable;
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessage, com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                if (!getUninterpretedOption(i).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            if (extensionsAreInitialized()) {
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
            return new Builder(builderParent, null);
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
            GeneratedMessage.ExtendableMessage<MessageType>.ExtensionWriter newExtensionWriter = newExtensionWriter();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeEnum(1, this.ctype_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBool(2, this.packed_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBool(3, this.deprecated_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBool(5, this.lazy_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(9, getExperimentalMapKeyBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBool(10, this.weak_);
            }
            for (int i = 0; i < this.uninterpretedOption_.size(); i++) {
                codedOutputStream.writeMessage(999, this.uninterpretedOption_.get(i));
            }
            newExtensionWriter.writeUntil(536870912, codedOutputStream);
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface FieldOptionsOrBuilder extends GeneratedMessage.ExtendableMessageOrBuilder<FieldOptions> {
        FieldOptions.CType getCtype();

        boolean getDeprecated();

        String getExperimentalMapKey();

        boolean getLazy();

        boolean getPacked();

        UninterpretedOption getUninterpretedOption(int i);

        int getUninterpretedOptionCount();

        List<UninterpretedOption> getUninterpretedOptionList();

        UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i);

        List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList();

        boolean getWeak();

        boolean hasCtype();

        boolean hasDeprecated();

        boolean hasExperimentalMapKey();

        boolean hasLazy();

        boolean hasPacked();

        boolean hasWeak();
    }

    /* loaded from: classes.dex */
    public static final class FileDescriptorProto extends GeneratedMessage implements FileDescriptorProtoOrBuilder {
        public static final int DEPENDENCY_FIELD_NUMBER = 3;
        public static final int ENUM_TYPE_FIELD_NUMBER = 5;
        public static final int EXTENSION_FIELD_NUMBER = 7;
        public static final int MESSAGE_TYPE_FIELD_NUMBER = 4;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int OPTIONS_FIELD_NUMBER = 8;
        public static final int PACKAGE_FIELD_NUMBER = 2;
        public static final int PUBLIC_DEPENDENCY_FIELD_NUMBER = 10;
        public static final int SERVICE_FIELD_NUMBER = 6;
        public static final int SOURCE_CODE_INFO_FIELD_NUMBER = 9;
        public static final int WEAK_DEPENDENCY_FIELD_NUMBER = 11;
        private static final FileDescriptorProto defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private LazyStringList dependency_;
        private List<EnumDescriptorProto> enumType_;
        private List<FieldDescriptorProto> extension_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private List<DescriptorProto> messageType_;
        private Object name_;
        private FileOptions options_;
        private Object package_;
        private List<Integer> publicDependency_;
        private List<ServiceDescriptorProto> service_;
        private SourceCodeInfo sourceCodeInfo_;
        private List<Integer> weakDependency_;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements FileDescriptorProtoOrBuilder {
            private int bitField0_;
            private LazyStringList dependency_;
            private RepeatedFieldBuilder<EnumDescriptorProto, EnumDescriptorProto.Builder, EnumDescriptorProtoOrBuilder> enumTypeBuilder_;
            private List<EnumDescriptorProto> enumType_;
            private RepeatedFieldBuilder<FieldDescriptorProto, FieldDescriptorProto.Builder, FieldDescriptorProtoOrBuilder> extensionBuilder_;
            private List<FieldDescriptorProto> extension_;
            private RepeatedFieldBuilder<DescriptorProto, DescriptorProto.Builder, DescriptorProtoOrBuilder> messageTypeBuilder_;
            private List<DescriptorProto> messageType_;
            private Object name_;
            private SingleFieldBuilder<FileOptions, FileOptions.Builder, FileOptionsOrBuilder> optionsBuilder_;
            private FileOptions options_;
            private Object package_;
            private List<Integer> publicDependency_;
            private RepeatedFieldBuilder<ServiceDescriptorProto, ServiceDescriptorProto.Builder, ServiceDescriptorProtoOrBuilder> serviceBuilder_;
            private List<ServiceDescriptorProto> service_;
            private SingleFieldBuilder<SourceCodeInfo, SourceCodeInfo.Builder, SourceCodeInfoOrBuilder> sourceCodeInfoBuilder_;
            private SourceCodeInfo sourceCodeInfo_;
            private List<Integer> weakDependency_;

            private Builder() {
                this.name_ = "";
                this.package_ = "";
                this.dependency_ = LazyStringArrayList.EMPTY;
                this.publicDependency_ = Collections.emptyList();
                this.weakDependency_ = Collections.emptyList();
                this.messageType_ = Collections.emptyList();
                this.enumType_ = Collections.emptyList();
                this.service_ = Collections.emptyList();
                this.extension_ = Collections.emptyList();
                this.options_ = FileOptions.getDefaultInstance();
                this.sourceCodeInfo_ = SourceCodeInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.name_ = "";
                this.package_ = "";
                this.dependency_ = LazyStringArrayList.EMPTY;
                this.publicDependency_ = Collections.emptyList();
                this.weakDependency_ = Collections.emptyList();
                this.messageType_ = Collections.emptyList();
                this.enumType_ = Collections.emptyList();
                this.service_ = Collections.emptyList();
                this.extension_ = Collections.emptyList();
                this.options_ = FileOptions.getDefaultInstance();
                this.sourceCodeInfo_ = SourceCodeInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                this(builderParent);
            }

            static /* synthetic */ Builder access$18() {
                return create();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public FileDescriptorProto buildParsed() throws InvalidProtocolBufferException {
                FileDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
            }

            private static Builder create() {
                return new Builder();
            }

            private void ensureDependencyIsMutable() {
                if ((this.bitField0_ & 4) != 4) {
                    this.dependency_ = new LazyStringArrayList(this.dependency_);
                    this.bitField0_ |= 4;
                }
            }

            private void ensureEnumTypeIsMutable() {
                if ((this.bitField0_ & 64) != 64) {
                    this.enumType_ = new ArrayList(this.enumType_);
                    this.bitField0_ |= 64;
                }
            }

            private void ensureExtensionIsMutable() {
                if ((this.bitField0_ & 256) != 256) {
                    this.extension_ = new ArrayList(this.extension_);
                    this.bitField0_ |= 256;
                }
            }

            private void ensureMessageTypeIsMutable() {
                if ((this.bitField0_ & 32) != 32) {
                    this.messageType_ = new ArrayList(this.messageType_);
                    this.bitField0_ |= 32;
                }
            }

            private void ensurePublicDependencyIsMutable() {
                if ((this.bitField0_ & 8) != 8) {
                    this.publicDependency_ = new ArrayList(this.publicDependency_);
                    this.bitField0_ |= 8;
                }
            }

            private void ensureServiceIsMutable() {
                if ((this.bitField0_ & 128) != 128) {
                    this.service_ = new ArrayList(this.service_);
                    this.bitField0_ |= 128;
                }
            }

            private void ensureWeakDependencyIsMutable() {
                if ((this.bitField0_ & 16) != 16) {
                    this.weakDependency_ = new ArrayList(this.weakDependency_);
                    this.bitField0_ |= 16;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_FileDescriptorProto_descriptor;
            }

            private RepeatedFieldBuilder<EnumDescriptorProto, EnumDescriptorProto.Builder, EnumDescriptorProtoOrBuilder> getEnumTypeFieldBuilder() {
                if (this.enumTypeBuilder_ == null) {
                    this.enumTypeBuilder_ = new RepeatedFieldBuilder<>(this.enumType_, (this.bitField0_ & 64) == 64, getParentForChildren(), isClean());
                    this.enumType_ = null;
                }
                return this.enumTypeBuilder_;
            }

            private RepeatedFieldBuilder<FieldDescriptorProto, FieldDescriptorProto.Builder, FieldDescriptorProtoOrBuilder> getExtensionFieldBuilder() {
                if (this.extensionBuilder_ == null) {
                    this.extensionBuilder_ = new RepeatedFieldBuilder<>(this.extension_, (this.bitField0_ & 256) == 256, getParentForChildren(), isClean());
                    this.extension_ = null;
                }
                return this.extensionBuilder_;
            }

            private RepeatedFieldBuilder<DescriptorProto, DescriptorProto.Builder, DescriptorProtoOrBuilder> getMessageTypeFieldBuilder() {
                if (this.messageTypeBuilder_ == null) {
                    this.messageTypeBuilder_ = new RepeatedFieldBuilder<>(this.messageType_, (this.bitField0_ & 32) == 32, getParentForChildren(), isClean());
                    this.messageType_ = null;
                }
                return this.messageTypeBuilder_;
            }

            private SingleFieldBuilder<FileOptions, FileOptions.Builder, FileOptionsOrBuilder> getOptionsFieldBuilder() {
                if (this.optionsBuilder_ == null) {
                    this.optionsBuilder_ = new SingleFieldBuilder<>(this.options_, getParentForChildren(), isClean());
                    this.options_ = null;
                }
                return this.optionsBuilder_;
            }

            private RepeatedFieldBuilder<ServiceDescriptorProto, ServiceDescriptorProto.Builder, ServiceDescriptorProtoOrBuilder> getServiceFieldBuilder() {
                if (this.serviceBuilder_ == null) {
                    this.serviceBuilder_ = new RepeatedFieldBuilder<>(this.service_, (this.bitField0_ & 128) == 128, getParentForChildren(), isClean());
                    this.service_ = null;
                }
                return this.serviceBuilder_;
            }

            private SingleFieldBuilder<SourceCodeInfo, SourceCodeInfo.Builder, SourceCodeInfoOrBuilder> getSourceCodeInfoFieldBuilder() {
                if (this.sourceCodeInfoBuilder_ == null) {
                    this.sourceCodeInfoBuilder_ = new SingleFieldBuilder<>(this.sourceCodeInfo_, getParentForChildren(), isClean());
                    this.sourceCodeInfo_ = null;
                }
                return this.sourceCodeInfoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getMessageTypeFieldBuilder();
                    getEnumTypeFieldBuilder();
                    getServiceFieldBuilder();
                    getExtensionFieldBuilder();
                    getOptionsFieldBuilder();
                    getSourceCodeInfoFieldBuilder();
                }
            }

            public final Builder addAllDependency(Iterable<String> iterable) {
                ensureDependencyIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.dependency_);
                onChanged();
                return this;
            }

            public final Builder addAllEnumType(Iterable<? extends EnumDescriptorProto> iterable) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureEnumTypeIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.enumType_);
                onChanged();
                return this;
            }

            public final Builder addAllExtension(Iterable<? extends FieldDescriptorProto> iterable) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureExtensionIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.extension_);
                onChanged();
                return this;
            }

            public final Builder addAllMessageType(Iterable<? extends DescriptorProto> iterable) {
                if (this.messageTypeBuilder_ != null) {
                    this.messageTypeBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureMessageTypeIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.messageType_);
                onChanged();
                return this;
            }

            public final Builder addAllPublicDependency(Iterable<? extends Integer> iterable) {
                ensurePublicDependencyIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.publicDependency_);
                onChanged();
                return this;
            }

            public final Builder addAllService(Iterable<? extends ServiceDescriptorProto> iterable) {
                if (this.serviceBuilder_ != null) {
                    this.serviceBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureServiceIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.service_);
                onChanged();
                return this;
            }

            public final Builder addAllWeakDependency(Iterable<? extends Integer> iterable) {
                ensureWeakDependencyIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.weakDependency_);
                onChanged();
                return this;
            }

            public final Builder addDependency(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                ensureDependencyIsMutable();
                this.dependency_.add((LazyStringList) str);
                onChanged();
                return this;
            }

            final void addDependency(ByteString byteString) {
                ensureDependencyIsMutable();
                this.dependency_.add(byteString);
                onChanged();
            }

            public final Builder addEnumType(int i, EnumDescriptorProto.Builder builder) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureEnumTypeIsMutable();
                this.enumType_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addEnumType(int i, EnumDescriptorProto enumDescriptorProto) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.addMessage(i, enumDescriptorProto);
                    return this;
                }
                if (enumDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureEnumTypeIsMutable();
                this.enumType_.add(i, enumDescriptorProto);
                onChanged();
                return this;
            }

            public final Builder addEnumType(EnumDescriptorProto.Builder builder) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureEnumTypeIsMutable();
                this.enumType_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addEnumType(EnumDescriptorProto enumDescriptorProto) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.addMessage(enumDescriptorProto);
                    return this;
                }
                if (enumDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureEnumTypeIsMutable();
                this.enumType_.add(enumDescriptorProto);
                onChanged();
                return this;
            }

            public final EnumDescriptorProto.Builder addEnumTypeBuilder() {
                return getEnumTypeFieldBuilder().addBuilder(EnumDescriptorProto.getDefaultInstance());
            }

            public final EnumDescriptorProto.Builder addEnumTypeBuilder(int i) {
                return getEnumTypeFieldBuilder().addBuilder(i, EnumDescriptorProto.getDefaultInstance());
            }

            public final Builder addExtension(int i, FieldDescriptorProto.Builder builder) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureExtensionIsMutable();
                this.extension_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addExtension(int i, FieldDescriptorProto fieldDescriptorProto) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.addMessage(i, fieldDescriptorProto);
                    return this;
                }
                if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureExtensionIsMutable();
                this.extension_.add(i, fieldDescriptorProto);
                onChanged();
                return this;
            }

            public final Builder addExtension(FieldDescriptorProto.Builder builder) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureExtensionIsMutable();
                this.extension_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addExtension(FieldDescriptorProto fieldDescriptorProto) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.addMessage(fieldDescriptorProto);
                    return this;
                }
                if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureExtensionIsMutable();
                this.extension_.add(fieldDescriptorProto);
                onChanged();
                return this;
            }

            public final FieldDescriptorProto.Builder addExtensionBuilder() {
                return getExtensionFieldBuilder().addBuilder(FieldDescriptorProto.getDefaultInstance());
            }

            public final FieldDescriptorProto.Builder addExtensionBuilder(int i) {
                return getExtensionFieldBuilder().addBuilder(i, FieldDescriptorProto.getDefaultInstance());
            }

            public final Builder addMessageType(int i, DescriptorProto.Builder builder) {
                if (this.messageTypeBuilder_ != null) {
                    this.messageTypeBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureMessageTypeIsMutable();
                this.messageType_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addMessageType(int i, DescriptorProto descriptorProto) {
                if (this.messageTypeBuilder_ != null) {
                    this.messageTypeBuilder_.addMessage(i, descriptorProto);
                    return this;
                }
                if (descriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureMessageTypeIsMutable();
                this.messageType_.add(i, descriptorProto);
                onChanged();
                return this;
            }

            public final Builder addMessageType(DescriptorProto.Builder builder) {
                if (this.messageTypeBuilder_ != null) {
                    this.messageTypeBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureMessageTypeIsMutable();
                this.messageType_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addMessageType(DescriptorProto descriptorProto) {
                if (this.messageTypeBuilder_ != null) {
                    this.messageTypeBuilder_.addMessage(descriptorProto);
                    return this;
                }
                if (descriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureMessageTypeIsMutable();
                this.messageType_.add(descriptorProto);
                onChanged();
                return this;
            }

            public final DescriptorProto.Builder addMessageTypeBuilder() {
                return getMessageTypeFieldBuilder().addBuilder(DescriptorProto.getDefaultInstance());
            }

            public final DescriptorProto.Builder addMessageTypeBuilder(int i) {
                return getMessageTypeFieldBuilder().addBuilder(i, DescriptorProto.getDefaultInstance());
            }

            public final Builder addPublicDependency(int i) {
                ensurePublicDependencyIsMutable();
                this.publicDependency_.add(Integer.valueOf(i));
                onChanged();
                return this;
            }

            public final Builder addService(int i, ServiceDescriptorProto.Builder builder) {
                if (this.serviceBuilder_ != null) {
                    this.serviceBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureServiceIsMutable();
                this.service_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addService(int i, ServiceDescriptorProto serviceDescriptorProto) {
                if (this.serviceBuilder_ != null) {
                    this.serviceBuilder_.addMessage(i, serviceDescriptorProto);
                    return this;
                }
                if (serviceDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureServiceIsMutable();
                this.service_.add(i, serviceDescriptorProto);
                onChanged();
                return this;
            }

            public final Builder addService(ServiceDescriptorProto.Builder builder) {
                if (this.serviceBuilder_ != null) {
                    this.serviceBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureServiceIsMutable();
                this.service_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addService(ServiceDescriptorProto serviceDescriptorProto) {
                if (this.serviceBuilder_ != null) {
                    this.serviceBuilder_.addMessage(serviceDescriptorProto);
                    return this;
                }
                if (serviceDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureServiceIsMutable();
                this.service_.add(serviceDescriptorProto);
                onChanged();
                return this;
            }

            public final ServiceDescriptorProto.Builder addServiceBuilder() {
                return getServiceFieldBuilder().addBuilder(ServiceDescriptorProto.getDefaultInstance());
            }

            public final ServiceDescriptorProto.Builder addServiceBuilder(int i) {
                return getServiceFieldBuilder().addBuilder(i, ServiceDescriptorProto.getDefaultInstance());
            }

            public final Builder addWeakDependency(int i) {
                ensureWeakDependencyIsMutable();
                this.weakDependency_.add(Integer.valueOf(i));
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final FileDescriptorProto build() {
                FileDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final FileDescriptorProto buildPartial() {
                List<DescriptorProto> build;
                List<EnumDescriptorProto> build2;
                List<ServiceDescriptorProto> build3;
                List<FieldDescriptorProto> build4;
                FileDescriptorProto fileDescriptorProto = new FileDescriptorProto(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                fileDescriptorProto.name_ = this.name_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                fileDescriptorProto.package_ = this.package_;
                if ((this.bitField0_ & 4) == 4) {
                    this.dependency_ = new UnmodifiableLazyStringList(this.dependency_);
                    this.bitField0_ &= -5;
                }
                fileDescriptorProto.dependency_ = this.dependency_;
                if ((this.bitField0_ & 8) == 8) {
                    this.publicDependency_ = Collections.unmodifiableList(this.publicDependency_);
                    this.bitField0_ &= -9;
                }
                fileDescriptorProto.publicDependency_ = this.publicDependency_;
                if ((this.bitField0_ & 16) == 16) {
                    this.weakDependency_ = Collections.unmodifiableList(this.weakDependency_);
                    this.bitField0_ &= -17;
                }
                fileDescriptorProto.weakDependency_ = this.weakDependency_;
                if (this.messageTypeBuilder_ == null) {
                    if ((this.bitField0_ & 32) == 32) {
                        this.messageType_ = Collections.unmodifiableList(this.messageType_);
                        this.bitField0_ &= -33;
                    }
                    build = this.messageType_;
                } else {
                    build = this.messageTypeBuilder_.build();
                }
                fileDescriptorProto.messageType_ = build;
                if (this.enumTypeBuilder_ == null) {
                    if ((this.bitField0_ & 64) == 64) {
                        this.enumType_ = Collections.unmodifiableList(this.enumType_);
                        this.bitField0_ &= -65;
                    }
                    build2 = this.enumType_;
                } else {
                    build2 = this.enumTypeBuilder_.build();
                }
                fileDescriptorProto.enumType_ = build2;
                if (this.serviceBuilder_ == null) {
                    if ((this.bitField0_ & 128) == 128) {
                        this.service_ = Collections.unmodifiableList(this.service_);
                        this.bitField0_ &= -129;
                    }
                    build3 = this.service_;
                } else {
                    build3 = this.serviceBuilder_.build();
                }
                fileDescriptorProto.service_ = build3;
                if (this.extensionBuilder_ == null) {
                    if ((this.bitField0_ & 256) == 256) {
                        this.extension_ = Collections.unmodifiableList(this.extension_);
                        this.bitField0_ &= -257;
                    }
                    build4 = this.extension_;
                } else {
                    build4 = this.extensionBuilder_.build();
                }
                fileDescriptorProto.extension_ = build4;
                if ((i & 512) == 512) {
                    i2 |= 4;
                }
                fileDescriptorProto.options_ = this.optionsBuilder_ == null ? this.options_ : this.optionsBuilder_.build();
                if ((i & 1024) == 1024) {
                    i2 |= 8;
                }
                fileDescriptorProto.sourceCodeInfo_ = this.sourceCodeInfoBuilder_ == null ? this.sourceCodeInfo_ : this.sourceCodeInfoBuilder_.build();
                fileDescriptorProto.bitField0_ = i2;
                onBuilt();
                return fileDescriptorProto;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.name_ = "";
                this.bitField0_ &= -2;
                this.package_ = "";
                this.bitField0_ &= -3;
                this.dependency_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -5;
                this.publicDependency_ = Collections.emptyList();
                this.bitField0_ &= -9;
                this.weakDependency_ = Collections.emptyList();
                this.bitField0_ &= -17;
                if (this.messageTypeBuilder_ == null) {
                    this.messageType_ = Collections.emptyList();
                    this.bitField0_ &= -33;
                } else {
                    this.messageTypeBuilder_.clear();
                }
                if (this.enumTypeBuilder_ == null) {
                    this.enumType_ = Collections.emptyList();
                    this.bitField0_ &= -65;
                } else {
                    this.enumTypeBuilder_.clear();
                }
                if (this.serviceBuilder_ == null) {
                    this.service_ = Collections.emptyList();
                    this.bitField0_ &= -129;
                } else {
                    this.serviceBuilder_.clear();
                }
                if (this.extensionBuilder_ == null) {
                    this.extension_ = Collections.emptyList();
                    this.bitField0_ &= -257;
                } else {
                    this.extensionBuilder_.clear();
                }
                if (this.optionsBuilder_ == null) {
                    this.options_ = FileOptions.getDefaultInstance();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -513;
                if (this.sourceCodeInfoBuilder_ == null) {
                    this.sourceCodeInfo_ = SourceCodeInfo.getDefaultInstance();
                } else {
                    this.sourceCodeInfoBuilder_.clear();
                }
                this.bitField0_ &= -1025;
                return this;
            }

            public final Builder clearDependency() {
                this.dependency_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public final Builder clearEnumType() {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.clear();
                    return this;
                }
                this.enumType_ = Collections.emptyList();
                this.bitField0_ &= -65;
                onChanged();
                return this;
            }

            public final Builder clearExtension() {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.clear();
                    return this;
                }
                this.extension_ = Collections.emptyList();
                this.bitField0_ &= -257;
                onChanged();
                return this;
            }

            public final Builder clearMessageType() {
                if (this.messageTypeBuilder_ != null) {
                    this.messageTypeBuilder_.clear();
                    return this;
                }
                this.messageType_ = Collections.emptyList();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }

            public final Builder clearName() {
                this.bitField0_ &= -2;
                this.name_ = FileDescriptorProto.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public final Builder clearOptions() {
                if (this.optionsBuilder_ == null) {
                    this.options_ = FileOptions.getDefaultInstance();
                    onChanged();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -513;
                return this;
            }

            public final Builder clearPackage() {
                this.bitField0_ &= -3;
                this.package_ = FileDescriptorProto.getDefaultInstance().getPackage();
                onChanged();
                return this;
            }

            public final Builder clearPublicDependency() {
                this.publicDependency_ = Collections.emptyList();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public final Builder clearService() {
                if (this.serviceBuilder_ != null) {
                    this.serviceBuilder_.clear();
                    return this;
                }
                this.service_ = Collections.emptyList();
                this.bitField0_ &= -129;
                onChanged();
                return this;
            }

            public final Builder clearSourceCodeInfo() {
                if (this.sourceCodeInfoBuilder_ == null) {
                    this.sourceCodeInfo_ = SourceCodeInfo.getDefaultInstance();
                    onChanged();
                } else {
                    this.sourceCodeInfoBuilder_.clear();
                }
                this.bitField0_ &= -1025;
                return this;
            }

            public final Builder clearWeakDependency() {
                this.weakDependency_ = Collections.emptyList();
                this.bitField0_ &= -17;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final FileDescriptorProto getDefaultInstanceForType() {
                return FileDescriptorProto.getDefaultInstance();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final String getDependency(int i) {
                return this.dependency_.get(i);
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final int getDependencyCount() {
                return this.dependency_.size();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final List<String> getDependencyList() {
                return Collections.unmodifiableList(this.dependency_);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return FileDescriptorProto.getDescriptor();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final EnumDescriptorProto getEnumType(int i) {
                return this.enumTypeBuilder_ == null ? this.enumType_.get(i) : this.enumTypeBuilder_.getMessage(i);
            }

            public final EnumDescriptorProto.Builder getEnumTypeBuilder(int i) {
                return getEnumTypeFieldBuilder().getBuilder(i);
            }

            public final List<EnumDescriptorProto.Builder> getEnumTypeBuilderList() {
                return getEnumTypeFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final int getEnumTypeCount() {
                return this.enumTypeBuilder_ == null ? this.enumType_.size() : this.enumTypeBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final List<EnumDescriptorProto> getEnumTypeList() {
                return this.enumTypeBuilder_ == null ? Collections.unmodifiableList(this.enumType_) : this.enumTypeBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final EnumDescriptorProtoOrBuilder getEnumTypeOrBuilder(int i) {
                return (EnumDescriptorProtoOrBuilder) (this.enumTypeBuilder_ == null ? this.enumType_.get(i) : this.enumTypeBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final List<? extends EnumDescriptorProtoOrBuilder> getEnumTypeOrBuilderList() {
                return this.enumTypeBuilder_ != null ? this.enumTypeBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.enumType_);
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final FieldDescriptorProto getExtension(int i) {
                return this.extensionBuilder_ == null ? this.extension_.get(i) : this.extensionBuilder_.getMessage(i);
            }

            public final FieldDescriptorProto.Builder getExtensionBuilder(int i) {
                return getExtensionFieldBuilder().getBuilder(i);
            }

            public final List<FieldDescriptorProto.Builder> getExtensionBuilderList() {
                return getExtensionFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final int getExtensionCount() {
                return this.extensionBuilder_ == null ? this.extension_.size() : this.extensionBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final List<FieldDescriptorProto> getExtensionList() {
                return this.extensionBuilder_ == null ? Collections.unmodifiableList(this.extension_) : this.extensionBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final FieldDescriptorProtoOrBuilder getExtensionOrBuilder(int i) {
                return (FieldDescriptorProtoOrBuilder) (this.extensionBuilder_ == null ? this.extension_.get(i) : this.extensionBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final List<? extends FieldDescriptorProtoOrBuilder> getExtensionOrBuilderList() {
                return this.extensionBuilder_ != null ? this.extensionBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.extension_);
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final DescriptorProto getMessageType(int i) {
                return this.messageTypeBuilder_ == null ? this.messageType_.get(i) : this.messageTypeBuilder_.getMessage(i);
            }

            public final DescriptorProto.Builder getMessageTypeBuilder(int i) {
                return getMessageTypeFieldBuilder().getBuilder(i);
            }

            public final List<DescriptorProto.Builder> getMessageTypeBuilderList() {
                return getMessageTypeFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final int getMessageTypeCount() {
                return this.messageTypeBuilder_ == null ? this.messageType_.size() : this.messageTypeBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final List<DescriptorProto> getMessageTypeList() {
                return this.messageTypeBuilder_ == null ? Collections.unmodifiableList(this.messageType_) : this.messageTypeBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final DescriptorProtoOrBuilder getMessageTypeOrBuilder(int i) {
                return (DescriptorProtoOrBuilder) (this.messageTypeBuilder_ == null ? this.messageType_.get(i) : this.messageTypeBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final List<? extends DescriptorProtoOrBuilder> getMessageTypeOrBuilderList() {
                return this.messageTypeBuilder_ != null ? this.messageTypeBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.messageType_);
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final FileOptions getOptions() {
                return this.optionsBuilder_ == null ? this.options_ : this.optionsBuilder_.getMessage();
            }

            public final FileOptions.Builder getOptionsBuilder() {
                this.bitField0_ |= 512;
                onChanged();
                return getOptionsFieldBuilder().getBuilder();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final FileOptionsOrBuilder getOptionsOrBuilder() {
                return this.optionsBuilder_ != null ? this.optionsBuilder_.getMessageOrBuilder() : this.options_;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final String getPackage() {
                Object obj = this.package_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.package_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final int getPublicDependency(int i) {
                return this.publicDependency_.get(i).intValue();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final int getPublicDependencyCount() {
                return this.publicDependency_.size();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final List<Integer> getPublicDependencyList() {
                return Collections.unmodifiableList(this.publicDependency_);
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final ServiceDescriptorProto getService(int i) {
                return this.serviceBuilder_ == null ? this.service_.get(i) : this.serviceBuilder_.getMessage(i);
            }

            public final ServiceDescriptorProto.Builder getServiceBuilder(int i) {
                return getServiceFieldBuilder().getBuilder(i);
            }

            public final List<ServiceDescriptorProto.Builder> getServiceBuilderList() {
                return getServiceFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final int getServiceCount() {
                return this.serviceBuilder_ == null ? this.service_.size() : this.serviceBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final List<ServiceDescriptorProto> getServiceList() {
                return this.serviceBuilder_ == null ? Collections.unmodifiableList(this.service_) : this.serviceBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final ServiceDescriptorProtoOrBuilder getServiceOrBuilder(int i) {
                return (ServiceDescriptorProtoOrBuilder) (this.serviceBuilder_ == null ? this.service_.get(i) : this.serviceBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final List<? extends ServiceDescriptorProtoOrBuilder> getServiceOrBuilderList() {
                return this.serviceBuilder_ != null ? this.serviceBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.service_);
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final SourceCodeInfo getSourceCodeInfo() {
                return this.sourceCodeInfoBuilder_ == null ? this.sourceCodeInfo_ : this.sourceCodeInfoBuilder_.getMessage();
            }

            public final SourceCodeInfo.Builder getSourceCodeInfoBuilder() {
                this.bitField0_ |= 1024;
                onChanged();
                return getSourceCodeInfoFieldBuilder().getBuilder();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final SourceCodeInfoOrBuilder getSourceCodeInfoOrBuilder() {
                return this.sourceCodeInfoBuilder_ != null ? this.sourceCodeInfoBuilder_.getMessageOrBuilder() : this.sourceCodeInfo_;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final int getWeakDependency(int i) {
                return this.weakDependency_.get(i).intValue();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final int getWeakDependencyCount() {
                return this.weakDependency_.size();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final List<Integer> getWeakDependencyList() {
                return Collections.unmodifiableList(this.weakDependency_);
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final boolean hasName() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final boolean hasOptions() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final boolean hasPackage() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
            public final boolean hasSourceCodeInfo() {
                return (this.bitField0_ & 1024) == 1024;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.f7913x4b52780c;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                for (int i = 0; i < getMessageTypeCount(); i++) {
                    if (!getMessageType(i).isInitialized()) {
                        return false;
                    }
                }
                for (int i2 = 0; i2 < getEnumTypeCount(); i2++) {
                    if (!getEnumType(i2).isInitialized()) {
                        return false;
                    }
                }
                for (int i3 = 0; i3 < getServiceCount(); i3++) {
                    if (!getService(i3).isInitialized()) {
                        return false;
                    }
                }
                for (int i4 = 0; i4 < getExtensionCount(); i4++) {
                    if (!getExtension(i4).isInitialized()) {
                        return false;
                    }
                }
                return !hasOptions() || getOptions().isInitialized();
            }

            /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000c. Please report as an issue. */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                List<Integer> list;
                int pushLimit;
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                while (true) {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            break;
                        case 10:
                            this.bitField0_ |= 1;
                            this.name_ = codedInputStream.readBytes();
                        case 18:
                            this.bitField0_ |= 2;
                            this.package_ = codedInputStream.readBytes();
                        case 26:
                            ensureDependencyIsMutable();
                            this.dependency_.add(codedInputStream.readBytes());
                        case 34:
                            DescriptorProto.Builder newBuilder2 = DescriptorProto.newBuilder();
                            codedInputStream.readMessage(newBuilder2, extensionRegistryLite);
                            addMessageType(newBuilder2.buildPartial());
                        case 42:
                            EnumDescriptorProto.Builder newBuilder3 = EnumDescriptorProto.newBuilder();
                            codedInputStream.readMessage(newBuilder3, extensionRegistryLite);
                            addEnumType(newBuilder3.buildPartial());
                        case 50:
                            ServiceDescriptorProto.Builder newBuilder4 = ServiceDescriptorProto.newBuilder();
                            codedInputStream.readMessage(newBuilder4, extensionRegistryLite);
                            addService(newBuilder4.buildPartial());
                        case 58:
                            FieldDescriptorProto.Builder newBuilder5 = FieldDescriptorProto.newBuilder();
                            codedInputStream.readMessage(newBuilder5, extensionRegistryLite);
                            addExtension(newBuilder5.buildPartial());
                        case 66:
                            FileOptions.Builder newBuilder6 = FileOptions.newBuilder();
                            if (hasOptions()) {
                                newBuilder6.mergeFrom(getOptions());
                            }
                            codedInputStream.readMessage(newBuilder6, extensionRegistryLite);
                            setOptions(newBuilder6.buildPartial());
                        case 74:
                            SourceCodeInfo.Builder newBuilder7 = SourceCodeInfo.newBuilder();
                            if (hasSourceCodeInfo()) {
                                newBuilder7.mergeFrom(getSourceCodeInfo());
                            }
                            codedInputStream.readMessage(newBuilder7, extensionRegistryLite);
                            setSourceCodeInfo(newBuilder7.buildPartial());
                        case 80:
                            ensurePublicDependencyIsMutable();
                            list = this.publicDependency_;
                            list.add(Integer.valueOf(codedInputStream.readInt32()));
                        case 82:
                            pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                addPublicDependency(codedInputStream.readInt32());
                            }
                            codedInputStream.popLimit(pushLimit);
                        case 88:
                            ensureWeakDependencyIsMutable();
                            list = this.weakDependency_;
                            list.add(Integer.valueOf(codedInputStream.readInt32()));
                        case 90:
                            pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                addWeakDependency(codedInputStream.readInt32());
                            }
                            codedInputStream.popLimit(pushLimit);
                        default:
                            if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                break;
                            }
                    }
                }
                setUnknownFields(newBuilder.build());
                onChanged();
                return this;
            }

            public final Builder mergeFrom(FileDescriptorProto fileDescriptorProto) {
                if (fileDescriptorProto == FileDescriptorProto.getDefaultInstance()) {
                    return this;
                }
                if (fileDescriptorProto.hasName()) {
                    setName(fileDescriptorProto.getName());
                }
                if (fileDescriptorProto.hasPackage()) {
                    setPackage(fileDescriptorProto.getPackage());
                }
                if (!fileDescriptorProto.dependency_.isEmpty()) {
                    if (this.dependency_.isEmpty()) {
                        this.dependency_ = fileDescriptorProto.dependency_;
                        this.bitField0_ &= -5;
                    } else {
                        ensureDependencyIsMutable();
                        this.dependency_.addAll(fileDescriptorProto.dependency_);
                    }
                    onChanged();
                }
                if (!fileDescriptorProto.publicDependency_.isEmpty()) {
                    if (this.publicDependency_.isEmpty()) {
                        this.publicDependency_ = fileDescriptorProto.publicDependency_;
                        this.bitField0_ &= -9;
                    } else {
                        ensurePublicDependencyIsMutable();
                        this.publicDependency_.addAll(fileDescriptorProto.publicDependency_);
                    }
                    onChanged();
                }
                if (!fileDescriptorProto.weakDependency_.isEmpty()) {
                    if (this.weakDependency_.isEmpty()) {
                        this.weakDependency_ = fileDescriptorProto.weakDependency_;
                        this.bitField0_ &= -17;
                    } else {
                        ensureWeakDependencyIsMutable();
                        this.weakDependency_.addAll(fileDescriptorProto.weakDependency_);
                    }
                    onChanged();
                }
                if (this.messageTypeBuilder_ == null) {
                    if (!fileDescriptorProto.messageType_.isEmpty()) {
                        if (this.messageType_.isEmpty()) {
                            this.messageType_ = fileDescriptorProto.messageType_;
                            this.bitField0_ &= -33;
                        } else {
                            ensureMessageTypeIsMutable();
                            this.messageType_.addAll(fileDescriptorProto.messageType_);
                        }
                        onChanged();
                    }
                } else if (!fileDescriptorProto.messageType_.isEmpty()) {
                    if (this.messageTypeBuilder_.isEmpty()) {
                        this.messageTypeBuilder_.dispose();
                        this.messageTypeBuilder_ = null;
                        this.messageType_ = fileDescriptorProto.messageType_;
                        this.bitField0_ &= -33;
                        this.messageTypeBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getMessageTypeFieldBuilder() : null;
                    } else {
                        this.messageTypeBuilder_.addAllMessages(fileDescriptorProto.messageType_);
                    }
                }
                if (this.enumTypeBuilder_ == null) {
                    if (!fileDescriptorProto.enumType_.isEmpty()) {
                        if (this.enumType_.isEmpty()) {
                            this.enumType_ = fileDescriptorProto.enumType_;
                            this.bitField0_ &= -65;
                        } else {
                            ensureEnumTypeIsMutable();
                            this.enumType_.addAll(fileDescriptorProto.enumType_);
                        }
                        onChanged();
                    }
                } else if (!fileDescriptorProto.enumType_.isEmpty()) {
                    if (this.enumTypeBuilder_.isEmpty()) {
                        this.enumTypeBuilder_.dispose();
                        this.enumTypeBuilder_ = null;
                        this.enumType_ = fileDescriptorProto.enumType_;
                        this.bitField0_ &= -65;
                        this.enumTypeBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getEnumTypeFieldBuilder() : null;
                    } else {
                        this.enumTypeBuilder_.addAllMessages(fileDescriptorProto.enumType_);
                    }
                }
                if (this.serviceBuilder_ == null) {
                    if (!fileDescriptorProto.service_.isEmpty()) {
                        if (this.service_.isEmpty()) {
                            this.service_ = fileDescriptorProto.service_;
                            this.bitField0_ &= -129;
                        } else {
                            ensureServiceIsMutable();
                            this.service_.addAll(fileDescriptorProto.service_);
                        }
                        onChanged();
                    }
                } else if (!fileDescriptorProto.service_.isEmpty()) {
                    if (this.serviceBuilder_.isEmpty()) {
                        this.serviceBuilder_.dispose();
                        this.serviceBuilder_ = null;
                        this.service_ = fileDescriptorProto.service_;
                        this.bitField0_ &= -129;
                        this.serviceBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getServiceFieldBuilder() : null;
                    } else {
                        this.serviceBuilder_.addAllMessages(fileDescriptorProto.service_);
                    }
                }
                if (this.extensionBuilder_ == null) {
                    if (!fileDescriptorProto.extension_.isEmpty()) {
                        if (this.extension_.isEmpty()) {
                            this.extension_ = fileDescriptorProto.extension_;
                            this.bitField0_ &= -257;
                        } else {
                            ensureExtensionIsMutable();
                            this.extension_.addAll(fileDescriptorProto.extension_);
                        }
                        onChanged();
                    }
                } else if (!fileDescriptorProto.extension_.isEmpty()) {
                    if (this.extensionBuilder_.isEmpty()) {
                        this.extensionBuilder_.dispose();
                        this.extensionBuilder_ = null;
                        this.extension_ = fileDescriptorProto.extension_;
                        this.bitField0_ &= -257;
                        this.extensionBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getExtensionFieldBuilder() : null;
                    } else {
                        this.extensionBuilder_.addAllMessages(fileDescriptorProto.extension_);
                    }
                }
                if (fileDescriptorProto.hasOptions()) {
                    mergeOptions(fileDescriptorProto.getOptions());
                }
                if (fileDescriptorProto.hasSourceCodeInfo()) {
                    mergeSourceCodeInfo(fileDescriptorProto.getSourceCodeInfo());
                }
                mergeUnknownFields(fileDescriptorProto.getUnknownFields());
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof FileDescriptorProto) {
                    return mergeFrom((FileDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeOptions(FileOptions fileOptions) {
                if (this.optionsBuilder_ == null) {
                    if ((this.bitField0_ & 512) == 512 && this.options_ != FileOptions.getDefaultInstance()) {
                        fileOptions = FileOptions.newBuilder(this.options_).mergeFrom(fileOptions).buildPartial();
                    }
                    this.options_ = fileOptions;
                    onChanged();
                } else {
                    this.optionsBuilder_.mergeFrom(fileOptions);
                }
                this.bitField0_ |= 512;
                return this;
            }

            public final Builder mergeSourceCodeInfo(SourceCodeInfo sourceCodeInfo) {
                if (this.sourceCodeInfoBuilder_ == null) {
                    if ((this.bitField0_ & 1024) == 1024 && this.sourceCodeInfo_ != SourceCodeInfo.getDefaultInstance()) {
                        sourceCodeInfo = SourceCodeInfo.newBuilder(this.sourceCodeInfo_).mergeFrom(sourceCodeInfo).buildPartial();
                    }
                    this.sourceCodeInfo_ = sourceCodeInfo;
                    onChanged();
                } else {
                    this.sourceCodeInfoBuilder_.mergeFrom(sourceCodeInfo);
                }
                this.bitField0_ |= 1024;
                return this;
            }

            public final Builder removeEnumType(int i) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.remove(i);
                    return this;
                }
                ensureEnumTypeIsMutable();
                this.enumType_.remove(i);
                onChanged();
                return this;
            }

            public final Builder removeExtension(int i) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.remove(i);
                    return this;
                }
                ensureExtensionIsMutable();
                this.extension_.remove(i);
                onChanged();
                return this;
            }

            public final Builder removeMessageType(int i) {
                if (this.messageTypeBuilder_ != null) {
                    this.messageTypeBuilder_.remove(i);
                    return this;
                }
                ensureMessageTypeIsMutable();
                this.messageType_.remove(i);
                onChanged();
                return this;
            }

            public final Builder removeService(int i) {
                if (this.serviceBuilder_ != null) {
                    this.serviceBuilder_.remove(i);
                    return this;
                }
                ensureServiceIsMutable();
                this.service_.remove(i);
                onChanged();
                return this;
            }

            public final Builder setDependency(int i, String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                ensureDependencyIsMutable();
                this.dependency_.set(i, str);
                onChanged();
                return this;
            }

            public final Builder setEnumType(int i, EnumDescriptorProto.Builder builder) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureEnumTypeIsMutable();
                this.enumType_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setEnumType(int i, EnumDescriptorProto enumDescriptorProto) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.setMessage(i, enumDescriptorProto);
                    return this;
                }
                if (enumDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureEnumTypeIsMutable();
                this.enumType_.set(i, enumDescriptorProto);
                onChanged();
                return this;
            }

            public final Builder setExtension(int i, FieldDescriptorProto.Builder builder) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureExtensionIsMutable();
                this.extension_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setExtension(int i, FieldDescriptorProto fieldDescriptorProto) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.setMessage(i, fieldDescriptorProto);
                    return this;
                }
                if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureExtensionIsMutable();
                this.extension_.set(i, fieldDescriptorProto);
                onChanged();
                return this;
            }

            public final Builder setMessageType(int i, DescriptorProto.Builder builder) {
                if (this.messageTypeBuilder_ != null) {
                    this.messageTypeBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureMessageTypeIsMutable();
                this.messageType_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setMessageType(int i, DescriptorProto descriptorProto) {
                if (this.messageTypeBuilder_ != null) {
                    this.messageTypeBuilder_.setMessage(i, descriptorProto);
                    return this;
                }
                if (descriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureMessageTypeIsMutable();
                this.messageType_.set(i, descriptorProto);
                onChanged();
                return this;
            }

            public final Builder setName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = str;
                onChanged();
                return this;
            }

            final void setName(ByteString byteString) {
                this.bitField0_ |= 1;
                this.name_ = byteString;
                onChanged();
            }

            public final Builder setOptions(FileOptions.Builder builder) {
                if (this.optionsBuilder_ == null) {
                    this.options_ = builder.build();
                    onChanged();
                } else {
                    this.optionsBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 512;
                return this;
            }

            public final Builder setOptions(FileOptions fileOptions) {
                if (this.optionsBuilder_ != null) {
                    this.optionsBuilder_.setMessage(fileOptions);
                } else {
                    if (fileOptions == null) {
                        throw new NullPointerException();
                    }
                    this.options_ = fileOptions;
                    onChanged();
                }
                this.bitField0_ |= 512;
                return this;
            }

            public final Builder setPackage(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.package_ = str;
                onChanged();
                return this;
            }

            final void setPackage(ByteString byteString) {
                this.bitField0_ |= 2;
                this.package_ = byteString;
                onChanged();
            }

            public final Builder setPublicDependency(int i, int i2) {
                ensurePublicDependencyIsMutable();
                this.publicDependency_.set(i, Integer.valueOf(i2));
                onChanged();
                return this;
            }

            public final Builder setService(int i, ServiceDescriptorProto.Builder builder) {
                if (this.serviceBuilder_ != null) {
                    this.serviceBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureServiceIsMutable();
                this.service_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setService(int i, ServiceDescriptorProto serviceDescriptorProto) {
                if (this.serviceBuilder_ != null) {
                    this.serviceBuilder_.setMessage(i, serviceDescriptorProto);
                    return this;
                }
                if (serviceDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureServiceIsMutable();
                this.service_.set(i, serviceDescriptorProto);
                onChanged();
                return this;
            }

            public final Builder setSourceCodeInfo(SourceCodeInfo.Builder builder) {
                if (this.sourceCodeInfoBuilder_ == null) {
                    this.sourceCodeInfo_ = builder.build();
                    onChanged();
                } else {
                    this.sourceCodeInfoBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 1024;
                return this;
            }

            public final Builder setSourceCodeInfo(SourceCodeInfo sourceCodeInfo) {
                if (this.sourceCodeInfoBuilder_ != null) {
                    this.sourceCodeInfoBuilder_.setMessage(sourceCodeInfo);
                } else {
                    if (sourceCodeInfo == null) {
                        throw new NullPointerException();
                    }
                    this.sourceCodeInfo_ = sourceCodeInfo;
                    onChanged();
                }
                this.bitField0_ |= 1024;
                return this;
            }

            public final Builder setWeakDependency(int i, int i2) {
                ensureWeakDependencyIsMutable();
                this.weakDependency_.set(i, Integer.valueOf(i2));
                onChanged();
                return this;
            }
        }

        static {
            FileDescriptorProto fileDescriptorProto = new FileDescriptorProto(true);
            defaultInstance = fileDescriptorProto;
            fileDescriptorProto.initFields();
        }

        private FileDescriptorProto(Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        /* synthetic */ FileDescriptorProto(Builder builder, FileDescriptorProto fileDescriptorProto) {
            this(builder);
        }

        private FileDescriptorProto(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        public static FileDescriptorProto getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_FileDescriptorProto_descriptor;
        }

        private ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private ByteString getPackageBytes() {
            Object obj = this.package_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.package_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.name_ = "";
            this.package_ = "";
            this.dependency_ = LazyStringArrayList.EMPTY;
            this.publicDependency_ = Collections.emptyList();
            this.weakDependency_ = Collections.emptyList();
            this.messageType_ = Collections.emptyList();
            this.enumType_ = Collections.emptyList();
            this.service_ = Collections.emptyList();
            this.extension_ = Collections.emptyList();
            this.options_ = FileOptions.getDefaultInstance();
            this.sourceCodeInfo_ = SourceCodeInfo.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.access$18();
        }

        public static Builder newBuilder(FileDescriptorProto fileDescriptorProto) {
            return newBuilder().mergeFrom(fileDescriptorProto);
        }

        public static FileDescriptorProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        public static FileDescriptorProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileDescriptorProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileDescriptorProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileDescriptorProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
        }

        public static FileDescriptorProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileDescriptorProto parseFrom(InputStream inputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileDescriptorProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileDescriptorProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileDescriptorProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final FileDescriptorProto getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final String getDependency(int i) {
            return this.dependency_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final int getDependencyCount() {
            return this.dependency_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final List<String> getDependencyList() {
            return this.dependency_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final EnumDescriptorProto getEnumType(int i) {
            return this.enumType_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final int getEnumTypeCount() {
            return this.enumType_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final List<EnumDescriptorProto> getEnumTypeList() {
            return this.enumType_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final EnumDescriptorProtoOrBuilder getEnumTypeOrBuilder(int i) {
            return this.enumType_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final List<? extends EnumDescriptorProtoOrBuilder> getEnumTypeOrBuilderList() {
            return this.enumType_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final FieldDescriptorProto getExtension(int i) {
            return this.extension_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final int getExtensionCount() {
            return this.extension_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final List<FieldDescriptorProto> getExtensionList() {
            return this.extension_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final FieldDescriptorProtoOrBuilder getExtensionOrBuilder(int i) {
            return this.extension_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final List<? extends FieldDescriptorProtoOrBuilder> getExtensionOrBuilderList() {
            return this.extension_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final DescriptorProto getMessageType(int i) {
            return this.messageType_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final int getMessageTypeCount() {
            return this.messageType_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final List<DescriptorProto> getMessageTypeList() {
            return this.messageType_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final DescriptorProtoOrBuilder getMessageTypeOrBuilder(int i) {
            return this.messageType_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final List<? extends DescriptorProtoOrBuilder> getMessageTypeOrBuilderList() {
            return this.messageType_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.name_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final FileOptions getOptions() {
            return this.options_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final FileOptionsOrBuilder getOptionsOrBuilder() {
            return this.options_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final String getPackage() {
            Object obj = this.package_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.package_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final int getPublicDependency(int i) {
            return this.publicDependency_.get(i).intValue();
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final int getPublicDependencyCount() {
            return this.publicDependency_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final List<Integer> getPublicDependencyList() {
            return this.publicDependency_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeBytesSize = (this.bitField0_ & 1) == 1 ? CodedOutputStream.computeBytesSize(1, getNameBytes()) + 0 : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeBytesSize += CodedOutputStream.computeBytesSize(2, getPackageBytes());
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.dependency_.size(); i3++) {
                i2 += CodedOutputStream.computeBytesSizeNoTag(this.dependency_.getByteString(i3));
            }
            int size = computeBytesSize + i2 + (getDependencyList().size() * 1);
            for (int i4 = 0; i4 < this.messageType_.size(); i4++) {
                size += CodedOutputStream.computeMessageSize(4, this.messageType_.get(i4));
            }
            for (int i5 = 0; i5 < this.enumType_.size(); i5++) {
                size += CodedOutputStream.computeMessageSize(5, this.enumType_.get(i5));
            }
            for (int i6 = 0; i6 < this.service_.size(); i6++) {
                size += CodedOutputStream.computeMessageSize(6, this.service_.get(i6));
            }
            for (int i7 = 0; i7 < this.extension_.size(); i7++) {
                size += CodedOutputStream.computeMessageSize(7, this.extension_.get(i7));
            }
            if ((this.bitField0_ & 4) == 4) {
                size += CodedOutputStream.computeMessageSize(8, this.options_);
            }
            if ((this.bitField0_ & 8) == 8) {
                size += CodedOutputStream.computeMessageSize(9, this.sourceCodeInfo_);
            }
            int i8 = size;
            int i9 = 0;
            for (int i10 = 0; i10 < this.publicDependency_.size(); i10++) {
                i9 += CodedOutputStream.computeInt32SizeNoTag(this.publicDependency_.get(i10).intValue());
            }
            int size2 = i8 + i9 + (getPublicDependencyList().size() * 1);
            int i11 = 0;
            for (int i12 = 0; i12 < this.weakDependency_.size(); i12++) {
                i11 += CodedOutputStream.computeInt32SizeNoTag(this.weakDependency_.get(i12).intValue());
            }
            int size3 = size2 + i11 + (getWeakDependencyList().size() * 1) + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = size3;
            return size3;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final ServiceDescriptorProto getService(int i) {
            return this.service_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final int getServiceCount() {
            return this.service_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final List<ServiceDescriptorProto> getServiceList() {
            return this.service_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final ServiceDescriptorProtoOrBuilder getServiceOrBuilder(int i) {
            return this.service_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final List<? extends ServiceDescriptorProtoOrBuilder> getServiceOrBuilderList() {
            return this.service_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final SourceCodeInfo getSourceCodeInfo() {
            return this.sourceCodeInfo_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final SourceCodeInfoOrBuilder getSourceCodeInfoOrBuilder() {
            return this.sourceCodeInfo_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final int getWeakDependency(int i) {
            return this.weakDependency_.get(i).intValue();
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final int getWeakDependencyCount() {
            return this.weakDependency_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final List<Integer> getWeakDependencyList() {
            return this.weakDependency_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final boolean hasName() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final boolean hasOptions() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final boolean hasPackage() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorProtoOrBuilder
        public final boolean hasSourceCodeInfo() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.f7913x4b52780c;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            for (int i = 0; i < getMessageTypeCount(); i++) {
                if (!getMessageType(i).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            for (int i2 = 0; i2 < getEnumTypeCount(); i2++) {
                if (!getEnumType(i2).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            for (int i3 = 0; i3 < getServiceCount(); i3++) {
                if (!getService(i3).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            for (int i4 = 0; i4 < getExtensionCount(); i4++) {
                if (!getExtension(i4).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            if (!hasOptions() || getOptions().isInitialized()) {
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
            return new Builder(builderParent, null);
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
                codedOutputStream.writeBytes(1, getNameBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getPackageBytes());
            }
            for (int i = 0; i < this.dependency_.size(); i++) {
                codedOutputStream.writeBytes(3, this.dependency_.getByteString(i));
            }
            for (int i2 = 0; i2 < this.messageType_.size(); i2++) {
                codedOutputStream.writeMessage(4, this.messageType_.get(i2));
            }
            for (int i3 = 0; i3 < this.enumType_.size(); i3++) {
                codedOutputStream.writeMessage(5, this.enumType_.get(i3));
            }
            for (int i4 = 0; i4 < this.service_.size(); i4++) {
                codedOutputStream.writeMessage(6, this.service_.get(i4));
            }
            for (int i5 = 0; i5 < this.extension_.size(); i5++) {
                codedOutputStream.writeMessage(7, this.extension_.get(i5));
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeMessage(8, this.options_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeMessage(9, this.sourceCodeInfo_);
            }
            for (int i6 = 0; i6 < this.publicDependency_.size(); i6++) {
                codedOutputStream.writeInt32(10, this.publicDependency_.get(i6).intValue());
            }
            for (int i7 = 0; i7 < this.weakDependency_.size(); i7++) {
                codedOutputStream.writeInt32(11, this.weakDependency_.get(i7).intValue());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface FileDescriptorProtoOrBuilder extends MessageOrBuilder {
        String getDependency(int i);

        int getDependencyCount();

        List<String> getDependencyList();

        EnumDescriptorProto getEnumType(int i);

        int getEnumTypeCount();

        List<EnumDescriptorProto> getEnumTypeList();

        EnumDescriptorProtoOrBuilder getEnumTypeOrBuilder(int i);

        List<? extends EnumDescriptorProtoOrBuilder> getEnumTypeOrBuilderList();

        FieldDescriptorProto getExtension(int i);

        int getExtensionCount();

        List<FieldDescriptorProto> getExtensionList();

        FieldDescriptorProtoOrBuilder getExtensionOrBuilder(int i);

        List<? extends FieldDescriptorProtoOrBuilder> getExtensionOrBuilderList();

        DescriptorProto getMessageType(int i);

        int getMessageTypeCount();

        List<DescriptorProto> getMessageTypeList();

        DescriptorProtoOrBuilder getMessageTypeOrBuilder(int i);

        List<? extends DescriptorProtoOrBuilder> getMessageTypeOrBuilderList();

        String getName();

        FileOptions getOptions();

        FileOptionsOrBuilder getOptionsOrBuilder();

        String getPackage();

        int getPublicDependency(int i);

        int getPublicDependencyCount();

        List<Integer> getPublicDependencyList();

        ServiceDescriptorProto getService(int i);

        int getServiceCount();

        List<ServiceDescriptorProto> getServiceList();

        ServiceDescriptorProtoOrBuilder getServiceOrBuilder(int i);

        List<? extends ServiceDescriptorProtoOrBuilder> getServiceOrBuilderList();

        SourceCodeInfo getSourceCodeInfo();

        SourceCodeInfoOrBuilder getSourceCodeInfoOrBuilder();

        int getWeakDependency(int i);

        int getWeakDependencyCount();

        List<Integer> getWeakDependencyList();

        boolean hasName();

        boolean hasOptions();

        boolean hasPackage();

        boolean hasSourceCodeInfo();
    }

    /* loaded from: classes.dex */
    public static final class FileDescriptorSet extends GeneratedMessage implements FileDescriptorSetOrBuilder {
        public static final int FILE_FIELD_NUMBER = 1;
        private static final FileDescriptorSet defaultInstance;
        private static final long serialVersionUID = 0;
        private List<FileDescriptorProto> file_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements FileDescriptorSetOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<FileDescriptorProto, FileDescriptorProto.Builder, FileDescriptorProtoOrBuilder> fileBuilder_;
            private List<FileDescriptorProto> file_;

            private Builder() {
                this.file_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.file_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                this(builderParent);
            }

            static /* synthetic */ Builder access$18() {
                return create();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public FileDescriptorSet buildParsed() throws InvalidProtocolBufferException {
                FileDescriptorSet buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
            }

            private static Builder create() {
                return new Builder();
            }

            private void ensureFileIsMutable() {
                if ((this.bitField0_ & 1) != 1) {
                    this.file_ = new ArrayList(this.file_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_FileDescriptorSet_descriptor;
            }

            private RepeatedFieldBuilder<FileDescriptorProto, FileDescriptorProto.Builder, FileDescriptorProtoOrBuilder> getFileFieldBuilder() {
                if (this.fileBuilder_ == null) {
                    this.fileBuilder_ = new RepeatedFieldBuilder<>(this.file_, (this.bitField0_ & 1) == 1, getParentForChildren(), isClean());
                    this.file_ = null;
                }
                return this.fileBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getFileFieldBuilder();
                }
            }

            public final Builder addAllFile(Iterable<? extends FileDescriptorProto> iterable) {
                if (this.fileBuilder_ != null) {
                    this.fileBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureFileIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.file_);
                onChanged();
                return this;
            }

            public final Builder addFile(int i, FileDescriptorProto.Builder builder) {
                if (this.fileBuilder_ != null) {
                    this.fileBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureFileIsMutable();
                this.file_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addFile(int i, FileDescriptorProto fileDescriptorProto) {
                if (this.fileBuilder_ != null) {
                    this.fileBuilder_.addMessage(i, fileDescriptorProto);
                    return this;
                }
                if (fileDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureFileIsMutable();
                this.file_.add(i, fileDescriptorProto);
                onChanged();
                return this;
            }

            public final Builder addFile(FileDescriptorProto.Builder builder) {
                if (this.fileBuilder_ != null) {
                    this.fileBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureFileIsMutable();
                this.file_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addFile(FileDescriptorProto fileDescriptorProto) {
                if (this.fileBuilder_ != null) {
                    this.fileBuilder_.addMessage(fileDescriptorProto);
                    return this;
                }
                if (fileDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureFileIsMutable();
                this.file_.add(fileDescriptorProto);
                onChanged();
                return this;
            }

            public final FileDescriptorProto.Builder addFileBuilder() {
                return getFileFieldBuilder().addBuilder(FileDescriptorProto.getDefaultInstance());
            }

            public final FileDescriptorProto.Builder addFileBuilder(int i) {
                return getFileFieldBuilder().addBuilder(i, FileDescriptorProto.getDefaultInstance());
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final FileDescriptorSet build() {
                FileDescriptorSet buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final FileDescriptorSet buildPartial() {
                List<FileDescriptorProto> build;
                FileDescriptorSet fileDescriptorSet = new FileDescriptorSet(this, null);
                if (this.fileBuilder_ == null) {
                    if ((this.bitField0_ & 1) == 1) {
                        this.file_ = Collections.unmodifiableList(this.file_);
                        this.bitField0_ &= -2;
                    }
                    build = this.file_;
                } else {
                    build = this.fileBuilder_.build();
                }
                fileDescriptorSet.file_ = build;
                onBuilt();
                return fileDescriptorSet;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                if (this.fileBuilder_ != null) {
                    this.fileBuilder_.clear();
                    return this;
                }
                this.file_ = Collections.emptyList();
                this.bitField0_ &= -2;
                return this;
            }

            public final Builder clearFile() {
                if (this.fileBuilder_ != null) {
                    this.fileBuilder_.clear();
                    return this;
                }
                this.file_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final FileDescriptorSet getDefaultInstanceForType() {
                return FileDescriptorSet.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return FileDescriptorSet.getDescriptor();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorSetOrBuilder
            public final FileDescriptorProto getFile(int i) {
                return this.fileBuilder_ == null ? this.file_.get(i) : this.fileBuilder_.getMessage(i);
            }

            public final FileDescriptorProto.Builder getFileBuilder(int i) {
                return getFileFieldBuilder().getBuilder(i);
            }

            public final List<FileDescriptorProto.Builder> getFileBuilderList() {
                return getFileFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorSetOrBuilder
            public final int getFileCount() {
                return this.fileBuilder_ == null ? this.file_.size() : this.fileBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorSetOrBuilder
            public final List<FileDescriptorProto> getFileList() {
                return this.fileBuilder_ == null ? Collections.unmodifiableList(this.file_) : this.fileBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorSetOrBuilder
            public final FileDescriptorProtoOrBuilder getFileOrBuilder(int i) {
                return (FileDescriptorProtoOrBuilder) (this.fileBuilder_ == null ? this.file_.get(i) : this.fileBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.FileDescriptorSetOrBuilder
            public final List<? extends FileDescriptorProtoOrBuilder> getFileOrBuilderList() {
                return this.fileBuilder_ != null ? this.fileBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.file_);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.f7914x15a6a952;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                for (int i = 0; i < getFileCount(); i++) {
                    if (!getFile(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                while (true) {
                    int readTag = codedInputStream.readTag();
                    if (readTag == 0) {
                        break;
                    }
                    if (readTag == 10) {
                        FileDescriptorProto.Builder newBuilder2 = FileDescriptorProto.newBuilder();
                        codedInputStream.readMessage(newBuilder2, extensionRegistryLite);
                        addFile(newBuilder2.buildPartial());
                    } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        break;
                    }
                }
                setUnknownFields(newBuilder.build());
                onChanged();
                return this;
            }

            public final Builder mergeFrom(FileDescriptorSet fileDescriptorSet) {
                if (fileDescriptorSet == FileDescriptorSet.getDefaultInstance()) {
                    return this;
                }
                if (this.fileBuilder_ == null) {
                    if (!fileDescriptorSet.file_.isEmpty()) {
                        if (this.file_.isEmpty()) {
                            this.file_ = fileDescriptorSet.file_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureFileIsMutable();
                            this.file_.addAll(fileDescriptorSet.file_);
                        }
                        onChanged();
                    }
                } else if (!fileDescriptorSet.file_.isEmpty()) {
                    if (this.fileBuilder_.isEmpty()) {
                        this.fileBuilder_.dispose();
                        this.fileBuilder_ = null;
                        this.file_ = fileDescriptorSet.file_;
                        this.bitField0_ &= -2;
                        this.fileBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getFileFieldBuilder() : null;
                    } else {
                        this.fileBuilder_.addAllMessages(fileDescriptorSet.file_);
                    }
                }
                mergeUnknownFields(fileDescriptorSet.getUnknownFields());
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof FileDescriptorSet) {
                    return mergeFrom((FileDescriptorSet) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder removeFile(int i) {
                if (this.fileBuilder_ != null) {
                    this.fileBuilder_.remove(i);
                    return this;
                }
                ensureFileIsMutable();
                this.file_.remove(i);
                onChanged();
                return this;
            }

            public final Builder setFile(int i, FileDescriptorProto.Builder builder) {
                if (this.fileBuilder_ != null) {
                    this.fileBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureFileIsMutable();
                this.file_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setFile(int i, FileDescriptorProto fileDescriptorProto) {
                if (this.fileBuilder_ != null) {
                    this.fileBuilder_.setMessage(i, fileDescriptorProto);
                    return this;
                }
                if (fileDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureFileIsMutable();
                this.file_.set(i, fileDescriptorProto);
                onChanged();
                return this;
            }
        }

        static {
            FileDescriptorSet fileDescriptorSet = new FileDescriptorSet(true);
            defaultInstance = fileDescriptorSet;
            fileDescriptorSet.initFields();
        }

        private FileDescriptorSet(Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        /* synthetic */ FileDescriptorSet(Builder builder, FileDescriptorSet fileDescriptorSet) {
            this(builder);
        }

        private FileDescriptorSet(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        public static FileDescriptorSet getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_FileDescriptorSet_descriptor;
        }

        private void initFields() {
            this.file_ = Collections.emptyList();
        }

        public static Builder newBuilder() {
            return Builder.access$18();
        }

        public static Builder newBuilder(FileDescriptorSet fileDescriptorSet) {
            return newBuilder().mergeFrom(fileDescriptorSet);
        }

        public static FileDescriptorSet parseDelimitedFrom(InputStream inputStream) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        public static FileDescriptorSet parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileDescriptorSet parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileDescriptorSet parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileDescriptorSet parseFrom(CodedInputStream codedInputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
        }

        public static FileDescriptorSet parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileDescriptorSet parseFrom(InputStream inputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileDescriptorSet parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileDescriptorSet parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileDescriptorSet parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final FileDescriptorSet getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorSetOrBuilder
        public final FileDescriptorProto getFile(int i) {
            return this.file_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorSetOrBuilder
        public final int getFileCount() {
            return this.file_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorSetOrBuilder
        public final List<FileDescriptorProto> getFileList() {
            return this.file_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorSetOrBuilder
        public final FileDescriptorProtoOrBuilder getFileOrBuilder(int i) {
            return this.file_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.FileDescriptorSetOrBuilder
        public final List<? extends FileDescriptorProtoOrBuilder> getFileOrBuilderList() {
            return this.file_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.file_.size(); i3++) {
                i2 += CodedOutputStream.computeMessageSize(1, this.file_.get(i3));
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.f7914x15a6a952;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            for (int i = 0; i < getFileCount(); i++) {
                if (!getFile(i).isInitialized()) {
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
            return new Builder(builderParent, null);
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
            for (int i = 0; i < this.file_.size(); i++) {
                codedOutputStream.writeMessage(1, this.file_.get(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface FileDescriptorSetOrBuilder extends MessageOrBuilder {
        FileDescriptorProto getFile(int i);

        int getFileCount();

        List<FileDescriptorProto> getFileList();

        FileDescriptorProtoOrBuilder getFileOrBuilder(int i);

        List<? extends FileDescriptorProtoOrBuilder> getFileOrBuilderList();
    }

    /* loaded from: classes.dex */
    public static final class FileOptions extends GeneratedMessage.ExtendableMessage<FileOptions> implements FileOptionsOrBuilder {
        public static final int CC_GENERIC_SERVICES_FIELD_NUMBER = 16;
        public static final int GO_PACKAGE_FIELD_NUMBER = 11;
        public static final int JAVA_GENERATE_EQUALS_AND_HASH_FIELD_NUMBER = 20;
        public static final int JAVA_GENERIC_SERVICES_FIELD_NUMBER = 17;
        public static final int JAVA_MULTIPLE_FILES_FIELD_NUMBER = 10;
        public static final int JAVA_OUTER_CLASSNAME_FIELD_NUMBER = 8;
        public static final int JAVA_PACKAGE_FIELD_NUMBER = 1;
        public static final int OPTIMIZE_FOR_FIELD_NUMBER = 9;
        public static final int PY_GENERIC_SERVICES_FIELD_NUMBER = 18;
        public static final int UNINTERPRETED_OPTION_FIELD_NUMBER = 999;
        private static final FileOptions defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private boolean ccGenericServices_;
        private Object goPackage_;
        private boolean javaGenerateEqualsAndHash_;
        private boolean javaGenericServices_;
        private boolean javaMultipleFiles_;
        private Object javaOuterClassname_;
        private Object javaPackage_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private OptimizeMode optimizeFor_;
        private boolean pyGenericServices_;
        private List<UninterpretedOption> uninterpretedOption_;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.ExtendableBuilder<FileOptions, Builder> implements FileOptionsOrBuilder {
            private int bitField0_;
            private boolean ccGenericServices_;
            private Object goPackage_;
            private boolean javaGenerateEqualsAndHash_;
            private boolean javaGenericServices_;
            private boolean javaMultipleFiles_;
            private Object javaOuterClassname_;
            private Object javaPackage_;
            private OptimizeMode optimizeFor_;
            private boolean pyGenericServices_;
            private RepeatedFieldBuilder<UninterpretedOption, UninterpretedOption.Builder, UninterpretedOptionOrBuilder> uninterpretedOptionBuilder_;
            private List<UninterpretedOption> uninterpretedOption_;

            private Builder() {
                this.javaPackage_ = "";
                this.javaOuterClassname_ = "";
                this.optimizeFor_ = OptimizeMode.SPEED;
                this.goPackage_ = "";
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.javaPackage_ = "";
                this.javaOuterClassname_ = "";
                this.optimizeFor_ = OptimizeMode.SPEED;
                this.goPackage_ = "";
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                this(builderParent);
            }

            static /* synthetic */ Builder access$18() {
                return create();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public FileOptions buildParsed() throws InvalidProtocolBufferException {
                FileOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
            }

            private static Builder create() {
                return new Builder();
            }

            private void ensureUninterpretedOptionIsMutable() {
                if ((this.bitField0_ & 512) != 512) {
                    this.uninterpretedOption_ = new ArrayList(this.uninterpretedOption_);
                    this.bitField0_ |= 512;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_FileOptions_descriptor;
            }

            private RepeatedFieldBuilder<UninterpretedOption, UninterpretedOption.Builder, UninterpretedOptionOrBuilder> getUninterpretedOptionFieldBuilder() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOptionBuilder_ = new RepeatedFieldBuilder<>(this.uninterpretedOption_, (this.bitField0_ & 512) == 512, getParentForChildren(), isClean());
                    this.uninterpretedOption_ = null;
                }
                return this.uninterpretedOptionBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getUninterpretedOptionFieldBuilder();
                }
            }

            public final Builder addAllUninterpretedOption(Iterable<? extends UninterpretedOption> iterable) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                GeneratedMessage.ExtendableBuilder.addAll(iterable, this.uninterpretedOption_);
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(int i, UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(i, uninterpretedOption);
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(uninterpretedOption);
                onChanged();
                return this;
            }

            public final UninterpretedOption.Builder addUninterpretedOptionBuilder() {
                return getUninterpretedOptionFieldBuilder().addBuilder(UninterpretedOption.getDefaultInstance());
            }

            public final UninterpretedOption.Builder addUninterpretedOptionBuilder(int i) {
                return getUninterpretedOptionFieldBuilder().addBuilder(i, UninterpretedOption.getDefaultInstance());
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final FileOptions build() {
                FileOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final FileOptions buildPartial() {
                List<UninterpretedOption> build;
                FileOptions fileOptions = new FileOptions(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                fileOptions.javaPackage_ = this.javaPackage_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                fileOptions.javaOuterClassname_ = this.javaOuterClassname_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                fileOptions.javaMultipleFiles_ = this.javaMultipleFiles_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                fileOptions.javaGenerateEqualsAndHash_ = this.javaGenerateEqualsAndHash_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                fileOptions.optimizeFor_ = this.optimizeFor_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                fileOptions.goPackage_ = this.goPackage_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                fileOptions.ccGenericServices_ = this.ccGenericServices_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                fileOptions.javaGenericServices_ = this.javaGenericServices_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                fileOptions.pyGenericServices_ = this.pyGenericServices_;
                if (this.uninterpretedOptionBuilder_ == null) {
                    if ((this.bitField0_ & 512) == 512) {
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                        this.bitField0_ &= -513;
                    }
                    build = this.uninterpretedOption_;
                } else {
                    build = this.uninterpretedOptionBuilder_.build();
                }
                fileOptions.uninterpretedOption_ = build;
                fileOptions.bitField0_ = i2;
                onBuilt();
                return fileOptions;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.javaPackage_ = "";
                this.bitField0_ &= -2;
                this.javaOuterClassname_ = "";
                this.bitField0_ &= -3;
                this.javaMultipleFiles_ = false;
                this.bitField0_ &= -5;
                this.javaGenerateEqualsAndHash_ = false;
                this.bitField0_ &= -9;
                this.optimizeFor_ = OptimizeMode.SPEED;
                this.bitField0_ &= -17;
                this.goPackage_ = "";
                this.bitField0_ &= -33;
                this.ccGenericServices_ = false;
                this.bitField0_ &= -65;
                this.javaGenericServices_ = false;
                this.bitField0_ &= -129;
                this.pyGenericServices_ = false;
                this.bitField0_ &= -257;
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.clear();
                    return this;
                }
                this.uninterpretedOption_ = Collections.emptyList();
                this.bitField0_ &= -513;
                return this;
            }

            public final Builder clearCcGenericServices() {
                this.bitField0_ &= -65;
                this.ccGenericServices_ = false;
                onChanged();
                return this;
            }

            public final Builder clearGoPackage() {
                this.bitField0_ &= -33;
                this.goPackage_ = FileOptions.getDefaultInstance().getGoPackage();
                onChanged();
                return this;
            }

            public final Builder clearJavaGenerateEqualsAndHash() {
                this.bitField0_ &= -9;
                this.javaGenerateEqualsAndHash_ = false;
                onChanged();
                return this;
            }

            public final Builder clearJavaGenericServices() {
                this.bitField0_ &= -129;
                this.javaGenericServices_ = false;
                onChanged();
                return this;
            }

            public final Builder clearJavaMultipleFiles() {
                this.bitField0_ &= -5;
                this.javaMultipleFiles_ = false;
                onChanged();
                return this;
            }

            public final Builder clearJavaOuterClassname() {
                this.bitField0_ &= -3;
                this.javaOuterClassname_ = FileOptions.getDefaultInstance().getJavaOuterClassname();
                onChanged();
                return this;
            }

            public final Builder clearJavaPackage() {
                this.bitField0_ &= -2;
                this.javaPackage_ = FileOptions.getDefaultInstance().getJavaPackage();
                onChanged();
                return this;
            }

            public final Builder clearOptimizeFor() {
                this.bitField0_ &= -17;
                this.optimizeFor_ = OptimizeMode.SPEED;
                onChanged();
                return this;
            }

            public final Builder clearPyGenericServices() {
                this.bitField0_ &= -257;
                this.pyGenericServices_ = false;
                onChanged();
                return this;
            }

            public final Builder clearUninterpretedOption() {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.clear();
                    return this;
                }
                this.uninterpretedOption_ = Collections.emptyList();
                this.bitField0_ &= -513;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final boolean getCcGenericServices() {
                return this.ccGenericServices_;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final FileOptions getDefaultInstanceForType() {
                return FileOptions.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return FileOptions.getDescriptor();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final String getGoPackage() {
                Object obj = this.goPackage_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.goPackage_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final boolean getJavaGenerateEqualsAndHash() {
                return this.javaGenerateEqualsAndHash_;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final boolean getJavaGenericServices() {
                return this.javaGenericServices_;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final boolean getJavaMultipleFiles() {
                return this.javaMultipleFiles_;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final String getJavaOuterClassname() {
                Object obj = this.javaOuterClassname_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.javaOuterClassname_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final String getJavaPackage() {
                Object obj = this.javaPackage_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.javaPackage_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final OptimizeMode getOptimizeFor() {
                return this.optimizeFor_;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final boolean getPyGenericServices() {
                return this.pyGenericServices_;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final UninterpretedOption getUninterpretedOption(int i) {
                return this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.get(i) : this.uninterpretedOptionBuilder_.getMessage(i);
            }

            public final UninterpretedOption.Builder getUninterpretedOptionBuilder(int i) {
                return getUninterpretedOptionFieldBuilder().getBuilder(i);
            }

            public final List<UninterpretedOption.Builder> getUninterpretedOptionBuilderList() {
                return getUninterpretedOptionFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final int getUninterpretedOptionCount() {
                return this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.size() : this.uninterpretedOptionBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final List<UninterpretedOption> getUninterpretedOptionList() {
                return this.uninterpretedOptionBuilder_ == null ? Collections.unmodifiableList(this.uninterpretedOption_) : this.uninterpretedOptionBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
                return (UninterpretedOptionOrBuilder) (this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.get(i) : this.uninterpretedOptionBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
                return this.uninterpretedOptionBuilder_ != null ? this.uninterpretedOptionBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.uninterpretedOption_);
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final boolean hasCcGenericServices() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final boolean hasGoPackage() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final boolean hasJavaGenerateEqualsAndHash() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final boolean hasJavaGenericServices() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final boolean hasJavaMultipleFiles() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final boolean hasJavaOuterClassname() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final boolean hasJavaPackage() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final boolean hasOptimizeFor() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
            public final boolean hasPyGenericServices() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_FileOptions_fieldAccessorTable;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                    if (!getUninterpretedOption(i).isInitialized()) {
                        return false;
                    }
                }
                return extensionsAreInitialized();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                while (true) {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            break;
                        case 10:
                            this.bitField0_ |= 1;
                            this.javaPackage_ = codedInputStream.readBytes();
                            break;
                        case 66:
                            this.bitField0_ |= 2;
                            this.javaOuterClassname_ = codedInputStream.readBytes();
                            break;
                        case 72:
                            int readEnum = codedInputStream.readEnum();
                            OptimizeMode valueOf = OptimizeMode.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 16;
                                this.optimizeFor_ = valueOf;
                                break;
                            } else {
                                newBuilder.mergeVarintField(9, readEnum);
                                break;
                            }
                        case 80:
                            this.bitField0_ |= 4;
                            this.javaMultipleFiles_ = codedInputStream.readBool();
                            break;
                        case 90:
                            this.bitField0_ |= 32;
                            this.goPackage_ = codedInputStream.readBytes();
                            break;
                        case 128:
                            this.bitField0_ |= 64;
                            this.ccGenericServices_ = codedInputStream.readBool();
                            break;
                        case 136:
                            this.bitField0_ |= 128;
                            this.javaGenericServices_ = codedInputStream.readBool();
                            break;
                        case 144:
                            this.bitField0_ |= 256;
                            this.pyGenericServices_ = codedInputStream.readBool();
                            break;
                        case 160:
                            this.bitField0_ |= 8;
                            this.javaGenerateEqualsAndHash_ = codedInputStream.readBool();
                            break;
                        case 7994:
                            UninterpretedOption.Builder newBuilder2 = UninterpretedOption.newBuilder();
                            codedInputStream.readMessage(newBuilder2, extensionRegistryLite);
                            addUninterpretedOption(newBuilder2.buildPartial());
                            break;
                        default:
                            if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                break;
                            }
                    }
                }
                setUnknownFields(newBuilder.build());
                onChanged();
                return this;
            }

            public final Builder mergeFrom(FileOptions fileOptions) {
                if (fileOptions == FileOptions.getDefaultInstance()) {
                    return this;
                }
                if (fileOptions.hasJavaPackage()) {
                    setJavaPackage(fileOptions.getJavaPackage());
                }
                if (fileOptions.hasJavaOuterClassname()) {
                    setJavaOuterClassname(fileOptions.getJavaOuterClassname());
                }
                if (fileOptions.hasJavaMultipleFiles()) {
                    setJavaMultipleFiles(fileOptions.getJavaMultipleFiles());
                }
                if (fileOptions.hasJavaGenerateEqualsAndHash()) {
                    setJavaGenerateEqualsAndHash(fileOptions.getJavaGenerateEqualsAndHash());
                }
                if (fileOptions.hasOptimizeFor()) {
                    setOptimizeFor(fileOptions.getOptimizeFor());
                }
                if (fileOptions.hasGoPackage()) {
                    setGoPackage(fileOptions.getGoPackage());
                }
                if (fileOptions.hasCcGenericServices()) {
                    setCcGenericServices(fileOptions.getCcGenericServices());
                }
                if (fileOptions.hasJavaGenericServices()) {
                    setJavaGenericServices(fileOptions.getJavaGenericServices());
                }
                if (fileOptions.hasPyGenericServices()) {
                    setPyGenericServices(fileOptions.getPyGenericServices());
                }
                if (this.uninterpretedOptionBuilder_ == null) {
                    if (!fileOptions.uninterpretedOption_.isEmpty()) {
                        if (this.uninterpretedOption_.isEmpty()) {
                            this.uninterpretedOption_ = fileOptions.uninterpretedOption_;
                            this.bitField0_ &= -513;
                        } else {
                            ensureUninterpretedOptionIsMutable();
                            this.uninterpretedOption_.addAll(fileOptions.uninterpretedOption_);
                        }
                        onChanged();
                    }
                } else if (!fileOptions.uninterpretedOption_.isEmpty()) {
                    if (this.uninterpretedOptionBuilder_.isEmpty()) {
                        this.uninterpretedOptionBuilder_.dispose();
                        this.uninterpretedOptionBuilder_ = null;
                        this.uninterpretedOption_ = fileOptions.uninterpretedOption_;
                        this.bitField0_ &= -513;
                        this.uninterpretedOptionBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getUninterpretedOptionFieldBuilder() : null;
                    } else {
                        this.uninterpretedOptionBuilder_.addAllMessages(fileOptions.uninterpretedOption_);
                    }
                }
                mergeExtensionFields(fileOptions);
                mergeUnknownFields(fileOptions.getUnknownFields());
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof FileOptions) {
                    return mergeFrom((FileOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder removeUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.remove(i);
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.remove(i);
                onChanged();
                return this;
            }

            public final Builder setCcGenericServices(boolean z) {
                this.bitField0_ |= 64;
                this.ccGenericServices_ = z;
                onChanged();
                return this;
            }

            public final Builder setGoPackage(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.goPackage_ = str;
                onChanged();
                return this;
            }

            final void setGoPackage(ByteString byteString) {
                this.bitField0_ |= 32;
                this.goPackage_ = byteString;
                onChanged();
            }

            public final Builder setJavaGenerateEqualsAndHash(boolean z) {
                this.bitField0_ |= 8;
                this.javaGenerateEqualsAndHash_ = z;
                onChanged();
                return this;
            }

            public final Builder setJavaGenericServices(boolean z) {
                this.bitField0_ |= 128;
                this.javaGenericServices_ = z;
                onChanged();
                return this;
            }

            public final Builder setJavaMultipleFiles(boolean z) {
                this.bitField0_ |= 4;
                this.javaMultipleFiles_ = z;
                onChanged();
                return this;
            }

            public final Builder setJavaOuterClassname(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.javaOuterClassname_ = str;
                onChanged();
                return this;
            }

            final void setJavaOuterClassname(ByteString byteString) {
                this.bitField0_ |= 2;
                this.javaOuterClassname_ = byteString;
                onChanged();
            }

            public final Builder setJavaPackage(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.javaPackage_ = str;
                onChanged();
                return this;
            }

            final void setJavaPackage(ByteString byteString) {
                this.bitField0_ |= 1;
                this.javaPackage_ = byteString;
                onChanged();
            }

            public final Builder setOptimizeFor(OptimizeMode optimizeMode) {
                if (optimizeMode == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.optimizeFor_ = optimizeMode;
                onChanged();
                return this;
            }

            public final Builder setPyGenericServices(boolean z) {
                this.bitField0_ |= 256;
                this.pyGenericServices_ = z;
                onChanged();
                return this;
            }

            public final Builder setUninterpretedOption(int i, UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.set(i, uninterpretedOption);
                onChanged();
                return this;
            }
        }

        /* loaded from: classes.dex */
        public enum OptimizeMode implements ProtocolMessageEnum {
            SPEED(0, 1),
            CODE_SIZE(1, 2),
            LITE_RUNTIME(2, 3);

            public static final int CODE_SIZE_VALUE = 2;
            public static final int LITE_RUNTIME_VALUE = 3;
            public static final int SPEED_VALUE = 1;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<OptimizeMode> internalValueMap = new Internal.EnumLiteMap<OptimizeMode>() { // from class: com.google.protobuf.DescriptorProtos.FileOptions.OptimizeMode.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public OptimizeMode findValueByNumber(int i) {
                    return OptimizeMode.valueOf(i);
                }
            };
            private static final OptimizeMode[] VALUES = {SPEED, CODE_SIZE, LITE_RUNTIME};

            OptimizeMode(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return FileOptions.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<OptimizeMode> internalGetValueMap() {
                return internalValueMap;
            }

            public static OptimizeMode valueOf(int i) {
                switch (i) {
                    case 1:
                        return SPEED;
                    case 2:
                        return CODE_SIZE;
                    case 3:
                        return LITE_RUNTIME;
                    default:
                        return null;
                }
            }

            public static OptimizeMode valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() != getDescriptor()) {
                    throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }

            /* renamed from: values, reason: to resolve conflict with enum method */
            public static OptimizeMode[] valuesCustom() {
                OptimizeMode[] valuesCustom = values();
                int length = valuesCustom.length;
                OptimizeMode[] optimizeModeArr = new OptimizeMode[length];
                System.arraycopy(valuesCustom, 0, optimizeModeArr, 0, length);
                return optimizeModeArr;
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
            FileOptions fileOptions = new FileOptions(true);
            defaultInstance = fileOptions;
            fileOptions.initFields();
        }

        private FileOptions(Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        /* synthetic */ FileOptions(Builder builder, FileOptions fileOptions) {
            this(builder);
        }

        private FileOptions(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        public static FileOptions getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_FileOptions_descriptor;
        }

        private ByteString getGoPackageBytes() {
            Object obj = this.goPackage_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.goPackage_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private ByteString getJavaOuterClassnameBytes() {
            Object obj = this.javaOuterClassname_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.javaOuterClassname_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private ByteString getJavaPackageBytes() {
            Object obj = this.javaPackage_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.javaPackage_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.javaPackage_ = "";
            this.javaOuterClassname_ = "";
            this.javaMultipleFiles_ = false;
            this.javaGenerateEqualsAndHash_ = false;
            this.optimizeFor_ = OptimizeMode.SPEED;
            this.goPackage_ = "";
            this.ccGenericServices_ = false;
            this.javaGenericServices_ = false;
            this.pyGenericServices_ = false;
            this.uninterpretedOption_ = Collections.emptyList();
        }

        public static Builder newBuilder() {
            return Builder.access$18();
        }

        public static Builder newBuilder(FileOptions fileOptions) {
            return newBuilder().mergeFrom(fileOptions);
        }

        public static FileOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        public static FileOptions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileOptions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileOptions parseFrom(CodedInputStream codedInputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
        }

        public static FileOptions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileOptions parseFrom(InputStream inputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileOptions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static FileOptions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final boolean getCcGenericServices() {
            return this.ccGenericServices_;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final FileOptions getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final String getGoPackage() {
            Object obj = this.goPackage_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.goPackage_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final boolean getJavaGenerateEqualsAndHash() {
            return this.javaGenerateEqualsAndHash_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final boolean getJavaGenericServices() {
            return this.javaGenericServices_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final boolean getJavaMultipleFiles() {
            return this.javaMultipleFiles_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final String getJavaOuterClassname() {
            Object obj = this.javaOuterClassname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.javaOuterClassname_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final String getJavaPackage() {
            Object obj = this.javaPackage_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.javaPackage_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final OptimizeMode getOptimizeFor() {
            return this.optimizeFor_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final boolean getPyGenericServices() {
            return this.pyGenericServices_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeBytesSize = (this.bitField0_ & 1) == 1 ? CodedOutputStream.computeBytesSize(1, getJavaPackageBytes()) + 0 : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeBytesSize += CodedOutputStream.computeBytesSize(8, getJavaOuterClassnameBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                computeBytesSize += CodedOutputStream.computeEnumSize(9, this.optimizeFor_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                computeBytesSize += CodedOutputStream.computeBoolSize(10, this.javaMultipleFiles_);
            }
            if ((this.bitField0_ & 32) == 32) {
                computeBytesSize += CodedOutputStream.computeBytesSize(11, getGoPackageBytes());
            }
            if ((this.bitField0_ & 64) == 64) {
                computeBytesSize += CodedOutputStream.computeBoolSize(16, this.ccGenericServices_);
            }
            if ((this.bitField0_ & 128) == 128) {
                computeBytesSize += CodedOutputStream.computeBoolSize(17, this.javaGenericServices_);
            }
            if ((this.bitField0_ & 256) == 256) {
                computeBytesSize += CodedOutputStream.computeBoolSize(18, this.pyGenericServices_);
            }
            if ((this.bitField0_ & 8) == 8) {
                computeBytesSize += CodedOutputStream.computeBoolSize(20, this.javaGenerateEqualsAndHash_);
            }
            for (int i2 = 0; i2 < this.uninterpretedOption_.size(); i2++) {
                computeBytesSize += CodedOutputStream.computeMessageSize(999, this.uninterpretedOption_.get(i2));
            }
            int extensionsSerializedSize = computeBytesSize + extensionsSerializedSize() + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = extensionsSerializedSize;
            return extensionsSerializedSize;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final UninterpretedOption getUninterpretedOption(int i) {
            return this.uninterpretedOption_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final int getUninterpretedOptionCount() {
            return this.uninterpretedOption_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final List<UninterpretedOption> getUninterpretedOptionList() {
            return this.uninterpretedOption_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
            return this.uninterpretedOption_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
            return this.uninterpretedOption_;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final boolean hasCcGenericServices() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final boolean hasGoPackage() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final boolean hasJavaGenerateEqualsAndHash() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final boolean hasJavaGenericServices() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final boolean hasJavaMultipleFiles() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final boolean hasJavaOuterClassname() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final boolean hasJavaPackage() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final boolean hasOptimizeFor() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.google.protobuf.DescriptorProtos.FileOptionsOrBuilder
        public final boolean hasPyGenericServices() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_FileOptions_fieldAccessorTable;
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessage, com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                if (!getUninterpretedOption(i).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            if (extensionsAreInitialized()) {
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
            return new Builder(builderParent, null);
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
            GeneratedMessage.ExtendableMessage<MessageType>.ExtensionWriter newExtensionWriter = newExtensionWriter();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getJavaPackageBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(8, getJavaOuterClassnameBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeEnum(9, this.optimizeFor_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBool(10, this.javaMultipleFiles_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(11, getGoPackageBytes());
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeBool(16, this.ccGenericServices_);
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeBool(17, this.javaGenericServices_);
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeBool(18, this.pyGenericServices_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBool(20, this.javaGenerateEqualsAndHash_);
            }
            for (int i = 0; i < this.uninterpretedOption_.size(); i++) {
                codedOutputStream.writeMessage(999, this.uninterpretedOption_.get(i));
            }
            newExtensionWriter.writeUntil(536870912, codedOutputStream);
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface FileOptionsOrBuilder extends GeneratedMessage.ExtendableMessageOrBuilder<FileOptions> {
        boolean getCcGenericServices();

        String getGoPackage();

        boolean getJavaGenerateEqualsAndHash();

        boolean getJavaGenericServices();

        boolean getJavaMultipleFiles();

        String getJavaOuterClassname();

        String getJavaPackage();

        FileOptions.OptimizeMode getOptimizeFor();

        boolean getPyGenericServices();

        UninterpretedOption getUninterpretedOption(int i);

        int getUninterpretedOptionCount();

        List<UninterpretedOption> getUninterpretedOptionList();

        UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i);

        List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList();

        boolean hasCcGenericServices();

        boolean hasGoPackage();

        boolean hasJavaGenerateEqualsAndHash();

        boolean hasJavaGenericServices();

        boolean hasJavaMultipleFiles();

        boolean hasJavaOuterClassname();

        boolean hasJavaPackage();

        boolean hasOptimizeFor();

        boolean hasPyGenericServices();
    }

    /* loaded from: classes.dex */
    public static final class MessageOptions extends GeneratedMessage.ExtendableMessage<MessageOptions> implements MessageOptionsOrBuilder {
        public static final int MESSAGE_SET_WIRE_FORMAT_FIELD_NUMBER = 1;
        public static final int NO_STANDARD_DESCRIPTOR_ACCESSOR_FIELD_NUMBER = 2;
        public static final int UNINTERPRETED_OPTION_FIELD_NUMBER = 999;
        private static final MessageOptions defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private boolean messageSetWireFormat_;
        private boolean noStandardDescriptorAccessor_;
        private List<UninterpretedOption> uninterpretedOption_;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.ExtendableBuilder<MessageOptions, Builder> implements MessageOptionsOrBuilder {
            private int bitField0_;
            private boolean messageSetWireFormat_;
            private boolean noStandardDescriptorAccessor_;
            private RepeatedFieldBuilder<UninterpretedOption, UninterpretedOption.Builder, UninterpretedOptionOrBuilder> uninterpretedOptionBuilder_;
            private List<UninterpretedOption> uninterpretedOption_;

            private Builder() {
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                this(builderParent);
            }

            static /* synthetic */ Builder access$18() {
                return create();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public MessageOptions buildParsed() throws InvalidProtocolBufferException {
                MessageOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
            }

            private static Builder create() {
                return new Builder();
            }

            private void ensureUninterpretedOptionIsMutable() {
                if ((this.bitField0_ & 4) != 4) {
                    this.uninterpretedOption_ = new ArrayList(this.uninterpretedOption_);
                    this.bitField0_ |= 4;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_MessageOptions_descriptor;
            }

            private RepeatedFieldBuilder<UninterpretedOption, UninterpretedOption.Builder, UninterpretedOptionOrBuilder> getUninterpretedOptionFieldBuilder() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOptionBuilder_ = new RepeatedFieldBuilder<>(this.uninterpretedOption_, (this.bitField0_ & 4) == 4, getParentForChildren(), isClean());
                    this.uninterpretedOption_ = null;
                }
                return this.uninterpretedOptionBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getUninterpretedOptionFieldBuilder();
                }
            }

            public final Builder addAllUninterpretedOption(Iterable<? extends UninterpretedOption> iterable) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                GeneratedMessage.ExtendableBuilder.addAll(iterable, this.uninterpretedOption_);
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(int i, UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(i, uninterpretedOption);
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(uninterpretedOption);
                onChanged();
                return this;
            }

            public final UninterpretedOption.Builder addUninterpretedOptionBuilder() {
                return getUninterpretedOptionFieldBuilder().addBuilder(UninterpretedOption.getDefaultInstance());
            }

            public final UninterpretedOption.Builder addUninterpretedOptionBuilder(int i) {
                return getUninterpretedOptionFieldBuilder().addBuilder(i, UninterpretedOption.getDefaultInstance());
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final MessageOptions build() {
                MessageOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final MessageOptions buildPartial() {
                List<UninterpretedOption> build;
                MessageOptions messageOptions = new MessageOptions(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                messageOptions.messageSetWireFormat_ = this.messageSetWireFormat_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                messageOptions.noStandardDescriptorAccessor_ = this.noStandardDescriptorAccessor_;
                if (this.uninterpretedOptionBuilder_ == null) {
                    if ((this.bitField0_ & 4) == 4) {
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                        this.bitField0_ &= -5;
                    }
                    build = this.uninterpretedOption_;
                } else {
                    build = this.uninterpretedOptionBuilder_.build();
                }
                messageOptions.uninterpretedOption_ = build;
                messageOptions.bitField0_ = i2;
                onBuilt();
                return messageOptions;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.messageSetWireFormat_ = false;
                this.bitField0_ &= -2;
                this.noStandardDescriptorAccessor_ = false;
                this.bitField0_ &= -3;
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.clear();
                    return this;
                }
                this.uninterpretedOption_ = Collections.emptyList();
                this.bitField0_ &= -5;
                return this;
            }

            public final Builder clearMessageSetWireFormat() {
                this.bitField0_ &= -2;
                this.messageSetWireFormat_ = false;
                onChanged();
                return this;
            }

            public final Builder clearNoStandardDescriptorAccessor() {
                this.bitField0_ &= -3;
                this.noStandardDescriptorAccessor_ = false;
                onChanged();
                return this;
            }

            public final Builder clearUninterpretedOption() {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.clear();
                    return this;
                }
                this.uninterpretedOption_ = Collections.emptyList();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final MessageOptions getDefaultInstanceForType() {
                return MessageOptions.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MessageOptions.getDescriptor();
            }

            @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
            public final boolean getMessageSetWireFormat() {
                return this.messageSetWireFormat_;
            }

            @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
            public final boolean getNoStandardDescriptorAccessor() {
                return this.noStandardDescriptorAccessor_;
            }

            @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
            public final UninterpretedOption getUninterpretedOption(int i) {
                return this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.get(i) : this.uninterpretedOptionBuilder_.getMessage(i);
            }

            public final UninterpretedOption.Builder getUninterpretedOptionBuilder(int i) {
                return getUninterpretedOptionFieldBuilder().getBuilder(i);
            }

            public final List<UninterpretedOption.Builder> getUninterpretedOptionBuilderList() {
                return getUninterpretedOptionFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
            public final int getUninterpretedOptionCount() {
                return this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.size() : this.uninterpretedOptionBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
            public final List<UninterpretedOption> getUninterpretedOptionList() {
                return this.uninterpretedOptionBuilder_ == null ? Collections.unmodifiableList(this.uninterpretedOption_) : this.uninterpretedOptionBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
            public final UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
                return (UninterpretedOptionOrBuilder) (this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.get(i) : this.uninterpretedOptionBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
            public final List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
                return this.uninterpretedOptionBuilder_ != null ? this.uninterpretedOptionBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.uninterpretedOption_);
            }

            @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
            public final boolean hasMessageSetWireFormat() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
            public final boolean hasNoStandardDescriptorAccessor() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.f7915x9c0b3d38;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                    if (!getUninterpretedOption(i).isInitialized()) {
                        return false;
                    }
                }
                return extensionsAreInitialized();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                while (true) {
                    int readTag = codedInputStream.readTag();
                    if (readTag == 0) {
                        break;
                    }
                    if (readTag == 8) {
                        this.bitField0_ |= 1;
                        this.messageSetWireFormat_ = codedInputStream.readBool();
                    } else if (readTag == 16) {
                        this.bitField0_ |= 2;
                        this.noStandardDescriptorAccessor_ = codedInputStream.readBool();
                    } else if (readTag == 7994) {
                        UninterpretedOption.Builder newBuilder2 = UninterpretedOption.newBuilder();
                        codedInputStream.readMessage(newBuilder2, extensionRegistryLite);
                        addUninterpretedOption(newBuilder2.buildPartial());
                    } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        break;
                    }
                }
                setUnknownFields(newBuilder.build());
                onChanged();
                return this;
            }

            public final Builder mergeFrom(MessageOptions messageOptions) {
                if (messageOptions == MessageOptions.getDefaultInstance()) {
                    return this;
                }
                if (messageOptions.hasMessageSetWireFormat()) {
                    setMessageSetWireFormat(messageOptions.getMessageSetWireFormat());
                }
                if (messageOptions.hasNoStandardDescriptorAccessor()) {
                    setNoStandardDescriptorAccessor(messageOptions.getNoStandardDescriptorAccessor());
                }
                if (this.uninterpretedOptionBuilder_ == null) {
                    if (!messageOptions.uninterpretedOption_.isEmpty()) {
                        if (this.uninterpretedOption_.isEmpty()) {
                            this.uninterpretedOption_ = messageOptions.uninterpretedOption_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureUninterpretedOptionIsMutable();
                            this.uninterpretedOption_.addAll(messageOptions.uninterpretedOption_);
                        }
                        onChanged();
                    }
                } else if (!messageOptions.uninterpretedOption_.isEmpty()) {
                    if (this.uninterpretedOptionBuilder_.isEmpty()) {
                        this.uninterpretedOptionBuilder_.dispose();
                        this.uninterpretedOptionBuilder_ = null;
                        this.uninterpretedOption_ = messageOptions.uninterpretedOption_;
                        this.bitField0_ &= -5;
                        this.uninterpretedOptionBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getUninterpretedOptionFieldBuilder() : null;
                    } else {
                        this.uninterpretedOptionBuilder_.addAllMessages(messageOptions.uninterpretedOption_);
                    }
                }
                mergeExtensionFields(messageOptions);
                mergeUnknownFields(messageOptions.getUnknownFields());
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof MessageOptions) {
                    return mergeFrom((MessageOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder removeUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.remove(i);
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.remove(i);
                onChanged();
                return this;
            }

            public final Builder setMessageSetWireFormat(boolean z) {
                this.bitField0_ |= 1;
                this.messageSetWireFormat_ = z;
                onChanged();
                return this;
            }

            public final Builder setNoStandardDescriptorAccessor(boolean z) {
                this.bitField0_ |= 2;
                this.noStandardDescriptorAccessor_ = z;
                onChanged();
                return this;
            }

            public final Builder setUninterpretedOption(int i, UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.set(i, uninterpretedOption);
                onChanged();
                return this;
            }
        }

        static {
            MessageOptions messageOptions = new MessageOptions(true);
            defaultInstance = messageOptions;
            messageOptions.initFields();
        }

        private MessageOptions(Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        /* synthetic */ MessageOptions(Builder builder, MessageOptions messageOptions) {
            this(builder);
        }

        private MessageOptions(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        public static MessageOptions getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_MessageOptions_descriptor;
        }

        private void initFields() {
            this.messageSetWireFormat_ = false;
            this.noStandardDescriptorAccessor_ = false;
            this.uninterpretedOption_ = Collections.emptyList();
        }

        public static Builder newBuilder() {
            return Builder.access$18();
        }

        public static Builder newBuilder(MessageOptions messageOptions) {
            return newBuilder().mergeFrom(messageOptions);
        }

        public static MessageOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        public static MessageOptions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MessageOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MessageOptions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MessageOptions parseFrom(CodedInputStream codedInputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
        }

        public static MessageOptions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MessageOptions parseFrom(InputStream inputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MessageOptions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MessageOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MessageOptions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final MessageOptions getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
        public final boolean getMessageSetWireFormat() {
            return this.messageSetWireFormat_;
        }

        @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
        public final boolean getNoStandardDescriptorAccessor() {
            return this.noStandardDescriptorAccessor_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeBoolSize = (this.bitField0_ & 1) == 1 ? CodedOutputStream.computeBoolSize(1, this.messageSetWireFormat_) + 0 : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeBoolSize += CodedOutputStream.computeBoolSize(2, this.noStandardDescriptorAccessor_);
            }
            for (int i2 = 0; i2 < this.uninterpretedOption_.size(); i2++) {
                computeBoolSize += CodedOutputStream.computeMessageSize(999, this.uninterpretedOption_.get(i2));
            }
            int extensionsSerializedSize = computeBoolSize + extensionsSerializedSize() + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = extensionsSerializedSize;
            return extensionsSerializedSize;
        }

        @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
        public final UninterpretedOption getUninterpretedOption(int i) {
            return this.uninterpretedOption_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
        public final int getUninterpretedOptionCount() {
            return this.uninterpretedOption_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
        public final List<UninterpretedOption> getUninterpretedOptionList() {
            return this.uninterpretedOption_;
        }

        @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
        public final UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
            return this.uninterpretedOption_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
        public final List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
            return this.uninterpretedOption_;
        }

        @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
        public final boolean hasMessageSetWireFormat() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.DescriptorProtos.MessageOptionsOrBuilder
        public final boolean hasNoStandardDescriptorAccessor() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.f7915x9c0b3d38;
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessage, com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                if (!getUninterpretedOption(i).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            if (extensionsAreInitialized()) {
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
            return new Builder(builderParent, null);
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
            GeneratedMessage.ExtendableMessage<MessageType>.ExtensionWriter newExtensionWriter = newExtensionWriter();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBool(1, this.messageSetWireFormat_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBool(2, this.noStandardDescriptorAccessor_);
            }
            for (int i = 0; i < this.uninterpretedOption_.size(); i++) {
                codedOutputStream.writeMessage(999, this.uninterpretedOption_.get(i));
            }
            newExtensionWriter.writeUntil(536870912, codedOutputStream);
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface MessageOptionsOrBuilder extends GeneratedMessage.ExtendableMessageOrBuilder<MessageOptions> {
        boolean getMessageSetWireFormat();

        boolean getNoStandardDescriptorAccessor();

        UninterpretedOption getUninterpretedOption(int i);

        int getUninterpretedOptionCount();

        List<UninterpretedOption> getUninterpretedOptionList();

        UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i);

        List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList();

        boolean hasMessageSetWireFormat();

        boolean hasNoStandardDescriptorAccessor();
    }

    /* loaded from: classes.dex */
    public static final class MethodDescriptorProto extends GeneratedMessage implements MethodDescriptorProtoOrBuilder {
        public static final int INPUT_TYPE_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int OPTIONS_FIELD_NUMBER = 4;
        public static final int OUTPUT_TYPE_FIELD_NUMBER = 3;
        private static final MethodDescriptorProto defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private Object inputType_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object name_;
        private MethodOptions options_;
        private Object outputType_;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements MethodDescriptorProtoOrBuilder {
            private int bitField0_;
            private Object inputType_;
            private Object name_;
            private SingleFieldBuilder<MethodOptions, MethodOptions.Builder, MethodOptionsOrBuilder> optionsBuilder_;
            private MethodOptions options_;
            private Object outputType_;

            private Builder() {
                this.name_ = "";
                this.inputType_ = "";
                this.outputType_ = "";
                this.options_ = MethodOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.name_ = "";
                this.inputType_ = "";
                this.outputType_ = "";
                this.options_ = MethodOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                this(builderParent);
            }

            static /* synthetic */ Builder access$18() {
                return create();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public MethodDescriptorProto buildParsed() throws InvalidProtocolBufferException {
                MethodDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
            }

            private static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_MethodDescriptorProto_descriptor;
            }

            private SingleFieldBuilder<MethodOptions, MethodOptions.Builder, MethodOptionsOrBuilder> getOptionsFieldBuilder() {
                if (this.optionsBuilder_ == null) {
                    this.optionsBuilder_ = new SingleFieldBuilder<>(this.options_, getParentForChildren(), isClean());
                    this.options_ = null;
                }
                return this.optionsBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getOptionsFieldBuilder();
                }
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final MethodDescriptorProto build() {
                MethodDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final MethodDescriptorProto buildPartial() {
                MethodDescriptorProto methodDescriptorProto = new MethodDescriptorProto(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                methodDescriptorProto.name_ = this.name_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                methodDescriptorProto.inputType_ = this.inputType_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                methodDescriptorProto.outputType_ = this.outputType_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                methodDescriptorProto.options_ = this.optionsBuilder_ == null ? this.options_ : this.optionsBuilder_.build();
                methodDescriptorProto.bitField0_ = i2;
                onBuilt();
                return methodDescriptorProto;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.name_ = "";
                this.bitField0_ &= -2;
                this.inputType_ = "";
                this.bitField0_ &= -3;
                this.outputType_ = "";
                this.bitField0_ &= -5;
                if (this.optionsBuilder_ == null) {
                    this.options_ = MethodOptions.getDefaultInstance();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public final Builder clearInputType() {
                this.bitField0_ &= -3;
                this.inputType_ = MethodDescriptorProto.getDefaultInstance().getInputType();
                onChanged();
                return this;
            }

            public final Builder clearName() {
                this.bitField0_ &= -2;
                this.name_ = MethodDescriptorProto.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public final Builder clearOptions() {
                if (this.optionsBuilder_ == null) {
                    this.options_ = MethodOptions.getDefaultInstance();
                    onChanged();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public final Builder clearOutputType() {
                this.bitField0_ &= -5;
                this.outputType_ = MethodDescriptorProto.getDefaultInstance().getOutputType();
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final MethodDescriptorProto getDefaultInstanceForType() {
                return MethodDescriptorProto.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MethodDescriptorProto.getDescriptor();
            }

            @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
            public final String getInputType() {
                Object obj = this.inputType_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.inputType_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
            public final String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
            public final MethodOptions getOptions() {
                return this.optionsBuilder_ == null ? this.options_ : this.optionsBuilder_.getMessage();
            }

            public final MethodOptions.Builder getOptionsBuilder() {
                this.bitField0_ |= 8;
                onChanged();
                return getOptionsFieldBuilder().getBuilder();
            }

            @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
            public final MethodOptionsOrBuilder getOptionsOrBuilder() {
                return this.optionsBuilder_ != null ? this.optionsBuilder_.getMessageOrBuilder() : this.options_;
            }

            @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
            public final String getOutputType() {
                Object obj = this.outputType_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.outputType_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
            public final boolean hasInputType() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
            public final boolean hasName() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
            public final boolean hasOptions() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
            public final boolean hasOutputType() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.f7916xc5331ef1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return !hasOptions() || getOptions().isInitialized();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                while (true) {
                    int readTag = codedInputStream.readTag();
                    if (readTag == 0) {
                        break;
                    }
                    if (readTag == 10) {
                        this.bitField0_ |= 1;
                        this.name_ = codedInputStream.readBytes();
                    } else if (readTag == 18) {
                        this.bitField0_ |= 2;
                        this.inputType_ = codedInputStream.readBytes();
                    } else if (readTag == 26) {
                        this.bitField0_ |= 4;
                        this.outputType_ = codedInputStream.readBytes();
                    } else if (readTag == 34) {
                        MethodOptions.Builder newBuilder2 = MethodOptions.newBuilder();
                        if (hasOptions()) {
                            newBuilder2.mergeFrom(getOptions());
                        }
                        codedInputStream.readMessage(newBuilder2, extensionRegistryLite);
                        setOptions(newBuilder2.buildPartial());
                    } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        break;
                    }
                }
                setUnknownFields(newBuilder.build());
                onChanged();
                return this;
            }

            public final Builder mergeFrom(MethodDescriptorProto methodDescriptorProto) {
                if (methodDescriptorProto == MethodDescriptorProto.getDefaultInstance()) {
                    return this;
                }
                if (methodDescriptorProto.hasName()) {
                    setName(methodDescriptorProto.getName());
                }
                if (methodDescriptorProto.hasInputType()) {
                    setInputType(methodDescriptorProto.getInputType());
                }
                if (methodDescriptorProto.hasOutputType()) {
                    setOutputType(methodDescriptorProto.getOutputType());
                }
                if (methodDescriptorProto.hasOptions()) {
                    mergeOptions(methodDescriptorProto.getOptions());
                }
                mergeUnknownFields(methodDescriptorProto.getUnknownFields());
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof MethodDescriptorProto) {
                    return mergeFrom((MethodDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeOptions(MethodOptions methodOptions) {
                if (this.optionsBuilder_ == null) {
                    if ((this.bitField0_ & 8) == 8 && this.options_ != MethodOptions.getDefaultInstance()) {
                        methodOptions = MethodOptions.newBuilder(this.options_).mergeFrom(methodOptions).buildPartial();
                    }
                    this.options_ = methodOptions;
                    onChanged();
                } else {
                    this.optionsBuilder_.mergeFrom(methodOptions);
                }
                this.bitField0_ |= 8;
                return this;
            }

            public final Builder setInputType(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.inputType_ = str;
                onChanged();
                return this;
            }

            final void setInputType(ByteString byteString) {
                this.bitField0_ |= 2;
                this.inputType_ = byteString;
                onChanged();
            }

            public final Builder setName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = str;
                onChanged();
                return this;
            }

            final void setName(ByteString byteString) {
                this.bitField0_ |= 1;
                this.name_ = byteString;
                onChanged();
            }

            public final Builder setOptions(MethodOptions.Builder builder) {
                if (this.optionsBuilder_ == null) {
                    this.options_ = builder.build();
                    onChanged();
                } else {
                    this.optionsBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 8;
                return this;
            }

            public final Builder setOptions(MethodOptions methodOptions) {
                if (this.optionsBuilder_ != null) {
                    this.optionsBuilder_.setMessage(methodOptions);
                } else {
                    if (methodOptions == null) {
                        throw new NullPointerException();
                    }
                    this.options_ = methodOptions;
                    onChanged();
                }
                this.bitField0_ |= 8;
                return this;
            }

            public final Builder setOutputType(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.outputType_ = str;
                onChanged();
                return this;
            }

            final void setOutputType(ByteString byteString) {
                this.bitField0_ |= 4;
                this.outputType_ = byteString;
                onChanged();
            }
        }

        static {
            MethodDescriptorProto methodDescriptorProto = new MethodDescriptorProto(true);
            defaultInstance = methodDescriptorProto;
            methodDescriptorProto.initFields();
        }

        private MethodDescriptorProto(Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        /* synthetic */ MethodDescriptorProto(Builder builder, MethodDescriptorProto methodDescriptorProto) {
            this(builder);
        }

        private MethodDescriptorProto(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        public static MethodDescriptorProto getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_MethodDescriptorProto_descriptor;
        }

        private ByteString getInputTypeBytes() {
            Object obj = this.inputType_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.inputType_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private ByteString getOutputTypeBytes() {
            Object obj = this.outputType_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.outputType_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.name_ = "";
            this.inputType_ = "";
            this.outputType_ = "";
            this.options_ = MethodOptions.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.access$18();
        }

        public static Builder newBuilder(MethodDescriptorProto methodDescriptorProto) {
            return newBuilder().mergeFrom(methodDescriptorProto);
        }

        public static MethodDescriptorProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        public static MethodDescriptorProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MethodDescriptorProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MethodDescriptorProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MethodDescriptorProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
        }

        public static MethodDescriptorProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MethodDescriptorProto parseFrom(InputStream inputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MethodDescriptorProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MethodDescriptorProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MethodDescriptorProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final MethodDescriptorProto getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
        public final String getInputType() {
            Object obj = this.inputType_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.inputType_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
        public final String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.name_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
        public final MethodOptions getOptions() {
            return this.options_;
        }

        @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
        public final MethodOptionsOrBuilder getOptionsOrBuilder() {
            return this.options_;
        }

        @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
        public final String getOutputType() {
            Object obj = this.outputType_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.outputType_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeBytesSize = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeBytesSize(1, getNameBytes()) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeBytesSize += CodedOutputStream.computeBytesSize(2, getInputTypeBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                computeBytesSize += CodedOutputStream.computeBytesSize(3, getOutputTypeBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                computeBytesSize += CodedOutputStream.computeMessageSize(4, this.options_);
            }
            int serializedSize = computeBytesSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
        public final boolean hasInputType() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
        public final boolean hasName() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
        public final boolean hasOptions() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.google.protobuf.DescriptorProtos.MethodDescriptorProtoOrBuilder
        public final boolean hasOutputType() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.f7916xc5331ef1;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            if (!hasOptions() || getOptions().isInitialized()) {
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
            return new Builder(builderParent, null);
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
                codedOutputStream.writeBytes(1, getNameBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getInputTypeBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getOutputTypeBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeMessage(4, this.options_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface MethodDescriptorProtoOrBuilder extends MessageOrBuilder {
        String getInputType();

        String getName();

        MethodOptions getOptions();

        MethodOptionsOrBuilder getOptionsOrBuilder();

        String getOutputType();

        boolean hasInputType();

        boolean hasName();

        boolean hasOptions();

        boolean hasOutputType();
    }

    /* loaded from: classes.dex */
    public static final class MethodOptions extends GeneratedMessage.ExtendableMessage<MethodOptions> implements MethodOptionsOrBuilder {
        public static final int UNINTERPRETED_OPTION_FIELD_NUMBER = 999;
        private static final MethodOptions defaultInstance;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private List<UninterpretedOption> uninterpretedOption_;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.ExtendableBuilder<MethodOptions, Builder> implements MethodOptionsOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<UninterpretedOption, UninterpretedOption.Builder, UninterpretedOptionOrBuilder> uninterpretedOptionBuilder_;
            private List<UninterpretedOption> uninterpretedOption_;

            private Builder() {
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                this(builderParent);
            }

            static /* synthetic */ Builder access$18() {
                return create();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public MethodOptions buildParsed() throws InvalidProtocolBufferException {
                MethodOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
            }

            private static Builder create() {
                return new Builder();
            }

            private void ensureUninterpretedOptionIsMutable() {
                if ((this.bitField0_ & 1) != 1) {
                    this.uninterpretedOption_ = new ArrayList(this.uninterpretedOption_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_MethodOptions_descriptor;
            }

            private RepeatedFieldBuilder<UninterpretedOption, UninterpretedOption.Builder, UninterpretedOptionOrBuilder> getUninterpretedOptionFieldBuilder() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOptionBuilder_ = new RepeatedFieldBuilder<>(this.uninterpretedOption_, (this.bitField0_ & 1) == 1, getParentForChildren(), isClean());
                    this.uninterpretedOption_ = null;
                }
                return this.uninterpretedOptionBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getUninterpretedOptionFieldBuilder();
                }
            }

            public final Builder addAllUninterpretedOption(Iterable<? extends UninterpretedOption> iterable) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                GeneratedMessage.ExtendableBuilder.addAll(iterable, this.uninterpretedOption_);
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(int i, UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(i, uninterpretedOption);
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(uninterpretedOption);
                onChanged();
                return this;
            }

            public final UninterpretedOption.Builder addUninterpretedOptionBuilder() {
                return getUninterpretedOptionFieldBuilder().addBuilder(UninterpretedOption.getDefaultInstance());
            }

            public final UninterpretedOption.Builder addUninterpretedOptionBuilder(int i) {
                return getUninterpretedOptionFieldBuilder().addBuilder(i, UninterpretedOption.getDefaultInstance());
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final MethodOptions build() {
                MethodOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final MethodOptions buildPartial() {
                List<UninterpretedOption> build;
                MethodOptions methodOptions = new MethodOptions(this, null);
                if (this.uninterpretedOptionBuilder_ == null) {
                    if ((this.bitField0_ & 1) == 1) {
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                        this.bitField0_ &= -2;
                    }
                    build = this.uninterpretedOption_;
                } else {
                    build = this.uninterpretedOptionBuilder_.build();
                }
                methodOptions.uninterpretedOption_ = build;
                onBuilt();
                return methodOptions;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.clear();
                    return this;
                }
                this.uninterpretedOption_ = Collections.emptyList();
                this.bitField0_ &= -2;
                return this;
            }

            public final Builder clearUninterpretedOption() {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.clear();
                    return this;
                }
                this.uninterpretedOption_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final MethodOptions getDefaultInstanceForType() {
                return MethodOptions.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return MethodOptions.getDescriptor();
            }

            @Override // com.google.protobuf.DescriptorProtos.MethodOptionsOrBuilder
            public final UninterpretedOption getUninterpretedOption(int i) {
                return this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.get(i) : this.uninterpretedOptionBuilder_.getMessage(i);
            }

            public final UninterpretedOption.Builder getUninterpretedOptionBuilder(int i) {
                return getUninterpretedOptionFieldBuilder().getBuilder(i);
            }

            public final List<UninterpretedOption.Builder> getUninterpretedOptionBuilderList() {
                return getUninterpretedOptionFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.MethodOptionsOrBuilder
            public final int getUninterpretedOptionCount() {
                return this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.size() : this.uninterpretedOptionBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.MethodOptionsOrBuilder
            public final List<UninterpretedOption> getUninterpretedOptionList() {
                return this.uninterpretedOptionBuilder_ == null ? Collections.unmodifiableList(this.uninterpretedOption_) : this.uninterpretedOptionBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.MethodOptionsOrBuilder
            public final UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
                return (UninterpretedOptionOrBuilder) (this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.get(i) : this.uninterpretedOptionBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.MethodOptionsOrBuilder
            public final List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
                return this.uninterpretedOptionBuilder_ != null ? this.uninterpretedOptionBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.uninterpretedOption_);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_MethodOptions_fieldAccessorTable;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                    if (!getUninterpretedOption(i).isInitialized()) {
                        return false;
                    }
                }
                return extensionsAreInitialized();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                while (true) {
                    int readTag = codedInputStream.readTag();
                    if (readTag == 0) {
                        break;
                    }
                    if (readTag == 7994) {
                        UninterpretedOption.Builder newBuilder2 = UninterpretedOption.newBuilder();
                        codedInputStream.readMessage(newBuilder2, extensionRegistryLite);
                        addUninterpretedOption(newBuilder2.buildPartial());
                    } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        break;
                    }
                }
                setUnknownFields(newBuilder.build());
                onChanged();
                return this;
            }

            public final Builder mergeFrom(MethodOptions methodOptions) {
                if (methodOptions == MethodOptions.getDefaultInstance()) {
                    return this;
                }
                if (this.uninterpretedOptionBuilder_ == null) {
                    if (!methodOptions.uninterpretedOption_.isEmpty()) {
                        if (this.uninterpretedOption_.isEmpty()) {
                            this.uninterpretedOption_ = methodOptions.uninterpretedOption_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureUninterpretedOptionIsMutable();
                            this.uninterpretedOption_.addAll(methodOptions.uninterpretedOption_);
                        }
                        onChanged();
                    }
                } else if (!methodOptions.uninterpretedOption_.isEmpty()) {
                    if (this.uninterpretedOptionBuilder_.isEmpty()) {
                        this.uninterpretedOptionBuilder_.dispose();
                        this.uninterpretedOptionBuilder_ = null;
                        this.uninterpretedOption_ = methodOptions.uninterpretedOption_;
                        this.bitField0_ &= -2;
                        this.uninterpretedOptionBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getUninterpretedOptionFieldBuilder() : null;
                    } else {
                        this.uninterpretedOptionBuilder_.addAllMessages(methodOptions.uninterpretedOption_);
                    }
                }
                mergeExtensionFields(methodOptions);
                mergeUnknownFields(methodOptions.getUnknownFields());
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof MethodOptions) {
                    return mergeFrom((MethodOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder removeUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.remove(i);
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.remove(i);
                onChanged();
                return this;
            }

            public final Builder setUninterpretedOption(int i, UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.set(i, uninterpretedOption);
                onChanged();
                return this;
            }
        }

        static {
            MethodOptions methodOptions = new MethodOptions(true);
            defaultInstance = methodOptions;
            methodOptions.initFields();
        }

        private MethodOptions(Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        /* synthetic */ MethodOptions(Builder builder, MethodOptions methodOptions) {
            this(builder);
        }

        private MethodOptions(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        public static MethodOptions getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_MethodOptions_descriptor;
        }

        private void initFields() {
            this.uninterpretedOption_ = Collections.emptyList();
        }

        public static Builder newBuilder() {
            return Builder.access$18();
        }

        public static Builder newBuilder(MethodOptions methodOptions) {
            return newBuilder().mergeFrom(methodOptions);
        }

        public static MethodOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        public static MethodOptions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MethodOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MethodOptions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MethodOptions parseFrom(CodedInputStream codedInputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
        }

        public static MethodOptions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MethodOptions parseFrom(InputStream inputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MethodOptions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MethodOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MethodOptions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final MethodOptions getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.uninterpretedOption_.size(); i3++) {
                i2 += CodedOutputStream.computeMessageSize(999, this.uninterpretedOption_.get(i3));
            }
            int extensionsSerializedSize = i2 + extensionsSerializedSize() + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = extensionsSerializedSize;
            return extensionsSerializedSize;
        }

        @Override // com.google.protobuf.DescriptorProtos.MethodOptionsOrBuilder
        public final UninterpretedOption getUninterpretedOption(int i) {
            return this.uninterpretedOption_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.MethodOptionsOrBuilder
        public final int getUninterpretedOptionCount() {
            return this.uninterpretedOption_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.MethodOptionsOrBuilder
        public final List<UninterpretedOption> getUninterpretedOptionList() {
            return this.uninterpretedOption_;
        }

        @Override // com.google.protobuf.DescriptorProtos.MethodOptionsOrBuilder
        public final UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
            return this.uninterpretedOption_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.MethodOptionsOrBuilder
        public final List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
            return this.uninterpretedOption_;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_MethodOptions_fieldAccessorTable;
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessage, com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                if (!getUninterpretedOption(i).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            if (extensionsAreInitialized()) {
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
            return new Builder(builderParent, null);
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
            GeneratedMessage.ExtendableMessage<MessageType>.ExtensionWriter newExtensionWriter = newExtensionWriter();
            for (int i = 0; i < this.uninterpretedOption_.size(); i++) {
                codedOutputStream.writeMessage(999, this.uninterpretedOption_.get(i));
            }
            newExtensionWriter.writeUntil(536870912, codedOutputStream);
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface MethodOptionsOrBuilder extends GeneratedMessage.ExtendableMessageOrBuilder<MethodOptions> {
        UninterpretedOption getUninterpretedOption(int i);

        int getUninterpretedOptionCount();

        List<UninterpretedOption> getUninterpretedOptionList();

        UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i);

        List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList();
    }

    /* loaded from: classes.dex */
    public static final class ServiceDescriptorProto extends GeneratedMessage implements ServiceDescriptorProtoOrBuilder {
        public static final int METHOD_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int OPTIONS_FIELD_NUMBER = 3;
        private static final ServiceDescriptorProto defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private List<MethodDescriptorProto> method_;
        private Object name_;
        private ServiceOptions options_;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ServiceDescriptorProtoOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<MethodDescriptorProto, MethodDescriptorProto.Builder, MethodDescriptorProtoOrBuilder> methodBuilder_;
            private List<MethodDescriptorProto> method_;
            private Object name_;
            private SingleFieldBuilder<ServiceOptions, ServiceOptions.Builder, ServiceOptionsOrBuilder> optionsBuilder_;
            private ServiceOptions options_;

            private Builder() {
                this.name_ = "";
                this.method_ = Collections.emptyList();
                this.options_ = ServiceOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.name_ = "";
                this.method_ = Collections.emptyList();
                this.options_ = ServiceOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                this(builderParent);
            }

            static /* synthetic */ Builder access$18() {
                return create();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public ServiceDescriptorProto buildParsed() throws InvalidProtocolBufferException {
                ServiceDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
            }

            private static Builder create() {
                return new Builder();
            }

            private void ensureMethodIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.method_ = new ArrayList(this.method_);
                    this.bitField0_ |= 2;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.f7917x158c73ed;
            }

            private RepeatedFieldBuilder<MethodDescriptorProto, MethodDescriptorProto.Builder, MethodDescriptorProtoOrBuilder> getMethodFieldBuilder() {
                if (this.methodBuilder_ == null) {
                    this.methodBuilder_ = new RepeatedFieldBuilder<>(this.method_, (this.bitField0_ & 2) == 2, getParentForChildren(), isClean());
                    this.method_ = null;
                }
                return this.methodBuilder_;
            }

            private SingleFieldBuilder<ServiceOptions, ServiceOptions.Builder, ServiceOptionsOrBuilder> getOptionsFieldBuilder() {
                if (this.optionsBuilder_ == null) {
                    this.optionsBuilder_ = new SingleFieldBuilder<>(this.options_, getParentForChildren(), isClean());
                    this.options_ = null;
                }
                return this.optionsBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getMethodFieldBuilder();
                    getOptionsFieldBuilder();
                }
            }

            public final Builder addAllMethod(Iterable<? extends MethodDescriptorProto> iterable) {
                if (this.methodBuilder_ != null) {
                    this.methodBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureMethodIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.method_);
                onChanged();
                return this;
            }

            public final Builder addMethod(int i, MethodDescriptorProto.Builder builder) {
                if (this.methodBuilder_ != null) {
                    this.methodBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureMethodIsMutable();
                this.method_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addMethod(int i, MethodDescriptorProto methodDescriptorProto) {
                if (this.methodBuilder_ != null) {
                    this.methodBuilder_.addMessage(i, methodDescriptorProto);
                    return this;
                }
                if (methodDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureMethodIsMutable();
                this.method_.add(i, methodDescriptorProto);
                onChanged();
                return this;
            }

            public final Builder addMethod(MethodDescriptorProto.Builder builder) {
                if (this.methodBuilder_ != null) {
                    this.methodBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureMethodIsMutable();
                this.method_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addMethod(MethodDescriptorProto methodDescriptorProto) {
                if (this.methodBuilder_ != null) {
                    this.methodBuilder_.addMessage(methodDescriptorProto);
                    return this;
                }
                if (methodDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureMethodIsMutable();
                this.method_.add(methodDescriptorProto);
                onChanged();
                return this;
            }

            public final MethodDescriptorProto.Builder addMethodBuilder() {
                return getMethodFieldBuilder().addBuilder(MethodDescriptorProto.getDefaultInstance());
            }

            public final MethodDescriptorProto.Builder addMethodBuilder(int i) {
                return getMethodFieldBuilder().addBuilder(i, MethodDescriptorProto.getDefaultInstance());
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final ServiceDescriptorProto build() {
                ServiceDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final ServiceDescriptorProto buildPartial() {
                List<MethodDescriptorProto> build;
                ServiceDescriptorProto serviceDescriptorProto = new ServiceDescriptorProto(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                serviceDescriptorProto.name_ = this.name_;
                if (this.methodBuilder_ == null) {
                    if ((this.bitField0_ & 2) == 2) {
                        this.method_ = Collections.unmodifiableList(this.method_);
                        this.bitField0_ &= -3;
                    }
                    build = this.method_;
                } else {
                    build = this.methodBuilder_.build();
                }
                serviceDescriptorProto.method_ = build;
                if ((i & 4) == 4) {
                    i2 |= 2;
                }
                serviceDescriptorProto.options_ = this.optionsBuilder_ == null ? this.options_ : this.optionsBuilder_.build();
                serviceDescriptorProto.bitField0_ = i2;
                onBuilt();
                return serviceDescriptorProto;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.name_ = "";
                this.bitField0_ &= -2;
                if (this.methodBuilder_ == null) {
                    this.method_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    this.methodBuilder_.clear();
                }
                if (this.optionsBuilder_ == null) {
                    this.options_ = ServiceOptions.getDefaultInstance();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public final Builder clearMethod() {
                if (this.methodBuilder_ != null) {
                    this.methodBuilder_.clear();
                    return this;
                }
                this.method_ = Collections.emptyList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public final Builder clearName() {
                this.bitField0_ &= -2;
                this.name_ = ServiceDescriptorProto.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public final Builder clearOptions() {
                if (this.optionsBuilder_ == null) {
                    this.options_ = ServiceOptions.getDefaultInstance();
                    onChanged();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final ServiceDescriptorProto getDefaultInstanceForType() {
                return ServiceDescriptorProto.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return ServiceDescriptorProto.getDescriptor();
            }

            @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
            public final MethodDescriptorProto getMethod(int i) {
                return this.methodBuilder_ == null ? this.method_.get(i) : this.methodBuilder_.getMessage(i);
            }

            public final MethodDescriptorProto.Builder getMethodBuilder(int i) {
                return getMethodFieldBuilder().getBuilder(i);
            }

            public final List<MethodDescriptorProto.Builder> getMethodBuilderList() {
                return getMethodFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
            public final int getMethodCount() {
                return this.methodBuilder_ == null ? this.method_.size() : this.methodBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
            public final List<MethodDescriptorProto> getMethodList() {
                return this.methodBuilder_ == null ? Collections.unmodifiableList(this.method_) : this.methodBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
            public final MethodDescriptorProtoOrBuilder getMethodOrBuilder(int i) {
                return (MethodDescriptorProtoOrBuilder) (this.methodBuilder_ == null ? this.method_.get(i) : this.methodBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
            public final List<? extends MethodDescriptorProtoOrBuilder> getMethodOrBuilderList() {
                return this.methodBuilder_ != null ? this.methodBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.method_);
            }

            @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
            public final String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
            public final ServiceOptions getOptions() {
                return this.optionsBuilder_ == null ? this.options_ : this.optionsBuilder_.getMessage();
            }

            public final ServiceOptions.Builder getOptionsBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return getOptionsFieldBuilder().getBuilder();
            }

            @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
            public final ServiceOptionsOrBuilder getOptionsOrBuilder() {
                return this.optionsBuilder_ != null ? this.optionsBuilder_.getMessageOrBuilder() : this.options_;
            }

            @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
            public final boolean hasName() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
            public final boolean hasOptions() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.f7918xee335d6b;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                for (int i = 0; i < getMethodCount(); i++) {
                    if (!getMethod(i).isInitialized()) {
                        return false;
                    }
                }
                return !hasOptions() || getOptions().isInitialized();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                while (true) {
                    int readTag = codedInputStream.readTag();
                    if (readTag == 0) {
                        break;
                    }
                    if (readTag == 10) {
                        this.bitField0_ |= 1;
                        this.name_ = codedInputStream.readBytes();
                    } else if (readTag == 18) {
                        MethodDescriptorProto.Builder newBuilder2 = MethodDescriptorProto.newBuilder();
                        codedInputStream.readMessage(newBuilder2, extensionRegistryLite);
                        addMethod(newBuilder2.buildPartial());
                    } else if (readTag == 26) {
                        ServiceOptions.Builder newBuilder3 = ServiceOptions.newBuilder();
                        if (hasOptions()) {
                            newBuilder3.mergeFrom(getOptions());
                        }
                        codedInputStream.readMessage(newBuilder3, extensionRegistryLite);
                        setOptions(newBuilder3.buildPartial());
                    } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        break;
                    }
                }
                setUnknownFields(newBuilder.build());
                onChanged();
                return this;
            }

            public final Builder mergeFrom(ServiceDescriptorProto serviceDescriptorProto) {
                if (serviceDescriptorProto == ServiceDescriptorProto.getDefaultInstance()) {
                    return this;
                }
                if (serviceDescriptorProto.hasName()) {
                    setName(serviceDescriptorProto.getName());
                }
                if (this.methodBuilder_ == null) {
                    if (!serviceDescriptorProto.method_.isEmpty()) {
                        if (this.method_.isEmpty()) {
                            this.method_ = serviceDescriptorProto.method_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureMethodIsMutable();
                            this.method_.addAll(serviceDescriptorProto.method_);
                        }
                        onChanged();
                    }
                } else if (!serviceDescriptorProto.method_.isEmpty()) {
                    if (this.methodBuilder_.isEmpty()) {
                        this.methodBuilder_.dispose();
                        this.methodBuilder_ = null;
                        this.method_ = serviceDescriptorProto.method_;
                        this.bitField0_ &= -3;
                        this.methodBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getMethodFieldBuilder() : null;
                    } else {
                        this.methodBuilder_.addAllMessages(serviceDescriptorProto.method_);
                    }
                }
                if (serviceDescriptorProto.hasOptions()) {
                    mergeOptions(serviceDescriptorProto.getOptions());
                }
                mergeUnknownFields(serviceDescriptorProto.getUnknownFields());
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof ServiceDescriptorProto) {
                    return mergeFrom((ServiceDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeOptions(ServiceOptions serviceOptions) {
                if (this.optionsBuilder_ == null) {
                    if ((this.bitField0_ & 4) == 4 && this.options_ != ServiceOptions.getDefaultInstance()) {
                        serviceOptions = ServiceOptions.newBuilder(this.options_).mergeFrom(serviceOptions).buildPartial();
                    }
                    this.options_ = serviceOptions;
                    onChanged();
                } else {
                    this.optionsBuilder_.mergeFrom(serviceOptions);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public final Builder removeMethod(int i) {
                if (this.methodBuilder_ != null) {
                    this.methodBuilder_.remove(i);
                    return this;
                }
                ensureMethodIsMutable();
                this.method_.remove(i);
                onChanged();
                return this;
            }

            public final Builder setMethod(int i, MethodDescriptorProto.Builder builder) {
                if (this.methodBuilder_ != null) {
                    this.methodBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureMethodIsMutable();
                this.method_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setMethod(int i, MethodDescriptorProto methodDescriptorProto) {
                if (this.methodBuilder_ != null) {
                    this.methodBuilder_.setMessage(i, methodDescriptorProto);
                    return this;
                }
                if (methodDescriptorProto == null) {
                    throw new NullPointerException();
                }
                ensureMethodIsMutable();
                this.method_.set(i, methodDescriptorProto);
                onChanged();
                return this;
            }

            public final Builder setName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = str;
                onChanged();
                return this;
            }

            final void setName(ByteString byteString) {
                this.bitField0_ |= 1;
                this.name_ = byteString;
                onChanged();
            }

            public final Builder setOptions(ServiceOptions.Builder builder) {
                if (this.optionsBuilder_ == null) {
                    this.options_ = builder.build();
                    onChanged();
                } else {
                    this.optionsBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                return this;
            }

            public final Builder setOptions(ServiceOptions serviceOptions) {
                if (this.optionsBuilder_ != null) {
                    this.optionsBuilder_.setMessage(serviceOptions);
                } else {
                    if (serviceOptions == null) {
                        throw new NullPointerException();
                    }
                    this.options_ = serviceOptions;
                    onChanged();
                }
                this.bitField0_ |= 4;
                return this;
            }
        }

        static {
            ServiceDescriptorProto serviceDescriptorProto = new ServiceDescriptorProto(true);
            defaultInstance = serviceDescriptorProto;
            serviceDescriptorProto.initFields();
        }

        private ServiceDescriptorProto(Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        /* synthetic */ ServiceDescriptorProto(Builder builder, ServiceDescriptorProto serviceDescriptorProto) {
            this(builder);
        }

        private ServiceDescriptorProto(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        public static ServiceDescriptorProto getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.f7917x158c73ed;
        }

        private ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.name_ = "";
            this.method_ = Collections.emptyList();
            this.options_ = ServiceOptions.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.access$18();
        }

        public static Builder newBuilder(ServiceDescriptorProto serviceDescriptorProto) {
            return newBuilder().mergeFrom(serviceDescriptorProto);
        }

        public static ServiceDescriptorProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        public static ServiceDescriptorProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static ServiceDescriptorProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static ServiceDescriptorProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static ServiceDescriptorProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
        }

        public static ServiceDescriptorProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static ServiceDescriptorProto parseFrom(InputStream inputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static ServiceDescriptorProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static ServiceDescriptorProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static ServiceDescriptorProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final ServiceDescriptorProto getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
        public final MethodDescriptorProto getMethod(int i) {
            return this.method_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
        public final int getMethodCount() {
            return this.method_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
        public final List<MethodDescriptorProto> getMethodList() {
            return this.method_;
        }

        @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
        public final MethodDescriptorProtoOrBuilder getMethodOrBuilder(int i) {
            return this.method_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
        public final List<? extends MethodDescriptorProtoOrBuilder> getMethodOrBuilderList() {
            return this.method_;
        }

        @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
        public final String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.name_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
        public final ServiceOptions getOptions() {
            return this.options_;
        }

        @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
        public final ServiceOptionsOrBuilder getOptionsOrBuilder() {
            return this.options_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeBytesSize = (this.bitField0_ & 1) == 1 ? CodedOutputStream.computeBytesSize(1, getNameBytes()) + 0 : 0;
            for (int i2 = 0; i2 < this.method_.size(); i2++) {
                computeBytesSize += CodedOutputStream.computeMessageSize(2, this.method_.get(i2));
            }
            if ((this.bitField0_ & 2) == 2) {
                computeBytesSize += CodedOutputStream.computeMessageSize(3, this.options_);
            }
            int serializedSize = computeBytesSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
        public final boolean hasName() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.DescriptorProtos.ServiceDescriptorProtoOrBuilder
        public final boolean hasOptions() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.f7918xee335d6b;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            for (int i = 0; i < getMethodCount(); i++) {
                if (!getMethod(i).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            if (!hasOptions() || getOptions().isInitialized()) {
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
            return new Builder(builderParent, null);
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
                codedOutputStream.writeBytes(1, getNameBytes());
            }
            for (int i = 0; i < this.method_.size(); i++) {
                codedOutputStream.writeMessage(2, this.method_.get(i));
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeMessage(3, this.options_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface ServiceDescriptorProtoOrBuilder extends MessageOrBuilder {
        MethodDescriptorProto getMethod(int i);

        int getMethodCount();

        List<MethodDescriptorProto> getMethodList();

        MethodDescriptorProtoOrBuilder getMethodOrBuilder(int i);

        List<? extends MethodDescriptorProtoOrBuilder> getMethodOrBuilderList();

        String getName();

        ServiceOptions getOptions();

        ServiceOptionsOrBuilder getOptionsOrBuilder();

        boolean hasName();

        boolean hasOptions();
    }

    /* loaded from: classes.dex */
    public static final class ServiceOptions extends GeneratedMessage.ExtendableMessage<ServiceOptions> implements ServiceOptionsOrBuilder {
        public static final int UNINTERPRETED_OPTION_FIELD_NUMBER = 999;
        private static final ServiceOptions defaultInstance;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private List<UninterpretedOption> uninterpretedOption_;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.ExtendableBuilder<ServiceOptions, Builder> implements ServiceOptionsOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<UninterpretedOption, UninterpretedOption.Builder, UninterpretedOptionOrBuilder> uninterpretedOptionBuilder_;
            private List<UninterpretedOption> uninterpretedOption_;

            private Builder() {
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                this(builderParent);
            }

            static /* synthetic */ Builder access$18() {
                return create();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public ServiceOptions buildParsed() throws InvalidProtocolBufferException {
                ServiceOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
            }

            private static Builder create() {
                return new Builder();
            }

            private void ensureUninterpretedOptionIsMutable() {
                if ((this.bitField0_ & 1) != 1) {
                    this.uninterpretedOption_ = new ArrayList(this.uninterpretedOption_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_ServiceOptions_descriptor;
            }

            private RepeatedFieldBuilder<UninterpretedOption, UninterpretedOption.Builder, UninterpretedOptionOrBuilder> getUninterpretedOptionFieldBuilder() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOptionBuilder_ = new RepeatedFieldBuilder<>(this.uninterpretedOption_, (this.bitField0_ & 1) == 1, getParentForChildren(), isClean());
                    this.uninterpretedOption_ = null;
                }
                return this.uninterpretedOptionBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getUninterpretedOptionFieldBuilder();
                }
            }

            public final Builder addAllUninterpretedOption(Iterable<? extends UninterpretedOption> iterable) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                GeneratedMessage.ExtendableBuilder.addAll(iterable, this.uninterpretedOption_);
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(int i, UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(i, uninterpretedOption);
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addUninterpretedOption(UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.add(uninterpretedOption);
                onChanged();
                return this;
            }

            public final UninterpretedOption.Builder addUninterpretedOptionBuilder() {
                return getUninterpretedOptionFieldBuilder().addBuilder(UninterpretedOption.getDefaultInstance());
            }

            public final UninterpretedOption.Builder addUninterpretedOptionBuilder(int i) {
                return getUninterpretedOptionFieldBuilder().addBuilder(i, UninterpretedOption.getDefaultInstance());
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final ServiceOptions build() {
                ServiceOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final ServiceOptions buildPartial() {
                List<UninterpretedOption> build;
                ServiceOptions serviceOptions = new ServiceOptions(this, null);
                if (this.uninterpretedOptionBuilder_ == null) {
                    if ((this.bitField0_ & 1) == 1) {
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                        this.bitField0_ &= -2;
                    }
                    build = this.uninterpretedOption_;
                } else {
                    build = this.uninterpretedOptionBuilder_.build();
                }
                serviceOptions.uninterpretedOption_ = build;
                onBuilt();
                return serviceOptions;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.clear();
                    return this;
                }
                this.uninterpretedOption_ = Collections.emptyList();
                this.bitField0_ &= -2;
                return this;
            }

            public final Builder clearUninterpretedOption() {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.clear();
                    return this;
                }
                this.uninterpretedOption_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final ServiceOptions getDefaultInstanceForType() {
                return ServiceOptions.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return ServiceOptions.getDescriptor();
            }

            @Override // com.google.protobuf.DescriptorProtos.ServiceOptionsOrBuilder
            public final UninterpretedOption getUninterpretedOption(int i) {
                return this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.get(i) : this.uninterpretedOptionBuilder_.getMessage(i);
            }

            public final UninterpretedOption.Builder getUninterpretedOptionBuilder(int i) {
                return getUninterpretedOptionFieldBuilder().getBuilder(i);
            }

            public final List<UninterpretedOption.Builder> getUninterpretedOptionBuilderList() {
                return getUninterpretedOptionFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.ServiceOptionsOrBuilder
            public final int getUninterpretedOptionCount() {
                return this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.size() : this.uninterpretedOptionBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.ServiceOptionsOrBuilder
            public final List<UninterpretedOption> getUninterpretedOptionList() {
                return this.uninterpretedOptionBuilder_ == null ? Collections.unmodifiableList(this.uninterpretedOption_) : this.uninterpretedOptionBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.ServiceOptionsOrBuilder
            public final UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
                return (UninterpretedOptionOrBuilder) (this.uninterpretedOptionBuilder_ == null ? this.uninterpretedOption_.get(i) : this.uninterpretedOptionBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.ServiceOptionsOrBuilder
            public final List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
                return this.uninterpretedOptionBuilder_ != null ? this.uninterpretedOptionBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.uninterpretedOption_);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.f7919x371e666;
            }

            @Override // com.google.protobuf.GeneratedMessage.ExtendableBuilder, com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                    if (!getUninterpretedOption(i).isInitialized()) {
                        return false;
                    }
                }
                return extensionsAreInitialized();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                while (true) {
                    int readTag = codedInputStream.readTag();
                    if (readTag == 0) {
                        break;
                    }
                    if (readTag == 7994) {
                        UninterpretedOption.Builder newBuilder2 = UninterpretedOption.newBuilder();
                        codedInputStream.readMessage(newBuilder2, extensionRegistryLite);
                        addUninterpretedOption(newBuilder2.buildPartial());
                    } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        break;
                    }
                }
                setUnknownFields(newBuilder.build());
                onChanged();
                return this;
            }

            public final Builder mergeFrom(ServiceOptions serviceOptions) {
                if (serviceOptions == ServiceOptions.getDefaultInstance()) {
                    return this;
                }
                if (this.uninterpretedOptionBuilder_ == null) {
                    if (!serviceOptions.uninterpretedOption_.isEmpty()) {
                        if (this.uninterpretedOption_.isEmpty()) {
                            this.uninterpretedOption_ = serviceOptions.uninterpretedOption_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureUninterpretedOptionIsMutable();
                            this.uninterpretedOption_.addAll(serviceOptions.uninterpretedOption_);
                        }
                        onChanged();
                    }
                } else if (!serviceOptions.uninterpretedOption_.isEmpty()) {
                    if (this.uninterpretedOptionBuilder_.isEmpty()) {
                        this.uninterpretedOptionBuilder_.dispose();
                        this.uninterpretedOptionBuilder_ = null;
                        this.uninterpretedOption_ = serviceOptions.uninterpretedOption_;
                        this.bitField0_ &= -2;
                        this.uninterpretedOptionBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getUninterpretedOptionFieldBuilder() : null;
                    } else {
                        this.uninterpretedOptionBuilder_.addAllMessages(serviceOptions.uninterpretedOption_);
                    }
                }
                mergeExtensionFields(serviceOptions);
                mergeUnknownFields(serviceOptions.getUnknownFields());
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof ServiceOptions) {
                    return mergeFrom((ServiceOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder removeUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.remove(i);
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.remove(i);
                onChanged();
                return this;
            }

            public final Builder setUninterpretedOption(int i, UninterpretedOption.Builder builder) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, uninterpretedOption);
                    return this;
                }
                if (uninterpretedOption == null) {
                    throw new NullPointerException();
                }
                ensureUninterpretedOptionIsMutable();
                this.uninterpretedOption_.set(i, uninterpretedOption);
                onChanged();
                return this;
            }
        }

        static {
            ServiceOptions serviceOptions = new ServiceOptions(true);
            defaultInstance = serviceOptions;
            serviceOptions.initFields();
        }

        private ServiceOptions(Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        /* synthetic */ ServiceOptions(Builder builder, ServiceOptions serviceOptions) {
            this(builder);
        }

        private ServiceOptions(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        public static ServiceOptions getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_ServiceOptions_descriptor;
        }

        private void initFields() {
            this.uninterpretedOption_ = Collections.emptyList();
        }

        public static Builder newBuilder() {
            return Builder.access$18();
        }

        public static Builder newBuilder(ServiceOptions serviceOptions) {
            return newBuilder().mergeFrom(serviceOptions);
        }

        public static ServiceOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        public static ServiceOptions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static ServiceOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static ServiceOptions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static ServiceOptions parseFrom(CodedInputStream codedInputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
        }

        public static ServiceOptions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static ServiceOptions parseFrom(InputStream inputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static ServiceOptions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static ServiceOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static ServiceOptions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final ServiceOptions getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.uninterpretedOption_.size(); i3++) {
                i2 += CodedOutputStream.computeMessageSize(999, this.uninterpretedOption_.get(i3));
            }
            int extensionsSerializedSize = i2 + extensionsSerializedSize() + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = extensionsSerializedSize;
            return extensionsSerializedSize;
        }

        @Override // com.google.protobuf.DescriptorProtos.ServiceOptionsOrBuilder
        public final UninterpretedOption getUninterpretedOption(int i) {
            return this.uninterpretedOption_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.ServiceOptionsOrBuilder
        public final int getUninterpretedOptionCount() {
            return this.uninterpretedOption_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.ServiceOptionsOrBuilder
        public final List<UninterpretedOption> getUninterpretedOptionList() {
            return this.uninterpretedOption_;
        }

        @Override // com.google.protobuf.DescriptorProtos.ServiceOptionsOrBuilder
        public final UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
            return this.uninterpretedOption_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.ServiceOptionsOrBuilder
        public final List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
            return this.uninterpretedOption_;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.f7919x371e666;
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessage, com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                if (!getUninterpretedOption(i).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            if (extensionsAreInitialized()) {
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
            return new Builder(builderParent, null);
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
            GeneratedMessage.ExtendableMessage<MessageType>.ExtensionWriter newExtensionWriter = newExtensionWriter();
            for (int i = 0; i < this.uninterpretedOption_.size(); i++) {
                codedOutputStream.writeMessage(999, this.uninterpretedOption_.get(i));
            }
            newExtensionWriter.writeUntil(536870912, codedOutputStream);
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface ServiceOptionsOrBuilder extends GeneratedMessage.ExtendableMessageOrBuilder<ServiceOptions> {
        UninterpretedOption getUninterpretedOption(int i);

        int getUninterpretedOptionCount();

        List<UninterpretedOption> getUninterpretedOptionList();

        UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i);

        List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList();
    }

    /* loaded from: classes.dex */
    public static final class SourceCodeInfo extends GeneratedMessage implements SourceCodeInfoOrBuilder {
        public static final int LOCATION_FIELD_NUMBER = 1;
        private static final SourceCodeInfo defaultInstance;
        private static final long serialVersionUID = 0;
        private List<Location> location_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SourceCodeInfoOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<Location, Location.Builder, LocationOrBuilder> locationBuilder_;
            private List<Location> location_;

            private Builder() {
                this.location_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.location_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                this(builderParent);
            }

            static /* synthetic */ Builder access$18() {
                return create();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public SourceCodeInfo buildParsed() throws InvalidProtocolBufferException {
                SourceCodeInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
            }

            private static Builder create() {
                return new Builder();
            }

            private void ensureLocationIsMutable() {
                if ((this.bitField0_ & 1) != 1) {
                    this.location_ = new ArrayList(this.location_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_SourceCodeInfo_descriptor;
            }

            private RepeatedFieldBuilder<Location, Location.Builder, LocationOrBuilder> getLocationFieldBuilder() {
                if (this.locationBuilder_ == null) {
                    this.locationBuilder_ = new RepeatedFieldBuilder<>(this.location_, (this.bitField0_ & 1) == 1, getParentForChildren(), isClean());
                    this.location_ = null;
                }
                return this.locationBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getLocationFieldBuilder();
                }
            }

            public final Builder addAllLocation(Iterable<? extends Location> iterable) {
                if (this.locationBuilder_ != null) {
                    this.locationBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureLocationIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.location_);
                onChanged();
                return this;
            }

            public final Builder addLocation(int i, Location.Builder builder) {
                if (this.locationBuilder_ != null) {
                    this.locationBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureLocationIsMutable();
                this.location_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addLocation(int i, Location location) {
                if (this.locationBuilder_ != null) {
                    this.locationBuilder_.addMessage(i, location);
                    return this;
                }
                if (location == null) {
                    throw new NullPointerException();
                }
                ensureLocationIsMutable();
                this.location_.add(i, location);
                onChanged();
                return this;
            }

            public final Builder addLocation(Location.Builder builder) {
                if (this.locationBuilder_ != null) {
                    this.locationBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureLocationIsMutable();
                this.location_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addLocation(Location location) {
                if (this.locationBuilder_ != null) {
                    this.locationBuilder_.addMessage(location);
                    return this;
                }
                if (location == null) {
                    throw new NullPointerException();
                }
                ensureLocationIsMutable();
                this.location_.add(location);
                onChanged();
                return this;
            }

            public final Location.Builder addLocationBuilder() {
                return getLocationFieldBuilder().addBuilder(Location.getDefaultInstance());
            }

            public final Location.Builder addLocationBuilder(int i) {
                return getLocationFieldBuilder().addBuilder(i, Location.getDefaultInstance());
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final SourceCodeInfo build() {
                SourceCodeInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final SourceCodeInfo buildPartial() {
                List<Location> build;
                SourceCodeInfo sourceCodeInfo = new SourceCodeInfo(this, null);
                if (this.locationBuilder_ == null) {
                    if ((this.bitField0_ & 1) == 1) {
                        this.location_ = Collections.unmodifiableList(this.location_);
                        this.bitField0_ &= -2;
                    }
                    build = this.location_;
                } else {
                    build = this.locationBuilder_.build();
                }
                sourceCodeInfo.location_ = build;
                onBuilt();
                return sourceCodeInfo;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                if (this.locationBuilder_ != null) {
                    this.locationBuilder_.clear();
                    return this;
                }
                this.location_ = Collections.emptyList();
                this.bitField0_ &= -2;
                return this;
            }

            public final Builder clearLocation() {
                if (this.locationBuilder_ != null) {
                    this.locationBuilder_.clear();
                    return this;
                }
                this.location_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final SourceCodeInfo getDefaultInstanceForType() {
                return SourceCodeInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return SourceCodeInfo.getDescriptor();
            }

            @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfoOrBuilder
            public final Location getLocation(int i) {
                return this.locationBuilder_ == null ? this.location_.get(i) : this.locationBuilder_.getMessage(i);
            }

            public final Location.Builder getLocationBuilder(int i) {
                return getLocationFieldBuilder().getBuilder(i);
            }

            public final List<Location.Builder> getLocationBuilderList() {
                return getLocationFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfoOrBuilder
            public final int getLocationCount() {
                return this.locationBuilder_ == null ? this.location_.size() : this.locationBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfoOrBuilder
            public final List<Location> getLocationList() {
                return this.locationBuilder_ == null ? Collections.unmodifiableList(this.location_) : this.locationBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfoOrBuilder
            public final LocationOrBuilder getLocationOrBuilder(int i) {
                return (LocationOrBuilder) (this.locationBuilder_ == null ? this.location_.get(i) : this.locationBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfoOrBuilder
            public final List<? extends LocationOrBuilder> getLocationOrBuilderList() {
                return this.locationBuilder_ != null ? this.locationBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.location_);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.f7922x532209f9;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                while (true) {
                    int readTag = codedInputStream.readTag();
                    if (readTag == 0) {
                        break;
                    }
                    if (readTag == 10) {
                        Location.Builder newBuilder2 = Location.newBuilder();
                        codedInputStream.readMessage(newBuilder2, extensionRegistryLite);
                        addLocation(newBuilder2.buildPartial());
                    } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        break;
                    }
                }
                setUnknownFields(newBuilder.build());
                onChanged();
                return this;
            }

            public final Builder mergeFrom(SourceCodeInfo sourceCodeInfo) {
                if (sourceCodeInfo == SourceCodeInfo.getDefaultInstance()) {
                    return this;
                }
                if (this.locationBuilder_ == null) {
                    if (!sourceCodeInfo.location_.isEmpty()) {
                        if (this.location_.isEmpty()) {
                            this.location_ = sourceCodeInfo.location_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureLocationIsMutable();
                            this.location_.addAll(sourceCodeInfo.location_);
                        }
                        onChanged();
                    }
                } else if (!sourceCodeInfo.location_.isEmpty()) {
                    if (this.locationBuilder_.isEmpty()) {
                        this.locationBuilder_.dispose();
                        this.locationBuilder_ = null;
                        this.location_ = sourceCodeInfo.location_;
                        this.bitField0_ &= -2;
                        this.locationBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getLocationFieldBuilder() : null;
                    } else {
                        this.locationBuilder_.addAllMessages(sourceCodeInfo.location_);
                    }
                }
                mergeUnknownFields(sourceCodeInfo.getUnknownFields());
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof SourceCodeInfo) {
                    return mergeFrom((SourceCodeInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder removeLocation(int i) {
                if (this.locationBuilder_ != null) {
                    this.locationBuilder_.remove(i);
                    return this;
                }
                ensureLocationIsMutable();
                this.location_.remove(i);
                onChanged();
                return this;
            }

            public final Builder setLocation(int i, Location.Builder builder) {
                if (this.locationBuilder_ != null) {
                    this.locationBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureLocationIsMutable();
                this.location_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setLocation(int i, Location location) {
                if (this.locationBuilder_ != null) {
                    this.locationBuilder_.setMessage(i, location);
                    return this;
                }
                if (location == null) {
                    throw new NullPointerException();
                }
                ensureLocationIsMutable();
                this.location_.set(i, location);
                onChanged();
                return this;
            }
        }

        /* loaded from: classes.dex */
        public static final class Location extends GeneratedMessage implements LocationOrBuilder {
            public static final int LEADING_COMMENTS_FIELD_NUMBER = 3;
            public static final int PATH_FIELD_NUMBER = 1;
            public static final int SPAN_FIELD_NUMBER = 2;
            public static final int TRAILING_COMMENTS_FIELD_NUMBER = 4;
            private static final Location defaultInstance;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private Object leadingComments_;
            private byte memoizedIsInitialized;
            private int memoizedSerializedSize;
            private int pathMemoizedSerializedSize;
            private List<Integer> path_;
            private int spanMemoizedSerializedSize;
            private List<Integer> span_;
            private Object trailingComments_;

            /* loaded from: classes.dex */
            public static final class Builder extends GeneratedMessage.Builder<Builder> implements LocationOrBuilder {
                private int bitField0_;
                private Object leadingComments_;
                private List<Integer> path_;
                private List<Integer> span_;
                private Object trailingComments_;

                private Builder() {
                    this.path_ = Collections.emptyList();
                    this.span_ = Collections.emptyList();
                    this.leadingComments_ = "";
                    this.trailingComments_ = "";
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.path_ = Collections.emptyList();
                    this.span_ = Collections.emptyList();
                    this.leadingComments_ = "";
                    this.trailingComments_ = "";
                    maybeForceBuilderInitialization();
                }

                /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                    this(builderParent);
                }

                static /* synthetic */ Builder access$18() {
                    return create();
                }

                /* JADX INFO: Access modifiers changed from: private */
                public Location buildParsed() throws InvalidProtocolBufferException {
                    Location buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
                }

                private static Builder create() {
                    return new Builder();
                }

                private void ensurePathIsMutable() {
                    if ((this.bitField0_ & 1) != 1) {
                        this.path_ = new ArrayList(this.path_);
                        this.bitField0_ |= 1;
                    }
                }

                private void ensureSpanIsMutable() {
                    if ((this.bitField0_ & 2) != 2) {
                        this.span_ = new ArrayList(this.span_);
                        this.bitField0_ |= 2;
                    }
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return DescriptorProtos.f7920xb210d08d;
                }

                private void maybeForceBuilderInitialization() {
                    boolean z = GeneratedMessage.alwaysUseFieldBuilders;
                }

                public final Builder addAllPath(Iterable<? extends Integer> iterable) {
                    ensurePathIsMutable();
                    GeneratedMessage.Builder.addAll(iterable, this.path_);
                    onChanged();
                    return this;
                }

                public final Builder addAllSpan(Iterable<? extends Integer> iterable) {
                    ensureSpanIsMutable();
                    GeneratedMessage.Builder.addAll(iterable, this.span_);
                    onChanged();
                    return this;
                }

                public final Builder addPath(int i) {
                    ensurePathIsMutable();
                    this.path_.add(Integer.valueOf(i));
                    onChanged();
                    return this;
                }

                public final Builder addSpan(int i) {
                    ensureSpanIsMutable();
                    this.span_.add(Integer.valueOf(i));
                    onChanged();
                    return this;
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public final Location build() {
                    Location buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public final Location buildPartial() {
                    Location location = new Location(this, null);
                    int i = this.bitField0_;
                    if ((this.bitField0_ & 1) == 1) {
                        this.path_ = Collections.unmodifiableList(this.path_);
                        this.bitField0_ &= -2;
                    }
                    location.path_ = this.path_;
                    if ((this.bitField0_ & 2) == 2) {
                        this.span_ = Collections.unmodifiableList(this.span_);
                        this.bitField0_ &= -3;
                    }
                    location.span_ = this.span_;
                    int i2 = (i & 4) != 4 ? 0 : 1;
                    location.leadingComments_ = this.leadingComments_;
                    if ((i & 8) == 8) {
                        i2 |= 2;
                    }
                    location.trailingComments_ = this.trailingComments_;
                    location.bitField0_ = i2;
                    onBuilt();
                    return location;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public final Builder clear() {
                    super.clear();
                    this.path_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    this.span_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    this.leadingComments_ = "";
                    this.bitField0_ &= -5;
                    this.trailingComments_ = "";
                    this.bitField0_ &= -9;
                    return this;
                }

                public final Builder clearLeadingComments() {
                    this.bitField0_ &= -5;
                    this.leadingComments_ = Location.getDefaultInstance().getLeadingComments();
                    onChanged();
                    return this;
                }

                public final Builder clearPath() {
                    this.path_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }

                public final Builder clearSpan() {
                    this.span_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                    return this;
                }

                public final Builder clearTrailingComments() {
                    this.bitField0_ &= -9;
                    this.trailingComments_ = Location.getDefaultInstance().getTrailingComments();
                    onChanged();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                /* renamed from: clone */
                public final Builder mo13986clone() {
                    return create().mergeFrom(buildPartial());
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public final Location getDefaultInstanceForType() {
                    return Location.getDefaultInstance();
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public final Descriptors.Descriptor getDescriptorForType() {
                    return Location.getDescriptor();
                }

                @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
                public final String getLeadingComments() {
                    Object obj = this.leadingComments_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.leadingComments_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
                public final int getPath(int i) {
                    return this.path_.get(i).intValue();
                }

                @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
                public final int getPathCount() {
                    return this.path_.size();
                }

                @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
                public final List<Integer> getPathList() {
                    return Collections.unmodifiableList(this.path_);
                }

                @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
                public final int getSpan(int i) {
                    return this.span_.get(i).intValue();
                }

                @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
                public final int getSpanCount() {
                    return this.span_.size();
                }

                @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
                public final List<Integer> getSpanList() {
                    return Collections.unmodifiableList(this.span_);
                }

                @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
                public final String getTrailingComments() {
                    Object obj = this.trailingComments_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.trailingComments_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
                public final boolean hasLeadingComments() {
                    return (this.bitField0_ & 4) == 4;
                }

                @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
                public final boolean hasTrailingComments() {
                    return (this.bitField0_ & 8) == 8;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return DescriptorProtos.f7921x9611a0b;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    List<Integer> list;
                    int pushLimit;
                    UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                    while (true) {
                        int readTag = codedInputStream.readTag();
                        if (readTag == 0) {
                            break;
                        }
                        if (readTag != 8) {
                            if (readTag == 10) {
                                pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    addPath(codedInputStream.readInt32());
                                }
                            } else if (readTag == 16) {
                                ensureSpanIsMutable();
                                list = this.span_;
                            } else if (readTag == 18) {
                                pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    addSpan(codedInputStream.readInt32());
                                }
                            } else if (readTag == 26) {
                                this.bitField0_ |= 4;
                                this.leadingComments_ = codedInputStream.readBytes();
                            } else if (readTag == 34) {
                                this.bitField0_ |= 8;
                                this.trailingComments_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                break;
                            }
                            codedInputStream.popLimit(pushLimit);
                        } else {
                            ensurePathIsMutable();
                            list = this.path_;
                        }
                        list.add(Integer.valueOf(codedInputStream.readInt32()));
                    }
                    setUnknownFields(newBuilder.build());
                    onChanged();
                    return this;
                }

                public final Builder mergeFrom(Location location) {
                    if (location == Location.getDefaultInstance()) {
                        return this;
                    }
                    if (!location.path_.isEmpty()) {
                        if (this.path_.isEmpty()) {
                            this.path_ = location.path_;
                            this.bitField0_ &= -2;
                        } else {
                            ensurePathIsMutable();
                            this.path_.addAll(location.path_);
                        }
                        onChanged();
                    }
                    if (!location.span_.isEmpty()) {
                        if (this.span_.isEmpty()) {
                            this.span_ = location.span_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureSpanIsMutable();
                            this.span_.addAll(location.span_);
                        }
                        onChanged();
                    }
                    if (location.hasLeadingComments()) {
                        setLeadingComments(location.getLeadingComments());
                    }
                    if (location.hasTrailingComments()) {
                        setTrailingComments(location.getTrailingComments());
                    }
                    mergeUnknownFields(location.getUnknownFields());
                    return this;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public final Builder mergeFrom(Message message) {
                    if (message instanceof Location) {
                        return mergeFrom((Location) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public final Builder setLeadingComments(String str) {
                    if (str == null) {
                        throw new NullPointerException();
                    }
                    this.bitField0_ |= 4;
                    this.leadingComments_ = str;
                    onChanged();
                    return this;
                }

                final void setLeadingComments(ByteString byteString) {
                    this.bitField0_ |= 4;
                    this.leadingComments_ = byteString;
                    onChanged();
                }

                public final Builder setPath(int i, int i2) {
                    ensurePathIsMutable();
                    this.path_.set(i, Integer.valueOf(i2));
                    onChanged();
                    return this;
                }

                public final Builder setSpan(int i, int i2) {
                    ensureSpanIsMutable();
                    this.span_.set(i, Integer.valueOf(i2));
                    onChanged();
                    return this;
                }

                public final Builder setTrailingComments(String str) {
                    if (str == null) {
                        throw new NullPointerException();
                    }
                    this.bitField0_ |= 8;
                    this.trailingComments_ = str;
                    onChanged();
                    return this;
                }

                final void setTrailingComments(ByteString byteString) {
                    this.bitField0_ |= 8;
                    this.trailingComments_ = byteString;
                    onChanged();
                }
            }

            static {
                Location location = new Location(true);
                defaultInstance = location;
                location.initFields();
            }

            private Location(Builder builder) {
                super(builder);
                this.pathMemoizedSerializedSize = -1;
                this.spanMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
            }

            /* synthetic */ Location(Builder builder, Location location) {
                this(builder);
            }

            private Location(boolean z) {
                this.pathMemoizedSerializedSize = -1;
                this.spanMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
            }

            public static Location getDefaultInstance() {
                return defaultInstance;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.f7920xb210d08d;
            }

            private ByteString getLeadingCommentsBytes() {
                Object obj = this.leadingComments_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.leadingComments_ = copyFromUtf8;
                return copyFromUtf8;
            }

            private ByteString getTrailingCommentsBytes() {
                Object obj = this.trailingComments_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.trailingComments_ = copyFromUtf8;
                return copyFromUtf8;
            }

            private void initFields() {
                this.path_ = Collections.emptyList();
                this.span_ = Collections.emptyList();
                this.leadingComments_ = "";
                this.trailingComments_ = "";
            }

            public static Builder newBuilder() {
                return Builder.access$18();
            }

            public static Builder newBuilder(Location location) {
                return newBuilder().mergeFrom(location);
            }

            public static Location parseDelimitedFrom(InputStream inputStream) throws IOException {
                Builder newBuilder = newBuilder();
                if (newBuilder.mergeDelimitedFrom(inputStream)) {
                    return newBuilder.buildParsed();
                }
                return null;
            }

            public static Location parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                Builder newBuilder = newBuilder();
                if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                    return newBuilder.buildParsed();
                }
                return null;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static Location parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static Location parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static Location parseFrom(CodedInputStream codedInputStream) throws IOException {
                return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
            }

            public static Location parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static Location parseFrom(InputStream inputStream) throws IOException {
                return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static Location parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static Location parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static Location parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final Location getDefaultInstanceForType() {
                return defaultInstance;
            }

            @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
            public final String getLeadingComments() {
                Object obj = this.leadingComments_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (Internal.isValidUtf8(byteString)) {
                    this.leadingComments_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
            public final int getPath(int i) {
                return this.path_.get(i).intValue();
            }

            @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
            public final int getPathCount() {
                return this.path_.size();
            }

            @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
            public final List<Integer> getPathList() {
                return this.path_;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public final int getSerializedSize() {
                int i = this.memoizedSerializedSize;
                if (i != -1) {
                    return i;
                }
                int i2 = 0;
                for (int i3 = 0; i3 < this.path_.size(); i3++) {
                    i2 += CodedOutputStream.computeInt32SizeNoTag(this.path_.get(i3).intValue());
                }
                int i4 = i2 + 0;
                if (!getPathList().isEmpty()) {
                    i4 = i4 + 1 + CodedOutputStream.computeInt32SizeNoTag(i2);
                }
                int i5 = i4;
                this.pathMemoizedSerializedSize = i2;
                int i6 = 0;
                for (int i7 = 0; i7 < this.span_.size(); i7++) {
                    i6 += CodedOutputStream.computeInt32SizeNoTag(this.span_.get(i7).intValue());
                }
                int i8 = i5 + i6;
                if (!getSpanList().isEmpty()) {
                    i8 = i8 + 1 + CodedOutputStream.computeInt32SizeNoTag(i6);
                }
                this.spanMemoizedSerializedSize = i6;
                if ((this.bitField0_ & 1) == 1) {
                    i8 += CodedOutputStream.computeBytesSize(3, getLeadingCommentsBytes());
                }
                if ((this.bitField0_ & 2) == 2) {
                    i8 += CodedOutputStream.computeBytesSize(4, getTrailingCommentsBytes());
                }
                int serializedSize = i8 + getUnknownFields().getSerializedSize();
                this.memoizedSerializedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
            public final int getSpan(int i) {
                return this.span_.get(i).intValue();
            }

            @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
            public final int getSpanCount() {
                return this.span_.size();
            }

            @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
            public final List<Integer> getSpanList() {
                return this.span_;
            }

            @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
            public final String getTrailingComments() {
                Object obj = this.trailingComments_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (Internal.isValidUtf8(byteString)) {
                    this.trailingComments_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
            public final boolean hasLeadingComments() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfo.LocationOrBuilder
            public final boolean hasTrailingComments() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.f7921x9611a0b;
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
                return new Builder(builderParent, null);
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
                if (getPathList().size() > 0) {
                    codedOutputStream.writeRawVarint32(10);
                    codedOutputStream.writeRawVarint32(this.pathMemoizedSerializedSize);
                }
                for (int i = 0; i < this.path_.size(); i++) {
                    codedOutputStream.writeInt32NoTag(this.path_.get(i).intValue());
                }
                if (getSpanList().size() > 0) {
                    codedOutputStream.writeRawVarint32(18);
                    codedOutputStream.writeRawVarint32(this.spanMemoizedSerializedSize);
                }
                for (int i2 = 0; i2 < this.span_.size(); i2++) {
                    codedOutputStream.writeInt32NoTag(this.span_.get(i2).intValue());
                }
                if ((this.bitField0_ & 1) == 1) {
                    codedOutputStream.writeBytes(3, getLeadingCommentsBytes());
                }
                if ((this.bitField0_ & 2) == 2) {
                    codedOutputStream.writeBytes(4, getTrailingCommentsBytes());
                }
                getUnknownFields().writeTo(codedOutputStream);
            }
        }

        /* loaded from: classes.dex */
        public interface LocationOrBuilder extends MessageOrBuilder {
            String getLeadingComments();

            int getPath(int i);

            int getPathCount();

            List<Integer> getPathList();

            int getSpan(int i);

            int getSpanCount();

            List<Integer> getSpanList();

            String getTrailingComments();

            boolean hasLeadingComments();

            boolean hasTrailingComments();
        }

        static {
            SourceCodeInfo sourceCodeInfo = new SourceCodeInfo(true);
            defaultInstance = sourceCodeInfo;
            sourceCodeInfo.initFields();
        }

        private SourceCodeInfo(Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        /* synthetic */ SourceCodeInfo(Builder builder, SourceCodeInfo sourceCodeInfo) {
            this(builder);
        }

        private SourceCodeInfo(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        public static SourceCodeInfo getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_SourceCodeInfo_descriptor;
        }

        private void initFields() {
            this.location_ = Collections.emptyList();
        }

        public static Builder newBuilder() {
            return Builder.access$18();
        }

        public static Builder newBuilder(SourceCodeInfo sourceCodeInfo) {
            return newBuilder().mergeFrom(sourceCodeInfo);
        }

        public static SourceCodeInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        public static SourceCodeInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static SourceCodeInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static SourceCodeInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static SourceCodeInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
        }

        public static SourceCodeInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static SourceCodeInfo parseFrom(InputStream inputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static SourceCodeInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static SourceCodeInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static SourceCodeInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final SourceCodeInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfoOrBuilder
        public final Location getLocation(int i) {
            return this.location_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfoOrBuilder
        public final int getLocationCount() {
            return this.location_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfoOrBuilder
        public final List<Location> getLocationList() {
            return this.location_;
        }

        @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfoOrBuilder
        public final LocationOrBuilder getLocationOrBuilder(int i) {
            return this.location_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.SourceCodeInfoOrBuilder
        public final List<? extends LocationOrBuilder> getLocationOrBuilderList() {
            return this.location_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.location_.size(); i3++) {
                i2 += CodedOutputStream.computeMessageSize(1, this.location_.get(i3));
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.f7922x532209f9;
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
            return new Builder(builderParent, null);
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
            for (int i = 0; i < this.location_.size(); i++) {
                codedOutputStream.writeMessage(1, this.location_.get(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface SourceCodeInfoOrBuilder extends MessageOrBuilder {
        SourceCodeInfo.Location getLocation(int i);

        int getLocationCount();

        List<SourceCodeInfo.Location> getLocationList();

        SourceCodeInfo.LocationOrBuilder getLocationOrBuilder(int i);

        List<? extends SourceCodeInfo.LocationOrBuilder> getLocationOrBuilderList();
    }

    /* loaded from: classes.dex */
    public static final class UninterpretedOption extends GeneratedMessage implements UninterpretedOptionOrBuilder {
        public static final int AGGREGATE_VALUE_FIELD_NUMBER = 8;
        public static final int DOUBLE_VALUE_FIELD_NUMBER = 6;
        public static final int IDENTIFIER_VALUE_FIELD_NUMBER = 3;
        public static final int NAME_FIELD_NUMBER = 2;
        public static final int NEGATIVE_INT_VALUE_FIELD_NUMBER = 5;
        public static final int POSITIVE_INT_VALUE_FIELD_NUMBER = 4;
        public static final int STRING_VALUE_FIELD_NUMBER = 7;
        private static final UninterpretedOption defaultInstance;
        private static final long serialVersionUID = 0;
        private Object aggregateValue_;
        private int bitField0_;
        private double doubleValue_;
        private Object identifierValue_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private List<NamePart> name_;
        private long negativeIntValue_;
        private long positiveIntValue_;
        private ByteString stringValue_;

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements UninterpretedOptionOrBuilder {
            private Object aggregateValue_;
            private int bitField0_;
            private double doubleValue_;
            private Object identifierValue_;
            private RepeatedFieldBuilder<NamePart, NamePart.Builder, NamePartOrBuilder> nameBuilder_;
            private List<NamePart> name_;
            private long negativeIntValue_;
            private long positiveIntValue_;
            private ByteString stringValue_;

            private Builder() {
                this.name_ = Collections.emptyList();
                this.identifierValue_ = "";
                this.stringValue_ = ByteString.EMPTY;
                this.aggregateValue_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.name_ = Collections.emptyList();
                this.identifierValue_ = "";
                this.stringValue_ = ByteString.EMPTY;
                this.aggregateValue_ = "";
                maybeForceBuilderInitialization();
            }

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                this(builderParent);
            }

            static /* synthetic */ Builder access$18() {
                return create();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public UninterpretedOption buildParsed() throws InvalidProtocolBufferException {
                UninterpretedOption buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
            }

            private static Builder create() {
                return new Builder();
            }

            private void ensureNameIsMutable() {
                if ((this.bitField0_ & 1) != 1) {
                    this.name_ = new ArrayList(this.name_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_UninterpretedOption_descriptor;
            }

            private RepeatedFieldBuilder<NamePart, NamePart.Builder, NamePartOrBuilder> getNameFieldBuilder() {
                if (this.nameBuilder_ == null) {
                    this.nameBuilder_ = new RepeatedFieldBuilder<>(this.name_, (this.bitField0_ & 1) == 1, getParentForChildren(), isClean());
                    this.name_ = null;
                }
                return this.nameBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getNameFieldBuilder();
                }
            }

            public final Builder addAllName(Iterable<? extends NamePart> iterable) {
                if (this.nameBuilder_ != null) {
                    this.nameBuilder_.addAllMessages(iterable);
                    return this;
                }
                ensureNameIsMutable();
                GeneratedMessage.Builder.addAll(iterable, this.name_);
                onChanged();
                return this;
            }

            public final Builder addName(int i, NamePart.Builder builder) {
                if (this.nameBuilder_ != null) {
                    this.nameBuilder_.addMessage(i, builder.build());
                    return this;
                }
                ensureNameIsMutable();
                this.name_.add(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder addName(int i, NamePart namePart) {
                if (this.nameBuilder_ != null) {
                    this.nameBuilder_.addMessage(i, namePart);
                    return this;
                }
                if (namePart == null) {
                    throw new NullPointerException();
                }
                ensureNameIsMutable();
                this.name_.add(i, namePart);
                onChanged();
                return this;
            }

            public final Builder addName(NamePart.Builder builder) {
                if (this.nameBuilder_ != null) {
                    this.nameBuilder_.addMessage(builder.build());
                    return this;
                }
                ensureNameIsMutable();
                this.name_.add(builder.build());
                onChanged();
                return this;
            }

            public final Builder addName(NamePart namePart) {
                if (this.nameBuilder_ != null) {
                    this.nameBuilder_.addMessage(namePart);
                    return this;
                }
                if (namePart == null) {
                    throw new NullPointerException();
                }
                ensureNameIsMutable();
                this.name_.add(namePart);
                onChanged();
                return this;
            }

            public final NamePart.Builder addNameBuilder() {
                return getNameFieldBuilder().addBuilder(NamePart.getDefaultInstance());
            }

            public final NamePart.Builder addNameBuilder(int i) {
                return getNameFieldBuilder().addBuilder(i, NamePart.getDefaultInstance());
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final UninterpretedOption build() {
                UninterpretedOption buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final UninterpretedOption buildPartial() {
                List<NamePart> build;
                UninterpretedOption uninterpretedOption = new UninterpretedOption(this, null);
                int i = this.bitField0_;
                if (this.nameBuilder_ == null) {
                    if ((this.bitField0_ & 1) == 1) {
                        this.name_ = Collections.unmodifiableList(this.name_);
                        this.bitField0_ &= -2;
                    }
                    build = this.name_;
                } else {
                    build = this.nameBuilder_.build();
                }
                uninterpretedOption.name_ = build;
                int i2 = (i & 2) != 2 ? 0 : 1;
                uninterpretedOption.identifierValue_ = this.identifierValue_;
                if ((i & 4) == 4) {
                    i2 |= 2;
                }
                uninterpretedOption.positiveIntValue_ = this.positiveIntValue_;
                if ((i & 8) == 8) {
                    i2 |= 4;
                }
                uninterpretedOption.negativeIntValue_ = this.negativeIntValue_;
                if ((i & 16) == 16) {
                    i2 |= 8;
                }
                uninterpretedOption.doubleValue_ = this.doubleValue_;
                if ((i & 32) == 32) {
                    i2 |= 16;
                }
                uninterpretedOption.stringValue_ = this.stringValue_;
                if ((i & 64) == 64) {
                    i2 |= 32;
                }
                uninterpretedOption.aggregateValue_ = this.aggregateValue_;
                uninterpretedOption.bitField0_ = i2;
                onBuilt();
                return uninterpretedOption;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                if (this.nameBuilder_ == null) {
                    this.name_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    this.nameBuilder_.clear();
                }
                this.identifierValue_ = "";
                this.bitField0_ &= -3;
                this.positiveIntValue_ = 0L;
                this.bitField0_ &= -5;
                this.negativeIntValue_ = 0L;
                this.bitField0_ &= -9;
                this.doubleValue_ = 0.0d;
                this.bitField0_ &= -17;
                this.stringValue_ = ByteString.EMPTY;
                this.bitField0_ &= -33;
                this.aggregateValue_ = "";
                this.bitField0_ &= -65;
                return this;
            }

            public final Builder clearAggregateValue() {
                this.bitField0_ &= -65;
                this.aggregateValue_ = UninterpretedOption.getDefaultInstance().getAggregateValue();
                onChanged();
                return this;
            }

            public final Builder clearDoubleValue() {
                this.bitField0_ &= -17;
                this.doubleValue_ = 0.0d;
                onChanged();
                return this;
            }

            public final Builder clearIdentifierValue() {
                this.bitField0_ &= -3;
                this.identifierValue_ = UninterpretedOption.getDefaultInstance().getIdentifierValue();
                onChanged();
                return this;
            }

            public final Builder clearName() {
                if (this.nameBuilder_ != null) {
                    this.nameBuilder_.clear();
                    return this;
                }
                this.name_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public final Builder clearNegativeIntValue() {
                this.bitField0_ &= -9;
                this.negativeIntValue_ = 0L;
                onChanged();
                return this;
            }

            public final Builder clearPositiveIntValue() {
                this.bitField0_ &= -5;
                this.positiveIntValue_ = 0L;
                onChanged();
                return this;
            }

            public final Builder clearStringValue() {
                this.bitField0_ &= -33;
                this.stringValue_ = UninterpretedOption.getDefaultInstance().getStringValue();
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /* renamed from: clone */
            public final Builder mo13986clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
            public final String getAggregateValue() {
                Object obj = this.aggregateValue_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.aggregateValue_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final UninterpretedOption getDefaultInstanceForType() {
                return UninterpretedOption.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return UninterpretedOption.getDescriptor();
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
            public final double getDoubleValue() {
                return this.doubleValue_;
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
            public final String getIdentifierValue() {
                Object obj = this.identifierValue_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.identifierValue_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
            public final NamePart getName(int i) {
                return this.nameBuilder_ == null ? this.name_.get(i) : this.nameBuilder_.getMessage(i);
            }

            public final NamePart.Builder getNameBuilder(int i) {
                return getNameFieldBuilder().getBuilder(i);
            }

            public final List<NamePart.Builder> getNameBuilderList() {
                return getNameFieldBuilder().getBuilderList();
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
            public final int getNameCount() {
                return this.nameBuilder_ == null ? this.name_.size() : this.nameBuilder_.getCount();
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
            public final List<NamePart> getNameList() {
                return this.nameBuilder_ == null ? Collections.unmodifiableList(this.name_) : this.nameBuilder_.getMessageList();
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
            public final NamePartOrBuilder getNameOrBuilder(int i) {
                return (NamePartOrBuilder) (this.nameBuilder_ == null ? this.name_.get(i) : this.nameBuilder_.getMessageOrBuilder(i));
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
            public final List<? extends NamePartOrBuilder> getNameOrBuilderList() {
                return this.nameBuilder_ != null ? this.nameBuilder_.getMessageOrBuilderList() : Collections.unmodifiableList(this.name_);
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
            public final long getNegativeIntValue() {
                return this.negativeIntValue_;
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
            public final long getPositiveIntValue() {
                return this.positiveIntValue_;
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
            public final ByteString getStringValue() {
                return this.stringValue_;
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
            public final boolean hasAggregateValue() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
            public final boolean hasDoubleValue() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
            public final boolean hasIdentifierValue() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
            public final boolean hasNegativeIntValue() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
            public final boolean hasPositiveIntValue() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
            public final boolean hasStringValue() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.f7925x2101041;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                for (int i = 0; i < getNameCount(); i++) {
                    if (!getName(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                while (true) {
                    int readTag = codedInputStream.readTag();
                    if (readTag == 0) {
                        break;
                    }
                    if (readTag == 18) {
                        NamePart.Builder newBuilder2 = NamePart.newBuilder();
                        codedInputStream.readMessage(newBuilder2, extensionRegistryLite);
                        addName(newBuilder2.buildPartial());
                    } else if (readTag == 26) {
                        this.bitField0_ |= 2;
                        this.identifierValue_ = codedInputStream.readBytes();
                    } else if (readTag == 32) {
                        this.bitField0_ |= 4;
                        this.positiveIntValue_ = codedInputStream.readUInt64();
                    } else if (readTag == 40) {
                        this.bitField0_ |= 8;
                        this.negativeIntValue_ = codedInputStream.readInt64();
                    } else if (readTag == 49) {
                        this.bitField0_ |= 16;
                        this.doubleValue_ = codedInputStream.readDouble();
                    } else if (readTag == 58) {
                        this.bitField0_ |= 32;
                        this.stringValue_ = codedInputStream.readBytes();
                    } else if (readTag == 66) {
                        this.bitField0_ |= 64;
                        this.aggregateValue_ = codedInputStream.readBytes();
                    } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        break;
                    }
                }
                setUnknownFields(newBuilder.build());
                onChanged();
                return this;
            }

            public final Builder mergeFrom(UninterpretedOption uninterpretedOption) {
                if (uninterpretedOption == UninterpretedOption.getDefaultInstance()) {
                    return this;
                }
                if (this.nameBuilder_ == null) {
                    if (!uninterpretedOption.name_.isEmpty()) {
                        if (this.name_.isEmpty()) {
                            this.name_ = uninterpretedOption.name_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureNameIsMutable();
                            this.name_.addAll(uninterpretedOption.name_);
                        }
                        onChanged();
                    }
                } else if (!uninterpretedOption.name_.isEmpty()) {
                    if (this.nameBuilder_.isEmpty()) {
                        this.nameBuilder_.dispose();
                        this.nameBuilder_ = null;
                        this.name_ = uninterpretedOption.name_;
                        this.bitField0_ &= -2;
                        this.nameBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getNameFieldBuilder() : null;
                    } else {
                        this.nameBuilder_.addAllMessages(uninterpretedOption.name_);
                    }
                }
                if (uninterpretedOption.hasIdentifierValue()) {
                    setIdentifierValue(uninterpretedOption.getIdentifierValue());
                }
                if (uninterpretedOption.hasPositiveIntValue()) {
                    setPositiveIntValue(uninterpretedOption.getPositiveIntValue());
                }
                if (uninterpretedOption.hasNegativeIntValue()) {
                    setNegativeIntValue(uninterpretedOption.getNegativeIntValue());
                }
                if (uninterpretedOption.hasDoubleValue()) {
                    setDoubleValue(uninterpretedOption.getDoubleValue());
                }
                if (uninterpretedOption.hasStringValue()) {
                    setStringValue(uninterpretedOption.getStringValue());
                }
                if (uninterpretedOption.hasAggregateValue()) {
                    setAggregateValue(uninterpretedOption.getAggregateValue());
                }
                mergeUnknownFields(uninterpretedOption.getUnknownFields());
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof UninterpretedOption) {
                    return mergeFrom((UninterpretedOption) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder removeName(int i) {
                if (this.nameBuilder_ != null) {
                    this.nameBuilder_.remove(i);
                    return this;
                }
                ensureNameIsMutable();
                this.name_.remove(i);
                onChanged();
                return this;
            }

            public final Builder setAggregateValue(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.aggregateValue_ = str;
                onChanged();
                return this;
            }

            final void setAggregateValue(ByteString byteString) {
                this.bitField0_ |= 64;
                this.aggregateValue_ = byteString;
                onChanged();
            }

            public final Builder setDoubleValue(double d) {
                this.bitField0_ |= 16;
                this.doubleValue_ = d;
                onChanged();
                return this;
            }

            public final Builder setIdentifierValue(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.identifierValue_ = str;
                onChanged();
                return this;
            }

            final void setIdentifierValue(ByteString byteString) {
                this.bitField0_ |= 2;
                this.identifierValue_ = byteString;
                onChanged();
            }

            public final Builder setName(int i, NamePart.Builder builder) {
                if (this.nameBuilder_ != null) {
                    this.nameBuilder_.setMessage(i, builder.build());
                    return this;
                }
                ensureNameIsMutable();
                this.name_.set(i, builder.build());
                onChanged();
                return this;
            }

            public final Builder setName(int i, NamePart namePart) {
                if (this.nameBuilder_ != null) {
                    this.nameBuilder_.setMessage(i, namePart);
                    return this;
                }
                if (namePart == null) {
                    throw new NullPointerException();
                }
                ensureNameIsMutable();
                this.name_.set(i, namePart);
                onChanged();
                return this;
            }

            public final Builder setNegativeIntValue(long j) {
                this.bitField0_ |= 8;
                this.negativeIntValue_ = j;
                onChanged();
                return this;
            }

            public final Builder setPositiveIntValue(long j) {
                this.bitField0_ |= 4;
                this.positiveIntValue_ = j;
                onChanged();
                return this;
            }

            public final Builder setStringValue(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.stringValue_ = byteString;
                onChanged();
                return this;
            }
        }

        /* loaded from: classes.dex */
        public static final class NamePart extends GeneratedMessage implements NamePartOrBuilder {
            public static final int IS_EXTENSION_FIELD_NUMBER = 2;
            public static final int NAME_PART_FIELD_NUMBER = 1;
            private static final NamePart defaultInstance;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private boolean isExtension_;
            private byte memoizedIsInitialized;
            private int memoizedSerializedSize;
            private Object namePart_;

            /* loaded from: classes.dex */
            public static final class Builder extends GeneratedMessage.Builder<Builder> implements NamePartOrBuilder {
                private int bitField0_;
                private boolean isExtension_;
                private Object namePart_;

                private Builder() {
                    this.namePart_ = "";
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.namePart_ = "";
                    maybeForceBuilderInitialization();
                }

                /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, Builder builder) {
                    this(builderParent);
                }

                static /* synthetic */ Builder access$18() {
                    return create();
                }

                /* JADX INFO: Access modifiers changed from: private */
                public NamePart buildParsed() throws InvalidProtocolBufferException {
                    NamePart buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial).asInvalidProtocolBufferException();
                }

                private static Builder create() {
                    return new Builder();
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return DescriptorProtos.f7923xb111d23c;
                }

                private void maybeForceBuilderInitialization() {
                    boolean z = GeneratedMessage.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public final NamePart build() {
                    NamePart buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public final NamePart buildPartial() {
                    NamePart namePart = new NamePart(this, null);
                    int i = this.bitField0_;
                    int i2 = (i & 1) != 1 ? 0 : 1;
                    namePart.namePart_ = this.namePart_;
                    if ((i & 2) == 2) {
                        i2 |= 2;
                    }
                    namePart.isExtension_ = this.isExtension_;
                    namePart.bitField0_ = i2;
                    onBuilt();
                    return namePart;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public final Builder clear() {
                    super.clear();
                    this.namePart_ = "";
                    this.bitField0_ &= -2;
                    this.isExtension_ = false;
                    this.bitField0_ &= -3;
                    return this;
                }

                public final Builder clearIsExtension() {
                    this.bitField0_ &= -3;
                    this.isExtension_ = false;
                    onChanged();
                    return this;
                }

                public final Builder clearNamePart() {
                    this.bitField0_ &= -2;
                    this.namePart_ = NamePart.getDefaultInstance().getNamePart();
                    onChanged();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                /* renamed from: clone */
                public final Builder mo13986clone() {
                    return create().mergeFrom(buildPartial());
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public final NamePart getDefaultInstanceForType() {
                    return NamePart.getDefaultInstance();
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public final Descriptors.Descriptor getDescriptorForType() {
                    return NamePart.getDescriptor();
                }

                @Override // com.google.protobuf.DescriptorProtos.UninterpretedOption.NamePartOrBuilder
                public final boolean getIsExtension() {
                    return this.isExtension_;
                }

                @Override // com.google.protobuf.DescriptorProtos.UninterpretedOption.NamePartOrBuilder
                public final String getNamePart() {
                    Object obj = this.namePart_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.namePart_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.google.protobuf.DescriptorProtos.UninterpretedOption.NamePartOrBuilder
                public final boolean hasIsExtension() {
                    return (this.bitField0_ & 2) == 2;
                }

                @Override // com.google.protobuf.DescriptorProtos.UninterpretedOption.NamePartOrBuilder
                public final boolean hasNamePart() {
                    return (this.bitField0_ & 1) == 1;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return DescriptorProtos.f7924x1698fcba;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return hasNamePart() && hasIsExtension();
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public final Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
                    while (true) {
                        int readTag = codedInputStream.readTag();
                        if (readTag == 0) {
                            break;
                        }
                        if (readTag == 10) {
                            this.bitField0_ |= 1;
                            this.namePart_ = codedInputStream.readBytes();
                        } else if (readTag == 16) {
                            this.bitField0_ |= 2;
                            this.isExtension_ = codedInputStream.readBool();
                        } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            break;
                        }
                    }
                    setUnknownFields(newBuilder.build());
                    onChanged();
                    return this;
                }

                public final Builder mergeFrom(NamePart namePart) {
                    if (namePart == NamePart.getDefaultInstance()) {
                        return this;
                    }
                    if (namePart.hasNamePart()) {
                        setNamePart(namePart.getNamePart());
                    }
                    if (namePart.hasIsExtension()) {
                        setIsExtension(namePart.getIsExtension());
                    }
                    mergeUnknownFields(namePart.getUnknownFields());
                    return this;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public final Builder mergeFrom(Message message) {
                    if (message instanceof NamePart) {
                        return mergeFrom((NamePart) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public final Builder setIsExtension(boolean z) {
                    this.bitField0_ |= 2;
                    this.isExtension_ = z;
                    onChanged();
                    return this;
                }

                public final Builder setNamePart(String str) {
                    if (str == null) {
                        throw new NullPointerException();
                    }
                    this.bitField0_ |= 1;
                    this.namePart_ = str;
                    onChanged();
                    return this;
                }

                final void setNamePart(ByteString byteString) {
                    this.bitField0_ |= 1;
                    this.namePart_ = byteString;
                    onChanged();
                }
            }

            static {
                NamePart namePart = new NamePart(true);
                defaultInstance = namePart;
                namePart.initFields();
            }

            private NamePart(Builder builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
            }

            /* synthetic */ NamePart(Builder builder, NamePart namePart) {
                this(builder);
            }

            private NamePart(boolean z) {
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
            }

            public static NamePart getDefaultInstance() {
                return defaultInstance;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.f7923xb111d23c;
            }

            private ByteString getNamePartBytes() {
                Object obj = this.namePart_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.namePart_ = copyFromUtf8;
                return copyFromUtf8;
            }

            private void initFields() {
                this.namePart_ = "";
                this.isExtension_ = false;
            }

            public static Builder newBuilder() {
                return Builder.access$18();
            }

            public static Builder newBuilder(NamePart namePart) {
                return newBuilder().mergeFrom(namePart);
            }

            public static NamePart parseDelimitedFrom(InputStream inputStream) throws IOException {
                Builder newBuilder = newBuilder();
                if (newBuilder.mergeDelimitedFrom(inputStream)) {
                    return newBuilder.buildParsed();
                }
                return null;
            }

            public static NamePart parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                Builder newBuilder = newBuilder();
                if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                    return newBuilder.buildParsed();
                }
                return null;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static NamePart parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static NamePart parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static NamePart parseFrom(CodedInputStream codedInputStream) throws IOException {
                return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
            }

            public static NamePart parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static NamePart parseFrom(InputStream inputStream) throws IOException {
                return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static NamePart parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static NamePart parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static NamePart parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public final NamePart getDefaultInstanceForType() {
                return defaultInstance;
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOption.NamePartOrBuilder
            public final boolean getIsExtension() {
                return this.isExtension_;
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOption.NamePartOrBuilder
            public final String getNamePart() {
                Object obj = this.namePart_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (Internal.isValidUtf8(byteString)) {
                    this.namePart_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public final int getSerializedSize() {
                int i = this.memoizedSerializedSize;
                if (i != -1) {
                    return i;
                }
                int computeBytesSize = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeBytesSize(1, getNamePartBytes()) : 0;
                if ((this.bitField0_ & 2) == 2) {
                    computeBytesSize += CodedOutputStream.computeBoolSize(2, this.isExtension_);
                }
                int serializedSize = computeBytesSize + getUnknownFields().getSerializedSize();
                this.memoizedSerializedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOption.NamePartOrBuilder
            public final boolean hasIsExtension() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.DescriptorProtos.UninterpretedOption.NamePartOrBuilder
            public final boolean hasNamePart() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage
            protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.f7924x1698fcba;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                byte b2 = this.memoizedIsInitialized;
                if (b2 != -1) {
                    return b2 == 1;
                }
                if (!hasNamePart()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
                if (hasIsExtension()) {
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
                return new Builder(builderParent, null);
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
                    codedOutputStream.writeBytes(1, getNamePartBytes());
                }
                if ((this.bitField0_ & 2) == 2) {
                    codedOutputStream.writeBool(2, this.isExtension_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }
        }

        /* loaded from: classes.dex */
        public interface NamePartOrBuilder extends MessageOrBuilder {
            boolean getIsExtension();

            String getNamePart();

            boolean hasIsExtension();

            boolean hasNamePart();
        }

        static {
            UninterpretedOption uninterpretedOption = new UninterpretedOption(true);
            defaultInstance = uninterpretedOption;
            uninterpretedOption.initFields();
        }

        private UninterpretedOption(Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        /* synthetic */ UninterpretedOption(Builder builder, UninterpretedOption uninterpretedOption) {
            this(builder);
        }

        private UninterpretedOption(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
        }

        private ByteString getAggregateValueBytes() {
            Object obj = this.aggregateValue_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.aggregateValue_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public static UninterpretedOption getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_UninterpretedOption_descriptor;
        }

        private ByteString getIdentifierValueBytes() {
            Object obj = this.identifierValue_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.identifierValue_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.name_ = Collections.emptyList();
            this.identifierValue_ = "";
            this.positiveIntValue_ = 0L;
            this.negativeIntValue_ = 0L;
            this.doubleValue_ = 0.0d;
            this.stringValue_ = ByteString.EMPTY;
            this.aggregateValue_ = "";
        }

        public static Builder newBuilder() {
            return Builder.access$18();
        }

        public static Builder newBuilder(UninterpretedOption uninterpretedOption) {
            return newBuilder().mergeFrom(uninterpretedOption);
        }

        public static UninterpretedOption parseDelimitedFrom(InputStream inputStream) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        public static UninterpretedOption parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            Builder newBuilder = newBuilder();
            if (newBuilder.mergeDelimitedFrom(inputStream, extensionRegistryLite)) {
                return newBuilder.buildParsed();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static UninterpretedOption parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static UninterpretedOption parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(byteString, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static UninterpretedOption parseFrom(CodedInputStream codedInputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(codedInputStream)).buildParsed();
        }

        public static UninterpretedOption parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return newBuilder().mergeFrom(codedInputStream, extensionRegistryLite).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static UninterpretedOption parseFrom(InputStream inputStream) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static UninterpretedOption parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return ((Builder) newBuilder().mergeFrom(inputStream, extensionRegistryLite)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static UninterpretedOption parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr)).buildParsed();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static UninterpretedOption parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return ((Builder) newBuilder().mergeFrom(bArr, extensionRegistryLite)).buildParsed();
        }

        @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
        public final String getAggregateValue() {
            Object obj = this.aggregateValue_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.aggregateValue_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public final UninterpretedOption getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
        public final double getDoubleValue() {
            return this.doubleValue_;
        }

        @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
        public final String getIdentifierValue() {
            Object obj = this.identifierValue_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (Internal.isValidUtf8(byteString)) {
                this.identifierValue_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
        public final NamePart getName(int i) {
            return this.name_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
        public final int getNameCount() {
            return this.name_.size();
        }

        @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
        public final List<NamePart> getNameList() {
            return this.name_;
        }

        @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
        public final NamePartOrBuilder getNameOrBuilder(int i) {
            return this.name_.get(i);
        }

        @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
        public final List<? extends NamePartOrBuilder> getNameOrBuilderList() {
            return this.name_;
        }

        @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
        public final long getNegativeIntValue() {
            return this.negativeIntValue_;
        }

        @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
        public final long getPositiveIntValue() {
            return this.positiveIntValue_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.name_.size(); i3++) {
                i2 += CodedOutputStream.computeMessageSize(2, this.name_.get(i3));
            }
            if ((this.bitField0_ & 1) == 1) {
                i2 += CodedOutputStream.computeBytesSize(3, getIdentifierValueBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt64Size(4, this.positiveIntValue_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeInt64Size(5, this.negativeIntValue_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeDoubleSize(6, this.doubleValue_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(7, this.stringValue_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeBytesSize(8, getAggregateValueBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
        public final ByteString getStringValue() {
            return this.stringValue_;
        }

        @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
        public final boolean hasAggregateValue() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
        public final boolean hasDoubleValue() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
        public final boolean hasIdentifierValue() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
        public final boolean hasNegativeIntValue() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
        public final boolean hasPositiveIntValue() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.DescriptorProtos.UninterpretedOptionOrBuilder
        public final boolean hasStringValue() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.f7925x2101041;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 != -1) {
                return b2 == 1;
            }
            for (int i = 0; i < getNameCount(); i++) {
                if (!getName(i).isInitialized()) {
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
            return new Builder(builderParent, null);
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
            for (int i = 0; i < this.name_.size(); i++) {
                codedOutputStream.writeMessage(2, this.name_.get(i));
            }
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(3, getIdentifierValueBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt64(4, this.positiveIntValue_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeInt64(5, this.negativeIntValue_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeDouble(6, this.doubleValue_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(7, this.stringValue_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(8, getAggregateValueBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes.dex */
    public interface UninterpretedOptionOrBuilder extends MessageOrBuilder {
        String getAggregateValue();

        double getDoubleValue();

        String getIdentifierValue();

        UninterpretedOption.NamePart getName(int i);

        int getNameCount();

        List<UninterpretedOption.NamePart> getNameList();

        UninterpretedOption.NamePartOrBuilder getNameOrBuilder(int i);

        List<? extends UninterpretedOption.NamePartOrBuilder> getNameOrBuilderList();

        long getNegativeIntValue();

        long getPositiveIntValue();

        ByteString getStringValue();

        boolean hasAggregateValue();

        boolean hasDoubleValue();

        boolean hasIdentifierValue();

        boolean hasNegativeIntValue();

        boolean hasPositiveIntValue();

        boolean hasStringValue();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n google/protobuf/descriptor.proto\u0012\u000fgoogle.protobuf\"G\n\u0011FileDescriptorSet\u00122\n\u0004file\u0018\u0001 \u0003(\u000b2$.google.protobuf.FileDescriptorProto\"Ë\u0003\n\u0013FileDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007package\u0018\u0002 \u0001(\t\u0012\u0012\n\ndependency\u0018\u0003 \u0003(\t\u0012\u0019\n\u0011public_dependency\u0018\n \u0003(\u0005\u0012\u0017\n\u000fweak_dependency\u0018\u000b \u0003(\u0005\u00126\n\fmessage_type\u0018\u0004 \u0003(\u000b2 .google.protobuf.DescriptorProto\u00127\n\tenum_type\u0018\u0005 \u0003(\u000b2$.google.protobuf.EnumDescriptorProto\u00128\n\u0007service\u0018\u0006 \u0003(\u000b2'.google.protobuf.", "ServiceDescriptorProto\u00128\n\textension\u0018\u0007 \u0003(\u000b2%.google.protobuf.FieldDescriptorProto\u0012-\n\u0007options\u0018\b \u0001(\u000b2\u001c.google.protobuf.FileOptions\u00129\n\u0010source_code_info\u0018\t \u0001(\u000b2\u001f.google.protobuf.SourceCodeInfo\"©\u0003\n\u000fDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00124\n\u0005field\u0018\u0002 \u0003(\u000b2%.google.protobuf.FieldDescriptorProto\u00128\n\textension\u0018\u0006 \u0003(\u000b2%.google.protobuf.FieldDescriptorProto\u00125\n\u000bnested_type\u0018\u0003 \u0003(\u000b2 .google.protobuf.DescriptorProto\u00127\n\tenum_type", "\u0018\u0004 \u0003(\u000b2$.google.protobuf.EnumDescriptorProto\u0012H\n\u000fextension_range\u0018\u0005 \u0003(\u000b2/.google.protobuf.DescriptorProto.ExtensionRange\u00120\n\u0007options\u0018\u0007 \u0001(\u000b2\u001f.google.protobuf.MessageOptions\u001a,\n\u000eExtensionRange\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0005\"\u0094\u0005\n\u0014FieldDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006number\u0018\u0003 \u0001(\u0005\u0012:\n\u0005label\u0018\u0004 \u0001(\u000e2+.google.protobuf.FieldDescriptorProto.Label\u00128\n\u0004type\u0018\u0005 \u0001(\u000e2*.google.protobuf.FieldDescriptorProto.Type\u0012\u0011\n\ttype_name", "\u0018\u0006 \u0001(\t\u0012\u0010\n\bextendee\u0018\u0002 \u0001(\t\u0012\u0015\n\rdefault_value\u0018\u0007 \u0001(\t\u0012.\n\u0007options\u0018\b \u0001(\u000b2\u001d.google.protobuf.FieldOptions\"¶\u0002\n\u0004Type\u0012\u000f\n\u000bTYPE_DOUBLE\u0010\u0001\u0012\u000e\n\nTYPE_FLOAT\u0010\u0002\u0012\u000e\n\nTYPE_INT64\u0010\u0003\u0012\u000f\n\u000bTYPE_UINT64\u0010\u0004\u0012\u000e\n\nTYPE_INT32\u0010\u0005\u0012\u0010\n\fTYPE_FIXED64\u0010\u0006\u0012\u0010\n\fTYPE_FIXED32\u0010\u0007\u0012\r\n\tTYPE_BOOL\u0010\b\u0012\u000f\n\u000bTYPE_STRING\u0010\t\u0012\u000e\n\nTYPE_GROUP\u0010\n\u0012\u0010\n\fTYPE_MESSAGE\u0010\u000b\u0012\u000e\n\nTYPE_BYTES\u0010\f\u0012\u000f\n\u000bTYPE_UINT32\u0010\r\u0012\r\n\tTYPE_ENUM\u0010\u000e\u0012\u0011\n\rTYPE_SFIXED32\u0010\u000f\u0012\u0011\n\rTYPE_SFIXED64\u0010\u0010\u0012\u000f\n\u000bTYPE_SINT32\u0010\u0011\u0012\u000f\n\u000bTYPE_", "SINT64\u0010\u0012\"C\n\u0005Label\u0012\u0012\n\u000eLABEL_OPTIONAL\u0010\u0001\u0012\u0012\n\u000eLABEL_REQUIRED\u0010\u0002\u0012\u0012\n\u000eLABEL_REPEATED\u0010\u0003\"\u008c\u0001\n\u0013EnumDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00128\n\u0005value\u0018\u0002 \u0003(\u000b2).google.protobuf.EnumValueDescriptorProto\u0012-\n\u0007options\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.EnumOptions\"l\n\u0018EnumValueDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006number\u0018\u0002 \u0001(\u0005\u00122\n\u0007options\u0018\u0003 \u0001(\u000b2!.google.protobuf.EnumValueOptions\"\u0090\u0001\n\u0016ServiceDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00126\n\u0006method\u0018\u0002 \u0003(\u000b2&.google.pro", "tobuf.MethodDescriptorProto\u00120\n\u0007options\u0018\u0003 \u0001(\u000b2\u001f.google.protobuf.ServiceOptions\"\u007f\n\u0015MethodDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0012\n\ninput_type\u0018\u0002 \u0001(\t\u0012\u0013\n\u000boutput_type\u0018\u0003 \u0001(\t\u0012/\n\u0007options\u0018\u0004 \u0001(\u000b2\u001e.google.protobuf.MethodOptions\"é\u0003\n\u000bFileOptions\u0012\u0014\n\fjava_package\u0018\u0001 \u0001(\t\u0012\u001c\n\u0014java_outer_classname\u0018\b \u0001(\t\u0012\"\n\u0013java_multiple_files\u0018\n \u0001(\b:\u0005false\u0012,\n\u001djava_generate_equals_and_hash\u0018\u0014 \u0001(\b:\u0005false\u0012F\n\foptimize_for\u0018\t \u0001(\u000e2).google.protobuf.Fil", "eOptions.OptimizeMode:\u0005SPEED\u0012\u0012\n\ngo_package\u0018\u000b \u0001(\t\u0012\"\n\u0013cc_generic_services\u0018\u0010 \u0001(\b:\u0005false\u0012$\n\u0015java_generic_services\u0018\u0011 \u0001(\b:\u0005false\u0012\"\n\u0013py_generic_services\u0018\u0012 \u0001(\b:\u0005false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption\":\n\fOptimizeMode\u0012\t\n\u0005SPEED\u0010\u0001\u0012\r\n\tCODE_SIZE\u0010\u0002\u0012\u0010\n\fLITE_RUNTIME\u0010\u0003*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"¸\u0001\n\u000eMessageOptions\u0012&\n\u0017message_set_wire_format\u0018\u0001 \u0001(\b:\u0005false\u0012.\n\u001fno_standard_descriptor_accessor\u0018\u0002 \u0001(\b:\u0005", "false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"¾\u0002\n\fFieldOptions\u0012:\n\u0005ctype\u0018\u0001 \u0001(\u000e2#.google.protobuf.FieldOptions.CType:\u0006STRING\u0012\u000e\n\u0006packed\u0018\u0002 \u0001(\b\u0012\u0013\n\u0004lazy\u0018\u0005 \u0001(\b:\u0005false\u0012\u0019\n\ndeprecated\u0018\u0003 \u0001(\b:\u0005false\u0012\u001c\n\u0014experimental_map_key\u0018\t \u0001(\t\u0012\u0013\n\u0004weak\u0018\n \u0001(\b:\u0005false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption\"/\n\u0005CType\u0012\n\n\u0006STRING\u0010\u0000\u0012\b\n\u0004CORD\u0010\u0001\u0012\u0010\n\fSTRING_PIECE\u0010\u0002*\t\bè\u0007", "\u0010\u0080\u0080\u0080\u0080\u0002\"x\n\u000bEnumOptions\u0012\u0019\n\u000ballow_alias\u0018\u0002 \u0001(\b:\u0004true\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"b\n\u0010EnumValueOptions\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"`\n\u000eServiceOptions\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"_\n\rMethodOptions\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.Uninter", "pretedOption*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u009e\u0002\n\u0013UninterpretedOption\u0012;\n\u0004name\u0018\u0002 \u0003(\u000b2-.google.protobuf.UninterpretedOption.NamePart\u0012\u0018\n\u0010identifier_value\u0018\u0003 \u0001(\t\u0012\u001a\n\u0012positive_int_value\u0018\u0004 \u0001(\u0004\u0012\u001a\n\u0012negative_int_value\u0018\u0005 \u0001(\u0003\u0012\u0014\n\fdouble_value\u0018\u0006 \u0001(\u0001\u0012\u0014\n\fstring_value\u0018\u0007 \u0001(\f\u0012\u0017\n\u000faggregate_value\u0018\b \u0001(\t\u001a3\n\bNamePart\u0012\u0011\n\tname_part\u0018\u0001 \u0002(\t\u0012\u0014\n\fis_extension\u0018\u0002 \u0002(\b\"±\u0001\n\u000eSourceCodeInfo\u0012:\n\blocation\u0018\u0001 \u0003(\u000b2(.google.protobuf.SourceCodeInfo.Location\u001ac\n\bLocat", "ion\u0012\u0010\n\u0004path\u0018\u0001 \u0003(\u0005B\u0002\u0010\u0001\u0012\u0010\n\u0004span\u0018\u0002 \u0003(\u0005B\u0002\u0010\u0001\u0012\u0018\n\u0010leading_comments\u0018\u0003 \u0001(\t\u0012\u0019\n\u0011trailing_comments\u0018\u0004 \u0001(\tB)\n\u0013com.google.protobufB\u0010DescriptorProtosH\u0001"}, new Descriptors.FileDescriptor[0], new Descriptors.FileDescriptor.InternalDescriptorAssigner() { // from class: com.google.protobuf.DescriptorProtos.1
            @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
            public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
                DescriptorProtos.descriptor = fileDescriptor;
                DescriptorProtos.internal_static_google_protobuf_FileDescriptorSet_descriptor = DescriptorProtos.getDescriptor().getMessageTypes().get(0);
                DescriptorProtos.f7914x15a6a952 = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.internal_static_google_protobuf_FileDescriptorSet_descriptor, new String[]{"File"}, FileDescriptorSet.class, FileDescriptorSet.Builder.class);
                DescriptorProtos.internal_static_google_protobuf_FileDescriptorProto_descriptor = DescriptorProtos.getDescriptor().getMessageTypes().get(1);
                DescriptorProtos.f7913x4b52780c = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.internal_static_google_protobuf_FileDescriptorProto_descriptor, new String[]{"Name", "Package", "Dependency", "PublicDependency", "WeakDependency", "MessageType", "EnumType", "Service", "Extension", "Options", "SourceCodeInfo"}, FileDescriptorProto.class, FileDescriptorProto.Builder.class);
                DescriptorProtos.internal_static_google_protobuf_DescriptorProto_descriptor = DescriptorProtos.getDescriptor().getMessageTypes().get(2);
                DescriptorProtos.f7907x907d0bf0 = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.internal_static_google_protobuf_DescriptorProto_descriptor, new String[]{"Name", "Field", "Extension", "NestedType", "EnumType", "ExtensionRange", "Options"}, DescriptorProto.class, DescriptorProto.Builder.class);
                DescriptorProtos.f7905x1458f8d = DescriptorProtos.internal_static_google_protobuf_DescriptorProto_descriptor.getNestedTypes().get(0);
                DescriptorProtos.f7906xf366d90b = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.f7905x1458f8d, new String[]{InterfaceC1133a.f3916R, "End"}, DescriptorProto.ExtensionRange.class, DescriptorProto.ExtensionRange.Builder.class);
                DescriptorProtos.internal_static_google_protobuf_FieldDescriptorProto_descriptor = DescriptorProtos.getDescriptor().getMessageTypes().get(3);
                DescriptorProtos.f7912x4734b330 = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.internal_static_google_protobuf_FieldDescriptorProto_descriptor, new String[]{"Name", "Number", "Label", "Type", "TypeName", "Extendee", "DefaultValue", "Options"}, FieldDescriptorProto.class, FieldDescriptorProto.Builder.class);
                DescriptorProtos.internal_static_google_protobuf_EnumDescriptorProto_descriptor = DescriptorProtos.getDescriptor().getMessageTypes().get(4);
                DescriptorProtos.f7908x9945f651 = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.internal_static_google_protobuf_EnumDescriptorProto_descriptor, new String[]{"Name", "Value", "Options"}, EnumDescriptorProto.class, EnumDescriptorProto.Builder.class);
                DescriptorProtos.f7909xf18031a8 = DescriptorProtos.getDescriptor().getMessageTypes().get(5);
                DescriptorProtos.f7910xfb173026 = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.f7909xf18031a8, new String[]{"Name", "Number", "Options"}, EnumValueDescriptorProto.class, EnumValueDescriptorProto.Builder.class);
                DescriptorProtos.f7917x158c73ed = DescriptorProtos.getDescriptor().getMessageTypes().get(6);
                DescriptorProtos.f7918xee335d6b = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.f7917x158c73ed, new String[]{"Name", "Method", "Options"}, ServiceDescriptorProto.class, ServiceDescriptorProto.Builder.class);
                DescriptorProtos.internal_static_google_protobuf_MethodDescriptorProto_descriptor = DescriptorProtos.getDescriptor().getMessageTypes().get(7);
                DescriptorProtos.f7916xc5331ef1 = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.internal_static_google_protobuf_MethodDescriptorProto_descriptor, new String[]{"Name", "InputType", "OutputType", "Options"}, MethodDescriptorProto.class, MethodDescriptorProto.Builder.class);
                DescriptorProtos.internal_static_google_protobuf_FileOptions_descriptor = DescriptorProtos.getDescriptor().getMessageTypes().get(8);
                DescriptorProtos.internal_static_google_protobuf_FileOptions_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.internal_static_google_protobuf_FileOptions_descriptor, new String[]{"JavaPackage", "JavaOuterClassname", "JavaMultipleFiles", "JavaGenerateEqualsAndHash", "OptimizeFor", "GoPackage", "CcGenericServices", "JavaGenericServices", "PyGenericServices", "UninterpretedOption"}, FileOptions.class, FileOptions.Builder.class);
                DescriptorProtos.internal_static_google_protobuf_MessageOptions_descriptor = DescriptorProtos.getDescriptor().getMessageTypes().get(9);
                DescriptorProtos.f7915x9c0b3d38 = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.internal_static_google_protobuf_MessageOptions_descriptor, new String[]{"MessageSetWireFormat", "NoStandardDescriptorAccessor", "UninterpretedOption"}, MessageOptions.class, MessageOptions.Builder.class);
                DescriptorProtos.internal_static_google_protobuf_FieldOptions_descriptor = DescriptorProtos.getDescriptor().getMessageTypes().get(10);
                DescriptorProtos.internal_static_google_protobuf_FieldOptions_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.internal_static_google_protobuf_FieldOptions_descriptor, new String[]{"Ctype", "Packed", "Lazy", "Deprecated", "ExperimentalMapKey", "Weak", "UninterpretedOption"}, FieldOptions.class, FieldOptions.Builder.class);
                DescriptorProtos.internal_static_google_protobuf_EnumOptions_descriptor = DescriptorProtos.getDescriptor().getMessageTypes().get(11);
                DescriptorProtos.internal_static_google_protobuf_EnumOptions_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.internal_static_google_protobuf_EnumOptions_descriptor, new String[]{"AllowAlias", "UninterpretedOption"}, EnumOptions.class, EnumOptions.Builder.class);
                DescriptorProtos.internal_static_google_protobuf_EnumValueOptions_descriptor = DescriptorProtos.getDescriptor().getMessageTypes().get(12);
                DescriptorProtos.f7911xdf65a421 = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.internal_static_google_protobuf_EnumValueOptions_descriptor, new String[]{"UninterpretedOption"}, EnumValueOptions.class, EnumValueOptions.Builder.class);
                DescriptorProtos.internal_static_google_protobuf_ServiceOptions_descriptor = DescriptorProtos.getDescriptor().getMessageTypes().get(13);
                DescriptorProtos.f7919x371e666 = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.internal_static_google_protobuf_ServiceOptions_descriptor, new String[]{"UninterpretedOption"}, ServiceOptions.class, ServiceOptions.Builder.class);
                DescriptorProtos.internal_static_google_protobuf_MethodOptions_descriptor = DescriptorProtos.getDescriptor().getMessageTypes().get(14);
                DescriptorProtos.internal_static_google_protobuf_MethodOptions_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.internal_static_google_protobuf_MethodOptions_descriptor, new String[]{"UninterpretedOption"}, MethodOptions.class, MethodOptions.Builder.class);
                DescriptorProtos.internal_static_google_protobuf_UninterpretedOption_descriptor = DescriptorProtos.getDescriptor().getMessageTypes().get(15);
                DescriptorProtos.f7925x2101041 = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.internal_static_google_protobuf_UninterpretedOption_descriptor, new String[]{"Name", "IdentifierValue", "PositiveIntValue", "NegativeIntValue", "DoubleValue", "StringValue", "AggregateValue"}, UninterpretedOption.class, UninterpretedOption.Builder.class);
                DescriptorProtos.f7923xb111d23c = DescriptorProtos.internal_static_google_protobuf_UninterpretedOption_descriptor.getNestedTypes().get(0);
                DescriptorProtos.f7924x1698fcba = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.f7923xb111d23c, new String[]{"NamePart", "IsExtension"}, UninterpretedOption.NamePart.class, UninterpretedOption.NamePart.Builder.class);
                DescriptorProtos.internal_static_google_protobuf_SourceCodeInfo_descriptor = DescriptorProtos.getDescriptor().getMessageTypes().get(16);
                DescriptorProtos.f7922x532209f9 = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.internal_static_google_protobuf_SourceCodeInfo_descriptor, new String[]{"Location"}, SourceCodeInfo.class, SourceCodeInfo.Builder.class);
                DescriptorProtos.f7920xb210d08d = DescriptorProtos.internal_static_google_protobuf_SourceCodeInfo_descriptor.getNestedTypes().get(0);
                DescriptorProtos.f7921x9611a0b = new GeneratedMessage.FieldAccessorTable(DescriptorProtos.f7920xb210d08d, new String[]{"Path", "Span", "LeadingComments", "TrailingComments"}, SourceCodeInfo.Location.class, SourceCodeInfo.Location.Builder.class);
                return null;
            }
        });
    }

    private DescriptorProtos() {
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
    }
}
