.class public final Lcom/android/volley/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/p;


# static fields
.field public static final a:I = 0x9c4

.field public static final b:I = 0x1

.field public static final c:F = 1.0f


# instance fields
.field private d:I

.field private e:I

.field private final f:I

.field private final g:F


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/volley/d;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/volley/d;->d:I

    iput p2, p0, Lcom/android/volley/d;->f:I

    iput p3, p0, Lcom/android/volley/d;->g:F

    return-void
.end method

.method private c()F
    .registers 2

    iget v0, p0, Lcom/android/volley/d;->g:F

    return v0
.end method

.method private d()Z
    .registers 3

    iget v0, p0, Lcom/android/volley/d;->e:I

    iget v1, p0, Lcom/android/volley/d;->f:I

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/android/volley/d;->d:I

    return v0
.end method

.method public final a(Lcom/android/volley/s;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/s;
        }
    .end annotation

    iget v0, p0, Lcom/android/volley/d;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/volley/d;->e:I

    iget v0, p0, Lcom/android/volley/d;->d:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/volley/d;->d:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/volley/d;->g:F

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/volley/d;->d:I

    iget v0, p0, Lcom/android/volley/d;->e:I

    iget v2, p0, Lcom/android/volley/d;->f:I

    if-gt v0, v2, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-nez v1, :cond_1f

    throw p1

    :cond_1f
    return-void
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/android/volley/d;->e:I

    return v0
.end method
