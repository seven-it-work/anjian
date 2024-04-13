.class final Lcom/google/a/g/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field final b:I

.field private final c:Z


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/b;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    iput p2, p0, Lcom/google/a/g/a/a/c;->b:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/a/g/a/a/c;->c:Z

    return-void
.end method

.method private a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    return-object v0
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/google/a/g/a/a/c;->b:I

    return v0
.end method

.method private c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/a/g/a/a/c;->c:Z

    return v0
.end method


# virtual methods
.method final a(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/a/g/a/a/b;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/a/g/a/a/c;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/a/g/a/a/c;

    iget-object v0, p0, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    iget-object v2, p1, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/a/g/a/a/c;->c:Z

    iget-boolean p1, p1, Lcom/google/a/g/a/a/c;->c:Z

    if-ne v0, p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/a/g/a/a/c;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/a/g/a/a/c;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
