.class public final Lb/v$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/v$a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field e:I

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field h:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lb/v$a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lb/v$a;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lb/v$a;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/v$a;->f:Ljava/util/List;

    iget-object v0, p0, Lb/v$a;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(I)Lb/v$a;
    .registers 5

    if-lez p1, :cond_b

    const v0, 0xffff

    if-le p1, v0, :cond_8

    goto :goto_b

    :cond_8
    iput p1, p0, Lb/v$a;->e:I

    return-object p0

    :cond_b
    :goto_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected port: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(ILjava/lang/String;)Lb/v$a;
    .registers 11

    if-nez p2, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "pathSegment == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lb/v;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/v$a;->s(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {v0}, Lb/v$a;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_2d

    :cond_27
    iget-object p2, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_2d
    :goto_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected path segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lb/v$a;
    .registers 10
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    :cond_15
    iget-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    const-string v2, " \"\'<>#&="

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lb/v$a;->g:Ljava/util/List;

    if-eqz p2, :cond_35

    const-string v1, " \"\'<>#&="

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_36

    :cond_35
    const/4 p2, 0x0

    :goto_36
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private a(Ljava/lang/String;Z)Lb/v$a;
    .registers 11

    const/4 v0, 0x0

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "/\\"

    invoke-static {p1, v3, v1, v2}, Lb/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v7, v1, :cond_15

    const/4 v1, 0x1

    const/4 v5, 0x1

    goto :goto_16

    :cond_15
    const/4 v5, 0x0

    :goto_16
    move-object v1, p0

    move-object v2, p1

    move v4, v7

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lb/v$a;->a(Ljava/lang/String;IIZZ)V

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v3, v1, :cond_2

    return-object p0
.end method

