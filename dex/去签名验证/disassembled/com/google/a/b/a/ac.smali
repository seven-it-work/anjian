.class public final Lcom/google/a/b/a/ac;
.super Lcom/google/a/b/a/q;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ":/*([^/@]+)@[^/]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/ac;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/google/a/b/a/r;->URI$3fc7421e:I

    invoke-direct {p0, v0}, Lcom/google/a/b/a/q;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_26

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2f

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1f
    sub-int/2addr v1, v0

    invoke-static {p1, v0, v1}, Lcom/google/a/b/a/u;->a(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_26
    const-string v0, "http://"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_30
    iput-object p1, p0, Lcom/google/a/b/a/ac;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/a/b/a/ac;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_21

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1a
    sub-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Lcom/google/a/b/a/u;->a(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_21
    const-string v0, "http://"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2b
    return-object p0
.end method

.method private static a(Ljava/lang/String;I)Z
    .registers 3

    add-int/lit8 p1, p1, 0x1

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_e
    sub-int/2addr v0, p1

    invoke-static {p0, p1, v0}, Lcom/google/a/b/a/u;->a(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method private b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/ac;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d()Z
    .registers 3

    sget-object v0, Lcom/google/a/b/a/ac;->a:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/a/b/a/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/a/b/a/ac;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/ac;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/ac;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/ac;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
