.class abstract Lb/a/e/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lc/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field protected final a:Lc/j;

.field protected b:Z

.field final synthetic c:Lb/a/e/a;


# direct methods
.method private constructor <init>(Lb/a/e/a;)V
    .registers 3

    iput-object p1, p0, Lb/a/e/a$a;->c:Lb/a/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lc/j;

    iget-object v0, p0, Lb/a/e/a$a;->c:Lb/a/e/a;

    iget-object v0, v0, Lb/a/e/a;->d:Lc/e;

    invoke-interface {v0}, Lc/e;->timeout()Lc/z;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/j;-><init>(Lc/z;)V

    iput-object p1, p0, Lb/a/e/a$a;->a:Lc/j;

    return-void
.end method

.method synthetic constructor <init>(Lb/a/e/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lb/a/e/a$a;-><init>(Lb/a/e/a;)V

    return-void
.end method


# virtual methods
.method protected final a(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/e/a$a;->c:Lb/a/e/a;

    iget v0, v0, Lb/a/e/a;->f:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lb/a/e/a$a;->c:Lb/a/e/a;

    iget v0, v0, Lb/a/e/a;->f:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_27

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/a/e/a$a;->c:Lb/a/e/a;

    iget v1, v1, Lb/a/e/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    iget-object v0, p0, Lb/a/e/a$a;->a:Lc/j;

    invoke-static {v0}, Lb/a/e/a;->a(Lc/j;)V

    iget-object v0, p0, Lb/a/e/a$a;->c:Lb/a/e/a;

    iput v1, v0, Lb/a/e/a;->f:I

    iget-object v0, p0, Lb/a/e/a$a;->c:Lb/a/e/a;

    iget-object v0, v0, Lb/a/e/a;->c:Lb/a/c/g;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lb/a/e/a$a;->c:Lb/a/e/a;

    iget-object v0, v0, Lb/a/e/a;->c:Lb/a/c/g;

    xor-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lb/a/e/a$a;->c:Lb/a/e/a;

    invoke-virtual {v0, p1, v1}, Lb/a/c/g;->a(ZLb/a/d/c;)V

    :cond_41
    return-void
.end method

.method public timeout()Lc/z;
    .registers 2

    iget-object v0, p0, Lb/a/e/a$a;->a:Lc/j;

    return-object v0
.end method
