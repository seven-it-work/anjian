.class public Lcom/cyjh/elfin/base/glidemodule/CustomGlideModule;
.super Lcom/bumptech/glide/d/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/bumptech/glide/g;)V
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/bumptech/glide/load/b/b/i;

    const-wide/32 v1, 0x1400000

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/b/b/i;-><init>(J)V

    iput-object v0, p2, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/b/b/j;

    new-instance v0, Lcom/bumptech/glide/load/b/b/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/b/b/h;-><init>(Landroid/content/Context;B)V

    iput-object v0, p2, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/load/b/b/a$a;

    return-void
.end method

.method public final d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
