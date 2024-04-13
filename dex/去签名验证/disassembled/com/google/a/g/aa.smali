.class public final Lcom/google/a/g/aa;
.super Lcom/google/a/g/y;


# static fields
.field static final a:[[I

.field private static final g:[I


# instance fields
.field private final h:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/a/g/aa;->g:[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/16 v1, 0xa

    new-array v2, v1, [I

    fill-array-data v2, :array_30

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_48

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/a/g/aa;->a:[[I

    return-void

    :array_20
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_30
    .array-data 4
        0x38
        0x34
        0x32
        0x31
        0x2c
        0x26
        0x23
        0x2a
        0x29
        0x25
    .end array-data

    :array_48
    .array-data 4
        0x7
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/a/g/y;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/a/g/aa;->h:[I

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x1

    if-gt v1, v2, :cond_25

    const/4 v2, 0x0

    :goto_6
    const/16 v3, 0xa

    if-ge v2, v3, :cond_22

    sget-object v3, Lcom/google/a/g/aa;->a:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    if-ne p1, v3, :cond_1f

    add-int/lit8 v1, v1, 0x30

    int-to-char p1, v1

    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x30

    int-to-char p1, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_25
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p0

    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x6

    new-array v0, v0, [C

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    aget-char v5, v0, v4

    const/4 v6, 0x2

    const/4 v7, 0x3

    packed-switch v5, :pswitch_data_68

    invoke-virtual {v3, v0, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const-string v0, "0000"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_54

    :pswitch_2b
    const/4 v4, 0x4

    invoke-virtual {v3, v0, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const-string v2, "00000"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_54

    :pswitch_3a
    invoke-virtual {v3, v0, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const-string v2, "00000"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_54

    :pswitch_46
    invoke-virtual {v3, v0, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "0000"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :goto_54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_63

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_68
    .packed-switch 0x30
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_3a
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method protected final a(Lcom/google/a/c/a;[ILjava/lang/StringBuilder;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/g/aa;->h:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v3, 0x3

    aput v1, v0, v3

    iget v3, p1, Lcom/google/a/c/a;->b:I

    aget p2, p2, v2

    move v4, p2

    const/4 p2, 0x0

    const/4 v5, 0x0

    :goto_15
    const/4 v6, 0x6

    const/16 v7, 0xa

    if-ge p2, v6, :cond_41

    if-ge v4, v3, :cond_41

    sget-object v6, Lcom/google/a/g/aa;->f:[[I

    invoke-static {p1, v0, v4, v6}, Lcom/google/a/g/aa;->a(Lcom/google/a/c/a;[II[[I)I

    move-result v6

    rem-int/lit8 v8, v6, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v8, v0

    move v9, v4

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v8, :cond_35

    aget v10, v0, v4

    add-int/2addr v9, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_35
    if-lt v6, v7, :cond_3d

    rsub-int/lit8 v4, p2, 0x5

    shl-int v4, v2, v4

    or-int/2addr v4, v5

    move v5, v4

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    move v4, v9

    goto :goto_15

    :cond_41
    const/4 p1, 0x0

    :goto_42
    if-gt p1, v2, :cond_62

    const/4 p2, 0x0

    :goto_45
    if-ge p2, v7, :cond_5f

    sget-object v0, Lcom/google/a/g/aa;->a:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    if-ne v5, v0, :cond_5c

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    invoke-virtual {p3, v1, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x30

    int-to-char p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v4

    :cond_5c
    add-int/lit8 p2, p2, 0x1

    goto :goto_45

    :cond_5f
    add-int/lit8 p1, p1, 0x1

    goto :goto_42

    :cond_62
    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method protected final a(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/a/g/aa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/google/a/g/y;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected final a(Lcom/google/a/c/a;I)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    sget-object v0, Lcom/google/a/g/aa;->g:[I

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0}, Lcom/google/a/g/aa;->a(Lcom/google/a/c/a;IZ[I)[I

    move-result-object p1

    return-object p1
.end method

.method final b()Lcom/google/a/a;
    .registers 2

    sget-object v0, Lcom/google/a/a;->UPC_E:Lcom/google/a/a;

    return-object v0
.end method
