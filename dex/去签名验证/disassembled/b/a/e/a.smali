.class public final Lb/a/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/d/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/e/a$f;,
        Lb/a/e/a$c;,
        Lb/a/e/a$e;,
        Lb/a/e/a$a;,
        Lb/a/e/a$b;,
        Lb/a/e/a$d;
    }
.end annotation


# static fields
.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3

.field private static final k:I = 0x4

.field private static final l:I = 0x5

.field private static final m:I = 0x6


# instance fields
.field final b:Lb/z;

.field final c:Lb/a/c/g;

.field final d:Lc/e;

.field final e:Lc/d;

.field f:I


# direct methods
.method public constructor <init>(Lb/z;Lb/a/c/g;Lc/e;Lc/d;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/a/e/a;->f:I

    iput-object p1, p0, Lb/a/e/a;->b:Lb/z;

    iput-object p2, p0, Lb/a/e/a;->c:Lb/a/c/g;

    iput-object p3, p0, Lb/a/e/a;->d:Lc/e;

    iput-object p4, p0, Lb/a/e/a;->e:Lc/d;

    return-void
.end method

.method private a(Lb/v;)Lc/y;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/e/a;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lb/a/e/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    const/4 v0, 0x5

    iput v0, p0, Lb/a/e/a;->f:I

    new-instance v0, Lb/a/e/a$c;

    invoke-direct {v0, p0, p1}, Lb/a/e/a$c;-><init>(Lb/a/e/a;Lb/v;)V

    return-object v0
.end method

.method static a(Lc/j;)V
    .registers 3

    iget-object v0, p0, Lc/j;->a:Lc/z;

    sget-object v1, Lc/z;->c:Lc/z;

    if-nez v1, :cond_e

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    iput-object v1, p0, Lc/j;->a:Lc/z;

    invoke-virtual {v0}, Lc/z;->n_()Lc/z;

    invoke-virtual {v0}, Lc/z;->d()Lc/z;

    return-void
.end method

.method private b(J)Lc/x;
    .registers 5

    iget v0, p0, Lb/a/e/a;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lb/a/e/a;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    const/4 v0, 0x2

    iput v0, p0, Lb/a/e/a;->f:I

    new-instance v0, Lb/a/e/a$d;

    invoke-direct {v0, p0, p1, p2}, Lb/a/e/a$d;-><init>(Lb/a/e/a;J)V

    return-object v0
.end method

.method private b(Lb/ae;)Lc/y;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lb/a/d/e;->d(Lb/ae;)Z

    move-result v0

    if-nez v0, :cond_d

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lb/a/e/a;->a(J)Lc/y;

    move-result-object p1

    return-object p1

    :cond_d
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lb/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eqz v0, :cond_43

    iget-object p1, p1, Lb/ae;->a:Lb/ac;

    iget-object p1, p1, Lb/ac;->a:Lb/v;

    iget v0, p0, Lb/a/e/a;->f:I

    if-eq v0, v2, :cond_3b

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lb/a/e/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    iput v1, p0, Lb/a/e/a;->f:I

    new-instance v0, Lb/a/e/a$c;

    invoke-direct {v0, p0, p1}, Lb/a/e/a$c;-><init>(Lb/a/e/a;Lb/v;)V

    return-object v0

    :cond_43
    invoke-static {p1}, Lb/a/d/e;->a(Lb/ae;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_52

    invoke-virtual {p0, v3, v4}, Lb/a/e/a;->a(J)Lc/y;

    move-result-object p1

    return-object p1

    :cond_52
    iget p1, p0, Lb/a/e/a;->f:I

    if-eq p1, v2, :cond_6c

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lb/a/e/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6c
    iget-object p1, p0, Lb/a/e/a;->c:Lb/a/c/g;

    if-nez p1, :cond_78

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "streamAllocation == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_78
    iput v1, p0, Lb/a/e/a;->f:I

    iget-object p1, p0, Lb/a/e/a;->c:Lb/a/c/g;

    invoke-virtual {p1}, Lb/a/c/g;->d()V

    new-instance p1, Lb/a/e/a$f;

    invoke-direct {p1, p0}, Lb/a/e/a$f;-><init>(Lb/a/e/a;)V

    return-object p1
.end method

.method private e()Z
    .registers 3

    iget v0, p0, Lb/a/e/a;->f:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method private f()Lc/x;
    .registers 4

    iget v0, p0, Lb/a/e/a;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lb/a/e/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    const/4 v0, 0x2

    iput v0, p0, Lb/a/e/a;->f:I

    new-instance v0, Lb/a/e/a$b;

    invoke-direct {v0, p0}, Lb/a/e/a$b;-><init>(Lb/a/e/a;)V

    return-object v0
.end method

.method private g()Lc/y;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/e/a;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lb/a/e/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget-object v0, p0, Lb/a/e/a;->c:Lb/a/c/g;

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    const/4 v0, 0x5

    iput v0, p0, Lb/a/e/a;->f:I

    iget-object v0, p0, Lb/a/e/a;->c:Lb/a/c/g;

    invoke-virtual {v0}, Lb/a/c/g;->d()V

    new-instance v0, Lb/a/e/a$f;

    invoke-direct {v0, p0}, Lb/a/e/a$f;-><init>(Lb/a/e/a;)V

    return-object v0
.end method


# virtual methods
.method public final a(Z)Lb/ae$a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/e/a;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    iget v0, p0, Lb/a/e/a;->f:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lb/a/e/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    :try_start_20
    iget-object v0, p0, Lb/a/e/a;->d:Lc/e;

    invoke-interface {v0}, Lc/e;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/d/k;->a(Ljava/lang/String;)Lb/a/d/k;

    move-result-object v0

    new-instance v1, Lb/ae$a;

    invoke-direct {v1}, Lb/ae$a;-><init>()V

    iget-object v2, v0, Lb/a/d/k;->d:Lb/aa;

    iput-object v2, v1, Lb/ae$a;->b:Lb/aa;

    iget v2, v0, Lb/a/d/k;->e:I

    iput v2, v1, Lb/ae$a;->c:I

    iget-object v2, v0, Lb/a/d/k;->f:Ljava/lang/String;

    iput-object v2, v1, Lb/ae$a;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lb/a/e/a;->d()Lb/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/ae$a;->a(Lb/u;)Lb/ae$a;

    move-result-object v1

    if-eqz p1, :cond_4d

    iget p1, v0, Lb/a/d/k;->e:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_4d

    const/4 p1, 0x0

    return-object p1

    :cond_4d
    const/4 p1, 0x4

    iput p1, p0, Lb/a/e/a;->f:I
    :try_end_50
    .catch Ljava/io/EOFException; {:try_start_20 .. :try_end_50} :catch_51

    return-object v1

    :catch_51
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected end of stream on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lb/a/e/a;->c:Lb/a/c/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public final a(Lb/ae;)Lb/af;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lb/a/d/e;->d(Lb/ae;)Z

    move-result v0

    if-nez v0, :cond_e

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lb/a/e/a;->a(J)Lc/y;

    move-result-object v0

    goto/16 :goto_86

    :cond_e
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lb/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eqz v0, :cond_45

    iget-object v0, p1, Lb/ae;->a:Lb/ac;

    iget-object v0, v0, Lb/ac;->a:Lb/v;

    iget v3, p0, Lb/a/e/a;->f:I

    if-eq v3, v2, :cond_3c

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lb/a/e/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    iput v1, p0, Lb/a/e/a;->f:I

    new-instance v1, Lb/a/e/a$c;

    invoke-direct {v1, p0, v0}, Lb/a/e/a$c;-><init>(Lb/a/e/a;Lb/v;)V

    move-object v0, v1

    goto :goto_86

    :cond_45
    invoke-static {p1}, Lb/a/d/e;->a(Lb/ae;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_54

    invoke-virtual {p0, v3, v4}, Lb/a/e/a;->a(J)Lc/y;

    move-result-object v0

    goto :goto_86

    :cond_54
    iget v0, p0, Lb/a/e/a;->f:I

    if-eq v0, v2, :cond_6e

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lb/a/e/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    iget-object v0, p0, Lb/a/e/a;->c:Lb/a/c/g;

    if-nez v0, :cond_7a

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "streamAllocation == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7a
    iput v1, p0, Lb/a/e/a;->f:I

    iget-object v0, p0, Lb/a/e/a;->c:Lb/a/c/g;

    invoke-virtual {v0}, Lb/a/c/g;->d()V

    new-instance v0, Lb/a/e/a$f;

    invoke-direct {v0, p0}, Lb/a/e/a$f;-><init>(Lb/a/e/a;)V

    :goto_86
    new-instance v1, Lb/a/d/h;

    iget-object p1, p1, Lb/ae;->f:Lb/u;

    invoke-static {v0}, Lc/p;->a(Lc/y;)Lc/e;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lb/a/d/h;-><init>(Lb/u;Lc/e;)V

    return-object v1
.end method

.method public final a(Lb/ac;J)Lc/x;
    .registers 8

    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lb/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_32

    iget p1, p0, Lb/a/e/a;->f:I

    if-eq p1, v1, :cond_2a

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "state: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lb/a/e/a;->f:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    iput v0, p0, Lb/a/e/a;->f:I

    new-instance p1, Lb/a/e/a$b;

    invoke-direct {p1, p0}, Lb/a/e/a$b;-><init>(Lb/a/e/a;)V

    return-object p1

    :cond_32
    const-wide/16 v2, -0x1

    cmp-long p1, p2, v2

    if-eqz p1, :cond_5a

    iget p1, p0, Lb/a/e/a;->f:I

    if-eq p1, v1, :cond_52

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "state: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lb/a/e/a;->f:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    iput v0, p0, Lb/a/e/a;->f:I

    new-instance p1, Lb/a/e/a$d;

    invoke-direct {p1, p0, p2, p3}, Lb/a/e/a$d;-><init>(Lb/a/e/a;J)V

    return-object p1

    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(J)Lc/y;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/e/a;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lb/a/e/a;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    const/4 v0, 0x5

    iput v0, p0, Lb/a/e/a;->f:I

    new-instance v0, Lb/a/e/a$e;

    invoke-direct {v0, p0, p1, p2}, Lb/a/e/a$e;-><init>(Lb/a/e/a;J)V

    return-object v0
.end method

.method public final a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/e/a;->e:Lc/d;

    invoke-interface {v0}, Lc/d;->flush()V

    return-void
.end method

.method public final a(Lb/ac;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/e/a;->c:Lb/a/c/g;

    invoke-virtual {v0}, Lb/a/c/g;->b()Lb/a/c/c;

    move-result-object v0

    iget-object v0, v0, Lb/a/c/c;->a:Lb/ag;

    iget-object v0, v0, Lb/ag;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lb/ac;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lb/ac;->a:Lb/v;

    invoke-virtual {v2}, Lb/v;->b()Z

    move-result v2

    if-nez v2, :cond_2b

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    if-eqz v0, :cond_34

    iget-object v0, p1, Lb/ac;->a:Lb/v;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_34
    iget-object v0, p1, Lb/ac;->a:Lb/v;

    invoke-static {v0}, Lb/a/d/i;->a(Lb/v;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3d
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lb/ac;->c:Lb/u;

    invoke-virtual {p0, p1, v0}, Lb/a/e/a;->a(Lb/u;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lb/u;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/e/a;->f:I

    if-eqz v0, :cond_1a

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lb/a/e/a;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    iget-object v0, p0, Lb/a/e/a;->e:Lc/d;

    invoke-interface {v0, p2}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    const/4 p2, 0x0

    iget-object v0, p1, Lb/u;->a:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    :goto_2b
    if-ge p2, v0, :cond_4d

    iget-object v1, p0, Lb/a/e/a;->e:Lc/d;

    invoke-virtual {p1, p2}, Lb/u;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v1

    const-string v2, ": "

    invoke-interface {v1, v2}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v1

    invoke-virtual {p1, p2}, Lb/u;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-interface {v1, v2}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2b

    :cond_4d
    iget-object p1, p0, Lb/a/e/a;->e:Lc/d;

    const-string p2, "\r\n"

    invoke-interface {p1, p2}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    const/4 p1, 0x1

    iput p1, p0, Lb/a/e/a;->f:I

    return-void
.end method

.method public final b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/e/a;->e:Lc/d;

    invoke-interface {v0}, Lc/d;->flush()V

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lb/a/e/a;->c:Lb/a/c/g;

    invoke-virtual {v0}, Lb/a/c/g;->b()Lb/a/c/c;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, v0, Lb/a/c/c;->b:Ljava/net/Socket;

    invoke-static {v0}, Lb/a/c;->a(Ljava/net/Socket;)V

    :cond_d
    return-void
.end method

.method public final d()Lb/u;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lb/u$a;

    invoke-direct {v0}, Lb/u$a;-><init>()V

    :goto_5
    iget-object v1, p0, Lb/a/e/a;->d:Lc/e;

    invoke-interface {v1}, Lc/e;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Lb/a/a;->a:Lb/a/a;

    invoke-virtual {v2, v0, v1}, Lb/a/a;->a(Lb/u$a;Ljava/lang/String;)V

    goto :goto_5

    :cond_17
    invoke-virtual {v0}, Lb/u$a;->a()Lb/u;

    move-result-object v0

    return-object v0
.end method
