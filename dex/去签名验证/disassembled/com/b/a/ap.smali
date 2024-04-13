.class public final Lcom/b/a/ap;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/b/a/ac;

.field b:Ljava/lang/String;

.field c:Lcom/b/a/ab;

.field d:Lcom/b/a/aq;

.field e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/b/a/ap;->b:Ljava/lang/String;

    new-instance v0, Lcom/b/a/ab;

    invoke-direct {v0}, Lcom/b/a/ab;-><init>()V

    iput-object v0, p0, Lcom/b/a/ap;->c:Lcom/b/a/ab;

    return-void
.end method

.method constructor <init>(Lcom/b/a/ao;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/b/a/ao;->a:Lcom/b/a/ac;

    iput-object v0, p0, Lcom/b/a/ap;->a:Lcom/b/a/ac;

    iget-object v0, p1, Lcom/b/a/ao;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/ap;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/b/a/ao;->d:Lcom/b/a/aq;

    iput-object v0, p0, Lcom/b/a/ap;->d:Lcom/b/a/aq;

    iget-object v0, p1, Lcom/b/a/ao;->e:Ljava/lang/Object;

    iput-object v0, p0, Lcom/b/a/ap;->e:Ljava/lang/Object;

    iget-object p1, p1, Lcom/b/a/ao;->c:Lcom/b/a/aa;

    invoke-virtual {p1}, Lcom/b/a/aa;->b()Lcom/b/a/ab;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/ap;->c:Lcom/b/a/ab;

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/ao;
    .registers 3

    iget-object v0, p0, Lcom/b/a/ap;->a:Lcom/b/a/ac;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/b/a/ao;

    invoke-direct {v0, p0}, Lcom/b/a/ao;-><init>(Lcom/b/a/ap;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/aa;)Lcom/b/a/ap;
    .registers 2

    invoke-virtual {p1}, Lcom/b/a/aa;->b()Lcom/b/a/ab;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/ap;->c:Lcom/b/a/ab;

    return-object p0
.end method

.method public final a(Lcom/b/a/ac;)Lcom/b/a/ap;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iput-object p1, p0, Lcom/b/a/ap;->a:Lcom/b/a/ac;

    return-object p0
.end method

.method public final a(Lcom/b/a/aq;)Lcom/b/a/ap;
    .registers 3

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/b/a/ap;->a(Ljava/lang/String;Lcom/b/a/aq;)Lcom/b/a/ap;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/b/a/ap;
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
    invoke-static {p1}, Lcom/b/a/ac;->e(Ljava/lang/String;)Lcom/b/a/ac;

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
    invoke-virtual {p0, v0}, Lcom/b/a/ap;->a(Lcom/b/a/ac;)Lcom/b/a/ap;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/b/a/aq;)Lcom/b/a/ap;
    .registers 5

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

    invoke-static {p1}, Lcom/b/a/a/c/g;->b(Ljava/lang/String;)Z

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

    invoke-static {p1}, Lcom/b/a/a/c/g;->a(Ljava/lang/String;)Z

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
    iput-object p1, p0, Lcom/b/a/ap;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/b/a/ap;->d:Lcom/b/a/aq;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ap;
    .registers 4

    iget-object v0, p0, Lcom/b/a/ap;->c:Lcom/b/a/ab;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/ab;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ab;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/b/a/ap;
    .registers 3

    iget-object v0, p0, Lcom/b/a/ap;->c:Lcom/b/a/ab;

    invoke-virtual {v0, p1}, Lcom/b/a/ab;->a(Ljava/lang/String;)Lcom/b/a/ab;

    return-object p0
.end method
