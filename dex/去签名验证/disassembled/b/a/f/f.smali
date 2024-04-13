.class public final Lb/a/f/f;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/d/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/f/f$a;
    }
.end annotation


# static fields
.field private static final c:Lc/f;

.field private static final d:Lc/f;

.field private static final e:Lc/f;

.field private static final f:Lc/f;

.field private static final g:Lc/f;

.field private static final h:Lc/f;

.field private static final i:Lc/f;

.field private static final j:Lc/f;

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Lb/a/c/g;

.field private final m:Lb/z;

.field private final n:Lb/a/f/g;

.field private o:Lb/a/f/i;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-string v0, "connection"

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/f/f;->c:Lc/f;

    const-string v0, "host"

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/f/f;->d:Lc/f;

    const-string v0, "keep-alive"

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/f/f;->e:Lc/f;

    const-string v0, "proxy-connection"

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/f/f;->f:Lc/f;

    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/f/f;->g:Lc/f;

    const-string v0, "te"

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/f/f;->h:Lc/f;

    const-string v0, "encoding"

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/f/f;->i:Lc/f;

    const-string v0, "upgrade"

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/f/f;->j:Lc/f;

    const/16 v0, 0xc

    new-array v0, v0, [Lc/f;

    sget-object v1, Lb/a/f/f;->c:Lc/f;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lb/a/f/f;->d:Lc/f;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lb/a/f/f;->e:Lc/f;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lb/a/f/f;->f:Lc/f;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lb/a/f/f;->h:Lc/f;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lb/a/f/f;->g:Lc/f;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lb/a/f/f;->i:Lc/f;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sget-object v1, Lb/a/f/f;->j:Lc/f;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    sget-object v1, Lb/a/f/c;->c:Lc/f;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sget-object v1, Lb/a/f/c;->d:Lc/f;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    sget-object v1, Lb/a/f/c;->e:Lc/f;

    const/16 v11, 0xa

    aput-object v1, v0, v11

    sget-object v1, Lb/a/f/c;->f:Lc/f;

    const/16 v11, 0xb

    aput-object v1, v0, v11

    invoke-static {v0}, Lb/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lb/a/f/f;->k:Ljava/util/List;

    new-array v0, v10, [Lc/f;

    sget-object v1, Lb/a/f/f;->c:Lc/f;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/f/f;->d:Lc/f;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/f/f;->e:Lc/f;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/f/f;->f:Lc/f;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/f/f;->h:Lc/f;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/f/f;->g:Lc/f;

    aput-object v1, v0, v7

    sget-object v1, Lb/a/f/f;->i:Lc/f;

    aput-object v1, v0, v8

    sget-object v1, Lb/a/f/f;->j:Lc/f;

    aput-object v1, v0, v9

    invoke-static {v0}, Lb/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lb/a/f/f;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lb/z;Lb/a/c/g;Lb/a/f/g;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/f/f;->m:Lb/z;

    iput-object p2, p0, Lb/a/f/f;->b:Lb/a/c/g;

    iput-object p3, p0, Lb/a/f/f;->n:Lb/a/f/g;

    return-void
.end method

.method private static a(Ljava/util/List;)Lb/ae$a;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a/f/c;",
            ">;)",
            "Lb/ae$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lb/u$a;

    invoke-direct {v0}, Lb/u$a;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    move-object v0, v2

    :goto_d
    if-ge v3, v1, :cond_5e

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/a/f/c;

    if-nez v5, :cond_27

    if-eqz v0, :cond_5b

    iget v5, v0, Lb/a/d/k;->e:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_5b

    new-instance v0, Lb/u$a;

    invoke-direct {v0}, Lb/u$a;-><init>()V

    move-object v4, v0

    move-object v0, v2

    goto :goto_5b

    :cond_27
    iget-object v6, v5, Lb/a/f/c;->g:Lc/f;

    iget-object v5, v5, Lb/a/f/c;->h:Lc/f;

    invoke-virtual {v5}, Lc/f;->utf8()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lb/a/f/c;->b:Lc/f;

    invoke-virtual {v6, v7}, Lc/f;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "HTTP/1.1 "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/d/k;->a(Ljava/lang/String;)Lb/a/d/k;

    move-result-object v0

    goto :goto_5b

    :cond_4a
    sget-object v7, Lb/a/f/f;->l:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5b

    sget-object v7, Lb/a/a;->a:Lb/a/a;

    invoke-virtual {v6}, Lc/f;->utf8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6, v5}, Lb/a/a;->a(Lb/u$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_5e
    if-nez v0, :cond_68

    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_68
    new-instance p0, Lb/ae$a;

    invoke-direct {p0}, Lb/ae$a;-><init>()V

    sget-object v1, Lb/aa;->HTTP_2:Lb/aa;

    iput-object v1, p0, Lb/ae$a;->b:Lb/aa;

    iget v1, v0, Lb/a/d/k;->e:I

    iput v1, p0, Lb/ae$a;->c:I

    iget-object v0, v0, Lb/a/d/k;->f:Ljava/lang/String;

    iput-object v0, p0, Lb/ae$a;->d:Ljava/lang/String;

    invoke-virtual {v4}, Lb/u$a;->a()Lb/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/ae$a;->a(Lb/u;)Lb/ae$a;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lb/ac;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/ac;",
            ")",
            "Ljava/util/List<",
            "Lb/a/f/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/ac;->c:Lb/u;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lb/u;->a:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lb/a/f/c;

    sget-object v3, Lb/a/f/c;->c:Lc/f;

    iget-object v4, p0, Lb/ac;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lb/a/f/c;

    sget-object v3, Lb/a/f/c;->d:Lc/f;

    iget-object v4, p0, Lb/ac;->a:Lb/v;

    invoke-static {v4}, Lb/a/d/i;->a(Lb/v;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    invoke-virtual {p0, v2}, Lb/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3c

    new-instance v3, Lb/a/f/c;

    sget-object v4, Lb/a/f/c;->f:Lc/f;

    invoke-direct {v3, v4, v2}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    new-instance v2, Lb/a/f/c;

    sget-object v3, Lb/a/f/c;->e:Lc/f;

    iget-object p0, p0, Lb/ac;->a:Lb/v;

    iget-object p0, p0, Lb/v;->k:Ljava/lang/String;

    invoke-direct {v2, v3, p0}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    iget-object v2, v0, Lb/u;->a:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    :goto_50
    if-ge p0, v2, :cond_77

    invoke-virtual {v0, p0}, Lb/u;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v3

    sget-object v4, Lb/a/f/f;->k:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    new-instance v4, Lb/a/f/c;

    invoke-virtual {v0, p0}, Lb/u;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_74
    add-int/lit8 p0, p0, 0x1

    goto :goto_50

    :cond_77
    return-object v1
.end method


# virtual methods
.method public final a(Z)Lb/ae$a;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/f/f;->o:Lb/a/f/i;

    invoke-virtual {v0}, Lb/a/f/i;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lb/u$a;

    invoke-direct {v1}, Lb/u$a;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    move-object v1, v3

    :goto_13
    const/16 v6, 0x64

    if-ge v4, v2, :cond_64

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/a/f/c;

    if-nez v7, :cond_2d

    if-eqz v1, :cond_61

    iget v7, v1, Lb/a/d/k;->e:I

    if-ne v7, v6, :cond_61

    new-instance v1, Lb/u$a;

    invoke-direct {v1}, Lb/u$a;-><init>()V

    move-object v5, v1

    move-object v1, v3

    goto :goto_61

    :cond_2d
    iget-object v6, v7, Lb/a/f/c;->g:Lc/f;

    iget-object v7, v7, Lb/a/f/c;->h:Lc/f;

    invoke-virtual {v7}, Lc/f;->utf8()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lb/a/f/c;->b:Lc/f;

    invoke-virtual {v6, v8}, Lc/f;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "HTTP/1.1 "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/a/d/k;->a(Ljava/lang/String;)Lb/a/d/k;

    move-result-object v1

    goto :goto_61

    :cond_50
    sget-object v8, Lb/a/f/f;->l:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_61

    sget-object v8, Lb/a/a;->a:Lb/a/a;

    invoke-virtual {v6}, Lc/f;->utf8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6, v7}, Lb/a/a;->a(Lb/u$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    :goto_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_64
    if-nez v1, :cond_6e

    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    new-instance v0, Lb/ae$a;

    invoke-direct {v0}, Lb/ae$a;-><init>()V

    sget-object v2, Lb/aa;->HTTP_2:Lb/aa;

    iput-object v2, v0, Lb/ae$a;->b:Lb/aa;

    iget v2, v1, Lb/a/d/k;->e:I

    iput v2, v0, Lb/ae$a;->c:I

    iget-object v1, v1, Lb/a/d/k;->f:Ljava/lang/String;

    iput-object v1, v0, Lb/ae$a;->d:Ljava/lang/String;

    invoke-virtual {v5}, Lb/u$a;->a()Lb/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/ae$a;->a(Lb/u;)Lb/ae$a;

    move-result-object v0

    if-eqz p1, :cond_92

    sget-object p1, Lb/a/a;->a:Lb/a/a;

    invoke-virtual {p1, v0}, Lb/a/a;->a(Lb/ae$a;)I

    move-result p1

    if-ne p1, v6, :cond_92

    return-object v3

    :cond_92
    return-object v0
.end method

.method public final a(Lb/ae;)Lb/af;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lb/a/f/f$a;

    iget-object v1, p0, Lb/a/f/f;->o:Lb/a/f/i;

    iget-object v1, v1, Lb/a/f/i;->g:Lb/a/f/i$b;

    invoke-direct {v0, p0, v1}, Lb/a/f/f$a;-><init>(Lb/a/f/f;Lc/y;)V

    new-instance v1, Lb/a/d/h;

    iget-object p1, p1, Lb/ae;->f:Lb/u;

    invoke-static {v0}, Lc/p;->a(Lc/y;)Lc/e;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lb/a/d/h;-><init>(Lb/u;Lc/e;)V

    return-object v1
.end method

.method public final a(Lb/ac;J)Lc/x;
    .registers 4

    iget-object p1, p0, Lb/a/f/f;->o:Lb/a/f/i;

    invoke-virtual {p1}, Lb/a/f/i;->d()Lc/x;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/f/f;->n:Lb/a/f/g;

    iget-object v0, v0, Lb/a/f/g;->q:Lb/a/f/j;

    invoke-virtual {v0}, Lb/a/f/j;->b()V

    return-void
.end method

.method public final a(Lb/ac;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/f/f;->o:Lb/a/f/i;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p1, Lb/ac;->d:Lb/ad;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-object v2, p1, Lb/ac;->c:Lb/u;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v2, Lb/u;->a:[Ljava/lang/String;

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Lb/a/f/c;

    sget-object v5, Lb/a/f/c;->c:Lc/f;

    iget-object v6, p1, Lb/ac;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lb/a/f/c;

    sget-object v5, Lb/a/f/c;->d:Lc/f;

    iget-object v6, p1, Lb/ac;->a:Lb/v;

    invoke-static {v6}, Lb/a/d/i;->a(Lb/v;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "Host"

    invoke-virtual {p1, v4}, Lb/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_49

    new-instance v5, Lb/a/f/c;

    sget-object v6, Lb/a/f/c;->f:Lc/f;

    invoke-direct {v5, v6, v4}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    new-instance v4, Lb/a/f/c;

    sget-object v5, Lb/a/f/c;->e:Lc/f;

    iget-object p1, p1, Lb/ac;->a:Lb/v;

    iget-object p1, p1, Lb/v;->k:Ljava/lang/String;

    invoke-direct {v4, v5, p1}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v2, Lb/u;->a:[Ljava/lang/String;

    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    const/4 v4, 0x0

    :goto_5d
    if-ge v4, p1, :cond_84

    invoke-virtual {v2, v4}, Lb/u;->a(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v5

    sget-object v6, Lb/a/f/f;->k:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_81

    new-instance v6, Lb/a/f/c;

    invoke-virtual {v2, v4}, Lb/u;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    :cond_84
    iget-object p1, p0, Lb/a/f/f;->n:Lb/a/f/g;

    invoke-virtual {p1, v1, v3, v0}, Lb/a/f/g;->a(ILjava/util/List;Z)Lb/a/f/i;

    move-result-object p1

    iput-object p1, p0, Lb/a/f/f;->o:Lb/a/f/i;

    iget-object p1, p0, Lb/a/f/f;->o:Lb/a/f/i;

    iget-object p1, p1, Lb/a/f/i;->i:Lb/a/f/i$c;

    iget-object v0, p0, Lb/a/f/f;->m:Lb/z;

    iget v0, v0, Lb/z;->A:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lc/z;->a(JLjava/util/concurrent/TimeUnit;)Lc/z;

    iget-object p1, p0, Lb/a/f/f;->o:Lb/a/f/i;

    iget-object p1, p1, Lb/a/f/i;->j:Lb/a/f/i$c;

    iget-object v0, p0, Lb/a/f/f;->m:Lb/z;

    iget v0, v0, Lb/z;->B:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lc/z;->a(JLjava/util/concurrent/TimeUnit;)Lc/z;

    return-void
.end method

.method public final b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/f/f;->o:Lb/a/f/i;

    invoke-virtual {v0}, Lb/a/f/i;->d()Lc/x;

    move-result-object v0

    invoke-interface {v0}, Lc/x;->close()V

    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lb/a/f/f;->o:Lb/a/f/i;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lb/a/f/f;->o:Lb/a/f/i;

    sget-object v1, Lb/a/f/b;->CANCEL:Lb/a/f/b;

    invoke-virtual {v0, v1}, Lb/a/f/i;->b(Lb/a/f/b;)V

    :cond_b
    return-void
.end method
