.class public final Lcom/bumptech/glide/request/target/PreloadTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final HANDLER:Landroid/os/Handler;

.field private static final MESSAGE_CLEAR:I = 0x1


# instance fields
.field private final requestManager:Lcom/bumptech/glide/o;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/request/target/PreloadTarget$1;

    invoke-direct {v2}, Lcom/bumptech/glide/request/target/PreloadTarget$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/request/target/PreloadTarget;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/o;II)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    iput-object p1, p0, Lcom/bumptech/glide/request/target/PreloadTarget;->requestManager:Lcom/bumptech/glide/o;

    return-void
.end method

.method public static obtain(Lcom/bumptech/glide/o;II)Lcom/bumptech/glide/request/target/PreloadTarget;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/o;",
            "II)",
            "Lcom/bumptech/glide/request/target/PreloadTarget<",
            "TZ;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/target/PreloadTarget;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/request/target/PreloadTarget;-><init>(Lcom/bumptech/glide/o;II)V

    return-object v0
.end method


# virtual methods
.method final clear()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/target/PreloadTarget;->requestManager:Lcom/bumptech/glide/o;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/target/Target;)V

    return-void
.end method

.method public final onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/a/f;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/a/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/request/a/f<",
            "-TZ;>;)V"
        }
    .end annotation

    sget-object p1, Lcom/bumptech/glide/request/target/PreloadTarget;->HANDLER:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
