.class public final Lcom/bumptech/glide/load/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final e:Lcom/bumptech/glide/load/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/i$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:Lcom/bumptech/glide/load/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/i$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/String;

.field volatile d:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/load/i$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/i$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/i;->e:Lcom/bumptech/glide/load/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/i$a;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/i$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/bumptech/glide/load/i$a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/i;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/bumptech/glide/load/i;->a:Ljava/lang/Object;

    const-string p1, "Argument must not be null"

    invoke-static {p3, p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/i$a;

    iput-object p1, p0, Lcom/bumptech/glide/load/i;->b:Lcom/bumptech/glide/load/i$a;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bumptech/glide/load/i;
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/load/i<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/i;

    sget-object v1, Lcom/bumptech/glide/load/i;->e:Lcom/bumptech/glide/load/i$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/bumptech/glide/load/i;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/i$a;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/bumptech/glide/load/i$a;)Lcom/bumptech/glide/load/i;
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/load/i$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/i$a<",
            "TT;>;)",
            "Lcom/bumptech/glide/load/i<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/bumptech/glide/load/i;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/i$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/bumptech/glide/load/i<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/i;

    sget-object v1, Lcom/bumptech/glide/load/i;->e:Lcom/bumptech/glide/load/i$a;

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/load/i;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/i$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/i$a;)Lcom/bumptech/glide/load/i;
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/bumptech/glide/load/i$a<",
            "TT;>;)",
            "Lcom/bumptech/glide/load/i<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/i;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/i$a;)V

    return-object v0
.end method

.method private a()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/i;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/i;->b:Lcom/bumptech/glide/load/i$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/i;->d:[B

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/bumptech/glide/load/i;->c:Ljava/lang/String;

    sget-object v2, Lcom/bumptech/glide/load/g;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/i;->d:[B

    :cond_10
    iget-object v1, p0, Lcom/bumptech/glide/load/i;->d:[B

    invoke-interface {v0, v1, p1, p2}, Lcom/bumptech/glide/load/i$a;->a([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method

.method private b()[B
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/i;->d:[B

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/load/i;->c:Ljava/lang/String;

    sget-object v1, Lcom/bumptech/glide/load/g;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/i;->d:[B

    :cond_e
    iget-object v0, p0, Lcom/bumptech/glide/load/i;->d:[B

    return-object v0
.end method

.method private static c()Lcom/bumptech/glide/load/i$a;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/i$a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/i;->e:Lcom/bumptech/glide/load/i$a;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/bumptech/glide/load/i;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/bumptech/glide/load/i;

    iget-object v0, p0, Lcom/bumptech/glide/load/i;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/bumptech/glide/load/i;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/i;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Option{key=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
