.class public final Lcom/google/a/i/b/d;
.super Lcom/google/a/t;


# instance fields
.field public final c:F

.field final d:I


# direct methods
.method constructor <init>(FFF)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/a/i/b/d;-><init>(FFFI)V

    return-void
.end method

.method constructor <init>(FFFI)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/google/a/t;-><init>(FF)V

    iput p3, p0, Lcom/google/a/i/b/d;->c:F

    iput p4, p0, Lcom/google/a/i/b/d;->d:I

    return-void
.end method

.method private a()F
    .registers 2

    iget v0, p0, Lcom/google/a/i/b/d;->c:F

    return v0
.end method

.method private a(FFF)Z
    .registers 5

    iget v0, p0, Lcom/google/a/t;->b:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, p1

    const/4 v0, 0x0

    if-gtz p2, :cond_2e

    iget p2, p0, Lcom/google/a/t;->a:F

    sub-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_2e

    iget p2, p0, Lcom/google/a/i/b/d;->c:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-lez p2, :cond_2c

    iget p2, p0, Lcom/google/a/i/b/d;->c:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    return v0

    :cond_2c
    :goto_2c
    const/4 p1, 0x1

    return p1

    :cond_2e
    return v0
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/google/a/i/b/d;->d:I

    return v0
.end method

.method private b(FFF)Lcom/google/a/i/b/d;
    .registers 8

    iget v0, p0, Lcom/google/a/i/b/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/a/i/b/d;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/a/t;->a:F

    mul-float v1, v1, v2

    add-float/2addr v1, p2

    int-to-float p2, v0

    div-float/2addr v1, p2

    iget v2, p0, Lcom/google/a/i/b/d;->d:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/a/t;->b:F

    mul-float v2, v2, v3

    add-float/2addr v2, p1

    div-float/2addr v2, p2

    iget p1, p0, Lcom/google/a/i/b/d;->d:I

    int-to-float p1, p1

    iget v3, p0, Lcom/google/a/i/b/d;->c:F

    mul-float p1, p1, v3

    add-float/2addr p1, p3

    div-float/2addr p1, p2

    new-instance p2, Lcom/google/a/i/b/d;

    invoke-direct {p2, v1, v2, p1, v0}, Lcom/google/a/i/b/d;-><init>(FFFI)V

    return-object p2
.end method
