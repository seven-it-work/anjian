.class public final Lcom/cyjh/mobileanjian/ipc/ui/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/ui/h$a;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String; = "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

.field private static final k:I = 0x20


# instance fields
.field public a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

.field public b:I

.field public c:[Ljava/util/HashMap;

.field public d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

.field public e:I

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/cyjh/mobileanjian/ipc/ui/m;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field private l:Landroid/content/Context;

.field private m:Lcom/cyjh/mobileanjian/ipc/ui/g;

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [Lcom/cyjh/mobileanjian/ipc/ui/k;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    const/4 v1, 0x0

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    new-array v2, v0, [Ljava/util/HashMap;

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    new-array v0, v0, [Lcom/cyjh/mobileanjian/ipc/ui/j;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->e:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->i:I

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->l:Landroid/content/Context;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Landroid/content/Context;)Lcom/cyjh/mobileanjian/ipc/ui/g;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    return-void
.end method

.method private varargs a(I[Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->l:Landroid/content/Context;

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

.method private a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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

.method private a(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    sget p2, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, p2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    :goto_13
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/j;->setOpacity(I)V

    goto :goto_13
.end method

.method private a(Ljava/lang/String;II)V
    .registers 7

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v2, p1, p2, p3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;II)Lcom/cyjh/mobileanjian/ipc/ui/k;

    move-result-object p2

    aput-object p2, v0, v1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    aput-object v0, p2, p3

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p2, p2, p3

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/ui/h$2;

    invoke-direct {p3, p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/h;Ljava/lang/String;)V

    iput-object p3, p2, Lcom/cyjh/mobileanjian/ipc/ui/k;->b:Landroid/view/View$OnClickListener;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p2, p2, p3

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/ui/h$3;

    invoke-direct {p3, p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h$3;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/h;Ljava/lang/String;)V

    iput-object p3, p2, Lcom/cyjh/mobileanjian/ipc/ui/k;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(Ljava/lang/String;IIII)V
    .registers 14

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->b()V

    :cond_2f
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_39
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doNewFloat key:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " parentTag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    :cond_7a
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;IIII)Lcom/cyjh/mobileanjian/ipc/ui/j;

    move-result-object p1

    aput-object p1, v0, v1

    return-void

    :cond_96
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->e:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->e:I

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;IIII)Lcom/cyjh/mobileanjian/ipc/ui/j;

    move-result-object p2

    aput-object p2, v0, v1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->e:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V
    .registers 3

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cyjh/mq/sdk/MqRunner;->c(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    sget p2, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, p2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    :goto_13
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    iput-boolean p2, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->e:Z

    goto :goto_13
.end method

.method private static a(Z)V
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

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    sget p2, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, p2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    return v1

    :cond_14
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;)V

    return v1
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/ui/h;)[Lcom/cyjh/mobileanjian/ipc/ui/k;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    return-object p0
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->i:I

    return v0
.end method

.method static synthetic b(Lcom/cyjh/mobileanjian/ipc/ui/h;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    return p0
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_1d
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .registers 8

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_17

    sget p2, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-direct {p0, p2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    int-to-float p2, p2

    iput p2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v3, 0x8

    new-array v3, v3, [F

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v1, v3, v2

    const/4 v1, 0x2

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x3

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x4

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x5

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x6

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x7

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :try_start_5c
    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_61} :catch_61

    :catch_61
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_6c

    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6c
    iget-object p2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-string v0, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_14
    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2a
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v0, v0, v4

    iput p2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    new-array v3, v3, [F

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v1, v3, v2

    const/4 v1, 0x2

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x3

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x4

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x5

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x6

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x7

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :try_start_7f
    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_84} :catch_84

    :catch_84
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_8f

    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_8f
    iget-object p2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    goto :goto_105

    :cond_b2
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_c0

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_c0
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v4, v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_da

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_da
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v1, v4, :cond_f8

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    new-array v1, v3, [F

    fill-array-data v1, :array_10a

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_105

    :cond_f8
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq p1, v1, :cond_105

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_105
    :goto_105
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    nop

    :array_10a
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private b(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .registers 10

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_25

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_widget:I

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-direct {p0, p1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    return v1

    :cond_25
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

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
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->l:Landroid/content/Context;

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
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->l:Landroid/content/Context;

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

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->c()I

    move-result v6

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->c()I

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
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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

.method private c()I
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->l:Landroid/content/Context;

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

.method private c(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 11

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6c

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v4, v4, v6

    if-eqz v4, :cond_6c

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/graphics/Typeface;I)V

    invoke-static {v5}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_6c
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v4, v4, v6

    invoke-virtual {v4, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_7c

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_7c
    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v7, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8c

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_8c
    sget-object v6, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v7, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v8, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v7, v7, v8

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v6, v0

    const/4 v6, 0x2

    packed-switch v0, :pswitch_data_de

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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
    invoke-static {v5}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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

.method private c(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, v0, v2

    iput-object p2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    iget-object p2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_31

    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_31
    iget-object p2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    return v1

    :cond_54
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_60

    return v2

    :cond_60
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_77

    return v2

    :cond_77
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne p1, v2, :cond_8f

    check-cast v0, Landroid/widget/ImageView;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_8f
    return v1
.end method

.method private d()V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->i:I

    const/4 v1, 0x0

    :goto_19
    const/16 v2, 0x20

    if-ge v1, v2, :cond_32

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_32
    new-array v1, v2, [Lcom/cyjh/mobileanjian/ipc/ui/j;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->e:I

    return-void
.end method

.method private d(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_24

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_24
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v3, :cond_36

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_36
    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEditInputType()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private e(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_25

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_25
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_35

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_35
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_b8

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_50
    check-cast v3, Landroid/widget/Spinner;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v0

    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-lt v0, v4, :cond_60

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->l:Landroid/content/Context;

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

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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

.method private e(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

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
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1c

    :pswitch_57
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1c

    :pswitch_6b
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1c

    :cond_7f
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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

.method private f(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 10

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_66

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(I)V

    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_66
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v3, v3, v5

    invoke-virtual {v3, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_76

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_76
    sget-object v5, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v7, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_c6

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_91
    check-cast v3, Landroid/widget/Spinner;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_c2

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_a1
    check-cast v3, Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_b3

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1b

    :cond_a6
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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

.method private g(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_21

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_7c

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->c()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_7c
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v1, :cond_8d

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_8d
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_17

    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    if-eqz v0, :cond_2f

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_2f
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c()V

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->b(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private h(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_21

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

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

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private i(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_21

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->j(Ljava/lang/String;)Z

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

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

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->b(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private j(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_21

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_21
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_e4

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_3c
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_58
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    goto :goto_7e

    :pswitch_5d
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    goto :goto_7e

    :pswitch_6e
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    nop

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_5d
        :pswitch_3c
    .end packed-switch
.end method

.method private j(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_14

    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    return v1

    :cond_14
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

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
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->e()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    if-ne p1, v0, :cond_64

    :goto_4c
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    if-lez p1, :cond_5e

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    if-nez p1, :cond_5e

    goto :goto_4c

    :cond_5e
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    if-gez p1, :cond_64

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    :cond_64
    return v2
.end method

.method private k(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_21

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_21
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_f2

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_3c
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_56

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_8f
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_b5

    :pswitch_94
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_b5

    :pswitch_a5
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

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

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_data_f2
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

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    aget-object v6, v6, v4

    if-eqz v6, :cond_32

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

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

    if-nez v5, :cond_67

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_widget:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-direct {p0, v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {v0, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    :goto_5b
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :cond_67
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_f2

    invoke-virtual {v0, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    goto :goto_dd

    :pswitch_76
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    goto :goto_9f

    :pswitch_8b
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    :goto_9f
    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setIntValue(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    goto :goto_d6

    :pswitch_a3
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

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

    goto :goto_d6

    :pswitch_bb
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

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

    :goto_d6
    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    :goto_dd
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Ui.getValue result: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    goto/16 :goto_5b

    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_bb
        :pswitch_bb
        :pswitch_a3
        :pswitch_8b
        :pswitch_76
    .end packed-switch
.end method

.method private l(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 6

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1f

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-direct {p0, p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_1f
    const-string v1, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(I)V

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private l(Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_17

    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz v0, :cond_2f

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_2f
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    const/16 v5, 0x10

    if-eqz v4, :cond_68

    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_68

    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_a8

    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a8

    :cond_68
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v6, 0x8

    new-array v6, v6, [F

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v7, v6, v1

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v1, v6, v2

    const/4 v1, 0x2

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v7, v6, v1

    const/4 v1, 0x3

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v7, v6, v1

    const/4 v1, 0x4

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v7, v6, v1

    const/4 v1, 0x5

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v7, v6, v1

    const/4 v1, 0x6

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v7, v6, v1

    const/4 v1, 0x7

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v7, v6, v1

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :try_start_9a
    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9f} :catch_9f

    :catch_9f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_a8

    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a8
    :goto_a8
    iput-boolean v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/cyjh/mobileanjian/ipc/ui/j$1;

    invoke-direct {v4, v0, v3}, Lcom/cyjh/mobileanjian/ipc/ui/j$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/j;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_SHOW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    return-void
.end method

.method private m(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 7

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParam()Ljava/lang/String;

    move-result-object p1

    const-string v1, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_1c
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_32
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_48

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_48
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_62

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_62
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v2, v4, :cond_72

    move-object v2, v3

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_72
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_81

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_81
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private m(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-nez v0, :cond_2f

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_2f
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    iget-object v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_57

    iget-boolean v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz v0, :cond_57

    iget-object v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v2, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v2, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_57
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private n(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_17

    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-nez v0, :cond_2f

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_2f
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->b()V

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private n(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doReSetView value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez v1, :cond_25

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return v2

    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doReSetView value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_51

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return v2

    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "doReSetView value: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_142

    goto/16 :goto_129

    :pswitch_74
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_129

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setX(F)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setY(F)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_129

    :pswitch_b6
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_129

    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setX(F)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setY(F)V

    goto :goto_129

    :pswitch_f0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_129

    move-object v0, v3

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setX(F)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setY(F)V

    :cond_129
    :goto_129
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return p1

    nop

    :pswitch_data_142
    .packed-switch 0x40
        :pswitch_f0
        :pswitch_b6
        :pswitch_74
    .end packed-switch
.end method

.method private o(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->c()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLOSE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private o(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    return v2

    :cond_10
    :try_start_10
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_20} :catch_5d

    if-nez v1, :cond_23

    return v2

    :cond_23
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2a

    return v2

    :cond_2a
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_41

    const/4 v4, 0x3

    if-eq v0, v4, :cond_41

    goto :goto_5a

    :cond_41
    check-cast v3, Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "setFloatTextSize value: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontSize()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontSize()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v3, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_5a
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    :catch_5d
    return v2
.end method

.method private p(Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_45

    :try_start_d
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const-string v1, "Left"

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Top"

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Width"

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Height"

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_3d} :catch_3f

    goto/16 :goto_143

    :catch_3f
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_143

    :cond_45
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/mobileanjian/ipc/ui/m;

    const/4 v3, 0x1

    if-nez v2, :cond_6e

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_widget:I

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    :goto_62
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/mq/sdk/MqRunner;->c(Ljava/lang/String;)V

    return-void

    :cond_6e
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v2

    aget v2, v4, v2

    if-eq v2, v3, :cond_100

    const/4 v3, 0x3

    if-eq v2, v3, :cond_bc

    const/4 v3, 0x7

    if-eq v2, v3, :cond_80

    goto/16 :goto_143

    :cond_80
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    :try_start_96
    const-string v1, "Left"

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Top"

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Width"

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Height"

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_ba
    .catch Lorg/json/JSONException; {:try_start_96 .. :try_end_ba} :catch_3f

    goto/16 :goto_143

    :cond_bc
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    :try_start_d2
    const-string v1, "Left"

    invoke-virtual {p1}, Landroid/widget/Button;->getLeft()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Top"

    invoke-virtual {p1}, Landroid/widget/Button;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Text"

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Width"

    invoke-virtual {p1}, Landroid/widget/Button;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Height"

    invoke-virtual {p1}, Landroid/widget/Button;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_ff
    .catch Lorg/json/JSONException; {:try_start_d2 .. :try_end_ff} :catch_3f

    goto :goto_143

    :cond_100
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    :try_start_116
    const-string v1, "Left"

    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Top"

    invoke-virtual {p1}, Landroid/widget/TextView;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Text"

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Width"

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Height"

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_143
    .catch Lorg/json/JSONException; {:try_start_116 .. :try_end_143} :catch_3f

    :goto_143
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "FWGetValue json: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_62
.end method

.method private p(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    return v2

    :cond_10
    :try_start_10
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_20} :catch_72

    if-nez v1, :cond_23

    return v2

    :cond_23
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2a

    return v2

    :cond_2a
    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_74

    goto :goto_6d

    :pswitch_3a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doFloatSetStatus "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getVisibleStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getVisibleStatus()I

    move-result p1

    if-eqz p1, :cond_52

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6d

    :cond_52
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6d

    :pswitch_58
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doFloatSetStatus "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :goto_6d
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    const/4 p1, 0x1

    return p1

    :catch_72
    return v2

    nop

    :pswitch_data_74
    .packed-switch 0x44
        :pswitch_58
        :pswitch_3a
    .end packed-switch
.end method

.method private q(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    return v2

    :cond_10
    :try_start_10
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_20} :catch_83

    if-nez v1, :cond_23

    return v2

    :cond_23
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    const-string v3, "false"

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result p1

    aget p1, v4, p1

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_84

    goto :goto_7b

    :pswitch_3d
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7b

    goto :goto_79

    :pswitch_44
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq p1, v0, :cond_7b

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    const-string v0, "%6s"

    new-array v1, v4, [Ljava/lang/Object;

    const v3, 0xffffff

    and-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7b

    :pswitch_73
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7b

    :goto_79
    const-string v3, "true"

    :cond_7b
    :goto_7b
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/cyjh/mq/sdk/MqRunner;->c(Ljava/lang/String;)V

    return v4

    :catch_83
    return v2

    :pswitch_data_84
    .packed-switch 0x46
        :pswitch_73
        :pswitch_44
        :pswitch_3d
    .end packed-switch
.end method

.method private r(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->setFloatLeft(I)V

    goto :goto_7b

    :cond_24
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_47

    return v2

    :cond_47
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_65

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_65

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_7b

    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "view.setX "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setX(F)V

    :cond_7b
    :goto_7b
    const/4 p1, 0x1

    return p1
.end method

.method private s(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->setFloatTop(I)V

    goto :goto_7b

    :cond_24
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_47

    return v2

    :cond_47
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_65

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_65

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_7b

    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "view.setY "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setY(F)V

    :cond_7b
    :goto_7b
    const/4 p1, 0x1

    return p1
.end method

.method private t(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->setFloatWidth(I)V

    goto :goto_74

    :cond_24
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_47

    return v2

    :cond_47
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_65

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_65

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_74

    :cond_65
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_74
    :goto_74
    const/4 p1, 0x1

    return p1
.end method

.method private u(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->setFloatHeight(I)V

    goto :goto_74

    :cond_24
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_47

    return v2

    :cond_47
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_65

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_65

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_74

    :cond_65
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_74
    :goto_74
    const/4 p1, 0x1

    return p1
.end method

.method private v(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFloatText : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    :try_start_1e
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2e} :catch_65

    if-nez v1, :cond_31

    return v2

    :cond_31
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_38

    return v2

    :cond_38
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_59

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4f

    goto :goto_62

    :cond_4f
    check-cast v3, Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParam()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_62

    :cond_59
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParam()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_62
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    :catch_65
    return v2
.end method


# virtual methods
.method public final a()V
    .registers 4

    const/16 v0, 0x1f

    :goto_2
    if-lez v0, :cond_21

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v0

    if-eqz v1, :cond_11

    iget-boolean v2, v1, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->e()V

    :cond_11
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1e

    iget-boolean v2, v1, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz v2, :cond_1e

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->c()V

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_21
    return-void
.end method

.method public final a(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .registers 14

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/16 v3, 0x64

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_10ce

    goto/16 :goto_10c9

    :pswitch_29
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->v(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_10c9

    :pswitch_2f
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->u(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_10c9

    :pswitch_35
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->t(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_10c9

    :pswitch_3b
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->s(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_10c9

    :pswitch_41
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->setFloatLeft(I)V

    goto/16 :goto_10c9

    :cond_66
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_73

    :goto_70
    const/4 v8, 0x0

    goto/16 :goto_10c9

    :cond_73
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_8a

    goto :goto_70

    :cond_8a
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_a8

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_a8

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_10c9

    :cond_a8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "view.setX "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_10c9

    :pswitch_c0
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->q(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_10c9

    :pswitch_c6
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->p(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_10c9

    :pswitch_cc
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->o(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_10c9

    :pswitch_d2
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->n(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    return-void

    :pswitch_d6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11b

    :try_start_e3
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "Left"

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Top"

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Width"

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Height"

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_113
    .catch Lorg/json/JSONException; {:try_start_e3 .. :try_end_113} :catch_115

    goto/16 :goto_217

    :catch_115
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_217

    :cond_11b
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-nez v1, :cond_143

    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_widget:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v6, v1, v9

    invoke-direct {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    :goto_136
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->c(Ljava/lang/String;)V

    goto/16 :goto_10c9

    :cond_143
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v8, :cond_1d4

    if-eq v1, v7, :cond_190

    const/4 v2, 0x7

    if-eq v1, v2, :cond_154

    goto/16 :goto_217

    :cond_154
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :try_start_16a
    const-string v1, "Left"

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Top"

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Width"

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Height"

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_18e
    .catch Lorg/json/JSONException; {:try_start_16a .. :try_end_18e} :catch_115

    goto/16 :goto_217

    :cond_190
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    :try_start_1a6
    const-string v1, "Left"

    invoke-virtual {v0}, Landroid/widget/Button;->getLeft()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Top"

    invoke-virtual {v0}, Landroid/widget/Button;->getTop()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Text"

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Width"

    invoke-virtual {v0}, Landroid/widget/Button;->getWidth()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Height"

    invoke-virtual {v0}, Landroid/widget/Button;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1d3
    .catch Lorg/json/JSONException; {:try_start_1a6 .. :try_end_1d3} :catch_115

    goto :goto_217

    :cond_1d4
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :try_start_1ea
    const-string v1, "Left"

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Top"

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Text"

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Width"

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Height"

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_217
    .catch Lorg/json/JSONException; {:try_start_1ea .. :try_end_217} :catch_115

    :goto_217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FWGetValue json: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_136

    :pswitch_227
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParam()Ljava/lang/String;

    move-result-object p1

    const-string v1, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_242

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v9, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_242
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_258

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_258
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_26e

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_26e
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_288

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_288
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v3, v4, :cond_298

    move-object v3, v2

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_298
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v3, :cond_2a7

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2a7
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_2be
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2d3

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_2d3
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->d()Z

    move-result p1

    if-eqz p1, :cond_313

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    iget-object v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_313

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->d()Z

    move-result v0

    if-eqz v0, :cond_313

    iget-object v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_313
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_317
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_10c9

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    invoke-virtual {v1, v6, v2, v3, v4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->c(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Landroid/view/View;)V

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setX(F)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_10c9

    :pswitch_379
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_10c9

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v7, Lcom/cyjh/mqsdk/R$layout;->ui_float_text_view:I

    invoke-virtual {v1, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eq v3, v5, :cond_3c4

    if-eq v4, v5, :cond_3c4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_3c4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Landroid/view/View;)V

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setX(F)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setY(F)V

    goto/16 :goto_10c9

    :pswitch_3f8
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_10c9

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v10

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v11, Lcom/cyjh/mqsdk/R$layout;->ui_float_button:I

    invoke-virtual {v1, v11, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setAllCaps(Z)V

    if-nez v7, :cond_442

    if-nez v10, :cond_442

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_447

    :cond_442
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_447
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/cyjh/mobileanjian/ipc/ui/h$1;

    invoke-direct {v2, p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/h$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/h;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Landroid/view/View;)V

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setX(F)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setY(F)V

    goto/16 :goto_10c9

    :pswitch_483
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParam()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4da

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object p1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    iget-object p1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_4b7

    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4b7
    iget-object p1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    goto/16 :goto_10c9

    :cond_4da
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4e6

    goto/16 :goto_70

    :cond_4e6
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4fe

    goto/16 :goto_70

    :cond_4fe
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v1, v2, :cond_10c9

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_10c9

    :pswitch_518
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParam()Ljava/lang/String;

    move-result-object p1

    const-string v0, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_52f

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v9, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_52f
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_545

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_545
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_57c

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->b(I)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    goto :goto_5cf

    :cond_57c
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_58a

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_58a
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5a4

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_5a4
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v1, v3, :cond_5c2

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    new-array v2, v2, [F

    fill-array-data v2, :array_119a

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5cf

    :cond_5c2
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v1, v2, :cond_5cf

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5cf
    :goto_5cf
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_5d3
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5ec

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_5ec
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(I)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_616
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_62f

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_62f
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->setOpacity(I)V

    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_646
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_65b

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_65b
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->c()V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLOSE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {v6, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_67c
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_691

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_691
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->d()Z

    move-result p1

    if-nez p1, :cond_6ab

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_6ab
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->b()V

    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_6c2
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getBoolParam()Z

    move-result p1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6db

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_6db
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-boolean p1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->e:Z

    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_6f1
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_706

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_706
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->d()Z

    move-result p1

    if-eqz p1, :cond_720

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_720
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a()V

    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_SHOW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {v6, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    return-void

    :pswitch_73c
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Ljava/lang/String;IIII)V

    goto/16 :goto_10c9

    :pswitch_753
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_75f

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_75f
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_773

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_773
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

    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_7c6
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_7d2

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_7d2
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7e6

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_7e6
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

    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_803
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v2

    if-nez v0, :cond_80f

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_80f
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_823

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_823
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_116c

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_83e
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_85a

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_85a
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    goto :goto_880

    :pswitch_85f
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    goto :goto_880

    :pswitch_870
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    :goto_880
    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    const-string v2, "%02X%02X%02X"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

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

    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_8e2
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    if-nez p1, :cond_8ee

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_8ee
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_8fe

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_8fe
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_909

    const/4 v0, 0x4

    if-eq p1, v0, :cond_90c

    if-eq p1, v2, :cond_90b

    :cond_909
    const/4 v1, 0x1

    goto :goto_90c

    :cond_90b
    const/4 v1, 0x3

    :cond_90c
    :goto_90c
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

    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_944
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    if-nez p1, :cond_950

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_950
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_960

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_960
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v1, v2, :cond_978

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocusable()Z

    move-result v0

    :cond_978
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

    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_9b0
    invoke-direct {p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/h;->k(Ljava/lang/String;)V

    return-void

    :pswitch_9b4
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_9c0

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_9c0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_9d4

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_9d4
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p1

    const-string v2, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9eb

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v9, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_9eb
    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a01

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_a01
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v2, v3, :cond_a2b

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->c()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a3c

    :cond_a2b
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v2, :cond_a3c

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_a3c
    :goto_a3c
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_a40
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_a4c

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_a4c
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a67

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v9, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_a67
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a7d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a7d
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_aa1

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(I)V

    goto :goto_afd

    :cond_aa1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_ab1

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_ab1
    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_117a

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_acc
    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_afd

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_adc
    check-cast v2, Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_aee

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_aee
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_afd

    :pswitch_af2
    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_afd

    :pswitch_af8
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_afd
    :goto_afd
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_b01
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_b0d

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_b0d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b21

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_b21
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_118a

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_b3c
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_b56

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_b56
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

    goto :goto_bb9

    :pswitch_b73
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_b8f

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_b8f
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_bb5

    :pswitch_b94
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_bb5

    :pswitch_ba5
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_bb5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_bb9
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

    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_bf1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_bfd

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_bfd
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_c14

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_c14
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v2, :cond_c26

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_c26
    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEditInputType()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setInputType(I)V

    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_c33
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->c(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V

    return-void

    :pswitch_c37
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->e(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V

    return-void

    :pswitch_c3b
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c48

    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    goto/16 :goto_10c9

    :cond_c48
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_c59

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    goto/16 :goto_10c9

    :cond_c59
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_10c9

    :pswitch_c70
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_10c9

    :pswitch_c76
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_10c9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_10c9

    :pswitch_c9a
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_10c9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;I)V

    goto/16 :goto_10c9

    :pswitch_cb5
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_10c9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    invoke-virtual {v0, v6, v1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/util/List;I)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_10c9

    :pswitch_cf1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_10c9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;IILjava/lang/String;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->h:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    goto/16 :goto_e8b

    :pswitch_d21
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_10c9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

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

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    goto/16 :goto_e8b

    :pswitch_d56
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_10c9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

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

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->d:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    goto/16 :goto_e8b

    :pswitch_d8b
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_10c9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

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

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->e:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    goto/16 :goto_e8b

    :pswitch_dc0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_10c9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    goto/16 :goto_e8b

    :pswitch_df3
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_10c9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->d(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/ui/h$a;

    invoke-direct {p1, p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/h$a;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/h;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_10c9

    :pswitch_e32
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_10c9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    goto :goto_e8b

    :pswitch_e61
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_10c9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->i:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    :goto_e8b
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_10c9

    :pswitch_e94
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_eb1

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v9

    invoke-direct {p0, p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_eb1
    const-string v1, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ec4

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v9, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_ec4
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_eda

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_eda
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(I)V

    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_ef9
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_f0e

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_f0e
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

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

    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_f5a
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f71

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_70

    :cond_f71
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;)V

    goto/16 :goto_10c9

    :pswitch_f86
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_10c9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-virtual {v0, v6, v1, v2, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_10c9

    :pswitch_fa8
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a()V

    goto/16 :goto_10c9

    :pswitch_fad
    invoke-direct {p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/h;->j(Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_10c9

    :pswitch_fb3
    invoke-direct {p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/h;->j(Ljava/lang/String;)Z

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

    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->b(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_10c9

    :pswitch_feb
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1000

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_1000
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->d()Z

    move-result p1

    if-eqz p1, :cond_101a

    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_101a
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c()V

    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

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

    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->b(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_1064
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    add-int/2addr v1, v8

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v3, v6, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;II)Lcom/cyjh/mobileanjian/ipc/ui/k;

    move-result-object p1

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, p1, v0

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/h$2;

    invoke-direct {v0, p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/h$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/h;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/h$3;

    invoke-direct {v0, p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/h$3;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/h;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_10c9

    :pswitch_10b0
    :try_start_10b0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->f(Ljava/lang/String;)V
    :try_end_10b7
    .catch Ljava/io/IOException; {:try_start_10b0 .. :try_end_10b7} :catch_10c0
    .catch Lorg/json/JSONException; {:try_start_10b0 .. :try_end_10b7} :catch_10c5

    goto :goto_10c9

    :pswitch_10b8
    :try_start_10b8
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->e(Ljava/lang/String;)V
    :try_end_10bf
    .catch Lorg/json/JSONException; {:try_start_10b8 .. :try_end_10bf} :catch_10c5
    .catch Ljava/io/IOException; {:try_start_10b8 .. :try_end_10bf} :catch_10c0

    goto :goto_10c9

    :catch_10c0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10c9

    :catch_10c5
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_10c9
    :goto_10c9
    :pswitch_10c9
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    nop

    :pswitch_data_10ce
    .packed-switch 0x1
        :pswitch_10b8
        :pswitch_10b0
        :pswitch_1064
        :pswitch_feb
        :pswitch_fb3
        :pswitch_fad
        :pswitch_fa8
        :pswitch_f86
        :pswitch_f5a
        :pswitch_ef9
        :pswitch_e94
        :pswitch_e61
        :pswitch_e32
        :pswitch_df3
        :pswitch_dc0
        :pswitch_d8b
        :pswitch_d56
        :pswitch_d21
        :pswitch_cf1
        :pswitch_cb5
        :pswitch_c9a
        :pswitch_c76
        :pswitch_c70
        :pswitch_c70
        :pswitch_c70
        :pswitch_c70
        :pswitch_c70
        :pswitch_c70
        :pswitch_c70
        :pswitch_c70
        :pswitch_c70
        :pswitch_c70
        :pswitch_c70
        :pswitch_c3b
        :pswitch_c37
        :pswitch_c33
        :pswitch_bf1
        :pswitch_b01
        :pswitch_a40
        :pswitch_9b4
        :pswitch_9b0
        :pswitch_944
        :pswitch_8e2
        :pswitch_803
        :pswitch_10c9
        :pswitch_7c6
        :pswitch_10c9
        :pswitch_753
        :pswitch_73c
        :pswitch_6f1
        :pswitch_6c2
        :pswitch_67c
        :pswitch_646
        :pswitch_616
        :pswitch_5d3
        :pswitch_518
        :pswitch_483
        :pswitch_3f8
        :pswitch_379
        :pswitch_317
        :pswitch_2be
        :pswitch_227
        :pswitch_d6
        :pswitch_d2
        :pswitch_d2
        :pswitch_d2
        :pswitch_cc
        :pswitch_c6
        :pswitch_c6
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
        :pswitch_41
        :pswitch_3b
        :pswitch_35
        :pswitch_2f
        :pswitch_29
    .end packed-switch

    :pswitch_data_116c
    .packed-switch 0x1
        :pswitch_870
        :pswitch_870
        :pswitch_870
        :pswitch_85f
        :pswitch_83e
    .end packed-switch

    :pswitch_data_117a
    .packed-switch 0x1
        :pswitch_af8
        :pswitch_af8
        :pswitch_af8
        :pswitch_af2
        :pswitch_adc
        :pswitch_acc
    .end packed-switch

    :pswitch_data_118a
    .packed-switch 0x1
        :pswitch_ba5
        :pswitch_ba5
        :pswitch_ba5
        :pswitch_b94
        :pswitch_b73
        :pswitch_b3c
    .end packed-switch

    :array_119a
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
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

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->b(Lcom/google/protobuf/ByteString;)V

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

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/cyjh/mq/sdk/MqRunner;->b(Lcom/google/protobuf/ByteString;)V

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
