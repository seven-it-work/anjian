.class public Lcom/c/b/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = -0x65

.field public static final g:I = -0x66

.field public static final h:I = -0x67


# instance fields
.field public i:I

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:[B

.field m:Ljava/io/File;

.field n:Ljava/util/Date;

.field o:Z

.field p:Lorg/apache/http/impl/client/DefaultHttpClient;

.field q:J

.field public r:I

.field s:J

.field t:Z

.field public u:Z

.field v:Z

.field public w:Ljava/lang/String;

.field x:Lorg/apache/http/protocol/HttpContext;

.field y:[Lorg/apache/http/Header;

.field z:Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/c/b/c;->i:I

    const-string v0, "OK"

    iput-object v0, p0, Lcom/c/b/c;->j:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/c/b/c;->n:Ljava/util/Date;

    const/4 v0, 0x1

    iput v0, p0, Lcom/c/b/c;->r:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/b/c;->s:J

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/c/b/c;->i:I

    const-string v0, "OK"

    iput-object v0, p0, Lcom/c/b/c;->j:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/c/b/c;->n:Ljava/util/Date;

    const/4 v0, 0x1

    iput v0, p0, Lcom/c/b/c;->r:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/b/c;->s:J

    iput p1, p0, Lcom/c/b/c;->i:I

    iput-object p2, p0, Lcom/c/b/c;->j:Ljava/lang/String;

    return-void
.end method

.method private a(I)Lcom/c/b/c;
    .registers 2

    iput p1, p0, Lcom/c/b/c;->r:I

    return-object p0
.end method

.method private a(Ljava/io/File;)Lcom/c/b/c;
    .registers 2

    iput-object p1, p0, Lcom/c/b/c;->m:Ljava/io/File;

    return-object p0
.end method

.method private a(Ljava/util/Date;)Lcom/c/b/c;
    .registers 2

    iput-object p1, p0, Lcom/c/b/c;->n:Ljava/util/Date;

    return-object p0
.end method

.method private a(Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/c/b/c;
    .registers 2

    iput-object p1, p0, Lcom/c/b/c;->p:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object p0
.end method

.method private a(Lorg/apache/http/protocol/HttpContext;)Lcom/c/b/c;
    .registers 2

    iput-object p1, p0, Lcom/c/b/c;->x:Lorg/apache/http/protocol/HttpContext;

    return-object p0
.end method

.method private a(Z)Lcom/c/b/c;
    .registers 2

    iput-boolean p1, p0, Lcom/c/b/c;->o:Z

    return-object p0
.end method

.method private a([B)Lcom/c/b/c;
    .registers 2

    iput-object p1, p0, Lcom/c/b/c;->l:[B

    return-object p0
.end method

.method private a([Lorg/apache/http/Header;)Lcom/c/b/c;
    .registers 2

    iput-object p1, p0, Lcom/c/b/c;->y:[Lorg/apache/http/Header;

    return-object p0
.end method

.method private a(Ljava/io/Closeable;)V
    .registers 2

    iput-object p1, p0, Lcom/c/b/c;->z:Ljava/io/Closeable;

    return-void
.end method

.method private a(J)Z
    .registers 9

    iget-object v0, p0, Lcom/c/b/c;->n:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    cmp-long v0, v4, p1

    if-lez v0, :cond_16

    iget p1, p0, Lcom/c/b/c;->r:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_16

    return p2

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method private b(I)Lcom/c/b/c;
    .registers 2

    iput p1, p0, Lcom/c/b/c;->i:I

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/c/b/c;
    .registers 2

    iput-object p1, p0, Lcom/c/b/c;->w:Ljava/lang/String;

    return-object p0
.end method

.method private c()Lcom/c/b/c;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/b/c;->v:Z

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/c/b/c;
    .registers 2

    iput-object p1, p0, Lcom/c/b/c;->j:Ljava/lang/String;

    return-object p0
.end method

.method private d()Lcom/c/b/c;
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/c/b/c;->s:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/c/b/c;->q:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/b/c;->t:Z

    invoke-virtual {p0}, Lcom/c/b/c;->b()V

    return-object p0
.end method

.method private d(Ljava/lang/String;)Lcom/c/b/c;
    .registers 2

    iput-object p1, p0, Lcom/c/b/c;->k:Ljava/lang/String;

    return-object p0
.end method

.method private e()Lcom/c/b/c;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/b/c;->u:Z

    return-object p0
.end method

.method private f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/c/b/c;->t:Z

    return v0
.end method

.method private g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/c/b/c;->v:Z

    return v0
.end method

.method private h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/c/b/c;->u:Z

    return v0
.end method

.method private i()I
    .registers 2

    iget v0, p0, Lcom/c/b/c;->i:I

    return v0
.end method

.method private j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/b/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/b/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method private l()[B
    .registers 2

    iget-object v0, p0, Lcom/c/b/c;->l:[B

    return-object v0
.end method

.method private m()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/c/b/c;->m:Ljava/io/File;

    return-object v0
.end method

.method private n()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/c/b/c;->n:Ljava/util/Date;

    return-object v0
.end method

.method private o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/c/b/c;->o:Z

    return v0
.end method

.method private p()Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 2

    iget-object v0, p0, Lcom/c/b/c;->p:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method private q()J
    .registers 3

    iget-wide v0, p0, Lcom/c/b/c;->q:J

    return-wide v0
.end method

.method private r()I
    .registers 2

    iget v0, p0, Lcom/c/b/c;->r:I

    return v0
.end method

.method private s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/b/c;->w:Ljava/lang/String;

    return-object v0
.end method

.method private t()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b/c;->x:Lorg/apache/http/protocol/HttpContext;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/c/b/c;->x:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/CookieStore;

    if-nez v0, :cond_1a

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1a
    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private u()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b/c;->y:[Lorg/apache/http/Header;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/c/b/c;->y:[Lorg/apache/http/Header;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/c/b/c;
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/c/b/c;->s:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/c/b/c;->q:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/b/c;->t:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/b/c;->v:Z

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/c/b/c;->y:[Lorg/apache/http/Header;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget-object v2, p0, Lcom/c/b/c;->y:[Lorg/apache/http/Header;

    array-length v2, v2

    if-lt v0, v2, :cond_d

    return-object v1

    :cond_d
    iget-object v2, p0, Lcom/c/b/c;->y:[Lorg/apache/http/Header;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object p1, p0, Lcom/c/b/c;->y:[Lorg/apache/http/Header;

    aget-object p1, p1, v0

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/c/b/c;->z:Ljava/io/Closeable;

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/b/c;->z:Ljava/io/Closeable;

    return-void
.end method
