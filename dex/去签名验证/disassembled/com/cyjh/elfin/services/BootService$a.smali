.class final Lcom/cyjh/elfin/services/BootService$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/services/BootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/elfin/services/BootService$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x110

    if-ne p1, v0, :cond_14

    invoke-static {}, Lcom/cyjh/elfin/services/BootService;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MyServiceHandler handleMessage --> BootService\u5f00\u673a\u542f\u52a8\u8fd0\u884c\u811a\u672c"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb

    invoke-static {p1}, Lcom/cyjh/elfin/e/c/k;->a(I)V

    :cond_14
    return-void
.end method
