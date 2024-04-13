.class public final Lcom/cyjh/common/util/q;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Lcom/bumptech/glide/request/g;
    .registers 2

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    sget v1, Lcom/cyjh/common/R$drawable;->bg_normal_pic:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->a(I)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget v1, Lcom/cyjh/common/R$drawable;->bg_normal_pic:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->c(I)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/l;->NORMAL:Lcom/bumptech/glide/l;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;ILandroid/widget/ImageView;)V
    .registers 4

    invoke-static {p0}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p0}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b(Ljava/lang/Integer;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/common/util/q;->a()Lcom/bumptech/glide/request/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/n;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_1d
    return-void
.end method

.method private static a(Landroid/content/Context;ILandroid/widget/ImageView;Lcom/bumptech/glide/request/g;)V
    .registers 5

    invoke-static {p0}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p0}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b(Ljava/lang/Integer;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/n;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_19
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Landroid/widget/ImageView;)V
    .registers 4

    invoke-static {p0}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p0}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b(Ljava/io/File;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/common/util/q;->a()Lcom/bumptech/glide/request/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/n;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_19
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    invoke-static {p0}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p0}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/o;->b()Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->b(Ljava/lang/String;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/n;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_15
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/load/m;)V
    .registers 6

    invoke-static {p0}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    sget v1, Lcom/cyjh/common/R$drawable;->bg_normal_pic:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->a(I)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget v1, Lcom/cyjh/common/R$drawable;->bg_normal_pic:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->c(I)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/l;->NORMAL:Lcom/bumptech/glide/l;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;

    move-result-object p3

    invoke-static {p0}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b(Ljava/lang/String;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/n;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_30
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/g;)V
    .registers 5

    invoke-static {p0}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p0}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/o;->b()Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->b(Ljava/lang/String;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/n;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_19
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/bumptech/glide/request/f;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/f<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p0}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/o;->d()Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->b(Ljava/lang/String;)Lcom/bumptech/glide/n;

    new-instance p1, Lcom/cyjh/common/util/q$2;

    invoke-direct {p1, p2}, Lcom/cyjh/common/util/q$2;-><init>(Lcom/bumptech/glide/request/f;)V

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/n;

    invoke-virtual {p0}, Lcom/bumptech/glide/n;->c()Lcom/bumptech/glide/request/target/Target;

    :cond_1c
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/bumptech/glide/request/g;Lcom/cyjh/common/f/b;)V
    .registers 5

    invoke-static {p0}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/cyjh/common/util/q$1;

    invoke-direct {v0, p3}, Lcom/cyjh/common/util/q$1;-><init>(Lcom/cyjh/common/f/b;)V

    invoke-static {p0}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/o;->a()Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->b(Ljava/lang/String;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_1e
    return-void
.end method

.method private static a(Landroid/content/Context;[BLandroid/widget/ImageView;)V
    .registers 5

    invoke-static {p0}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    sget v1, Lcom/cyjh/common/R$drawable;->bg_normal_pic:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->a(I)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget v1, Lcom/cyjh/common/R$drawable;->bg_normal_pic:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->c(I)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/l;->HIGH:Lcom/bumptech/glide/l;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/i;->a:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-static {p0}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b([B)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/n;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_32
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_24

    check-cast p0, Landroid/app/Activity;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1d

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_24

    :cond_1c
    return v0

    :cond_1d
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_24

    return v0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method private static b()Lcom/bumptech/glide/request/g;
    .registers 2

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->e()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget v1, Lcom/cyjh/common/R$drawable;->bg_normal_pic:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->a(I)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget v1, Lcom/cyjh/common/R$drawable;->bg_normal_pic:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->c(I)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/l;->NORMAL:Lcom/bumptech/glide/l;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    invoke-static {p0}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p0}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b(Ljava/lang/String;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/common/util/q;->a()Lcom/bumptech/glide/request/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/n;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_19
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/g;)V
    .registers 5

    invoke-static {p0}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p0}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->b(Ljava/lang/String;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/n;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_15
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 5

    const-string v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/cyjh/common/util/q;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/i;->c:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    invoke-static {p0, p1, p2, v0}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/g;)V

    return-void

    :cond_15
    invoke-static {}, Lcom/cyjh/common/util/q;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/i;->b:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    invoke-static {p0, p1, p2, v0}, Lcom/cyjh/common/util/q;->b(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/g;)V

    return-void
.end method
