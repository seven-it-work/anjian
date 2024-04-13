.class final Lcom/bumptech/glide/load/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/a/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/a/c$a;,
        Lcom/bumptech/glide/load/b/a/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/a/c$b;

.field private final b:Lcom/bumptech/glide/load/b/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/a/h<",
            "Lcom/bumptech/glide/load/b/a/c$a;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/b/a/c$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/c$b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a/c;->a:Lcom/bumptech/glide/load/b/a/c$b;

    new-instance v0, Lcom/bumptech/glide/load/b/a/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/h;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a/c;->b:Lcom/bumptech/glide/load/b/a/h;

    return-void
.end method

.method static c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/load/b/a/c;->c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/c;->b:Lcom/bumptech/glide/load/b/a/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/c;->a:Lcom/bumptech/glide/load/b/a/c$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/b/a/c$b;->a(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/b/a/c$a;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/b/a/c;->b:Lcom/bumptech/glide/load/b/a/h;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/b/a/h;->a(Lcom/bumptech/glide/load/b/a/m;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .registers 6

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/c;->a:Lcom/bumptech/glide/load/b/a/c$b;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/load/b/a/c$b;->a(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/b/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/c;->b:Lcom/bumptech/glide/load/b/a/h;

    invoke-virtual {v1, v0, p1}, Lcom/bumptech/glide/load/b/a/h;->a(Lcom/bumptech/glide/load/b/a/m;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/b/a/c;->c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/bumptech/glide/load/b/a/c;->c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/graphics/Bitmap;)I
    .registers 2

    invoke-static {p1}, Lcom/bumptech/glide/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AttributeStrategy:\n  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/c;->b:Lcom/bumptech/glide/load/b/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
