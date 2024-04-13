.class public final Lcom/bumptech/glide/util/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/i$b;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/i$b<",
        "TT;>;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;"
    }
.end annotation


# instance fields
.field private a:[I

.field private b:Lcom/bumptech/glide/util/l$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/util/l$a;

    invoke-direct {v0, p1, p0}, Lcom/bumptech/glide/util/l$a;-><init>(Landroid/view/View;Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    iput-object v0, p0, Lcom/bumptech/glide/util/l;->b:Lcom/bumptech/glide/util/l$a;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/util/l;->a:[I

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bumptech/glide/util/l;->b:Lcom/bumptech/glide/util/l$a;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lcom/bumptech/glide/util/l$a;

    invoke-direct {v0, p1, p0}, Lcom/bumptech/glide/util/l$a;-><init>(Landroid/view/View;Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    iput-object v0, p0, Lcom/bumptech/glide/util/l;->b:Lcom/bumptech/glide/util/l$a;

    :cond_10
    return-void
.end method


# virtual methods
.method public final a()[I
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[I"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/util/l;->a:[I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/bumptech/glide/util/l;->a:[I

    iget-object v1, p0, Lcom/bumptech/glide/util/l;->a:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public final onSizeReady(II)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    iput-object v0, p0, Lcom/bumptech/glide/util/l;->a:[I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/util/l;->b:Lcom/bumptech/glide/util/l$a;

    return-void
.end method
