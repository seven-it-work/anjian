.class Landroid/support/v7/widget/PositionMap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/PositionMap$ContainerHelpers;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v7/widget/PositionMap;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-nez p1, :cond_11

    sget-object p1, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->EMPTY_INTS:[I

    iput-object p1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    sget-object p1, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    :goto_e
    iput-object p1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    goto :goto_1c

    :cond_11
    invoke-static {p1}, Landroid/support/v7/widget/PositionMap;->idealIntArraySize(I)I

    move-result p1

    new-array v1, p1, [I

    iput-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    new-array p1, p1, [Ljava/lang/Object;

    goto :goto_e

    :goto_1c
    iput v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    return-void
.end method

.method private gc()V
    .registers 9

    iget v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget-object v2, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_9
    if-ge v4, v0, :cond_21

    aget-object v6, v2, v4

    sget-object v7, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1e

    if-eq v4, v5, :cond_1c

    aget v7, v1, v4

    aput v7, v1, v5

    aput-object v6, v2, v5

    const/4 v6, 0x0

    aput-object v6, v2, v4

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_21
    iput-boolean v3, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    iput v5, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    return-void
.end method

.method static idealBooleanArraySize(I)I
    .registers 1

    invoke-static {p0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result p0

    return p0
.end method

.method static idealByteArraySize(I)I
    .registers 3

    const/4 v0, 0x4

    :goto_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_f

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_c

    return v1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return p0
.end method

.method static idealCharArraySize(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method static idealFloatArraySize(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method static idealIntArraySize(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method static idealLongArraySize(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0x8

    invoke-static {p0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method static idealObjectArraySize(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method static idealShortArraySize(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_12

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/PositionMap;->put(ILjava/lang/Object;)V

    return-void

    :cond_12
    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_20

    iget v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_20

    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    :cond_20
    iget v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_46

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroid/support/v7/widget/PositionMap;->idealIntArraySize(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iput-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    :cond_46
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    aput p1, v1, v0

    iget-object p1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    return-void
.end method

.method public clear()V
    .registers 6

    iget v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_e

    const/4 v4, 0x0

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_e
    iput v2, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    iput-boolean v2, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    return-void
.end method

.method public clone()Landroid/support/v7/widget/PositionMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/PositionMap<",
            "TE;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/PositionMap;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_1b

    :try_start_6
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_6 .. :try_end_1a} :catch_1c

    return-object v0

    :catch_1b
    const/4 v0, 0x0

    :catch_1c
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/widget/PositionMap;->clone()Landroid/support/v7/widget/PositionMap;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result p1

    if-ltz p1, :cond_1b

    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    :cond_1b
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/PositionMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result p1

    if-ltz p1, :cond_18

    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    return-object p2

    :cond_13
    iget-object p2, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1

    :cond_18
    return-object p2
.end method

.method public indexOfKey(I)I
    .registers 4

    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result p1

    return p1
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    const/4 p1, -0x1

    return p1
.end method

.method public insertKeyRange(II)V
    .registers 3

    return-void
.end method

.method public keyAt(I)I
    .registers 3

    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    aget p1, v0, p1

    return p1
.end method

.method public put(ILjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object p1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    return-void

    :cond_f
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    if-ge v0, v1, :cond_26

    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_26

    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    aput p1, v1, v0

    iget-object p1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    return-void

    :cond_26
    iget-boolean v1, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v1, :cond_3e

    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    iget-object v2, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3e

    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_3e
    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    iget-object v2, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_66

    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/support/v7/widget/PositionMap;->idealIntArraySize(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iput-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    :cond_66
    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_81

    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget-object v2, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_81
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    aput p1, v1, v0

    iget-object p1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    iget p1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    return-void
.end method

.method public remove(I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/PositionMap;->delete(I)V

    return-void
.end method

.method public removeAt(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    :cond_11
    return-void
.end method

.method public removeAtRange(II)V
    .registers 4

    iget v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    add-int/2addr p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_7
    if-ge p1, p2, :cond_f

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/PositionMap;->removeAt(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_f
    return-void
.end method

.method public removeKeyRange(Ljava/util/ArrayList;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TE;>;II)V"
        }
    .end annotation

    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public size()I
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    :cond_7
    iget v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/widget/PositionMap;->size()I

    move-result v0

    if-gtz v0, :cond_9

    const-string v0, "{}"

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_18
    iget v2, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    if-ge v1, v2, :cond_41

    if-lez v1, :cond_23

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/PositionMap;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/PositionMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_39

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3e

    :cond_39
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_41
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
