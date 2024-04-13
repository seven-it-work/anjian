.class public final Lcom/b/a/a/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/a/c/c;


# static fields
.field private static final b:Lcom/b/b/i;

.field private static final c:Lcom/b/b/i;

.field private static final d:Lcom/b/b/i;

.field private static final e:Lcom/b/b/i;

.field private static final f:Lcom/b/b/i;

.field private static final g:Lcom/b/b/i;

.field private static final h:Lcom/b/b/i;

.field private static final i:Lcom/b/b/i;

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/b/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/b/a/a/b/g;

.field private final l:Lcom/b/a/ai;

.field private final m:Lcom/b/a/a/e/j;

.field private n:Lcom/b/a/a/e/ab;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-string v0, "connection"

    invoke-static {v0}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/h;->b:Lcom/b/b/i;

    const-string v0, "host"

    invoke-static {v0}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/h;->c:Lcom/b/b/i;

    const-string v0, "keep-alive"

    invoke-static {v0}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/h;->d:Lcom/b/b/i;

    const-string v0, "proxy-connection"

    invoke-static {v0}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/h;->e:Lcom/b/b/i;

    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/h;->f:Lcom/b/b/i;

    const-string v0, "te"

    invoke-static {v0}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/h;->g:Lcom/b/b/i;

    const-string v0, "encoding"

    invoke-static {v0}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/h;->h:Lcom/b/b/i;

    const-string v0, "upgrade"

    invoke-static {v0}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/h;->i:Lcom/b/b/i;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/b/b/i;

    sget-object v1, Lcom/b/a/a/e/h;->b:Lcom/b/b/i;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/a/e/h;->c:Lcom/b/b/i;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/a/e/h;->d:Lcom/b/b/i;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/a/e/h;->e:Lcom/b/b/i;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/b/a/a/e/h;->g:Lcom/b/b/i;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lcom/b/a/a/e/h;->f:Lcom/b/b/i;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/a/e/h;->h:Lcom/b/b/i;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sget-object v1, Lcom/b/a/a/e/h;->i:Lcom/b/b/i;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    sget-object v1, Lcom/b/a/a/e/c;->c:Lcom/b/b/i;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sget-object v1, Lcom/b/a/a/e/c;->d:Lcom/b/b/i;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    sget-object v1, Lcom/b/a/a/e/c;->e:Lcom/b/b/i;

    const/16 v11, 0xa

    aput-object v1, v0, v11

    sget-object v1, Lcom/b/a/a/e/c;->f:Lcom/b/b/i;

    const/16 v11, 0xb

    aput-object v1, v0, v11

    invoke-static {v0}, Lcom/b/a/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/h;->j:Ljava/util/List;

    new-array v0, v10, [Lcom/b/b/i;

    sget-object v1, Lcom/b/a/a/e/h;->b:Lcom/b/b/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/a/e/h;->c:Lcom/b/b/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/a/e/h;->d:Lcom/b/b/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/a/e/h;->e:Lcom/b/b/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/b/a/a/e/h;->g:Lcom/b/b/i;

    aput-object v1, v0, v6

    sget-object v1, Lcom/b/a/a/e/h;->f:Lcom/b/b/i;

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/a/e/h;->h:Lcom/b/b/i;

    aput-object v1, v0, v8

    sget-object v1, Lcom/b/a/a/e/h;->i:Lcom/b/b/i;

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/b/a/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/h;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/b/a/ai;Lcom/b/a/a/b/g;Lcom/b/a/a/e/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/e/h;->l:Lcom/b/a/ai;

    iput-object p2, p0, Lcom/b/a/a/e/h;->a:Lcom/b/a/a/b/g;

    iput-object p3, p0, Lcom/b/a/a/e/h;->m:Lcom/b/a/a/e/j;

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/b/a/at;
    .registers 11

    iget-object v0, p0, Lcom/b/a/a/e/h;->n:Lcom/b/a/a/e/ab;

    invoke-virtual {v0}, Lcom/b/a/a/e/ab;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/b/a/ab;

    invoke-direct {v1}, Lcom/b/a/ab;-><init>()V

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

    check-cast v7, Lcom/b/a/a/e/c;

    if-nez v7, :cond_2d

    if-eqz v1, :cond_61

    iget v7, v1, Lcom/b/a/a/c/l;->b:I

    if-ne v7, v6, :cond_61

    new-instance v1, Lcom/b/a/ab;

    invoke-direct {v1}, Lcom/b/a/ab;-><init>()V

    move-object v5, v1

    move-object v1, v3

    goto :goto_61

    :cond_2d
    iget-object v6, v7, Lcom/b/a/a/e/c;->g:Lcom/b/b/i;

    iget-object v7, v7, Lcom/b/a/a/e/c;->h:Lcom/b/b/i;

    invoke-virtual {v7}, Lcom/b/b/i;->a()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/b/a/a/e/c;->b:Lcom/b/b/i;

    invoke-virtual {v6, v8}, Lcom/b/b/i;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "HTTP/1.1 "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/a/c/l;->a(Ljava/lang/String;)Lcom/b/a/a/c/l;

    move-result-object v1

    goto :goto_61

    :cond_50
    sget-object v8, Lcom/b/a/a/e/h;->k:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_61

    sget-object v8, Lcom/b/a/a/a;->a:Lcom/b/a/a/a;

    invoke-virtual {v6}, Lcom/b/b/i;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6, v7}, Lcom/b/a/a/a;->a(Lcom/b/a/ab;Ljava/lang/String;Ljava/lang/String;)V

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
    new-instance v0, Lcom/b/a/at;

    invoke-direct {v0}, Lcom/b/a/at;-><init>()V

    sget-object v2, Lcom/b/a/al;->d:Lcom/b/a/al;

    invoke-virtual {v0, v2}, Lcom/b/a/at;->a(Lcom/b/a/al;)Lcom/b/a/at;

    move-result-object v0

    iget v2, v1, Lcom/b/a/a/c/l;->b:I

    invoke-virtual {v0, v2}, Lcom/b/a/at;->a(I)Lcom/b/a/at;

    move-result-object v0

    iget-object v1, v1, Lcom/b/a/a/c/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/a/at;->a(Ljava/lang/String;)Lcom/b/a/at;

    move-result-object v0

    invoke-virtual {v5}, Lcom/b/a/ab;->a()Lcom/b/a/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/at;->a(Lcom/b/a/aa;)Lcom/b/a/at;

    move-result-object v0

    if-eqz p1, :cond_98

    sget-object p1, Lcom/b/a/a/a;->a:Lcom/b/a/a/a;

    invoke-virtual {p1, v0}, Lcom/b/a/a/a;->a(Lcom/b/a/at;)I

    move-result p1

    if-ne p1, v6, :cond_98

    return-object v3

    :cond_98
    return-object v0