.method static a(Ljava/lang/String;II)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lb/v;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9a

    const-string p1, "["

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-static {p0, p2, p1}, Lb/v$a;->f(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object p0

    goto :goto_30

    :cond_28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p0, v0, p1}, Lb/v$a;->f(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object p0

    :goto_30
    if-nez p0, :cond_34

    const/4 p0, 0x0

    return-object p0

    :cond_34
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    array-length p1, p0

    const/16 p2, 0x10

    if-ne p1, p2, :cond_94

    const/4 p1, -0x1

    const/4 p1, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_41
    array-length v3, p0

    if-ge p1, v3, :cond_60

    move v3, p1

    :goto_45
    if-ge v3, p2, :cond_54

    aget-byte v4, p0, v3

    if-nez v4, :cond_54

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_54

    add-int/lit8 v3, v3, 0x2

    goto :goto_45

    :cond_54
    sub-int v4, v3, p1

    if-le v4, v1, :cond_5d

    const/4 v5, 0x4

    if-lt v4, v5, :cond_5d

    move v2, p1

    move v1, v4

    :cond_5d
    add-int/lit8 p1, v3, 0x2

    goto :goto_41

    :cond_60
    new-instance p1, Lc/c;

    invoke-direct {p1}, Lc/c;-><init>()V

    :cond_65
    :goto_65
    array-length v3, p0

    if-ge v0, v3, :cond_8f

    const/16 v3, 0x3a

    if-ne v0, v2, :cond_76

    invoke-virtual {p1, v3}, Lc/c;->b(I)Lc/c;

    add-int/2addr v0, v1

    if-ne v0, p2, :cond_65

    invoke-virtual {p1, v3}, Lc/c;->b(I)Lc/c;

    goto :goto_65

    :cond_76
    if-lez v0, :cond_7b

    invoke-virtual {p1, v3}, Lc/c;->b(I)Lc/c;

    :cond_7b
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-long v3, v3

    invoke-virtual {p1, v3, v4}, Lc/c;->l(J)Lc/c;

    add-int/lit8 v0, v0, 0x2

    goto :goto_65

    :cond_8f
    invoke-virtual {p1}, Lc/c;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_94
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_9a
    invoke-static {p0}, Lb/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_5
    array-length v4, p0

    const/16 v5, 0x10

    if-ge v1, v4, :cond_26

    move v4, v1

    :goto_b
    if-ge v4, v5, :cond_1a

    aget-byte v6, p0, v4

    if-nez v6, :cond_1a

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_1a

    add-int/lit8 v4, v4, 0x2

    goto :goto_b

    :cond_1a
    sub-int v5, v4, v1

    if-le v5, v2, :cond_23

    const/4 v6, 0x4

    if-lt v5, v6, :cond_23

    move v3, v1

    move v2, v5

    :cond_23
    add-int/lit8 v1, v4, 0x2

    goto :goto_5

    :cond_26
    new-instance v1, Lc/c;

    invoke-direct {v1}, Lc/c;-><init>()V

    :cond_2b
    :goto_2b
    array-length v4, p0

    if-ge v0, v4, :cond_55

    const/16 v4, 0x3a

    if-ne v0, v3, :cond_3c

    invoke-virtual {v1, v4}, Lc/c;->b(I)Lc/c;

    add-int/2addr v0, v2

    if-ne v0, v5, :cond_2b

    invoke-virtual {v1, v4}, Lc/c;->b(I)Lc/c;

    goto :goto_2b

    :cond_3c
    if-lez v0, :cond_41

    invoke-virtual {v1, v4}, Lc/c;->b(I)Lc/c;

    :cond_41
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    int-to-long v6, v4

    invoke-virtual {v1, v6, v7}, Lc/c;->l(J)Lc/c;

    add-int/lit8 v0, v0, 0x2

    goto :goto_2b

    :cond_55
    invoke-virtual {v1}, Lc/c;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;IIZZ)V
    .registers 14

    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    invoke-static/range {v0 .. v7}, Lb/v;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/v$a;->s(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14

    return-void

    :cond_14
    invoke-static {p1}, Lb/v$a;->t(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_50

    iget-object p1, p0, Lb/v$a;->f:Ljava/util/List;

    iget-object p2, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_48

    iget-object p1, p0, Lb/v$a;->f:Ljava/util/List;

    iget-object p2, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const-string p3, ""

    invoke-interface {p1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_48
    iget-object p1, p0, Lb/v$a;->f:Ljava/util/List;

    const-string p2, ""

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_50
    iget-object p2, p0, Lb/v$a;->f:Ljava/util/List;

    iget-object p3, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_74

    iget-object p2, p0, Lb/v$a;->f:Ljava/util/List;

    iget-object p3, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_79

    :cond_74
    iget-object p2, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_79
    if-eqz p4, :cond_82

    iget-object p1, p0, Lb/v$a;->f:Ljava/util/List;

    const-string p2, ""

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_82
    return-void
.end method

.method private static a(Ljava/lang/String;II[BI)Z
    .registers 12

    move v0, p4

    :goto_1
    const/4 v1, 0x0

    if-ge p1, p2, :cond_44

    const/16 v2, 0x10

    if-ne v0, v2, :cond_9

    return v1

    :cond_9
    if-eq v0, p4, :cond_16

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_14

    return v1

    :cond_14
    add-int/lit8 p1, p1, 0x1

    :cond_16
    move v2, p1

    const/4 v3, 0x0

    :goto_18
    if-ge v2, p2, :cond_37

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_37

    const/16 v6, 0x39

    if-gt v4, v6, :cond_37

    if-nez v3, :cond_2b

    if-eq p1, v2, :cond_2b

    return v1

    :cond_2b
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    const/16 v4, 0xff

    if-le v3, v4, :cond_34

    return v1

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_37
    sub-int p1, v2, p1

    if-nez p1, :cond_3c

    return v1

    :cond_3c
    add-int/lit8 p1, v0, 0x1

    int-to-byte v1, v3

    aput-byte v1, p3, v0

    move v0, p1

    move p1, v2

    goto :goto_1

    :cond_44
    add-int/lit8 p4, p4, 0x4

    if-eq v0, p4, :cond_49

    return v1

    :cond_49
    const/4 p0, 0x1

    return p0
.end method

.method private b(I)Lb/v$a;
    .registers 3

    iget-object v0, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lb/v$a;->f:Ljava/util/List;

    const-string v0, ""

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return-object p0
.end method

.method private b(ILjava/lang/String;)Lb/v$a;
    .registers 11

    if-nez p2, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "encodedPathSegment == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lb/v;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lb/v$a;->s(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-static {v0}, Lb/v$a;->t(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    return-object p0

    :cond_2d
    :goto_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected path segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/lang/String;)Lb/v$a;
    .registers 5

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "http"

    :goto_a
    iput-object p1, p0, Lb/v$a;->a:Ljava/lang/String;

    return-object p0

    :cond_d
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p1, "https"

    goto :goto_a

    return-object p0

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected scheme: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lb/v$a;
    .registers 10
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "encodedName == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    :cond_15
    iget-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    const-string v2, " \"\'<>#&="

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lb/v$a;->g:Ljava/util/List;

    if-eqz p2, :cond_35

    const-string v1, " \"\'<>#&="

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_36

    :cond_35
    const/4 p2, 0x0

    :goto_36
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private b(Ljava/lang/String;II)V
    .registers 13

    if-ne p2, p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x1

    if-eq v0, v1, :cond_20

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_11

    goto :goto_20

    :cond_11
    iget-object v0, p0, Lb/v$a;->f:Ljava/util/List;

    iget-object v1, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_20
    :goto_20
    iget-object v0, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lb/v$a;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2c
    add-int/lit8 p2, p2, 0x1

    :cond_2e
    :goto_2e
    move v5, p2

    if-ge v5, p3, :cond_47

    const-string p2, "/\\"

    invoke-static {p1, v5, p3, p2}, Lb/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result p2

    if-ge p2, p3, :cond_3b

    const/4 v0, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    move v7, v0

    invoke-direct/range {v3 .. v8}, Lb/v$a;->a(Ljava/lang/String;IIZZ)V

    if-eqz v0, :cond_2e

    goto :goto_2c

    :cond_47
    return-void
.end method

.method private static c(Ljava/lang/String;II)I
    .registers 10

    sub-int v0, p2, p1

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_7

    return v1

    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5a

    const/16 v3, 0x41

    const/16 v4, 0x7a

    const/16 v5, 0x61

    if-lt v0, v5, :cond_17

    if-le v0, v4, :cond_1c

    :cond_17
    if-lt v0, v3, :cond_45

    if-le v0, v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_45

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v5, :cond_28

    if-le v0, v4, :cond_1c

    :cond_28
    if-lt v0, v3, :cond_2c

    if-le v0, v2, :cond_1c

    :cond_2c
    const/16 v6, 0x30

    if-lt v0, v6, :cond_34

    const/16 v6, 0x39

    if-le v0, v6, :cond_1c

    :cond_34
    const/16 v6, 0x2b

    if-eq v0, v6, :cond_1c

    const/16 v6, 0x2d

    if-eq v0, v6, :cond_1c

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_1c

    const/16 p0, 0x3a

    if-ne v0, p0, :cond_45

    return p1

    :cond_45
    return v1
.end method

.method private c()Lb/v$a;
    .registers 11

    iget-object v0, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_25

    iget-object v3, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    iget-object v3, p0, Lb/v$a;->f:Ljava/util/List;

    const-string v5, "[]"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_25
    iget-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2f
    if-ge v1, v0, :cond_4e

    iget-object v2, p0, Lb/v$a;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_4b

    iget-object v2, p0, Lb/v$a;->g:Ljava/util/List;

    const-string v4, "\\^`{|}"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_4e
    iget-object v0, p0, Lb/v$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_60

    iget-object v1, p0, Lb/v$a;->h:Ljava/lang/String;

    const-string v2, " \"#<>\\^`{|}"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/v$a;->h:Ljava/lang/String;

    :cond_60
    return-object p0
.end method

.method private c(Ljava/lang/String;)Lb/v$a;
    .registers 8

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/v$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lb/v$a;
    .registers 10
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    if-eqz v0, :cond_1c

    const-string v2, " \"\'<>#&="

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/v$a;->p(Ljava/lang/String;)V

    :cond_1c
    if-nez p1, :cond_26

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    iget-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    if-nez v0, :cond_31

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    :cond_31
    iget-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    const-string v2, " \"\'<>#&="

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lb/v$a;->g:Ljava/util/List;

    if-eqz p2, :cond_51

    const-string v1, " \"\'<>#&="

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_52

    :cond_51
    const/4 p2, 0x0

    :goto_52
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private static d(Ljava/lang/String;II)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge p1, p2, :cond_14

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_f

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_14

    :cond_f
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_14
    return v0
.end method

.method private d(Ljava/lang/String;)Lb/v$a;
    .registers 9

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "encodedUsername == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const-string v2, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/v$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Lb/v$a;
    .registers 10
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "encodedName == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    if-eqz v0, :cond_1c

    const-string v2, " \"\'<>#&="

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/v$a;->p(Ljava/lang/String;)V

    :cond_1c
    if-nez p1, :cond_26

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "encodedName == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    iget-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    if-nez v0, :cond_31

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    :cond_31
    iget-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    const-string v2, " \"\'<>#&="

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lb/v$a;->g:Ljava/util/List;

    if-eqz p2, :cond_51

    const-string v1, " \"\'<>#&="

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_52

    :cond_51
    const/4 p2, 0x0

    :goto_52
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Lb/v$a;->f:Ljava/util/List;

    iget-object v1, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lb/v$a;->f:Ljava/util/List;

    iget-object v1, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2e
    iget-object v0, p0, Lb/v$a;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static e(Ljava/lang/String;II)I
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_1f

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_f

    goto :goto_1b

    :cond_f
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1b

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_f

    :cond_1b
    :goto_1b
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1e
    return p1

    :cond_1f
    return p2
.end method

.method private e(Ljava/lang/String;)Lb/v$a;
    .registers 8

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/v$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method private f(Ljava/lang/String;)Lb/v$a;
    .registers 9

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "encodedPassword == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const-string v2, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/v$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method private static f(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 20
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/16 v2, 0x10

    new-array v3, v2, [B

    const/4 v4, -0x1

    const/4 v5, 0x0

    move/from16 v6, p1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_f
    const/4 v10, 0x0

    if-ge v6, v1, :cond_d4

    if-ne v7, v2, :cond_15

    return-object v10

    :cond_15
    add-int/lit8 v11, v6, 0x2

    const/4 v12, 0x4

    const/16 v13, 0xff

    if-gt v11, v1, :cond_33

    const-string v14, "::"

    const/4 v15, 0x2

    invoke-virtual {v0, v6, v14, v5, v15}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v14

    if-eqz v14, :cond_33

    if-eq v8, v4, :cond_28

    return-object v10

    :cond_28
    add-int/lit8 v7, v7, 0x2

    if-ne v11, v1, :cond_2f

    move v8, v7

    goto/16 :goto_d4

    :cond_2f
    move v8, v7

    move v9, v11

    goto/16 :goto_a2

    :cond_33
    if-eqz v7, :cond_a1

    const-string v11, ":"

    const/4 v14, 0x1

    invoke-virtual {v0, v6, v11, v5, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_42

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_a1

    :cond_42
    const-string v11, "."

    invoke-virtual {v0, v6, v11, v5, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_a0

    add-int/lit8 v6, v7, -0x2

    move v11, v6

    :goto_4d
    if-ge v9, v1, :cond_94

    if-ne v11, v2, :cond_52

    goto :goto_9a

    :cond_52
    if-eq v11, v6, :cond_5f

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v14, 0x2e

    if-eq v15, v14, :cond_5d

    goto :goto_9a

    :cond_5d
    add-int/lit8 v9, v9, 0x1

    :cond_5f
    move v14, v9

    const/4 v15, 0x0

    :goto_61
    if-ge v14, v1, :cond_82

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v2, 0x30

    if-lt v5, v2, :cond_82

    const/16 v4, 0x39

    if-gt v5, v4, :cond_82

    if-nez v15, :cond_74

    if-eq v9, v14, :cond_74

    goto :goto_97

    :cond_74
    mul-int/lit8 v15, v15, 0xa

    add-int/2addr v15, v5

    sub-int/2addr v15, v2

    if-le v15, v13, :cond_7b

    goto :goto_97

    :cond_7b
    add-int/lit8 v14, v14, 0x1

    const/16 v2, 0x10

    const/4 v4, -0x1

    const/4 v5, 0x0

    goto :goto_61

    :cond_82
    sub-int v2, v14, v9

    if-nez v2, :cond_87

    goto :goto_97

    :cond_87
    add-int/lit8 v2, v11, 0x1

    int-to-byte v4, v15

    aput-byte v4, v3, v11

    move v11, v2

    move v9, v14

    const/16 v2, 0x10

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v14, 0x1

    goto :goto_4d

    :cond_94
    add-int/2addr v6, v12

    if-eq v11, v6, :cond_99

    :goto_97
    const/4 v5, 0x0

    goto :goto_9a

    :cond_99
    const/4 v5, 0x1

    :goto_9a
    if-nez v5, :cond_9d

    return-object v10

    :cond_9d
    add-int/lit8 v7, v7, 0x2

    goto :goto_d4

    :cond_a0
    return-object v10

    :cond_a1
    :goto_a1
    move v9, v6

    :goto_a2
    move v6, v9

    const/4 v2, 0x0

    :goto_a4
    if-ge v6, v1, :cond_b7

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lb/v;->a(C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_b7

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_a4

    :cond_b7
    sub-int v4, v6, v9

    if-eqz v4, :cond_d3

    if-le v4, v12, :cond_be

    return-object v10

    :cond_be
    add-int/lit8 v4, v7, 0x1

    ushr-int/lit8 v5, v2, 0x8

    and-int/2addr v5, v13

    int-to-byte v5, v5

    aput-byte v5, v3, v7

    add-int/lit8 v7, v4, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    const/16 v2, 0x10

    const/4 v4, -0x1

    const/4 v5, 0x0

    goto/16 :goto_f

    :cond_d3
    return-object v10

    :cond_d4
    :goto_d4
    const/16 v0, 0x10

    if-eq v7, v0, :cond_ea

    const/4 v1, -0x1

    if-ne v8, v1, :cond_dc

    return-object v10

    :cond_dc
    sub-int v1, v7, v8

    rsub-int/lit8 v2, v1, 0x10

    invoke-static {v3, v8, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v2, v7, 0x10

    add-int/2addr v2, v8

    const/4 v0, 0x0

    invoke-static {v3, v8, v2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_ea
    :try_start_ea
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_ee
    .catch Ljava/net/UnknownHostException; {:try_start_ea .. :try_end_ee} :catch_ef

    return-object v0

    :catch_ef
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static g(Ljava/lang/String;II)I
    .registers 12

    const/4 v0, -0x1

    :try_start_1
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v8}, Lb/v;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_12} :catch_1a

    if-lez p0, :cond_1a

    const p1, 0xffff

    if-gt p0, p1, :cond_1a

    return p0

    :catch_1a
    :cond_1a
    return v0
.end method

.method private g(Ljava/lang/String;)Lb/v$a;
    .registers 5

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "host == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lb/v$a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iput-object v0, p0, Lb/v$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method private h(Ljava/lang/String;)Lb/v$a;
    .registers 9

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "pathSegment == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lb/v$a;->a(Ljava/lang/String;IIZZ)V

    return-object p0
.end method

.method private i(Ljava/lang/String;)Lb/v$a;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "pathSegments == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/v$a;->a(Ljava/lang/String;Z)Lb/v$a;

    move-result-object p1

    return-object p1
.end method

.method private j(Ljava/lang/String;)Lb/v$a;
    .registers 9

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "encodedPathSegment == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lb/v$a;->a(Ljava/lang/String;IIZZ)V

    return-object p0
.end method

.method private k(Ljava/lang/String;)Lb/v$a;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "encodedPathSegments == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lb/v$a;->a(Ljava/lang/String;Z)Lb/v$a;

    move-result-object p1

    return-object p1
.end method

.method private l(Ljava/lang/String;)Lb/v$a;
    .registers 5

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "encodedPath == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected encodedPath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lb/v$a;->b(Ljava/lang/String;II)V

    return-object p0
.end method

.method private m(Ljava/lang/String;)Lb/v$a;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_12

    const-string v1, " \"\'<>#"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/v;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    iput-object p1, p0, Lb/v$a;->g:Ljava/util/List;

    return-object p0
.end method

.method private n(Ljava/lang/String;)Lb/v$a;
    .registers 9

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    if-nez v0, :cond_f

    return-object p0

    :cond_f
    const-string v2, " \"\'<>#&="

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/v$a;->p(Ljava/lang/String;)V

    return-object p0
.end method

.method private o(Ljava/lang/String;)Lb/v$a;
    .registers 9

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "encodedName == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    if-nez v0, :cond_f

    return-object p0

    :cond_f
    const-string v2, " \"\'<>#&="

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/v$a;->p(Ljava/lang/String;)V

    return-object p0
.end method

.method private p(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lb/v$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_8
    if-ltz v0, :cond_31

    iget-object v1, p0, Lb/v$a;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lb/v$a;->g:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lb/v$a;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lb/v$a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 p1, 0x0

    iput-object p1, p0, Lb/v$a;->g:Ljava/util/List;

    return-void

    :cond_2e
    add-int/lit8 v0, v0, -0x2

    goto :goto_8

    :cond_31
    return-void
.end method

.method private q(Ljava/lang/String;)Lb/v$a;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_e

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iput-object p1, p0, Lb/v$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method private r(Ljava/lang/String;)Lb/v$a;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_e

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iput-object p1, p0, Lb/v$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method private static s(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "%2e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private static t(Ljava/lang/String;)Z
    .registers 2

    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "%2e."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, ".%2e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "%2e%2e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method final a()I
    .registers 3

    iget v0, p0, Lb/v$a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lb/v$a;->e:I

    return v0

    :cond_8
    iget-object v0, p0, Lb/v$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lb/v;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method final a(Lb/v;Ljava/lang/String;)Lb/v$a$a;
    .registers 25
    .param p1    # Lb/v;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x0

    invoke-static {v9, v8, v2}, Lb/a/c;->a(Ljava/lang/String;II)I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v9, v10, v2}, Lb/a/c;->b(Ljava/lang/String;II)I

    move-result v11

    sub-int v2, v11, v10

    const/16 v12, 0x3a

    const/4 v13, 0x2

    const/4 v14, -0x1

    if-lt v2, v13, :cond_5e

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5a

    const/16 v4, 0x41

    const/16 v5, 0x7a

    const/16 v6, 0x61

    if-lt v2, v6, :cond_2f

    if-le v2, v5, :cond_34

    :cond_2f
    if-lt v2, v4, :cond_5e

    if-le v2, v3, :cond_34

    goto :goto_5e

    :cond_34
    add-int/lit8 v2, v10, 0x1

    :goto_36
    if-ge v2, v11, :cond_5e

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_40

    if-le v7, v5, :cond_5b

    :cond_40
    if-lt v7, v4, :cond_44

    if-le v7, v3, :cond_5b

    :cond_44
    const/16 v15, 0x30

    if-lt v7, v15, :cond_4c

    const/16 v15, 0x39

    if-le v7, v15, :cond_5b

    :cond_4c
    const/16 v15, 0x2b

    if-eq v7, v15, :cond_5b

    const/16 v15, 0x2d

    if-eq v7, v15, :cond_5b

    const/16 v15, 0x2e

    if-eq v7, v15, :cond_5b

    if-ne v7, v12, :cond_5e

    goto :goto_5f

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_5e
    :goto_5e
    const/4 v2, -0x1

    :goto_5f
    if-eq v2, v14, :cond_8c

    const/4 v3, 0x1

    const-string v5, "https:"

    const/4 v6, 0x0

    const/4 v7, 0x6

    move-object v2, v9

    move v4, v10

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string v2, "https"

    iput-object v2, v0, Lb/v$a;->a:Ljava/lang/String;

    add-int/lit8 v10, v10, 0x6

    goto :goto_92

    :cond_75
    const/4 v3, 0x1

    const-string v5, "http:"

    const/4 v6, 0x0

    const/4 v7, 0x5

    move-object v2, v9

    move v4, v10

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_89

    const-string v2, "http"

    iput-object v2, v0, Lb/v$a;->a:Ljava/lang/String;

    add-int/lit8 v10, v10, 0x5

    goto :goto_92

    :cond_89
    sget-object v1, Lb/v$a$a;->UNSUPPORTED_SCHEME:Lb/v$a$a;

    return-object v1

    :cond_8c
    if-eqz v1, :cond_20e

    iget-object v2, v1, Lb/v;->k:Ljava/lang/String;

    iput-object v2, v0, Lb/v$a;->a:Ljava/lang/String;

    :goto_92
    move v2, v10

    const/4 v3, 0x0

    :goto_94
    const/16 v15, 0x2f

    const/16 v7, 0x5c

    if-ge v2, v11, :cond_a7

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_a2

    if-ne v4, v15, :cond_a7

    :cond_a2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    :cond_a7
    const/16 v6, 0x23

    const/16 v16, 0x1

    if-ge v3, v13, :cond_ee

    if-eqz v1, :cond_ee

    iget-object v2, v1, Lb/v;->k:Ljava/lang/String;

    iget-object v4, v0, Lb/v$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    goto :goto_ee

    :cond_ba
    invoke-virtual/range {p1 .. p1}, Lb/v;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lb/v$a;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lb/v;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lb/v$a;->c:Ljava/lang/String;

    iget-object v2, v1, Lb/v;->l:Ljava/lang/String;

    iput-object v2, v0, Lb/v$a;->d:Ljava/lang/String;

    iget v2, v1, Lb/v;->m:I

    iput v2, v0, Lb/v$a;->e:I

    iget-object v2, v0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lb/v$a;->f:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lb/v;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eq v10, v11, :cond_e4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_eb

    :cond_e4
    invoke-virtual/range {p1 .. p1}, Lb/v;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/v$a;->a(Ljava/lang/String;)Lb/v$a;

    :cond_eb
    move v15, v10

    goto/16 :goto_1c3

    :cond_ee
    :goto_ee
    add-int/2addr v10, v3

    move v2, v10

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_f2
    const-string v1, "@/\\?#"

    invoke-static {v9, v2, v11, v1}, Lb/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v8

    if-eq v8, v11, :cond_ff

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_100

    :cond_ff
    const/4 v1, -0x1

    :goto_100
    if-eq v1, v14, :cond_192

    if-eq v1, v6, :cond_192

    if-eq v1, v15, :cond_192

    if-eq v1, v7, :cond_192

    packed-switch v1, :pswitch_data_212

    goto :goto_f2

    :pswitch_10c
    if-nez v10, :cond_15f

    invoke-static {v9, v2, v8, v12}, Lb/a/c;->a(Ljava/lang/String;IIC)I

    move-result v5

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v1, v9

    move v3, v5

    move v12, v5

    move/from16 v5, v17

    const/16 v15, 0x23

    move/from16 v6, v18

    const/16 v17, 0x5c

    move/from16 v7, v19

    move v15, v8

    move/from16 v8, v20

    invoke-static/range {v1 .. v8}, Lb/v;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v13, :cond_148

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lb/v$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%40"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_148
    iput-object v1, v0, Lb/v$a;->b:Ljava/lang/String;

    if-eq v12, v15, :cond_15d

    add-int/lit8 v2, v12, 0x1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    move v3, v15

    invoke-static/range {v1 .. v8}, Lb/v;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb/v$a;->c:Ljava/lang/String;

    const/4 v10, 0x1

    :cond_15d
    const/4 v13, 0x1

    goto :goto_186

    :cond_15f
    move v15, v8

    const/16 v17, 0x5c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lb/v$a;->c:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%40"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    move v3, v15

    invoke-static/range {v1 .. v8}, Lb/v;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb/v$a;->c:Ljava/lang/String;

    :goto_186
    add-int/lit8 v2, v15, 0x1

    const/16 v6, 0x23

    const/16 v7, 0x5c

    const/16 v12, 0x3a

    const/16 v15, 0x2f

    goto/16 :goto_f2

    :cond_192
    :pswitch_192
    move v15, v8

    invoke-static {v9, v2, v15}, Lb/v$a;->e(Ljava/lang/String;II)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    if-ge v3, v15, :cond_1ae

    invoke-static {v9, v2, v1}, Lb/v$a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb/v$a;->d:Ljava/lang/String;

    invoke-static {v9, v3, v15}, Lb/v$a;->g(Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lb/v$a;->e:I

    iget v1, v0, Lb/v$a;->e:I

    if-ne v1, v14, :cond_1bc

    sget-object v1, Lb/v$a$a;->INVALID_PORT:Lb/v$a$a;

    return-object v1

    :cond_1ae
    invoke-static {v9, v2, v1}, Lb/v$a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb/v$a;->d:Ljava/lang/String;

    iget-object v1, v0, Lb/v$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lb/v;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lb/v$a;->e:I

    :cond_1bc
    iget-object v1, v0, Lb/v$a;->d:Ljava/lang/String;

    if-nez v1, :cond_1c3

    sget-object v1, Lb/v$a$a;->INVALID_HOST:Lb/v$a$a;

    return-object v1

    :cond_1c3
    :goto_1c3
    const-string v1, "?#"

    invoke-static {v9, v15, v11, v1}, Lb/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, v9, v15, v1}, Lb/v$a;->b(Ljava/lang/String;II)V

    if-ge v1, v11, :cond_1f1

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_1f1

    const/16 v2, 0x23

    invoke-static {v9, v1, v11, v2}, Lb/a/c;->a(Ljava/lang/String;IIC)I

    move-result v10

    add-int/lit8 v2, v1, 0x1

    const-string v4, " \"\'<>#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, v9

    move v3, v10

    invoke-static/range {v1 .. v8}, Lb/v;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/v;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lb/v$a;->g:Ljava/util/List;

    move v1, v10

    :cond_1f1
    if-ge v1, v11, :cond_20b

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_20b

    add-int/lit8 v2, v1, 0x1

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move v3, v11

    invoke-static/range {v1 .. v8}, Lb/v;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb/v$a;->h:Ljava/lang/String;

    :cond_20b
    sget-object v1, Lb/v$a$a;->SUCCESS:Lb/v$a$a;

    return-object v1

    :cond_20e
    sget-object v1, Lb/v$a$a;->MISSING_SCHEME:Lb/v$a$a;

    return-object v1

    nop

    :pswitch_data_212
    .packed-switch 0x3f
        :pswitch_192
        :pswitch_10c
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)Lb/v$a;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_12

    const-string v1, " \"\'<>#"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/v;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    iput-object p1, p0, Lb/v$a;->g:Ljava/util/List;

    return-object p0
.end method

.method public final b()Lb/v;
    .registers 3

    iget-object v0, p0, Lb/v$a;->a:Ljava/lang/String;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lb/v$a;->d:Ljava/lang/String;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lb/v;

    invoke-direct {v0, p0}, Lb/v;-><init>(Lb/v$a;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/v$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/v$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_21

    iget-object v1, p0, Lb/v$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_21
    iget-object v1, p0, Lb/v$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/v$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/v$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3b
    iget-object v1, p0, Lb/v$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_54

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/v$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_59

    :cond_54
    iget-object v1, p0, Lb/v$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_59
    invoke-virtual {p0}, Lb/v$a;->a()I

    move-result v1

    iget-object v3, p0, Lb/v$a;->a:Ljava/lang/String;

    invoke-static {v3}, Lb/v;->a(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_6b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6b
    iget-object v1, p0, Lb/v$a;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lb/v;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lb/v$a;->g:Ljava/util/List;

    if-eqz v1, :cond_7e

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/v$a;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lb/v;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_7e
    iget-object v1, p0, Lb/v$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_8c

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/v$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
