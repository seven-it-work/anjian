.class public Lcom/bumptech/glide/load/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/g;


# static fields
.field private static final e:Ljava/lang/String; = "@#&=*+-_.,:!?()/~\'%;$"


# instance fields
.field public final c:Lcom/bumptech/glide/load/c/h;

.field public d:Ljava/net/URL;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final f:Ljava/net/URL;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private volatile i:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/bumptech/glide/load/c/h;->b:Lcom/bumptech/glide/load/c/h;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/c/g;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/c/h;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/c/h;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/c/g;->f:Ljava/net/URL;

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/c/g;->g:Ljava/lang/String;

    const-string p1, "Argument must not be null"

    invoke-static {p2, p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/c/h;

    iput-object p1, p0, Lcom/bumptech/glide/load/c/g;->c:Lcom/bumptech/glide/load/c/h;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 3

    sget-object v0, Lcom/bumptech/glide/load/c/h;->b:Lcom/bumptech/glide/load/c/h;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/c/g;-><init>(Ljava/net/URL;Lcom/bumptech/glide/load/c/h;)V

    return-void
.end method

.method private constructor <init>(Ljava/net/URL;Lcom/bumptech/glide/load/c/h;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URL;

    iput-object p1, p0, Lcom/bumptech/glide/load/c/g;->f:Ljava/net/URL;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/load/c/g;->g:Ljava/lang/String;

    const-string p1, "Argument must not be null"

    invoke-static {p2, p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/c/h;

    iput-object p1, p0, Lcom/bumptech/glide/load/c/g;->c:Lcom/bumptech/glide/load/c/h;

    return-void
.end method

.method private b()Ljava/net/URL;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/c/g;->d:Ljava/net/URL;

    if-nez v0, :cond_f

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/c/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/c/g;->d:Ljava/net/URL;

    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/load/c/g;->d:Ljava/net/URL;

    return-object v0
.end method

.method private c()Ljava/net/URL;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/c/g;->d:Ljava/net/URL;

    if-nez v0, :cond_f

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/c/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/c/g;->d:Ljava/net/URL;

    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/load/c/g;->d:Ljava/net/URL;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/c/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/c/g;->c:Lcom/bumptech/glide/load/c/h;

    invoke-interface {v0}, Lcom/bumptech/glide/load/c/h;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/c/g;->g:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bumptech/glide/load/c/g;->g:Ljava/lang/String;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/load/c/g;->f:Ljava/net/URL;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()[B
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/c/g;->i:[B

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/bumptech/glide/load/c/g;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/c/g;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/c/g;->i:[B

    :cond_10
    iget-object v0, p0, Lcom/bumptech/glide/load/c/g;->i:[B

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/c/g;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/bumptech/glide/load/c/g;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v0, p0, Lcom/bumptech/glide/load/c/g;->f:Ljava/net/URL;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1e
    const-string v1, "@#&=*+-_.,:!?()/~\'%;$"

    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/c/g;->h:Ljava/lang/String;

    :cond_26
    iget-object v0, p0, Lcom/bumptech/glide/load/c/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/security/MessageDigest;)V
    .registers 4
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/c/g;->i:[B

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/bumptech/glide/load/c/g;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/c/g;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/c/g;->i:[B

    :cond_10
    iget-object v0, p0, Lcom/bumptech/glide/load/c/g;->i:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/bumptech/glide/load/c/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    check-cast p1, Lcom/bumptech/glide/load/c/g;

    invoke-direct {p0}, Lcom/bumptech/glide/load/c/g;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1}, Lcom/bumptech/glide/load/c/g;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/bumptech/glide/load/c/g;->c:Lcom/bumptech/glide/load/c/h;

    iget-object p1, p1, Lcom/bumptech/glide/load/c/g;->c:Lcom/bumptech/glide/load/c/h;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/c/g;->j:I

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/bumptech/glide/load/c/g;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/c/g;->j:I

    iget v0, p0, Lcom/bumptech/glide/load/c/g;->j:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/c/g;->c:Lcom/bumptech/glide/load/c/h;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/c/g;->j:I

    :cond_1b
    iget v0, p0, Lcom/bumptech/glide/load/c/g;->j:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/bumptech/glide/load/c/g;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
