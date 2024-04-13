.class public final Lcom/google/a/g/a/a/a/e;
.super Lcom/google/a/g/a/a/a/i;


# static fields
.field private static final d:I = 0x8

.field private static final e:I = 0x14

.field private static final f:I = 0x10


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/a/g/a/a/a/i;-><init>(Lcom/google/a/c/a;)V

    iput-object p3, p0, Lcom/google/a/g/a/a/a/e;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/a/g/a/a/a/e;->h:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .registers 7

    iget-object v0, p0, Lcom/google/a/g/a/a/a/j;->c:Lcom/google/a/g/a/a/a/s;

    const/16 v1, 0x44

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    const v1, 0x9600

    if-ne v0, v1, :cond_10

    return-void

    :cond_10
    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v1, v0, 0x20

    div-int/lit8 v0, v0, 0x20

    rem-int/lit8 v2, v0, 0xc

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v0, v0, 0xc

    div-int/lit8 v3, v0, 0xa

    const/16 v4, 0x30

    if-nez v3, :cond_32

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    div-int/lit8 v0, v2, 0xa

    if-nez v0, :cond_3c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3c
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    div-int/lit8 v0, v1, 0xa

    if-nez v0, :cond_46

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected final a(I)I
    .registers 3

    const v0, 0x186a0

    rem-int/2addr p1, v0

    return p1
.end method

.method public final a()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/g/a/a/a/j;->b:Lcom/google/a/c/a;

    iget v0, v0, Lcom/google/a/c/a;->b:I

    const/16 v1, 0x54

    if-eq v0, v1, :cond_d

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/google/a/g/a/a/a/e;->b(Ljava/lang/StringBuilder;I)V

    const/16 v1, 0x14

    const/16 v2, 0x30

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/a/g/a/a/a/e;->b(Ljava/lang/StringBuilder;II)V

    iget-object v1, p0, Lcom/google/a/g/a/a/a/j;->c:Lcom/google/a/g/a/a/a/s;

    const/16 v3, 0x44

    const/16 v4, 0x10

    invoke-virtual {v1, v3, v4}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const v3, 0x9600

    if-eq v1, v3, :cond_64

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/a/g/a/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v3, v1, 0x20

    div-int/lit8 v1, v1, 0x20

    rem-int/lit8 v4, v1, 0xc

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v1, v1, 0xc

    div-int/lit8 v5, v1, 0xa

    if-nez v5, :cond_4d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    div-int/lit8 v1, v4, 0xa

    if-nez v1, :cond_57

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_57
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    div-int/lit8 v1, v3, 0xa

    if-nez v1, :cond_61

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/StringBuilder;I)V
    .registers 4

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/a/g/a/a/a/e;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x186a0

    div-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method