.end method

.method public final a(Lcom/b/a/as;)Lcom/b/a/au;
    .registers 4

    new-instance v0, Lcom/b/a/a/e/i;

    iget-object v1, p0, Lcom/b/a/a/e/h;->n:Lcom/b/a/a/e/ab;

    invoke-virtual {v1}, Lcom/b/a/a/e/ab;->d()Lcom/b/b/x;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/a/e/i;-><init>(Lcom/b/a/a/e/h;Lcom/b/b/x;)V

    new-instance v1, Lcom/b/a/a/c/i;

    invoke-virtual {p1}, Lcom/b/a/as;->d()Lcom/b/a/aa;

    move-result-object p1

    invoke-static {v0}, Lcom/b/b/n;->a(Lcom/b/b/x;)Lcom/b/b/h;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/b/a/a/c/i;-><init>(Lcom/b/a/aa;Lcom/b/b/h;)V

    return-object v1
.end method

.method public final a(Lcom/b/a/ao;J)Lcom/b/b/w;
    .registers 4

    iget-object p1, p0, Lcom/b/a/a/e/h;->n:Lcom/b/a/a/e/ab;

    invoke-virtual {p1}, Lcom/b/a/a/e/ab;->e()Lcom/b/b/w;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/e/h;->m:Lcom/b/a/a/e/j;

    iget-object v0, v0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    invoke-virtual {v0}, Lcom/b/a/a/e/af;->b()V

    return-void
