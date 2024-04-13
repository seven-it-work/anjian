.class public final Lcom/google/a/c/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:[B

.field public b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Object;

.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/a/c/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/c/e;->a:[B

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_c

    :cond_9
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    :goto_c
    iput p1, p0, Lcom/google/a/c/e;->b:I

    iput-object p2, p0, Lcom/google/a/c/e;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/a/c/e;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/google/a/c/e;->e:Ljava/lang/String;

    iput p6, p0, Lcom/google/a/c/e;->i:I

    iput p5, p0, Lcom/google/a/c/e;->j:I

    return-void
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/google/a/c/e;->b:I

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/google/a/c/e;->f:Ljava/lang/Integer;

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/a/c/e;->h:Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/google/a/c/e;->g:Ljava/lang/Integer;

    return-void
.end method

.method private b()[B
    .registers 2

    iget-object v0, p0, Lcom/google/a/c/e;->a:[B

    return-object v0
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lcom/google/a/c/e;->b:I

    return v0
.end method

.method private d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/c/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method private e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/c/e;->d:Ljava/util/List;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/c/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method private g()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/google/a/c/e;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method private h()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/google/a/c/e;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method private i()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/a/c/e;->h:Ljava/lang/Object;

    return-object v0
.end method

.method private j()I
    .registers 2

    iget v0, p0, Lcom/google/a/c/e;->i:I

    return v0
.end method

.method private k()I
    .registers 2

    iget v0, p0, Lcom/google/a/c/e;->j:I

    return v0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget v0, p0, Lcom/google/a/c/e;->i:I

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/google/a/c/e;->j:I

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
