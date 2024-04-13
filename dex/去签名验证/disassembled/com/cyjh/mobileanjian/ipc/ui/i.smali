.class public final Lcom/cyjh/mobileanjian/ipc/ui/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/ui/i$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

.field private static final h:I = 0x20


# instance fields
.field public a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

.field public b:I

.field public c:Lcom/cyjh/mobileanjian/ipc/ui/g;

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public e:[Ljava/util/HashMap;

.field public f:I

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [Lcom/cyjh/mobileanjian/ipc/ui/k;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    const/4 v1, 0x0

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    const/4 v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->f:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Landroid/content/Context;)Lcom/cyjh/mobileanjian/ipc/ui/g;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .registers 7

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v2, p1, p2, p3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;II)Lcom/cyjh/mobileanjian/ipc/ui/k;

    move-result-object p2

    aput-object p2, v0, v1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    aput-object v0, p2, p3

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p2, p2, p3

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/ui/i$1;

    invoke-direct {p3, p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/i$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/i;Ljava/lang/String;)V

    iput-object p3, p2, Lcom/cyjh/mobileanjian/ipc/ui/k;->b:Landroid/view/View$OnClickListener;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p2, p2, p3

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/ui/i$2;

    invoke-direct {p3, p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/i$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/i;Ljava/lang/String;)V

    iput-object p3, p2, Lcom/cyjh/mobileanjian/ipc/ui/k;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Z)V
    .registers 3

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    sget p2, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    return v1

    :cond_14
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;)V

    return v1
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/ui/i;)[Lcom/cyjh/mobileanjian/ipc/ui/k;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    return-object p0
.end method

.method static synthetic b(Lcom/cyjh/mobileanjian/ipc/ui/i;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    return p0
.end method

.method public static c(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLOSE_CONTINUE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/event/c;->b(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private d()V
    .registers 4

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->c()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->f:I

    :goto_9
    const/16 v1, 0x20

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_22
    return-void
.end method

.method private d(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 10

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v7, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_98c

    goto/16 :goto_987

    :pswitch_23
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2f

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_2f
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_43

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_43
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getTop()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getRight()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getBottom()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_96
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_a2

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_a2
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b6

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_b6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getAlignType()I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "set gravity ok; "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_d3
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v4

    if-nez v0, :cond_df

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_df
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_f3

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_f3
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_9f0

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_10e
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_12a

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_12a
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    goto :goto_150

    :pswitch_12f
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v4

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    goto :goto_150

    :pswitch_140
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v4

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    :goto_150
    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    const-string v4, "%02X%02X%02X"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_1ae
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    if-nez p1, :cond_1ba

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_1ba
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1ca

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_1ca
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1d7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1da

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1d9

    :cond_1d7
    const/4 v1, 0x1

    goto :goto_1da

    :cond_1d9
    const/4 v1, 0x3

    :cond_1da
    :goto_1da
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setIntValue(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_20e
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    if-nez p1, :cond_21a

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_21a
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_22a

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_22a
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v1, v2, :cond_242

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocusable()Z

    move-result v0

    :cond_242
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->BOOL:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setBoolValue(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_276
    invoke-virtual {p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/i;->e(Ljava/lang/String;)V

    return-void

    :pswitch_27a
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_286

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_286
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_29a

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_29a
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p1

    const-string v2, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b1

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_2b1
    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2c7
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v2, v3, :cond_2fe

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt p1, v2, :cond_2f7

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2fa

    :cond_2f7
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2fa
    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_2fe
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v2, :cond_30f

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_30f
    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_313
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_31f

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_31f
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33a

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_33a
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_350

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_350
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_374

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(I)V

    goto :goto_3d0

    :cond_374
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_384

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_384
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_9fe

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_39f
    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3d0

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_3af
    check-cast v2, Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_3c1

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_3c1
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_3d0

    :pswitch_3c5
    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_3d0

    :pswitch_3cb
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3d0
    :goto_3d0
    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_3d4
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_3e0

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_3e0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3f4

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_3f4
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_a0e

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_40f
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-lt v2, v4, :cond_429

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_429
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Spinner Get pos: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_48c

    :pswitch_446
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_462

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_462
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_488

    :pswitch_467
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_488

    :pswitch_478
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_488
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_48c
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_4c0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_4cc

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_4cc
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4e3

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_4e3
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v2, :cond_4f5

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_4f5
    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEditInputType()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setInputType(I)V

    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_502
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V

    return-void

    :pswitch_506
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->c(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V

    return-void

    :pswitch_50a
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_517

    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    goto/16 :goto_987

    :cond_517
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_528

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    goto/16 :goto_987

    :cond_528
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_987

    :pswitch_540
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v7

    goto/16 :goto_987

    :pswitch_546
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_987

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_987

    :pswitch_56a
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_987

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;I)V

    goto/16 :goto_987

    :pswitch_585
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_987

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    invoke-virtual {v0, v6, v1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/util/List;I)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_987

    :pswitch_5c1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_987

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;IILjava/lang/String;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->h:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    goto/16 :goto_75b

    :pswitch_5f1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_987

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(ILjava/lang/String;IILjava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    goto/16 :goto_75b

    :pswitch_626
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_987

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultCheckStatus()Z

    move-result v5

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/lang/String;IIZ)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->d:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    goto/16 :goto_75b

    :pswitch_65b
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_987

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v5

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/util/List;III)Landroid/widget/RadioGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->e:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    goto/16 :goto_75b

    :pswitch_690
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_987

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    goto/16 :goto_75b

    :pswitch_6c3
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_987

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->d(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/ui/i$a;

    invoke-direct {p1, p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/i$a;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/i;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_987

    :pswitch_702
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_987

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    goto :goto_75b

    :pswitch_731
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_987

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->i:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    :goto_75b
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_987

    :pswitch_764
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_781

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_781
    const-string v1, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_794

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_794
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7aa

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7aa
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(I)V

    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_7c9
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7de

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v6, v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_7de
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_826
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_83e

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v6, v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    const/4 v7, 0x0

    goto/16 :goto_987

    :cond_83e
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;)V

    goto/16 :goto_987

    :pswitch_853
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_987

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-virtual {v0, v6, v1, v2, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_987

    :pswitch_875
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->c()V

    goto/16 :goto_987

    :pswitch_87a
    invoke-virtual {p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/i;->d(Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_987

    :pswitch_880
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLOSE_CONTINUE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->b(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_987

    :pswitch_8b1
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8c6

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v6, v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_8c6
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    iget-boolean p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    if-eqz p1, :cond_8de

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_8de
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c()V

    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_SHOW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->b(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_924
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    add-int/2addr v1, v7

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v3, v6, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;II)Lcom/cyjh/mobileanjian/ipc/ui/k;

    move-result-object p1

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, p1, v0

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/i$1;

    invoke-direct {v0, p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/i$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/i;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/k;->b:Landroid/view/View$OnClickListener;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/i$2;

    invoke-direct {v0, p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/i$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/i;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/k;->a:Landroid/view/View$OnClickListener;

    goto :goto_987

    :pswitch_96e
    :try_start_96e
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b(Ljava/lang/String;)V
    :try_end_975
    .catch Ljava/io/IOException; {:try_start_96e .. :try_end_975} :catch_97e
    .catch Lorg/json/JSONException; {:try_start_96e .. :try_end_975} :catch_983

    goto :goto_987

    :pswitch_976
    :try_start_976
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Ljava/lang/String;)V
    :try_end_97d
    .catch Lorg/json/JSONException; {:try_start_976 .. :try_end_97d} :catch_983
    .catch Ljava/io/IOException; {:try_start_976 .. :try_end_97d} :catch_97e

    goto :goto_987

    :catch_97e
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_987

    :catch_983
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_987
    :goto_987
    :pswitch_987
    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    nop

    :pswitch_data_98c
    .packed-switch 0x1
        :pswitch_976
        :pswitch_96e
        :pswitch_924
        :pswitch_8b1
        :pswitch_880
        :pswitch_87a
        :pswitch_875
        :pswitch_853
        :pswitch_826
        :pswitch_7c9
        :pswitch_764
        :pswitch_731
        :pswitch_702
        :pswitch_6c3
        :pswitch_690
        :pswitch_65b
        :pswitch_626
        :pswitch_5f1
        :pswitch_5c1
        :pswitch_585
        :pswitch_56a
        :pswitch_546
        :pswitch_540
        :pswitch_540
        :pswitch_540
        :pswitch_540
        :pswitch_540
        :pswitch_540
        :pswitch_540
        :pswitch_540
        :pswitch_540
        :pswitch_540
        :pswitch_540
        :pswitch_50a
        :pswitch_506
        :pswitch_502
        :pswitch_4c0
        :pswitch_3d4
        :pswitch_313
        :pswitch_27a
        :pswitch_276
        :pswitch_20e
        :pswitch_1ae
        :pswitch_d3
        :pswitch_987
        :pswitch_96
        :pswitch_987
        :pswitch_23
    .end packed-switch

    :pswitch_data_9f0
    .packed-switch 0x1
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_12f
        :pswitch_10e
    .end packed-switch

    :pswitch_data_9fe
    .packed-switch 0x1
        :pswitch_3cb
        :pswitch_3cb
        :pswitch_3cb
        :pswitch_3c5
        :pswitch_3af
        :pswitch_39f
    .end packed-switch

    :pswitch_data_a0e
    .packed-switch 0x1
        :pswitch_478
        :pswitch_478
        :pswitch_478
        :pswitch_467
        :pswitch_446
        :pswitch_40f
    .end packed-switch
.end method

.method private e(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_24

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_24
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v3, :cond_36

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_36
    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEditInputType()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void
.end method

.method private f(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 10

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_28
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3e
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_66

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(I)V

    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_66
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v5

    invoke-virtual {v3, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_76

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_76
    sget-object v5, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v7, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_c6

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_91
    check-cast v3, Landroid/widget/Spinner;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_c2

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_a1
    check-cast v3, Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_b3

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_b3
    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_c2

    :pswitch_b7
    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_c2

    :pswitch_bd
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c2
    :goto_c2
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_bd
        :pswitch_bd
        :pswitch_bd
        :pswitch_b7
        :pswitch_a1
        :pswitch_91
    .end packed-switch
.end method

.method private f(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private g(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_21

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_21
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p1

    const-string v3, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_38
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4e
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_86

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt p1, v1, :cond_7f

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_82

    :cond_7f
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_82
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_86
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v1, :cond_97

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_97
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_1d
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v2, v3, :cond_35

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocusable()Z

    move-result v1

    :cond_35
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->BOOL:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setBoolValue(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private h(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_21

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_21
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getAlignType()I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "set gravity ok; "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_1d
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2f

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2d

    :cond_2b
    const/4 v0, 0x1

    goto :goto_30

    :cond_2d
    const/4 v0, 0x3

    goto :goto_30

    :cond_2f
    const/4 v0, 0x2

    :goto_30
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setIntValue(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private i(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_21

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_21
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getTop()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getRight()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getBottom()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_1d
    invoke-virtual {v0}, Landroid/view/View;->getSolidColor()I

    move-result v0

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0xffffff

    and-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private j(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_21

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_21
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_e0

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_3c
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_58

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_58
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    goto :goto_7e

    :pswitch_5d
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    goto :goto_7e

    :pswitch_6e
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    :goto_7e
    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    const-string v2, "%02X%02X%02X"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_5d
        :pswitch_3c
    .end packed-switch
.end method

.method private j(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_17

    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    if-eqz v0, :cond_2f

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_2f
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c()V

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_SHOW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->b(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private k(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_21

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_21
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_ee

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_3c
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_56

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Spinner Get pos: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_b9

    :pswitch_73
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_8f

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_8f
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_b5

    :pswitch_94
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_b5

    :pswitch_a5
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_b5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_b9
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_94
        :pswitch_73
        :pswitch_3c
    .end packed-switch
.end method

.method private k(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private l(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 6

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1f

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_1f
    const-string v1, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_32
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_48
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(I)V

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->f:I

    return v0
.end method

.method public final varargs a(I[Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->i:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xdac

    invoke-static {v0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->show()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7f

    packed-switch v2, :pswitch_data_a4

    goto :goto_1c

    :pswitch_43
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1c

    :pswitch_57
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1c

    :pswitch_6b
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1c

    :cond_7f
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1c

    :cond_97
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    return-void

    :pswitch_data_a4
    .packed-switch 0x4
        :pswitch_6b
        :pswitch_57
        :pswitch_43
    .end packed-switch
.end method

.method public final a(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .registers 10

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_25

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_widget:I

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p0, p1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    return v1

    :cond_25
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2b2

    return v3

    :pswitch_35
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getVisibleStatus()I

    move-result p1

    packed-switch p1, :pswitch_data_2cc

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return v3

    :pswitch_40
    const/16 p1, 0x8

    goto :goto_44

    :pswitch_43
    const/4 p1, 0x4

    :goto_44
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    return v3

    :pswitch_48
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->i:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_57

    return v1

    :cond_57
    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v3

    :pswitch_6a
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/cyjh/mobileanjian/ipc/ui/m;->e:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v4, v5, :cond_95

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    check-cast v2, Landroid/widget/RadioGroup;

    :goto_81
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2b0

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    :cond_95
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v4

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v1, :cond_c2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set edittext enabled. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    return v3

    :cond_c2
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    return v3

    :pswitch_ca
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_d9

    return v1

    :cond_d9
    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v0

    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->i:Landroid/content/Context;

    sget v6, Lcom/cyjh/mqsdk/R$layout;->ui_show_spinner_dropdown_item:I

    invoke-direct {v4, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v0

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_f9

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v1

    :cond_f9
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return v3

    :pswitch_fd
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->e:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_10c

    return v1

    :cond_10c
    move-object v0, v2

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    :goto_130
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_16b

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->i:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/cyjh/mqsdk/R$layout;->ui_show_radio_button:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setId(I)V

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b()I

    move-result v6

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b()I

    move-result v7

    invoke-virtual {v5, v1, v6, v1, v7}, Landroid/widget/RadioButton;->setPadding(IIII)V

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_130

    :cond_16b
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_179

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v1

    :cond_179
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    return v3

    :pswitch_183
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->h:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_192

    return v1

    :cond_192
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b4

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1b4
    check-cast v2, Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v3

    :pswitch_1ca
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_1d9

    return v1

    :cond_1d9
    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return v3

    :pswitch_202
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->d:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_211

    return v1

    :cond_211
    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultCheckStatus()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v3

    :pswitch_236
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_245

    return v1

    :cond_245
    check-cast v2, Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v3

    :pswitch_25f
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_26e

    return v1

    :cond_26e
    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v3

    :pswitch_288
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_297

    return v1

    :cond_297
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2b0
    return v3

    nop

    :pswitch_data_2b2
    .packed-switch 0x17
        :pswitch_288
        :pswitch_25f
        :pswitch_236
        :pswitch_202
        :pswitch_1ca
        :pswitch_183
        :pswitch_fd
        :pswitch_ca
        :pswitch_6a
        :pswitch_48
        :pswitch_35
    .end packed-switch

    :pswitch_data_2cc
    .packed-switch 0x2
        :pswitch_43
        :pswitch_40
    .end packed-switch
.end method

.method public final b()I
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final b(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 11

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SET FONT type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    if-nez v2, :cond_2d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_2d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontSize()I

    move-result v3

    if-gez v3, :cond_36

    const/16 v3, 0xe

    goto :goto_3a

    :cond_36
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontSize()I

    move-result v3

    :goto_3a
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6c

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v4, v4, v6

    if-eqz v4, :cond_6c

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/graphics/Typeface;I)V

    invoke-static {v5}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_6c
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v6

    invoke-virtual {v4, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_7c

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_7c
    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v7, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8c

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_8c
    sget-object v6, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v7, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v8, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v7, v7, v8

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v6, v0

    const/4 v6, 0x2

    packed-switch v0, :pswitch_data_de

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_a8
    check-cast v4, Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    :goto_b1
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_da

    invoke-virtual {v4, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    int-to-float v0, v3

    invoke-virtual {p1, v6, v0}, Landroid/widget/RadioButton;->setTextSize(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b1

    :pswitch_c7
    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    int-to-float p1, v3

    invoke-virtual {v4, v6, p1}, Landroid/widget/CheckBox;->setTextSize(IF)V

    goto :goto_da

    :pswitch_d1
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    int-to-float p1, v3

    invoke-virtual {v4, v6, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_da
    :goto_da
    invoke-static {v5}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_c7
        :pswitch_a8
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a6

    packed-switch v2, :pswitch_data_bc

    goto :goto_1b

    :pswitch_4e
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_1b

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1b

    :pswitch_6c
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1b

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1b

    :pswitch_91
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1b

    :cond_a6
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b

    :cond_bb
    return-void

    :pswitch_data_bc
    .packed-switch 0x4
        :pswitch_91
        :pswitch_6c
        :pswitch_4e
    .end packed-switch
.end method

.method public final c()V
    .registers 4

    const/16 v0, 0x1f

    :goto_2
    if-lez v0, :cond_14

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v0

    if-eqz v1, :cond_11

    iget-boolean v2, v1, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->e()V

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_14
    return-void
.end method

.method public final c(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_25

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_25
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_35

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_35
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_b8

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_50
    check-cast v3, Landroid/widget/Spinner;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v0

    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-lt v0, v4, :cond_60

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_60
    invoke-virtual {v3}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_6b
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_7b

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :cond_7b
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-interface {v4, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->i:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_spinner_dropdown_item:I

    invoke-direct {p1, v0, v1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_b3

    :pswitch_92
    check-cast v3, Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_a4

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_a4
    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b3

    :pswitch_a8
    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b3

    :pswitch_ae
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b3
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_ae
        :pswitch_ae
        :pswitch_ae
        :pswitch_a8
        :pswitch_92
        :pswitch_50
    .end packed-switch
.end method

.method public final d(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_14

    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    return v1

    :cond_14
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    if-nez v0, :cond_29

    return v1

    :cond_29
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->e()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    if-ne p1, v0, :cond_64

    :goto_4c
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    if-lez p1, :cond_5e

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    if-nez p1, :cond_5e

    goto :goto_4c

    :cond_5e
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    if-gez p1, :cond_64

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    :cond_64
    return v2
.end method

.method public final e(Ljava/lang/String;)V
    .registers 10

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    :goto_1b
    const/16 v6, 0x20

    if-ge v4, v6, :cond_35

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    aget-object v6, v6, v4

    if-eqz v6, :cond_32

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eqz v5, :cond_32

    goto :goto_36

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_35
    const/4 v4, 0x0

    :goto_36
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "type="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "; tempIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v5, :cond_63

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_widget:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    :goto_5b
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :cond_63
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_ee

    invoke-virtual {v0, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    goto :goto_d9

    :pswitch_72
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    goto :goto_9b

    :pswitch_87
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    :goto_9b
    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setIntValue(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    goto :goto_d2

    :pswitch_9f
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->BOOL:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setBoolValue(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    goto :goto_d2

    :pswitch_b7
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    :goto_d2
    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    :goto_d9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Ui.getValue result: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    goto/16 :goto_5b

    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_b7
        :pswitch_b7
        :pswitch_b7
        :pswitch_9f
        :pswitch_87
        :pswitch_72
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLICK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->b(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setEventArgs(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLICK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p2

    sget-object p3, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {p2, p3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->b(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
