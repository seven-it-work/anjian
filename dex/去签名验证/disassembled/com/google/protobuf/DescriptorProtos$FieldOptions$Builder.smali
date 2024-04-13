.class public final Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FieldOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<",
        "Lcom/google/protobuf/DescriptorProtos$FieldOptions;",
        "Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$FieldOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ctype_:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

.field private deprecated_:Z

.field private experimentalMapKey_:Ljava/lang/Object;

.field private lazy_:Z

.field private packed_:Z

.field private uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private weak_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->STRING:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->ctype_:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->experimentalMapKey_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object p1, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->STRING:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->ctype_:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->experimentalMapKey_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$FieldOptions;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$18()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 1

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/protobuf/DescriptorProtos$FieldOptions;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 1

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUninterpretedOptionIsMutable()V
    .registers 4

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    # getter for: Lcom/google/protobuf/DescriptorProtos;->internal_static_google_protobuf_FieldOptions_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$35()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_22

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    :cond_22
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    :cond_7
    return-void
.end method


# virtual methods
.method public final addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0

    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public final addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0

    :cond_14
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public final addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_18

    if-nez p2, :cond_c

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_c
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0

    :cond_18
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public final addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0

    :cond_14
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public final addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_18

    if-nez p1, :cond_c

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_c
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0

    :cond_18
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public final addUninterpretedOptionBuilder()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .registers 3

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public final addUninterpretedOptionBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .registers 4

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public final build()Lcom/google/protobuf/DescriptorProtos$FieldOptions;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_f
    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions;
    .registers 6

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;-><init>(Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;Lcom/google/protobuf/DescriptorProtos$FieldOptions;)V

    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->ctype_:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$8(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;)V

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1b

    or-int/lit8 v3, v3, 0x2

    :cond_1b
    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->packed_:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$9(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)V

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_27

    or-int/lit8 v3, v3, 0x4

    :cond_27
    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->lazy_:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$10(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)V

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_34

    or-int/lit8 v3, v3, 0x8

    :cond_34
    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->deprecated_:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$11(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)V

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_41

    or-int/lit8 v3, v3, 0x10

    :cond_41
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->experimentalMapKey_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$12(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Ljava/lang/Object;)V

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4d

    or-int/lit8 v3, v3, 0x20

    :cond_4d
    iget-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->weak_:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$13(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)V

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_6e

    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6b

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    :cond_6b
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    goto :goto_74

    :cond_6e
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    :goto_74
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)V

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$15(Lcom/google/protobuf/DescriptorProtos$FieldOptions;I)V

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->STRING:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->ctype_:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->packed_:Z

    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->lazy_:Z

    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->deprecated_:Z

    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const-string v1, ""

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->experimentalMapKey_:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->weak_:Z

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_49

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    return-object p0

    :cond_49
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearCtype()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->STRING:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->ctype_:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDeprecated()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->deprecated_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExperimentalMapKey()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getExperimentalMapKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->experimentalMapKey_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLazy()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->lazy_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPacked()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->packed_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUninterpretedOption()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_14

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0

    :cond_14
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    return-object p0
.end method

.method public final clearWeak()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->weak_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getCtype()Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->ctype_:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions;
    .registers 2

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDeprecated()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->deprecated_:Z

    return v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 2

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getExperimentalMapKey()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->experimentalMapKey_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->experimentalMapKey_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLazy()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->lazy_:Z

    return v0
.end method

.method public final getPacked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->packed_:Z

    return v0
.end method

.method public final getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_a
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1

    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    goto :goto_a
.end method

.method public final getUninterpretedOptionBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .registers 3

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public final getUninterpretedOptionBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getUninterpretedOptionCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method

.method public final getUninterpretedOptionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_a
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object p1

    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_a
.end method

.method public final getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getWeak()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->weak_:Z

    return v0
.end method

.method public final hasCtype()Z
    .registers 3

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDeprecated()Z
    .registers 3

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasExperimentalMapKey()Z
    .registers 3

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLazy()Z
    .registers 3

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPacked()Z
    .registers 3

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasWeak()Z
    .registers 3

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 2

    # getter for: Lcom/google/protobuf/DescriptorProtos;->internal_static_google_protobuf_FieldOptions_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$72()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->getUninterpretedOptionCount()I

    move-result v2

    if-lt v1, v2, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->extensionsAreInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    :cond_f
    const/4 v0, 0x1

    return v0

    :cond_11
    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-eqz v1, :cond_30

    const/16 v2, 0x8

    if-eq v1, v2, :cond_8a

    const/16 v3, 0x10

    if-eq v1, v3, :cond_7c

    const/16 v4, 0x18

    if-eq v1, v4, :cond_70

    const/16 v2, 0x28

    if-eq v1, v2, :cond_63

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_57

    const/16 v2, 0x50

    if-eq v1, v2, :cond_4a

    const/16 v2, 0x1f3a

    if-eq v1, v2, :cond_3b

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_30
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0

    :cond_3b
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    goto :goto_8

    :cond_4a
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->weak_:Z

    goto :goto_8

    :cond_57
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->experimentalMapKey_:Ljava/lang/Object;

    goto :goto_8

    :cond_63
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->lazy_:Z

    goto :goto_8

    :cond_70
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->deprecated_:Z

    goto :goto_8

    :cond_7c
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->packed_:Z

    goto/16 :goto_8

    :cond_8a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_9a

    invoke-virtual {v0, v3, v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_8

    :cond_9a
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->ctype_:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    goto/16 :goto_8
.end method

.method public final mergeFrom(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 4

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasCtype()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getCtype()Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->setCtype(Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->setPacked(Z)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    :cond_21
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasLazy()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getLazy()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->setLazy(Z)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    :cond_2e
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getDeprecated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    :cond_3b
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasExperimentalMapKey()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getExperimentalMapKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->setExperimentalMapKey(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    :cond_48
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasWeak()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getWeak()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->setWeak(Z)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    :cond_55
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_88

    # getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$16(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_78

    # getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$16(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    goto :goto_84

    :cond_78
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    # getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$16(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_84
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    goto :goto_c2

    :cond_88
    # getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$16(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$16(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    sget-boolean v1, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_b6

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_b6
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_c2

    :cond_b9
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$16(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :cond_c2
    :goto_c2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)V

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3

    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final removeUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0

    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    return-object p0
.end method

.method public final setCtype(Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->ctype_:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->deprecated_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExperimentalMapKey(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->experimentalMapKey_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method final setExperimentalMapKey(Lcom/google/protobuf/ByteString;)V
    .registers 3

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->experimentalMapKey_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-void
.end method

.method public final setLazy(Z)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->lazy_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPacked(Z)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->packed_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0

    :cond_14
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public final setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_18

    if-nez p2, :cond_c

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_c
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0

    :cond_18
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public final setWeak(Z)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->weak_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method
