.class public final Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;",
        ">;",
        "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValueOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

.field private valBoolean_:Z

.field private valDouble_:D

.field private valFloat_:F

.field private valInt_:I

.field private valLong_:J

.field private valString_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->VOID:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valString_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->VOID:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    const-string p1, ""

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valString_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1300()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->create()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 1

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->d()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->access$1500()Z

    return-void
.end method


# virtual methods
.method public final build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_f
    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 7

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->access$1702(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1b

    or-int/lit8 v3, v3, 0x2

    :cond_1b
    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valBoolean_:Z

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valBoolean_:Z
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->access$1802(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;Z)Z

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_27

    or-int/lit8 v3, v3, 0x4

    :cond_27
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valInt_:I

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valInt_:I
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->access$1902(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_34

    or-int/lit8 v3, v3, 0x8

    :cond_34
    iget-wide v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valLong_:J

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valLong_:J
    invoke-static {v0, v4, v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->access$2002(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;J)J

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_41

    or-int/lit8 v3, v3, 0x10

    :cond_41
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valFloat_:F

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valFloat_:F
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->access$2102(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;F)F

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_4e

    or-int/lit8 v3, v3, 0x20

    :cond_4e
    iget-wide v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valDouble_:D

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valDouble_:D
    invoke-static {v0, v4, v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->access$2202(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;D)D

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5a

    or-int/lit8 v3, v3, 0x40

    :cond_5a
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valString_:Ljava/lang/Object;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->access$2302(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;Ljava/lang/Object;)Ljava/lang/Object;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I
    invoke-static {v0, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->access$2402(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;I)I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 3

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->VOID:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valBoolean_:Z

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valInt_:I

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valLong_:J

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valFloat_:F

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valDouble_:D

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valString_:Ljava/lang/Object;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->VOID:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearValBoolean()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valBoolean_:Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearValDouble()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valDouble_:D

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearValFloat()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valFloat_:F

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearValInt()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valInt_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearValLong()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valLong_:J

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearValString()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getValString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valString_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 3

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->create()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->d()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    return-object v0
.end method

.method public final getValBoolean()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valBoolean_:Z

    return v0
.end method

.method public final getValDouble()D
    .registers 3

    iget-wide v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valDouble_:D

    return-wide v0
.end method

.method public final getValFloat()F
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valFloat_:F

    return v0
.end method

.method public final getValInt()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valInt_:I

    return v0
.end method

.method public final getValLong()J
    .registers 3

    iget-wide v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valLong_:J

    return-wide v0
.end method

.method public final getValString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valString_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valString_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getValStringBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valString_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valString_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final hasType()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValBoolean()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValDouble()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValFloat()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValInt()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValLong()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValString()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 4

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->e()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    const-class v2, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 4

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    :cond_14
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->hasValBoolean()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getValBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValBoolean(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    :cond_21
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->hasValInt()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getValInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValInt(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    :cond_2e
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->hasValLong()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getValLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValLong(J)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    :cond_3b
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->hasValFloat()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getValFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValFloat(F)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    :cond_48
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->hasValDouble()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getValDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValDouble(D)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    :cond_55
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->hasValString()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->access$2300(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valString_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->onChanged()V

    :cond_6a
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_9} :catch_11
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    if-eqz p1, :cond_e

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    :cond_e
    return-object p0

    :catchall_f
    move-exception p1

    goto :goto_1b

    :catch_11
    move-exception p1

    :try_start_12
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    :try_start_18
    throw p1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception p1

    move-object v0, p2

    :goto_1b
    if-eqz v0, :cond_20

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    :cond_20
    throw p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 3

    instance-of v0, p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setType(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final setValBoolean(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valBoolean_:Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final setValDouble(D)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valDouble_:D

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final setValFloat(F)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valFloat_:F

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final setValInt(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valInt_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final setValLong(J)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valLong_:J

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final setValString(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valString_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->onChanged()V

    return-object p0
.end method

.method public final setValStringBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->valString_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->onChanged()V

    return-object p0
.end method
