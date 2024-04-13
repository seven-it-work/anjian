.class final Lcom/bumptech/glide/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/manager/k$a;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/f;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/l;Landroid/content/Context;)Lcom/bumptech/glide/o;
    .registers 6
    .param p1    # Lcom/bumptech/glide/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/manager/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/manager/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/d;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cyjh/elfin/base/glidemodule/d;-><init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/l;Landroid/content/Context;)V

    return-object v0
.end method