.end method

.method public final a(Lcom/b/a/ao;)V
    .registers 9

    iget-object v0, p0, Lcom/b/a/a/e/h;->n:Lcom/b/a/a/e/ab;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/b/a/ao;->d()Lcom/b/a/aq;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p1}, Lcom/b/a/ao;->c()Lcom/b/a/aa;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/b/a/aa;->a()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Lcom/b/a/a/e/c;

    sget-object v5, Lcom/b/a/a/e/c;->c:Lcom/b/b/i;

    invoke-virtual {p1}, Lcom/b/a/ao;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/b/a/a/e/c;-><init>(Lcom/b/b/i;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/b/a/a/e/c;

    sget-object v5, Lcom/b/a/a/e/c;->d:Lcom/b/b/i;

    invoke-virtual {p1}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v6

    invoke-static {v6}, Lcom/b/a/a/c/j;->a(Lcom/b/a/ac;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/b/a/a/e/c;-><init>(Lcom/b/b/i;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "Host"

    invoke-virtual {p1, v4}, Lcom/b/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_50

    new-instance v5, Lcom/b/a/a/e/c;

    sget-object v6, Lcom/b/a/a/e/c;->f:Lcom/b/b/i;

    invoke-direct {v5, v6, v4}, Lcom/b/a/a/e/c;-><init>(Lcom/b/b/i;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_50
    new-instance v4, Lcom/b/a/a/e/c;

    sget-object v5, Lcom/b/a/a/e/c;->e:Lcom/b/b/i;

    invoke-virtual {p1}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/ac;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Lcom/b/a/a/e/c;-><init>(Lcom/b/b/i;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/b/a/aa;->a()I

    move-result p1

    :goto_66
    if-ge v1, p1, :cond_8d

    invoke-virtual {v2, v1}, Lcom/b/a/aa;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v4

    sget-object v5, Lcom/b/a/a/e/h;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8a

    new-instance v5, Lcom/b/a/a/e/c;

    invoke-virtual {v2, v1}, Lcom/b/a/aa;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/b/a/a/e/c;-><init>(Lcom/b/b/i;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_8d
    iget-object p1, p0, Lcom/b/a/a/e/h;->m:Lcom/b/a/a/e/j;

    invoke-virtual {p1, v3, v0}, Lcom/b/a/a/e/j;->a(Ljava/util/List;Z)Lcom/b/a/a/e/ab;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/a/e/h;->n:Lcom/b/a/a/e/ab;

    iget-object p1, p0, Lcom/b/a/a/e/h;->n:Lcom/b/a/a/e/ab;

    iget-object p1, p1, Lcom/b/a/a/e/ab;->f:Lcom/b/a/a/e/ae;

    iget-object v0, p0, Lcom/b/a/a/e/h;->l:Lcom/b/a/ai;

    invoke-virtual {v0}, Lcom/b/a/ai;->b()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/b/y;->a(JLjava/util/concurrent/TimeUnit;)Lcom/b/b/y;

    iget-object p1, p0, Lcom/b/a/a/e/h;->n:Lcom/b/a/a/e/ab;

    iget-object p1, p1, Lcom/b/a/a/e/ab;->g:Lcom/b/a/a/e/ae;

    iget-object v0, p0, Lcom/b/a/a/e/h;->l:Lcom/b/a/ai;

    invoke-virtual {v0}, Lcom/b/a/ai;->c()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/b/y;->a(JLjava/util/concurrent/TimeUnit;)Lcom/b/b/y;

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/e/h;->n:Lcom/b/a/a/e/ab;

    invoke-virtual {v0}, Lcom/b/a/a/e/ab;->e()Lcom/b/b/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/b/w;->close()V

    return-void
.end method
