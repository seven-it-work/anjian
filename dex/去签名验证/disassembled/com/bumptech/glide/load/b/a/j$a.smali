.class final Lcom/bumptech/glide/load/b/a/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/b/a/j$b;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/a/j$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/a/j$a;->c:Lcom/bumptech/glide/load/b/a/j$b;

    return-void
.end method

.method private a(ILjava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput p1, p0, Lcom/bumptech/glide/load/b/a/j$a;->a:I

    iput-object p2, p0, Lcom/bumptech/glide/load/b/a/j$a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/j$a;->c:Lcom/bumptech/glide/load/b/a/j$b;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/b/a/j$b;->a(Lcom/bumptech/glide/load/b/a/m;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/bumptech/glide/load/b/a/j$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    check-cast p1, Lcom/bumptech/glide/load/b/a/j$a;

    iget v0, p0, Lcom/bumptech/glide/load/b/a/j$a;->a:I

    iget v2, p1, Lcom/bumptech/glide/load/b/a/j$a;->a:I

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/j$a;->b:Ljava/lang/Class;

    iget-object p1, p1, Lcom/bumptech/glide/load/b/a/j$a;->b:Ljava/lang/Class;

    if-ne v0, p1, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/b/a/j$a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/j$a;->b:Ljava/lang/Class;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/j$a;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key{size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bumptech/glide/load/b/a/j$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "array="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/j$a;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
