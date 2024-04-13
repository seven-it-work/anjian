.class public final Lcom/google/a/b/a/w;
.super Lcom/google/a/b/a/q;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/google/a/b/a/r;->SMS$3fc7421e:I

    invoke-direct {p0, v0}, Lcom/google/a/b/a/q;-><init>(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/google/a/b/a/w;->a:[Ljava/lang/String;

    const/4 p1, 0x0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/a/w;->b:[Ljava/lang/String;

    iput-object p1, p0, Lcom/google/a/b/a/w;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/a/b/a/w;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget v0, Lcom/google/a/b/a/r;->SMS$3fc7421e:I

    invoke-direct {p0, v0}, Lcom/google/a/b/a/q;-><init>(I)V

    iput-object p1, p0, Lcom/google/a/b/a/w;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/google/a/b/a/w;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/a/b/a/w;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/a/b/a/w;->d:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_e
    iget-object v5, p0, Lcom/google/a/b/a/w;->a:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_3c

    if-eqz v4, :cond_17

    const/4 v4, 0x0

    goto :goto_1c

    :cond_17
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1c
    iget-object v5, p0, Lcom/google/a/b/a/w;->a:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/a/b/a/w;->b:[Ljava/lang/String;

    if-eqz v5, :cond_39

    iget-object v5, p0, Lcom/google/a/b/a/w;->b:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_39

    const-string v5, ";via="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/a/b/a/w;->b:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_3c
    iget-object v3, p0, Lcom/google/a/b/a/w;->d:Ljava/lang/String;

    if-eqz v3, :cond_42

    const/4 v3, 0x1

    goto :goto_43

    :cond_42
    const/4 v3, 0x0

    :goto_43
    iget-object v4, p0, Lcom/google/a/b/a/w;->c:Ljava/lang/String;

    if-eqz v4, :cond_48

    const/4 v1, 0x1

    :cond_48
    if-nez v3, :cond_4c

    if-eqz v1, :cond_70

    :cond_4c
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5d

    const-string v2, "body="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/a/b/a/w;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5d
    if-eqz v1, :cond_70

    if-eqz v3, :cond_66

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_66
    const-string v1, "subject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/a/b/a/w;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/w;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private d()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/w;->b:[Ljava/lang/String;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/w;->c:Ljava/lang/String;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/w;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/a/b/a/w;->a:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/w;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/w;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/w;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/w;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/w;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
