.class public final Lcom/google/a/g/k;
.super Lcom/google/a/g/y;


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/a/g/y;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/a/g/k;->a:[I

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/a/c/a;[ILjava/lang/StringBuilder;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/g/k;->a:[I

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

    :goto_14
    const/4 v5, 0x4

    if-ge p2, v5, :cond_34

    if-ge v4, v3, :cond_34

    sget-object v5, Lcom/google/a/g/k;->e:[[I

    invoke-static {p1, v0, v4, v5}, Lcom/google/a/g/k;->a(Lcom/google/a/c/a;[II[[I)I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v5, v0

    move v6, v4

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v5, :cond_30

    aget v7, v0, v4

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_30
    add-int/lit8 p2, p2, 0x1

    move v4, v6

    goto :goto_14

    :cond_34
    sget-object p2, Lcom/google/a/g/k;->c:[I

    invoke-static {p1, v4, v2, p2}, Lcom/google/a/g/k;->a(Lcom/google/a/c/a;IZ[I)[I

    move-result-object p2

    aget p2, p2, v2

    move v2, p2

    const/4 p2, 0x0

    :goto_3e
    if-ge p2, v5, :cond_5d

    if-ge v2, v3, :cond_5d

    sget-object v4, Lcom/google/a/g/k;->e:[[I

    invoke-static {p1, v0, v2, v4}, Lcom/google/a/g/k;->a(Lcom/google/a/c/a;[II[[I)I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v4, v0

    move v6, v2

    const/4 v2, 0x0

    :goto_51
    if-ge v2, v4, :cond_59

    aget v7, v0, v2

    add-int/2addr v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    :cond_59
    add-int/lit8 p2, p2, 0x1

    move v2, v6

    goto :goto_3e

    :cond_5d
    return v2
.end method

.method final b()Lcom/google/a/a;
    .registers 2

    sget-object v0, Lcom/google/a/a;->EAN_8:Lcom/google/a/a;

    return-object v0
.end method
