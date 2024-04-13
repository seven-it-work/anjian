.class public abstract Lcom/google/a/c/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/a/c/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/a/c/f;

    invoke-direct {v0}, Lcom/google/a/c/f;-><init>()V

    sput-object v0, Lcom/google/a/c/i;->a:Lcom/google/a/c/i;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/a/c/i;
    .registers 1

    sget-object v0, Lcom/google/a/c/i;->a:Lcom/google/a/c/i;

    return-object v0
.end method

.method private static a(Lcom/google/a/c/b;[F)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget v0, p0, Lcom/google/a/c/b;->a:I

    iget p0, p0, Lcom/google/a/c/b;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_8
    array-length v5, p1

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-ge v3, v5, :cond_45

    if-eqz v4, :cond_45

    aget v4, p1, v3

    float-to-int v4, v4

    add-int/lit8 v5, v3, 0x1

    aget v8, p1, v5

    float-to-int v8, v8

    if-lt v4, v7, :cond_40

    if-gt v4, v0, :cond_40

    if-lt v8, v7, :cond_40

    if-le v8, p0, :cond_20

    goto :goto_40

    :cond_20
    if-ne v4, v7, :cond_26

    aput v6, p1, v3

    :goto_24
    const/4 v4, 0x1

    goto :goto_2f

    :cond_26
    if-ne v4, v0, :cond_2e

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    aput v4, p1, v3

    goto :goto_24

    :cond_2e
    const/4 v4, 0x0

    :goto_2f
    if-ne v8, v7, :cond_35

    aput v6, p1, v5

    :goto_33
    const/4 v4, 0x1

    goto :goto_3d

    :cond_35
    if-ne v8, p0, :cond_3d

    add-int/lit8 v4, p0, -0x1

    int-to-float v4, v4

    aput v4, p1, v5

    goto :goto_33

    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, 0x2

    goto :goto_8

    :cond_40
    :goto_40
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_45
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x1

    :goto_49
    if-ltz v3, :cond_83

    if-eqz v4, :cond_83

    aget v4, p1, v3

    float-to-int v4, v4

    add-int/lit8 v5, v3, 0x1

    aget v8, p1, v5

    float-to-int v8, v8

    if-lt v4, v7, :cond_7e

    if-gt v4, v0, :cond_7e

    if-lt v8, v7, :cond_7e

    if-le v8, p0, :cond_5e

    goto :goto_7e

    :cond_5e
    if-ne v4, v7, :cond_64

    aput v6, p1, v3

    :goto_62
    const/4 v4, 0x1

    goto :goto_6d

    :cond_64
    if-ne v4, v0, :cond_6c

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    aput v4, p1, v3

    goto :goto_62

    :cond_6c
    const/4 v4, 0x0

    :goto_6d
    if-ne v8, v7, :cond_73

    aput v6, p1, v5

    :goto_71
    const/4 v4, 0x1

    goto :goto_7b

    :cond_73
    if-ne v8, p0, :cond_7b

    add-int/lit8 v4, p0, -0x1

    int-to-float v4, v4

    aput v4, p1, v5

    goto :goto_71

    :cond_7b
    :goto_7b
    add-int/lit8 v3, v3, -0x2

    goto :goto_49

    :cond_7e
    :goto_7e
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0

    :cond_83
    return-void
.end method

.method private static a(Lcom/google/a/c/i;)V
    .registers 1

    sput-object p0, Lcom/google/a/c/i;->a:Lcom/google/a/c/i;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/a/c/b;IIFFFFFFFFFFFFFFFF)Lcom/google/a/c/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/a/c/b;IILcom/google/a/c/k;)Lcom/google/a/c/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation
.end method
