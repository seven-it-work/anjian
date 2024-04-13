.class final Lcom/google/a/a/b/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/a/a/b/a$a;->a:I

    iput p2, p0, Lcom/google/a/a/b/a$a;->b:I

    return-void
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/google/a/a/b/a$a;->a:I

    return v0
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lcom/google/a/a/b/a$a;->b:I

    return v0
.end method


# virtual methods
.method final a()Lcom/google/a/t;
    .registers 4

    new-instance v0, Lcom/google/a/t;

    iget v1, p0, Lcom/google/a/a/b/a$a;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/a/a/b/a$a;->b:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/t;-><init>(FF)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/a/a/b/a$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/a/a/b/a$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
