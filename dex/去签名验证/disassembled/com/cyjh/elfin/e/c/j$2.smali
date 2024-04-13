.class final Lcom/cyjh/elfin/e/c/j$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/e/c/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bumptech/glide/request/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/f<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/request/f;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/f;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/e/c/j$2;->a:Lcom/bumptech/glide/request/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/a;Z)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Ljava/io/File;",
            ">;",
            "Lcom/bumptech/glide/load/a;",
            "Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/e/c/j$2;->a:Lcom/bumptech/glide/request/f;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/cyjh/elfin/e/c/j$2;->a:Lcom/bumptech/glide/request/f;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/bumptech/glide/request/f;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/a;Z)Z

    move-result p1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/b/p;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .registers 6
    .param p1    # Lcom/bumptech/glide/load/b/p;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/p;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Ljava/io/File;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/e/c/j$2;->a:Lcom/bumptech/glide/request/f;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/cyjh/elfin/e/c/j$2;->a:Lcom/bumptech/glide/request/f;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/b/p;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/a;Z)Z
    .registers 12

    move-object v1, p1

    check-cast v1, Ljava/io/File;

    iget-object p1, p0, Lcom/cyjh/elfin/e/c/j$2;->a:Lcom/bumptech/glide/request/f;

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/cyjh/elfin/e/c/j$2;->a:Lcom/bumptech/glide/request/f;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/request/f;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/a;Z)Z

    move-result p1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method
