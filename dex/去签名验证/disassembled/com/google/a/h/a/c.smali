.class final Lcom/google/a/h/a/c;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/a/c/b;

.field final b:Lcom/google/a/t;

.field final c:Lcom/google/a/t;

.field final d:Lcom/google/a/t;

.field final e:Lcom/google/a/t;

.field final f:I

.field final g:I

.field final h:I

.field final i:I


# direct methods
.method constructor <init>(Lcom/google/a/c/b;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_c

    if-nez p3, :cond_a

    goto :goto_c

    :cond_a
    const/4 v2, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v2, 0x1

    :goto_d
    if-eqz p4, :cond_11

    if-nez p5, :cond_12

    :cond_11
    const/4 v0, 0x1

    :cond_12
    if-eqz v2, :cond_1b

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1

    :cond_1b
    if-eqz v2, :cond_2d

    new-instance p2, Lcom/google/a/t;

    iget p3, p4, Lcom/google/a/t;->b:F

    const/4 v0, 0x0

    invoke-direct {p2, v0, p3}, Lcom/google/a/t;-><init>(FF)V

    new-instance p3, Lcom/google/a/t;

    iget v1, p5, Lcom/google/a/t;->b:F

    invoke-direct {p3, v0, v1}, Lcom/google/a/t;-><init>(FF)V

    goto :goto_45

    :cond_2d
    if-eqz v0, :cond_45

    new-instance p4, Lcom/google/a/t;

    iget p5, p1, Lcom/google/a/c/b;->a:I

    sub-int/2addr p5, v1

    int-to-float p5, p5

    iget v0, p2, Lcom/google/a/t;->b:F

    invoke-direct {p4, p5, v0}, Lcom/google/a/t;-><init>(FF)V

    new-instance p5, Lcom/google/a/t;

    iget v0, p1, Lcom/google/a/c/b;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p3, Lcom/google/a/t;->b:F

    invoke-direct {p5, v0, v1}, Lcom/google/a/t;-><init>(FF)V

    :cond_45
    :goto_45
    iput-object p1, p0, Lcom/google/a/h/a/c;->a:Lcom/google/a/c/b;

    iput-object p2, p0, Lcom/google/a/h/a/c;->b:Lcom/google/a/t;

    iput-object p3, p0, Lcom/google/a/h/a/c;->c:Lcom/google/a/t;

    iput-object p4, p0, Lcom/google/a/h/a/c;->d:Lcom/google/a/t;

    iput-object p5, p0, Lcom/google/a/h/a/c;->e:Lcom/google/a/t;

    iget p1, p2, Lcom/google/a/t;->a:F

    iget v0, p3, Lcom/google/a/t;->a:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/a/h/a/c;->f:I

    iget p1, p4, Lcom/google/a/t;->a:F

    iget v0, p5, Lcom/google/a/t;->a:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/a/h/a/c;->g:I

    iget p1, p2, Lcom/google/a/t;->b:F

    iget p2, p4, Lcom/google/a/t;->b:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/a/h/a/c;->h:I

    iget p1, p3, Lcom/google/a/t;->b:F

    iget p2, p5, Lcom/google/a/t;->b:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/a/h/a/c;->i:I

    return-void
.end method

.method constructor <init>(Lcom/google/a/h/a/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/a/h/a/c;->a:Lcom/google/a/c/b;

    iput-object v0, p0, Lcom/google/a/h/a/c;->a:Lcom/google/a/c/b;

    iget-object v0, p1, Lcom/google/a/h/a/c;->b:Lcom/google/a/t;

    iput-object v0, p0, Lcom/google/a/h/a/c;->b:Lcom/google/a/t;

    iget-object v0, p1, Lcom/google/a/h/a/c;->c:Lcom/google/a/t;

    iput-object v0, p0, Lcom/google/a/h/a/c;->c:Lcom/google/a/t;

    iget-object v0, p1, Lcom/google/a/h/a/c;->d:Lcom/google/a/t;

    iput-object v0, p0, Lcom/google/a/h/a/c;->d:Lcom/google/a/t;

    iget-object v0, p1, Lcom/google/a/h/a/c;->e:Lcom/google/a/t;

    iput-object v0, p0, Lcom/google/a/h/a/c;->e:Lcom/google/a/t;

    iget v0, p1, Lcom/google/a/h/a/c;->f:I

    iput v0, p0, Lcom/google/a/h/a/c;->f:I

    iget v0, p1, Lcom/google/a/h/a/c;->g:I

    iput v0, p0, Lcom/google/a/h/a/c;->g:I

    iget v0, p1, Lcom/google/a/h/a/c;->h:I

    iput v0, p0, Lcom/google/a/h/a/c;->h:I

    iget p1, p1, Lcom/google/a/h/a/c;->i:I

    iput p1, p0, Lcom/google/a/h/a/c;->i:I

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/google/a/h/a/c;->f:I

    return v0
.end method

.method private a(IIZ)Lcom/google/a/h/a/c;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/h/a/c;->b:Lcom/google/a/t;

    iget-object v1, p0, Lcom/google/a/h/a/c;->c:Lcom/google/a/t;

    iget-object v2, p0, Lcom/google/a/h/a/c;->d:Lcom/google/a/t;

    iget-object v3, p0, Lcom/google/a/h/a/c;->e:Lcom/google/a/t;

    if-lez p1, :cond_27

    if-eqz p3, :cond_f

    iget-object v4, p0, Lcom/google/a/h/a/c;->b:Lcom/google/a/t;

    goto :goto_11

    :cond_f
    iget-object v4, p0, Lcom/google/a/h/a/c;->d:Lcom/google/a/t;

    :goto_11
    iget v5, v4, Lcom/google/a/t;->b:F

    float-to-int v5, v5

    sub-int/2addr v5, p1

    if-gez v5, :cond_18

    const/4 v5, 0x0

    :cond_18
    new-instance p1, Lcom/google/a/t;

    iget v4, v4, Lcom/google/a/t;->a:F

    int-to-float v5, v5

    invoke-direct {p1, v4, v5}, Lcom/google/a/t;-><init>(FF)V

    if-eqz p3, :cond_24

    move-object v8, p1

    goto :goto_28

    :cond_24
    move-object v10, p1

    move-object v8, v0

    goto :goto_29

    :cond_27
    move-object v8, v0

    :goto_28
    move-object v10, v2

    :goto_29
    if-lez p2, :cond_51

    if-eqz p3, :cond_30

    iget-object p1, p0, Lcom/google/a/h/a/c;->c:Lcom/google/a/t;

    goto :goto_32

    :cond_30
    iget-object p1, p0, Lcom/google/a/h/a/c;->e:Lcom/google/a/t;

    :goto_32
    iget v0, p1, Lcom/google/a/t;->b:F

    float-to-int v0, v0

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/google/a/h/a/c;->a:Lcom/google/a/c/b;

    iget p2, p2, Lcom/google/a/c/b;->b:I

    if-lt v0, p2, :cond_42

    iget-object p2, p0, Lcom/google/a/h/a/c;->a:Lcom/google/a/c/b;

    iget p2, p2, Lcom/google/a/c/b;->b:I

    add-int/lit8 v0, p2, -0x1

    :cond_42
    new-instance p2, Lcom/google/a/t;

    iget p1, p1, Lcom/google/a/t;->a:F

    int-to-float v0, v0

    invoke-direct {p2, p1, v0}, Lcom/google/a/t;-><init>(FF)V

    if-eqz p3, :cond_4e

    move-object v9, p2

    goto :goto_52

    :cond_4e
    move-object v11, p2

    move-object v9, v1

    goto :goto_53

    :cond_51
    move-object v9, v1

    :goto_52
    move-object v11, v3

    :goto_53
    new-instance p1, Lcom/google/a/h/a/c;

    iget-object v7, p0, Lcom/google/a/h/a/c;->a:Lcom/google/a/c/b;

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/google/a/h/a/c;-><init>(Lcom/google/a/c/b;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;)V

    return-object p1
.end method

.method private static a(Lcom/google/a/h/a/c;Lcom/google/a/h/a/c;)Lcom/google/a/h/a/c;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_6

    return-object p0

    :cond_6
    new-instance v6, Lcom/google/a/h/a/c;

    iget-object v1, p0, Lcom/google/a/h/a/c;->a:Lcom/google/a/c/b;

    iget-object v2, p0, Lcom/google/a/h/a/c;->b:Lcom/google/a/t;

    iget-object v3, p0, Lcom/google/a/h/a/c;->c:Lcom/google/a/t;

    iget-object v4, p1, Lcom/google/a/h/a/c;->d:Lcom/google/a/t;

    iget-object v5, p1, Lcom/google/a/h/a/c;->e:Lcom/google/a/t;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/a/h/a/c;-><init>(Lcom/google/a/c/b;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;)V

    return-object v6
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/google/a/h/a/c;->g:I

    return v0
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lcom/google/a/h/a/c;->h:I

    return v0
.end method

.method private d()I
    .registers 2

    iget v0, p0, Lcom/google/a/h/a/c;->i:I

    return v0
.end method

.method private e()Lcom/google/a/t;
    .registers 2

    iget-object v0, p0, Lcom/google/a/h/a/c;->b:Lcom/google/a/t;

    return-object v0
.end method

.method private f()Lcom/google/a/t;
    .registers 2

    iget-object v0, p0, Lcom/google/a/h/a/c;->d:Lcom/google/a/t;

    return-object v0
.end method

.method private g()Lcom/google/a/t;
    .registers 2

    iget-object v0, p0, Lcom/google/a/h/a/c;->c:Lcom/google/a/t;

    return-object v0
.end method

.method private h()Lcom/google/a/t;
    .registers 2

    iget-object v0, p0, Lcom/google/a/h/a/c;->e:Lcom/google/a/t;

    return-object v0
.end method
