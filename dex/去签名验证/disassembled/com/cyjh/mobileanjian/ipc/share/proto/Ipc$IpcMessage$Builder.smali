.class public final Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;",
        ">;",
        "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private arg1_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private arg2_:Lcom/google/protobuf/LazyStringList;

.field private arg3_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private arg4_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private className_:Ljava/lang/Object;

.field private cmd_:I

.field private encrypt_:Z

.field private fileData_:Lcom/google/protobuf/ByteString;

.field private isDebug_:Z

.field private isSyncCall_:Z

.field private methodName_:Ljava/lang/Object;

.field private params_:Lcom/google/protobuf/LazyStringList;

.field private pkgName_:Ljava/lang/Object;

.field private retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

.field private types_:Lcom/google/protobuf/LazyStringList;

.field private waitId_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->fileData_:Lcom/google/protobuf/ByteString;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->pkgName_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->className_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->methodName_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->fileData_:Lcom/google/protobuf/ByteString;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    const-string p1, ""

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->pkgName_:Ljava/lang/Object;

    const-string p1, ""

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->className_:Ljava/lang/Object;

    const-string p1, ""

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->methodName_:Ljava/lang/Object;

    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2800()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->create()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 1

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;-><init>()V

    return-object v0
.end method

.method private ensureArg1IsMutable()V
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    :cond_14
    return-void
.end method

.method private ensureArg2IsMutable()V
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_14

    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    :cond_14
    return-void
.end method

.method private ensureArg3IsMutable()V
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private ensureArg4IsMutable()V
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private ensureParamsIsMutable()V
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_15

    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private ensureTypesIsMutable()V
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_15

    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->f()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getRetValueFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValueOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_18

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    :cond_18
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3000()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->getRetValueFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_9
    return-void
.end method


