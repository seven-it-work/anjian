.class public final Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;",
        ">;",
        "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUiOrBuilder;"
    }
.end annotation


# instance fields
.field private alignType_:I

.field private bitField0_:I

.field private boolParam_:Z

.field private color_:Ljava/lang/Object;

.field private command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

.field private controlId_:Ljava/lang/Object;

.field private defaultCheckStatus_:Z

.field private defaultItemIndex_:I

.field private editInputType_:I

.field private enabledStatus_:Z

.field private fontSize_:I

.field private fontType_:Ljava/lang/Object;

.field private height_:I

.field private intParam_:I

.field private itemIndex_:I

.field private itemText_:Lcom/google/protobuf/LazyStringList;

.field private layoutStyle_:I

.field private left_:I

.field private paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_VarOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

.field private parentId_:Ljava/lang/Object;

.field private path_:Ljava/lang/Object;

.field private strParam_:Ljava/lang/Object;

.field private text_:Ljava/lang/Object;

.field private top_:I

.field private uipData_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;

.field private visibleStatus_:I

.field private width_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->NEW_LAYOUT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->NEW_LAYOUT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    const-string p1, ""

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    const-string p1, ""

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    const-string p1, ""

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    const-string p1, ""

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    const-string p1, ""

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    const-string p1, ""

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    const-string p1, ""

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    const-string p1, ""

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    const-string p1, ""

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1500()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->create()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 1

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;-><init>()V

    return-object v0
.end method

.method private ensureItemTextIsMutable()V
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_15

    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->d()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPaddingFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_VarOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_18

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    :cond_18
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->getPaddingFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_9
    return-void
.end method


