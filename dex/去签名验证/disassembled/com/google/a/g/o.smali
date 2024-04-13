.class public final Lcom/google/a/g/o;
.super Lcom/google/a/g/s;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:I = 0x3

.field private static final d:I = 0x1

.field private static final e:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_68

    sput-object v1, Lcom/google/a/g/o;->a:[I

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_74

    sput-object v2, Lcom/google/a/g/o;->b:[I

    const/16 v2, 0xa

    new-array v2, v2, [[I

    const/4 v3, 0x5

    new-array v4, v3, [I

    fill-array-data v4, :array_7e

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_8c

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_9a

    const/4 v5, 0x2

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_a8

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_b6

    aput-object v1, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_c4

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_d2

    const/4 v1, 0x6

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_e0

    const/4 v1, 0x7

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_ee

    const/16 v1, 0x8

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_fc

    const/16 v1, 0x9

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/a/g/o;->e:[[I

    return-void

    nop

    :array_68
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_74
    .array-data 4
        0x3
        0x1
        0x1
    .end array-data

    :array_7e
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_8c
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_9a
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_a8
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_b6
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_c4
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_d2
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_e0
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x3
    .end array-data

    :array_ee
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_fc
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/g/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/a/a;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/a/g;",
            "*>;)",
            "Lcom/google/a/c/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    sget-object v0, Lcom/google/a/a;->ITF:Lcom/google/a/a;

    if-eq p2, v0, :cond_14

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Can only encode ITF, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    invoke-super/range {p0 .. p5}, Lcom/google/a/g/s;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)[Z
    .registers 14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_10

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The length of the input should be even"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    const/16 v1, 0x50

    if-le v0, v1, :cond_24

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested contents should be less than 80 digits long, but got "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    mul-int/lit8 v1, v0, 0x9

    add-int/lit8 v1, v1, 0x9

    new-array v1, v1, [Z

    sget-object v2, Lcom/google/a/g/o;->a:[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4}, Lcom/google/a/g/o;->a([ZI[IZ)I

    move-result v2

    move v5, v2

    const/4 v2, 0x0

    :goto_34
    if-ge v2, v0, :cond_6e

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    new-array v7, v7, [I

    const/4 v9, 0x0

    :goto_4d
    const/4 v10, 0x5

    if-ge v9, v10, :cond_66

    mul-int/lit8 v10, v9, 0x2

    sget-object v11, Lcom/google/a/g/o;->e:[[I

    aget-object v11, v11, v6

    aget v11, v11, v9

    aput v11, v7, v10

    add-int/2addr v10, v4

    sget-object v11, Lcom/google/a/g/o;->e:[[I

    aget-object v11, v11, v8

    aget v11, v11, v9

    aput v11, v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_4d

    :cond_66
    invoke-static {v1, v5, v7, v4}, Lcom/google/a/g/o;->a([ZI[IZ)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x2

    goto :goto_34

    :cond_6e
    sget-object p1, Lcom/google/a/g/o;->b:[I

    invoke-static {v1, v5, p1, v4}, Lcom/google/a/g/o;->a([ZI[IZ)I

    return-object v1
.end method
