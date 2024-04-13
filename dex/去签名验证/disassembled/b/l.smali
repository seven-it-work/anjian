.class public final Lb/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/l$a;
    }
.end annotation


# static fields
.field public static final a:Lb/l;

.field public static final b:Lb/l;

.field public static final c:Lb/l;

.field private static final h:[Lb/i;


# instance fields
.field final d:Z

.field public final e:Z

.field final f:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final g:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/16 v0, 0xf

    new-array v0, v0, [Lb/i;

    sget-object v1, Lb/i;->aX:Lb/i;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lb/i;->bb:Lb/i;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lb/i;->aY:Lb/i;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lb/i;->bc:Lb/i;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lb/i;->bi:Lb/i;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lb/i;->bh:Lb/i;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lb/i;->ay:Lb/i;

    const/4 v7, 0x6

    aput-object v1, v0, v7

    sget-object v1, Lb/i;->aI:Lb/i;

    const/4 v7, 0x7

    aput-object v1, v0, v7

    sget-object v1, Lb/i;->az:Lb/i;

    const/16 v7, 0x8

    aput-object v1, v0, v7

    sget-object v1, Lb/i;->aJ:Lb/i;

    const/16 v7, 0x9

    aput-object v1, v0, v7

    sget-object v1, Lb/i;->ag:Lb/i;

    const/16 v7, 0xa

    aput-object v1, v0, v7

    sget-object v1, Lb/i;->ah:Lb/i;

    const/16 v7, 0xb

    aput-object v1, v0, v7

    sget-object v1, Lb/i;->E:Lb/i;

    const/16 v7, 0xc

    aput-object v1, v0, v7

    sget-object v1, Lb/i;->I:Lb/i;

    const/16 v7, 0xd

    aput-object v1, v0, v7

    sget-object v1, Lb/i;->i:Lb/i;

    const/16 v7, 0xe

    aput-object v1, v0, v7

    sput-object v0, Lb/l;->h:[Lb/i;

    new-instance v0, Lb/l$a;

    invoke-direct {v0, v3}, Lb/l$a;-><init>(Z)V

    sget-object v1, Lb/l;->h:[Lb/i;

    iget-boolean v7, v0, Lb/l$a;->a:Z

    if-nez v7, :cond_6b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    array-length v7, v1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    :goto_6f
    array-length v9, v1

    if-ge v8, v9, :cond_7b

    aget-object v9, v1, v8

    iget-object v9, v9, Lb/i;->bj:Ljava/lang/String;

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6f

    :cond_7b
    invoke-virtual {v0, v7}, Lb/l$a;->a([Ljava/lang/String;)Lb/l$a;

    move-result-object v0

    new-array v1, v6, [Lb/ah;

    sget-object v6, Lb/ah;->TLS_1_3:Lb/ah;

    aput-object v6, v1, v2

    sget-object v6, Lb/ah;->TLS_1_2:Lb/ah;

    aput-object v6, v1, v3

    sget-object v6, Lb/ah;->TLS_1_1:Lb/ah;

    aput-object v6, v1, v4

    sget-object v4, Lb/ah;->TLS_1_0:Lb/ah;

    aput-object v4, v1, v5

    invoke-virtual {v0, v1}, Lb/l$a;->a([Lb/ah;)Lb/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/l$a;->a()Lb/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/l$a;->b()Lb/l;

    move-result-object v0

    sput-object v0, Lb/l;->a:Lb/l;

    new-instance v0, Lb/l$a;

    sget-object v1, Lb/l;->a:Lb/l;

    invoke-direct {v0, v1}, Lb/l$a;-><init>(Lb/l;)V

    new-array v1, v3, [Lb/ah;

    sget-object v3, Lb/ah;->TLS_1_0:Lb/ah;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lb/l$a;->a([Lb/ah;)Lb/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/l$a;->a()Lb/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/l$a;->b()Lb/l;

    move-result-object v0

    sput-object v0, Lb/l;->b:Lb/l;

    new-instance v0, Lb/l$a;

    invoke-direct {v0, v2}, Lb/l$a;-><init>(Z)V

    invoke-virtual {v0}, Lb/l$a;->b()Lb/l;

    move-result-object v0

    sput-object v0, Lb/l;->c:Lb/l;

    return-void
.end method

.method constructor <init>(Lb/l$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lb/l$a;->a:Z

    iput-boolean v0, p0, Lb/l;->d:Z

    iget-object v0, p1, Lb/l$a;->b:[Ljava/lang/String;

    iput-object v0, p0, Lb/l;->f:[Ljava/lang/String;

    iget-object v0, p1, Lb/l$a;->c:[Ljava/lang/String;

    iput-object v0, p0, Lb/l;->g:[Ljava/lang/String;

    iget-boolean p1, p1, Lb/l$a;->d:Z

    iput-boolean p1, p0, Lb/l;->e:Z

    return-void
.end method

.method private a(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 8

    iget-object v0, p0, Lb/l;->f:[Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Lb/i;->a:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lb/l;->f:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lb/a/c;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    :goto_15
    iget-object v1, p0, Lb/l;->g:[Ljava/lang/String;

    if-eqz v1, :cond_26

    sget-object v1, Lb/a/c;->g:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lb/l;->g:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lb/a/c;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_26
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_2a
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lb/i;->a:Ljava/util/Comparator;

    const-string v4, "TLS_FALLBACK_SCSV"

    invoke-static {v3, v2, v4}, Lb/a/c;->a(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz p2, :cond_41

    const/4 p2, -0x1

    if-eq v3, p2, :cond_41

    aget-object p2, v2, v3

    invoke-static {v0, p2}, Lb/a/c;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_41
    new-instance p2, Lb/l$a;

    invoke-direct {p2, p0}, Lb/l$a;-><init>(Lb/l;)V

    invoke-virtual {p2, v0}, Lb/l$a;->a([Ljava/lang/String;)Lb/l$a;

    move-result-object p2

    invoke-virtual {p2, v1}, Lb/l$a;->b([Ljava/lang/String;)Lb/l$a;

    move-result-object p2

    invoke-virtual {p2}, Lb/l$a;->b()Lb/l;

    move-result-object p2

    iget-object v0, p2, Lb/l;->g:[Ljava/lang/String;

    if-eqz v0, :cond_5b

    iget-object v0, p2, Lb/l;->g:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_5b
    iget-object v0, p2, Lb/l;->f:[Ljava/lang/String;

    if-eqz v0, :cond_64

    iget-object p2, p2, Lb/l;->f:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_64
    return-void
.end method

.method private a()Z
    .registers 2

    iget-boolean v0, p0, Lb/l;->d:Z

    return v0
.end method

.method private b(Ljavax/net/ssl/SSLSocket;Z)Lb/l;
    .registers 7

    iget-object v0, p0, Lb/l;->f:[Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Lb/i;->a:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lb/l;->f:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lb/a/c;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    :goto_15
    iget-object v1, p0, Lb/l;->g:[Ljava/lang/String;

    if-eqz v1, :cond_26

    sget-object v1, Lb/a/c;->g:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lb/l;->g:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lb/a/c;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_26
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_2a
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lb/i;->a:Ljava/util/Comparator;

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, p1, v3}, Lb/a/c;->a(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz p2, :cond_41

    const/4 p2, -0x1

    if-eq v2, p2, :cond_41

    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lb/a/c;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_41
    new-instance p1, Lb/l$a;

    invoke-direct {p1, p0}, Lb/l$a;-><init>(Lb/l;)V

    invoke-virtual {p1, v0}, Lb/l$a;->a([Ljava/lang/String;)Lb/l$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lb/l$a;->b([Ljava/lang/String;)Lb/l$a;

    move-result-object p1

    invoke-virtual {p1}, Lb/l$a;->b()Lb/l;

    move-result-object p1

    return-object p1
.end method

.method private b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/i;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/l;->f:[Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lb/l;->f:[Ljava/lang/String;

    invoke-static {v0}, Lb/i;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/ah;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/l;->g:[Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lb/l;->g:[Ljava/lang/String;

    invoke-static {v0}, Lb/ah;->forJavaNames([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private d()Z
    .registers 2

    iget-boolean v0, p0, Lb/l;->e:Z

    return v0
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;)Z
    .registers 6

    iget-boolean v0, p0, Lb/l;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lb/l;->g:[Ljava/lang/String;

    if-eqz v0, :cond_19

    sget-object v0, Lb/a/c;->g:Ljava/util/Comparator;

    iget-object v2, p0, Lb/l;->g:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lb/a/c;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    :cond_19
    iget-object v0, p0, Lb/l;->f:[Ljava/lang/String;

    if-eqz v0, :cond_2c

    sget-object v0, Lb/i;->a:Ljava/util/Comparator;

    iget-object v2, p0, Lb/l;->f:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lb/a/c;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2c

    return v1

    :cond_2c
    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lb/l;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    :cond_a
    check-cast p1, Lb/l;

    iget-boolean v2, p0, Lb/l;->d:Z

    iget-boolean v3, p1, Lb/l;->d:Z

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    iget-boolean v2, p0, Lb/l;->d:Z

    if-eqz v2, :cond_34

    iget-object v2, p0, Lb/l;->f:[Ljava/lang/String;

    iget-object v3, p1, Lb/l;->f:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    :cond_22
    iget-object v2, p0, Lb/l;->g:[Ljava/lang/String;

    iget-object v3, p1, Lb/l;->g:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    return v1

    :cond_2d
    iget-boolean v2, p0, Lb/l;->e:Z

    iget-boolean p1, p1, Lb/l;->e:Z

    if-eq v2, p1, :cond_34

    return v1

    :cond_34
    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget-boolean v0, p0, Lb/l;->d:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lb/l;->f:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/l;->g:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lb/l;->e:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0

    :cond_1d
    const/16 v0, 0x11

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget-boolean v0, p0, Lb/l;->d:Z

    if-nez v0, :cond_7

    const-string v0, "ConnectionSpec()"

    return-object v0

    :cond_7
    iget-object v0, p0, Lb/l;->f:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lb/l;->f:[Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lb/l;->f:[Ljava/lang/String;

    invoke-static {v0}, Lb/i;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_18

    :cond_17
    move-object v0, v1

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_1d
    const-string v0, "[all enabled]"

    :goto_1f
    iget-object v2, p0, Lb/l;->g:[Ljava/lang/String;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lb/l;->g:[Ljava/lang/String;

    if-eqz v2, :cond_2d

    iget-object v1, p0, Lb/l;->g:[Ljava/lang/String;

    invoke-static {v1}, Lb/ah;->forJavaNames([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :cond_2d
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_34

    :cond_32
    const-string v1, "[all enabled]"

    :goto_34
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lb/l;->e:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
