.class public final Lcom/google/a/b/a/f;
.super Lcom/google/a/b/a/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/b/a/a;-><init>()V

    return-void
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/ac;
    .registers 4

    iget-object p0, p0, Lcom/google/a/r;->a:Ljava/lang/String;

    const-string v0, "MEBKM:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    const-string v0, "TITLE:"

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lcom/google/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "URL:"

    invoke-static {v2, p0}, Lcom/google/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1c

    return-object v1

    :cond_1c
    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/google/a/b/a/ad;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    new-instance v1, Lcom/google/a/b/a/ac;

    invoke-direct {v1, p0, v0}, Lcom/google/a/b/a/ac;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return-object v1
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .registers 4

    iget-object p1, p1, Lcom/google/a/r;->a:Ljava/lang/String;

    const-string v0, "MEBKM:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "TITLE:"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "URL:"

    invoke-static {v1, p1}, Lcom/google/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_28

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/google/a/b/a/ad;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v1, Lcom/google/a/b/a/ac;

    invoke-direct {v1, p1, v0}, Lcom/google/a/b/a/ac;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method