# virtual methods
.method public final addAllArg1(Ljava/lang/Iterable;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureArg1IsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllArg2(Ljava/lang/Iterable;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureArg2IsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllArg3(Ljava/lang/Iterable;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureArg3IsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllArg4(Ljava/lang/Iterable;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureArg4IsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllParams(Ljava/lang/Iterable;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureParamsIsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllTypes(Ljava/lang/Iterable;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureTypesIsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureArg1IsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureArg2IsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final addArg2Bytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureArg2IsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final addArg3(F)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureArg3IsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final addArg4(J)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 4

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureArg4IsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final addParams(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureParamsIsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final addParamsBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureParamsIsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final addTypes(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureTypesIsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final addTypesBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureTypesIsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .registers 3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_f
    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .registers 6

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->cmd_:I

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->cmd_:I
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3202(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;I)I

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_28

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    :cond_28
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3302(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/util/List;)Ljava/util/List;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_42

    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    :cond_42
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3402(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5c

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    :cond_5c
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3502(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_69

    or-int/lit8 v3, v3, 0x2

    :cond_69
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->fileData_:Lcom/google/protobuf/ByteString;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->fileData_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3602(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_83

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    :cond_83
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3702(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_90

    or-int/lit8 v3, v3, 0x4

    :cond_90
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->pkgName_:Ljava/lang/Object;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3802(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_9d

    or-int/lit8 v3, v3, 0x8

    :cond_9d
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->className_:Ljava/lang/Object;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3902(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_aa

    or-int/lit8 v3, v3, 0x10

    :cond_aa
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->methodName_:Ljava/lang/Object;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$4002(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/16 v4, 0x200

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_c5

    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    :cond_c5
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$4102(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/16 v4, 0x400

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_e0

    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    :cond_e0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$4202(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_ed

    or-int/lit8 v3, v3, 0x20

    :cond_ed
    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->isSyncCall_:Z

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isSyncCall_:Z
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$4302(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Z)Z

    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_fa

    or-int/lit8 v3, v3, 0x40

    :cond_fa
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->waitId_:I

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->waitId_:I
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$4402(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;I)I

    and-int/lit16 v2, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v2, v4, :cond_107

    or-int/lit16 v3, v3, 0x80

    :cond_107
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_111

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    :goto_10d
    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$4502(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    goto :goto_11a

    :cond_111
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    goto :goto_10d

    :goto_11a
    and-int/lit16 v2, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_122

    or-int/lit16 v3, v3, 0x100

    :cond_122
    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->encrypt_:Z

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->encrypt_:Z
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$4602(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Z)Z

    const v2, 0x8000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12f

    or-int/lit16 v3, v3, 0x200

    :cond_12f
    iget-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->isDebug_:Z

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isDebug_:Z
    invoke-static {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$4702(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Z)Z

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I
    invoke-static {v0, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$4802(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;I)I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->cmd_:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->fileData_:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->pkgName_:Ljava/lang/Object;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->className_:Ljava/lang/Object;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->methodName_:Ljava/lang/Object;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->isSyncCall_:Z

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x801

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->waitId_:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v1, :cond_91

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v1

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    goto :goto_96

    :cond_91
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    :goto_96
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->encrypt_:Z

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->isDebug_:Z

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearArg1()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearArg2()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearArg3()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearArg4()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearClassName()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->className_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCmd()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->cmd_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearEncrypt()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->encrypt_:Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearFileData()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->fileData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearIsDebug()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->isDebug_:Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearIsSyncCall()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->isSyncCall_:Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMethodName()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getMethodName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->methodName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearParams()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPkgName()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getPkgName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->pkgName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearRetValue()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_e

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    goto :goto_13

    :cond_e
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    :goto_13
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearTypes()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearWaitId()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->waitId_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->create()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

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

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getArg1(I)I
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getArg1Count()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getArg1List()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getArg2(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getArg2Bytes(I)Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getArg2Count()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getArg2List()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getArg3(I)F
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public final getArg3Count()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getArg3List()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getArg4(I)J
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getArg4Count()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getArg4List()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getClassName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->className_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->className_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getClassNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->className_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->className_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getCmd()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->cmd_:I

    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->f()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getEncrypt()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->encrypt_:Z

    return v0
.end method

.method public final getFileData()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->fileData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getIsDebug()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->isDebug_:Z

    return v0
.end method

.method public final getIsSyncCall()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->isSyncCall_:Z

    return v0
.end method

.method public final getMethodName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->methodName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->methodName_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMethodNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->methodName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->methodName_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getParams(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getParamsBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getParamsCount()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getParamsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPkgName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->pkgName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->pkgName_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getPkgNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->pkgName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->pkgName_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getRetValue()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object v0
.end method

.method public final getRetValueBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->getRetValueFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    return-object v0
.end method

.method public final getRetValueOrBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValueOrBuilder;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValueOrBuilder;

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object v0
.end method

.method public final getTypes(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getTypesBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getTypesCount()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getTypesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getWaitId()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->waitId_:I

    return v0
.end method

.method public final hasClassName()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasCmd()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final hasEncrypt()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFileData()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasIsDebug()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final hasIsSyncCall()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasMethodName()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPkgName()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasRetValue()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasWaitId()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const/16 v1, 0x1000

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

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->g()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    const-class v2, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 4

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->hasCmd()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getCmd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    :cond_14
    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3300(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3300(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    goto :goto_3f

    :cond_33
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureArg1IsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3300(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3f
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    :cond_42
    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3400(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_61

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3400(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    goto :goto_6d

    :cond_61
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureArg2IsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3400(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    :goto_6d
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    :cond_70
    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3500(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8f

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3500(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    goto :goto_9b

    :cond_8f
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureArg3IsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3500(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_9b
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    :cond_9e
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->hasFileData()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setFileData(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    :cond_ab
    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3700(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ca

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3700(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    goto :goto_d6

    :cond_ca
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureArg4IsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3700(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_d6
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    :cond_d9
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->hasPkgName()Z

    move-result v0

    if-eqz v0, :cond_ee

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3800(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->pkgName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    :cond_ee
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->hasClassName()Z

    move-result v0

    if-eqz v0, :cond_103

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$3900(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->className_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    :cond_103
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->hasMethodName()Z

    move-result v0

    if-eqz v0, :cond_118

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$4000(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->methodName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    :cond_118
    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$4100(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_146

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_137

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$4100(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    goto :goto_143

    :cond_137
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureTypesIsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$4100(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    :goto_143
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    :cond_146
    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$4200(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_174

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_165

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$4200(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    goto :goto_171

    :cond_165
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureParamsIsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->access$4200(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    :goto_171
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    :cond_174
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->hasIsSyncCall()Z

    move-result v0

    if-eqz v0, :cond_181

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getIsSyncCall()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setIsSyncCall(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    :cond_181
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->hasWaitId()Z

    move-result v0

    if-eqz v0, :cond_18e

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getWaitId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setWaitId(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    :cond_18e
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->hasRetValue()Z

    move-result v0

    if-eqz v0, :cond_19b

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getRetValue()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->mergeRetValue(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    :cond_19b
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->hasEncrypt()Z

    move-result v0

    if-eqz v0, :cond_1a8

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getEncrypt()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setEncrypt(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    :cond_1a8
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->hasIsDebug()Z

    move-result v0

    if-eqz v0, :cond_1b5

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getIsDebug()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setIsDebug(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    :cond_1b5
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_9} :catch_11
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    if-eqz p1, :cond_e

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

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

    check-cast p2, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
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

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    :cond_20
    throw p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    instance-of v0, p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeRetValue(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x2000

    if-nez v0, :cond_27

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v2

    if-eq v0, v2, :cond_21

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilder(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object p1

    :cond_21
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    goto :goto_2c

    :cond_27
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    :goto_2c
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setArg1(II)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 4

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureArg1IsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg1_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setArg2(ILjava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 4

    if-nez p2, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureArg2IsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setArg3(IF)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 4

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureArg3IsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg3_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setArg4(IJ)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 5

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureArg4IsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->arg4_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setClassName(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->className_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setClassNameBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->className_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->cmd_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setEncrypt(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->encrypt_:Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFileData(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->fileData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIsDebug(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->isDebug_:Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIsSyncCall(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->isSyncCall_:Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMethodName(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->methodName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMethodNameBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->methodName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setParams(ILjava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 4

    if-nez p2, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureParamsIsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPkgName(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->pkgName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPkgNameBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->pkgName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRetValue(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    goto :goto_17

    :cond_e
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    :goto_17
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setRetValue(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_12

    if-nez p1, :cond_c

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_c
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    goto :goto_17

    :cond_12
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->retValueBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    :goto_17
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setTypes(ILjava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 4

    if-nez p2, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->ensureTypesIsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setWaitId(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->bitField0_:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->waitId_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->onChanged()V

    return-object p0
.end method
