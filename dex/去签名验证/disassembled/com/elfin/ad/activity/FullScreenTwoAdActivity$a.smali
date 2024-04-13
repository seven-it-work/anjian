.class final Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elfin/ad/activity/FullScreenTwoAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/elfin/ad/activity/FullScreenTwoAdActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    if-eqz v2, :cond_32

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_34

    return-void

    :pswitch_11
    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object p1

    iget-object p1, p1, Lcom/elfin/ad/e/a;->b:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-wide v5, p1, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->Id:J

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/http/c/c/c;->a(Landroid/content/Context;IIJ)V

    return-void

    :pswitch_23
    invoke-static {v2}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->b(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V

    return-void

    :pswitch_27
    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-wide/16 v5, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/http/c/c/c;->a(Landroid/content/Context;IIJ)V

    :cond_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x3e9
        :pswitch_27
        :pswitch_23
        :pswitch_11
    .end packed-switch
.end method
