.class final Lcom/bumptech/glide/manager/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/manager/h;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/manager/i;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/manager/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/bumptech/glide/manager/i;->onStart()V

    return-void
.end method

.method public final b(Lcom/bumptech/glide/manager/i;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/manager/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