# virtual methods
.method public final addAllItemText(Ljava/lang/Iterable;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->ensureItemTextIsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final addItemText(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->ensureItemTextIsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final addItemTextBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->ensureItemTextIsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .registers 3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_f
    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .registers 6

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$1;)V

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$1902(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1b

    or-int/lit8 v3, v3, 0x2

    :cond_1b
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->controlId_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2002(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_27

    or-int/lit8 v3, v3, 0x4

    :cond_27
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->parentId_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2102(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_34

    or-int/lit8 v3, v3, 0x8

    :cond_34
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->text_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2202(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_41

    or-int/lit8 v3, v3, 0x10

    :cond_41
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->width_:I

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->width_:I
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2302(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_4e

    or-int/lit8 v3, v3, 0x20

    :cond_4e
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->height_:I

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->height_:I
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2402(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_5b

    or-int/lit8 v3, v3, 0x40

    :cond_5b
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->layoutStyle_:I

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->layoutStyle_:I
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2502(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_68

    or-int/lit16 v3, v3, 0x80

    :cond_68
    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultCheckStatus_:Z

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->defaultCheckStatus_:Z
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2602(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Z)Z

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_83

    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    :cond_83
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2702(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_90

    or-int/lit16 v3, v3, 0x100

    :cond_90
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemIndex_:I

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemIndex_:I
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2802(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_9d

    or-int/lit16 v3, v3, 0x200

    :cond_9d
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultItemIndex_:I

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->defaultItemIndex_:I
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2902(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_aa

    or-int/lit16 v3, v3, 0x400

    :cond_aa
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->path_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3002(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_b7

    or-int/lit16 v3, v3, 0x800

    :cond_b7
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->url_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3102(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v2, v4, :cond_c4

    or-int/lit16 v3, v3, 0x1000

    :cond_c4
    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->enabledStatus_:Z

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->enabledStatus_:Z
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3202(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Z)Z

    and-int/lit16 v2, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_d1

    or-int/lit16 v3, v3, 0x2000

    :cond_d1
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->visibleStatus_:I

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->visibleStatus_:I
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3302(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    const v2, 0x8000

    and-int/2addr v2, v1

    const v4, 0x8000

    if-ne v2, v4, :cond_e1

    or-int/lit16 v3, v3, 0x4000

    :cond_e1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->color_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3402(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    const/high16 v4, 0x10000

    if-ne v2, v4, :cond_f1

    const v2, 0x8000

    or-int/2addr v3, v2

    :cond_f1
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->alignType_:I

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->alignType_:I
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3502(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    const/high16 v4, 0x20000

    if-ne v2, v4, :cond_100

    const/high16 v2, 0x10000

    or-int/2addr v3, v2

    :cond_100
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_10a

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    :goto_106
    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3602(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    goto :goto_113

    :cond_10a
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    goto :goto_106

    :goto_113
    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    const/high16 v4, 0x40000

    if-ne v2, v4, :cond_11d

    const/high16 v2, 0x20000

    or-int/2addr v3, v2

    :cond_11d
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->uipData_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3702(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    const/high16 v4, 0x80000

    if-ne v2, v4, :cond_12c

    const/high16 v2, 0x40000

    or-int/2addr v3, v2

    :cond_12c
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->editInputType_:I

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->editInputType_:I
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3802(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    const/high16 v2, 0x100000

    and-int/2addr v2, v1

    const/high16 v4, 0x100000

    if-ne v2, v4, :cond_13b

    const/high16 v2, 0x80000

    or-int/2addr v3, v2

    :cond_13b
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->fontType_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3902(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v2, 0x200000

    and-int/2addr v2, v1

    const/high16 v4, 0x200000

    if-ne v2, v4, :cond_14a

    const/high16 v2, 0x100000

    or-int/2addr v3, v2

    :cond_14a
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontSize_:I

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->fontSize_:I
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$4002(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    const/high16 v2, 0x400000

    and-int/2addr v2, v1

    const/high16 v4, 0x400000

    if-ne v2, v4, :cond_159

    const/high16 v2, 0x200000

    or-int/2addr v3, v2

    :cond_159
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->left_:I

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->left_:I
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$4102(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    const/high16 v2, 0x800000

    and-int/2addr v2, v1

    const/high16 v4, 0x800000

    if-ne v2, v4, :cond_168

    const/high16 v2, 0x400000

    or-int/2addr v3, v2

    :cond_168
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->top_:I

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->top_:I
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$4202(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    const/high16 v2, 0x1000000

    and-int/2addr v2, v1

    const/high16 v4, 0x1000000

    if-ne v2, v4, :cond_177

    const/high16 v2, 0x800000

    or-int/2addr v3, v2

    :cond_177
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->intParam_:I

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->intParam_:I
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$4302(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    const/high16 v2, 0x2000000

    and-int/2addr v2, v1

    const/high16 v4, 0x2000000

    if-ne v2, v4, :cond_186

    const/high16 v2, 0x1000000

    or-int/2addr v3, v2

    :cond_186
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->strParam_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$4402(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_193

    const/high16 v1, 0x2000000

    or-int/2addr v3, v1

    :cond_193
    iget-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->boolParam_:Z

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->boolParam_:Z
    invoke-static {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$4502(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Z)Z

    # setter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I
    invoke-static {v0, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$4602(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->NEW_LAYOUT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->width_:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->height_:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->layoutStyle_:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultCheckStatus_:Z

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemIndex_:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultItemIndex_:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x801

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->enabledStatus_:Z

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->visibleStatus_:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x8001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->alignType_:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v1, :cond_ab

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object v1

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    goto :goto_b0

    :cond_ab
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    :goto_b0
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->editInputType_:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x80001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontSize_:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->left_:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x400001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->top_:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x800001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->intParam_:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x2000001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->boolParam_:Z

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearAlignType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->alignType_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearBoolParam()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->boolParam_:Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearColor()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->NEW_LAYOUT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearControlId()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDefaultCheckStatus()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultCheckStatus_:Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDefaultItemIndex()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultItemIndex_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearEditInputType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->editInputType_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearEnabledStatus()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->enabledStatus_:Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearFontSize()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontSize_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearFontType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearHeight()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->height_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearIntParam()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->intParam_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearItemIndex()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemIndex_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearItemText()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLayoutStyle()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->layoutStyle_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLeft()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->left_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_e

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    goto :goto_13

    :cond_e
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    :goto_13
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearParentId()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPath()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearStrParam()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearText()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearTop()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->top_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUipData()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUipData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUrl()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearVisibleStatus()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->visibleStatus_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearWidth()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->width_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clone()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->create()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

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

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAlignType()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->alignType_:I

    return v0
.end method

.method public final getBoolParam()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->boolParam_:Z

    return v0
.end method

.method public final getColor()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getColorBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    return-object v0
.end method

.method public final getControlId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getControlIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getDefaultCheckStatus()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultCheckStatus_:Z

    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultItemIndex()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultItemIndex_:I

    return v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->d()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getEditInputType()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->editInputType_:I

    return v0
.end method

.method public final getEnabledStatus()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->enabledStatus_:Z

    return v0
.end method

.method public final getFontSize()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontSize_:I

    return v0
.end method

.method public final getFontType()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getFontTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getHeight()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->height_:I

    return v0
.end method

.method public final getIntParam()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->intParam_:I

    return v0
.end method

.method public final getItemIndex()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemIndex_:I

    return v0
.end method

.method public final getItemText(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getItemTextBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getItemTextCount()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemTextList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLayoutStyle()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->layoutStyle_:I

    return v0
.end method

.method public final getLeft()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->left_:I

    return v0
.end method

.method public final getPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    return-object v0
.end method

.method public final getPaddingBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->getPaddingFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;

    return-object v0
.end method

.method public final getPaddingOrBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_VarOrBuilder;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_VarOrBuilder;

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    return-object v0
.end method

.method public final getParentId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getParentIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getPathBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getStrParam()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getStrParamBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTextBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getTop()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->top_:I

    return v0
.end method

.method public final getUipData()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUipDataBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getVisibleStatus()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->visibleStatus_:I

    return v0
.end method

.method public final getWidth()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->width_:I

    return v0
.end method

.method public final hasAlignType()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasBoolParam()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasColor()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final hasCommand()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final hasControlId()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDefaultCheckStatus()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDefaultItemIndex()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasEditInputType()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasEnabledStatus()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFontSize()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFontType()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasHeight()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasIntParam()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasItemIndex()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLayoutStyle()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLeft()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPadding()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasParentId()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPath()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasStrParam()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasText()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTop()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasUipData()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasUrl()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasVisibleStatus()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasWidth()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x10

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

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->e()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    const-class v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->hasCommand()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->hasPadding()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->getPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method public final mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasCommand()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_14
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasControlId()Z

    move-result v0

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->controlId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2000(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    :cond_29
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasParentId()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->parentId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2100(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    :cond_3e
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasText()Z

    move-result v0

    if-eqz v0, :cond_53

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->text_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2200(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    :cond_53
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setWidth(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_60
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setHeight(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_6d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasLayoutStyle()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLayoutStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setLayoutStyle(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_7a
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasDefaultCheckStatus()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultCheckStatus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setDefaultCheckStatus(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_87
    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2700(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a6

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2700(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    goto :goto_b2

    :cond_a6
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->ensureItemTextIsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2700(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    :goto_b2
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    :cond_b5
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasItemIndex()Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setItemIndex(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_c2
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasDefaultItemIndex()Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setDefaultItemIndex(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_cf
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasPath()Z

    move-result v0

    if-eqz v0, :cond_e4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->path_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3000(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    :cond_e4
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_f9

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->url_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3100(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    :cond_f9
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasEnabledStatus()Z

    move-result v0

    if-eqz v0, :cond_106

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setEnabledStatus(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_106
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasVisibleStatus()Z

    move-result v0

    if-eqz v0, :cond_113

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getVisibleStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setVisibleStatus(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_113
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasColor()Z

    move-result v0

    if-eqz v0, :cond_12a

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->color_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3400(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    :cond_12a
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasAlignType()Z

    move-result v0

    if-eqz v0, :cond_137

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getAlignType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setAlignType(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_137
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasPadding()Z

    move-result v0

    if-eqz v0, :cond_144

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergePadding(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_144
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasUipData()Z

    move-result v0

    if-eqz v0, :cond_15a

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->uipData_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3700(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    :cond_15a
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasEditInputType()Z

    move-result v0

    if-eqz v0, :cond_167

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEditInputType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setEditInputType(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_167
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasFontType()Z

    move-result v0

    if-eqz v0, :cond_17d

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->fontType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3900(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    :cond_17d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasFontSize()Z

    move-result v0

    if-eqz v0, :cond_18a

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setFontSize(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_18a
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasLeft()Z

    move-result v0

    if-eqz v0, :cond_197

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setLeft(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_197
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasTop()Z

    move-result v0

    if-eqz v0, :cond_1a4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setTop(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_1a4
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasIntParam()Z

    move-result v0

    if-eqz v0, :cond_1b1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setIntParam(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_1b1
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasStrParam()Z

    move-result v0

    if-eqz v0, :cond_1c7

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    # getter for: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->strParam_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$4400(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    :cond_1c7
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasBoolParam()Z

    move-result v0

    if-eqz v0, :cond_1d4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getBoolParam()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setBoolParam(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_1d4
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_9} :catch_11
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    if-eqz p1, :cond_e

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

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

    check-cast p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
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

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_20
    throw p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    instance-of v0, p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergePadding(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/high16 v1, 0x20000

    if-nez v0, :cond_27

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object v2

    if-eq v0, v2, :cond_21

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->newBuilder(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object p1

    :cond_21
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    goto :goto_2c

    :cond_27
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    :goto_2c
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setAlignType(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->alignType_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBoolParam(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->boolParam_:Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setColor(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setColorBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setControlIdBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDefaultCheckStatus(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultCheckStatus_:Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDefaultItemIndex(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultItemIndex_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setEditInputType(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->editInputType_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setEnabledStatus(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->enabledStatus_:Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFontSize(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontSize_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFontType(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFontTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setHeight(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->height_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIntParam(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->intParam_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setItemIndex(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemIndex_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setItemText(ILjava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    if-nez p2, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->ensureItemTextIsMutable()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLayoutStyle(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->layoutStyle_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLeft(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->left_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPadding(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    goto :goto_17

    :cond_e
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    :goto_17
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setPadding(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_12

    if-nez p1, :cond_c

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_c
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    goto :goto_17

    :cond_12
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    :goto_17
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setParentId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setParentIdBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPath(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPathBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setStrParam(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setStrParamBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setText(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTextBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTop(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->top_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUipData(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUipDataBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUrl(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setVisibleStatus(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->visibleStatus_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setWidth(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->width_:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method
