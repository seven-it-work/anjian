.class public final Lcom/google/a/b/a/p;
.super Lcom/google/a/b/a/u;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/b/a/u;-><init>()V

    return-void
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/o;
    .registers 4

    iget-object v0, p0, Lcom/google/a/r;->e:Lcom/google/a/a;

    sget-object v1, Lcom/google/a/a;->EAN_13:Lcom/google/a/a;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return-object v2

    :cond_8
    invoke-static {p0}, Lcom/google/a/b/a/p;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_15

    return-object v2

    :cond_15
    const-string v0, "978"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "979"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    return-object v2

    :cond_26
    new-instance v0, Lcom/google/a/b/a/o;

    invoke-direct {v0, p0}, Lcom/google/a/b/a/o;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .registers 5

    iget-object v0, p1, Lcom/google/a/r;->e:Lcom/google/a/a;

    sget-object v1, Lcom/google/a/a;->EAN_13:Lcom/google/a/a;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return-object v2

    :cond_8
    invoke-static {p1}, Lcom/google/a/b/a/p;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_15

    return-object v2

    :cond_15
    const-string v0, "978"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "979"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    return-object v2

    :cond_26
    new-instance v0, Lcom/google/a/b/a/o;

    invoke-direct {v0, p1}, Lcom/google/a/b/a/o;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
