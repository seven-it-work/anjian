.class final Lcom/bumptech/glide/load/b/a/p$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/a/m;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field private final b:Lcom/bumptech/glide/load/b/a/p$b;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/a/p$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/a/p$a;->b:Lcom/bumptech/glide/load/b/a/p$b;

    return-void
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/bumptech/glide/load/b/a/p$a;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/p$a;->b:Lcom/bumptech/glide/load/b/a/p$b;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/b/a/p$b;->a(Lcom/bumptech/glide/load/b/a/m;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/bumptech/glide/load/b/a/p$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    check-cast p1, Lcom/bumptech/glide/load/b/a/p$a;

    iget v0, p0, Lcom/bumptech/glide/load/b/a/p$a;->a:I

    iget p1, p1, Lcom/bumptech/glide/load/b/a/p$a;->a:I

    if-ne v0, p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    return v1
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/b/a/p$a;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/b/a/p$a;->a:I

    invoke-static {v0}, Lcom/bumptech/glide/load/b/a/p;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
