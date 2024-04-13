.class public final Lb/ac$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lb/v;

.field b:Ljava/lang/String;

.field c:Lb/u$a;

.field d:Lb/ad;

.field e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lb/ac$a;->b:Ljava/lang/String;

    new-instance v0, Lb/u$a;

    invoke-direct {v0}, Lb/u$a;-><init>()V

    iput-object v0, p0, Lb/ac$a;->c:Lb/u$a;

    return-void
.end method

.method constructor <init>(Lb/ac;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lb/ac;->a:Lb/v;

    iput-object v0, p0, Lb/ac$a;->a:Lb/v;

    iget-object v0, p1, Lb/ac;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/ac$a;->b:Ljava/lang/String;

    iget-object v0, p1, Lb/ac;->d:Lb/ad;

    iput-object v0, p0, Lb/ac$a;->d:Lb/ad;

    iget-object v0, p1, Lb/ac;->e:Ljava/lang/Object;

    iput-object v0, p0, Lb/ac$a;->e:Ljava/lang/Object;

    iget-object p1, p1, Lb/ac;->c:Lb/u;

    invoke-virtual {p1}, Lb/u;->b()Lb/u$a;

    move-result-object p1

    iput-object p1, p0, Lb/ac$a;->c:Lb/u$a;

    return-void
.end method

.method private a(Lb/ad;)Lb/ac$a;
    .registers 3

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lb/ac$a;->a(Ljava/lang/String;Lb/ad;)Lb/ac$a;

    move-result-object p1

    return-object p1
.end method

.method private a(Lb/d;)Lb/ac$a;
    .registers 3

    invoke-virtual {p1}, Lb/d;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p1, "Cache-Control"

    invoke-virtual {p0, p1}, Lb/ac$a;->b(Ljava/lang/String;)Lb/ac$a;

    move-result-object p1

    return-object p1

    :cond_11
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0, p1}, Lb/ac$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ac$a;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/Object;)Lb/ac$a;
    .registers 2

    iput-object p1, p0, Lb/ac$a;->e:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Ljava/net/URL;)Lb/ac$a;
    .registers 5

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {p1}, Lb/v;->a(Ljava/net/URL;)Lb/v;

    move-result-object v0

    if-nez v0, :cond_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    invoke-virtual {p0, v0}, Lb/ac$a;->a(Lb/v;)Lb/ac$a;

    move-result-object p1

    return-object p1
.end method

.method private b(Lb/ad;)Lb/ac$a;
    .registers 3
    .param p1    # Lb/ad;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lb/ac$a;->a(Ljava/lang/String;Lb/ad;)Lb/ac$a;

    move-result-object p1

    return-object p1
.end method

.method private c(Lb/ad;)Lb/ac$a;
    .registers 3

    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lb/ac$a;->a(Ljava/lang/String;Lb/ad;)Lb/ac$a;

    move-result-object p1

    return-object p1
.end method

.method private d(Lb/ad;)Lb/ac$a;
    .registers 3

    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lb/ac$a;->a(Ljava/lang/String;Lb/ad;)Lb/ac$a;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a()Lb/ac$a;
    .registers 3

    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lb/ac$a;->a(Ljava/lang/String;Lb/ad;)Lb/ac$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lb/u;)Lb/ac$a;
    .registers 2

    invoke-virtual {p1}, Lb/u;->b()Lb/u$a;

    move-result-object p1

    iput-object p1, p0, Lb/ac$a;->c:Lb/u$a;

    return-object p0
.end method

.method public final a(Lb/v;)Lb/ac$a;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iput-object p1, p0, Lb/ac$a;->a:Lb/v;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lb/ac$a;
    .registers 9

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "ws:"

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    :goto_1f
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_41

    :cond_2b
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "wss:"

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    goto :goto_1f

    :cond_41
    :goto_41
    invoke-static {p1}, Lb/v;->d(Ljava/lang/String;)Lb/v;

    move-result-object v0

    if-nez v0, :cond_5b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    invoke-virtual {p0, v0}, Lb/ac$a;->a(Lb/v;)Lb/ac$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lb/ad;)Lb/ac$a;
    .registers 5
    .param p2    # Lb/ad;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    if-eqz p2, :cond_39

    invoke-static {p1}, Lb/a/d/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_39
    if-nez p2, :cond_5a

    invoke-static {p1}, Lb/a/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5a
    iput-object p1, p0, Lb/ac$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lb/ac$a;->d:Lb/ad;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lb/ac$a;
    .registers 4

    iget-object v0, p0, Lb/ac$a;->c:Lb/u$a;

    invoke-virtual {v0, p1, p2}, Lb/u$a;->c(Ljava/lang/String;Ljava/lang/String;)Lb/u$a;

    return-object p0
.end method

.method public final b()Lb/ac$a;
    .registers 3

    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lb/ac$a;->a(Ljava/lang/String;Lb/ad;)Lb/ac$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lb/ac$a;
    .registers 3

    iget-object v0, p0, Lb/ac$a;->c:Lb/u$a;

    invoke-virtual {v0, p1}, Lb/u$a;->b(Ljava/lang/String;)Lb/u$a;

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lb/ac$a;
    .registers 4

    iget-object v0, p0, Lb/ac$a;->c:Lb/u$a;

    invoke-virtual {v0, p1, p2}, Lb/u$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/u$a;

    return-object p0
.end method

.method public final c()Lb/ac$a;
    .registers 3

    sget-object v0, Lb/a/c;->d:Lb/ad;

    const-string v1, "DELETE"

    invoke-virtual {p0, v1, v0}, Lb/ac$a;->a(Ljava/lang/String;Lb/ad;)Lb/ac$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lb/ac;
    .registers 3

    iget-object v0, p0, Lb/ac$a;->a:Lb/v;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lb/ac;

    invoke-direct {v0, p0}, Lb/ac;-><init>(Lb/ac$a;)V

    return-object v0
.end method
