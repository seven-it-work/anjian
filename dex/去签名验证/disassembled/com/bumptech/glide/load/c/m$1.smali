.class final Lcom/bumptech/glide/load/c/m$1;
.super Lcom/bumptech/glide/util/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/c/m;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/util/f<",
        "Lcom/bumptech/glide/load/c/m$a<",
        "TA;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/c/m;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/c/m;J)V
    .registers 4

    iput-object p1, p0, Lcom/bumptech/glide/load/c/m$1;->a:Lcom/bumptech/glide/load/c/m;

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/util/f;-><init>(J)V

    return-void
.end method

.method private static a(Lcom/bumptech/glide/load/c/m$a;)V
    .registers 1
    .param p0    # Lcom/bumptech/glide/load/c/m$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/m$a<",
            "TA;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/load/c/m$a;->a()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/bumptech/glide/load/c/m$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/c/m$a;->a()V

    return-void
.end method
