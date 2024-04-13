.class public abstract Lcom/bumptech/glide/d/a;
.super Lcom/bumptech/glide/d/d;

# interfaces
.implements Lcom/bumptech/glide/d/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/d/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/g;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
