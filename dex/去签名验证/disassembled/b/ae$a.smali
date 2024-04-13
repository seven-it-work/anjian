.class public final Lb/ae$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lb/ac;

.field public b:Lb/aa;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lb/t;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field f:Lb/u$a;

.field public g:Lb/af;

.field h:Lb/ae;

.field i:Lb/ae;

.field public j:Lb/ae;

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/ae$a;->c:I

    new-instance v0, Lb/u$a;

    invoke-direct {v0}, Lb/u$a;-><init>()V

    iput-object v0, p0, Lb/ae$a;->f:Lb/u$a;

    return-void
.end method

.method constructor <init>(Lb/ae;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/ae$a;->c:I

    iget-object v0, p1, Lb/ae;->a:Lb/ac;

    iput-object v0, p0, Lb/ae$a;->a:Lb/ac;

    iget-object v0, p1, Lb/ae;->b:Lb/aa;

    iput-object v0, p0, Lb/ae$a;->b:Lb/aa;

    iget v0, p1, Lb/ae;->c:I

    iput v0, p0, Lb/ae$a;->c:I

    iget-object v0, p1, Lb/ae;->d:Ljava/lang/String;

    iput-object v0, p0, Lb/ae$a;->d:Ljava/lang/String;

    iget-object v0, p1, Lb/ae;->e:Lb/t;

    iput-object v0, p0, Lb/ae$a;->e:Lb/t;

    iget-object v0, p1, Lb/ae;->f:Lb/u;

    invoke-virtual {v0}, Lb/u;->b()Lb/u$a;

    move-result-object v0

    iput-object v0, p0, Lb/ae$a;->f:Lb/u$a;

    iget-object v0, p1, Lb/ae;->g:Lb/af;

    iput-object v0, p0, Lb/ae$a;->g:Lb/af;

    iget-object v0, p1, Lb/ae;->h:Lb/ae;

    iput-object v0, p0, Lb/ae$a;->h:Lb/ae;

    iget-object v0, p1, Lb/ae;->i:Lb/ae;

    iput-object v0, p0, Lb/ae$a;->i:Lb/ae;

    iget-object v0, p1, Lb/ae;->j:Lb/ae;

    iput-object v0, p0, Lb/ae$a;->j:Lb/ae;

    iget-wide v0, p1, Lb/ae;->k:J

    iput-wide v0, p0, Lb/ae$a;->k:J

    iget-wide v0, p1, Lb/ae;->l:J

    iput-wide v0, p0, Lb/ae$a;->l:J

    return-void
.end method

.method private a(I)Lb/ae$a;
    .registers 2

    iput p1, p0, Lb/ae$a;->c:I

    return-object p0
.end method

.method private a(J)Lb/ae$a;
    .registers 3

    iput-wide p1, p0, Lb/ae$a;->k:J

    return-object p0
.end method

.method private a(Lb/aa;)Lb/ae$a;
    .registers 2

    iput-object p1, p0, Lb/ae$a;->b:Lb/aa;

    return-object p0
.end method

.method private a(Lb/ac;)Lb/ae$a;
    .registers 2

    iput-object p1, p0, Lb/ae$a;->a:Lb/ac;

    return-object p0
.end method

.method private a(Lb/t;)Lb/ae$a;
    .registers 2
    .param p1    # Lb/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lb/ae$a;->e:Lb/t;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lb/ae$a;
    .registers 2

    iput-object p1, p0, Lb/ae$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lb/ae;)V
    .registers 3

    iget-object v0, p1, Lb/ae;->g:Lb/af;

    if-eqz v0, :cond_1b

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".body != null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    iget-object v0, p1, Lb/ae;->h:Lb/ae;

    if-eqz v0, :cond_36

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".networkResponse != null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    iget-object v0, p1, Lb/ae;->i:Lb/ae;

    if-eqz v0, :cond_51

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".cacheResponse != null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_51
    iget-object p1, p1, Lb/ae;->j:Lb/ae;

    if-eqz p1, :cond_6c

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".priorResponse != null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6c
    return-void
.end method

.method private b(J)Lb/ae$a;
    .registers 3

    iput-wide p1, p0, Lb/ae$a;->l:J

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lb/ae$a;
    .registers 3

    iget-object v0, p0, Lb/ae$a;->f:Lb/u$a;

    invoke-virtual {v0, p1}, Lb/u$a;->b(Ljava/lang/String;)Lb/u$a;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lb/ae$a;
    .registers 4

    iget-object v0, p0, Lb/ae$a;->f:Lb/u$a;

    invoke-virtual {v0, p1, p2}, Lb/u$a;->c(Ljava/lang/String;Ljava/lang/String;)Lb/u$a;

    return-object p0
.end method

.method private c(Lb/ae;)Lb/ae$a;
    .registers 3
    .param p1    # Lb/ae;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_e

    iget-object v0, p1, Lb/ae;->g:Lb/af;

    if-eqz v0, :cond_e

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    iput-object p1, p0, Lb/ae$a;->j:Lb/ae;

    return-object p0
.end method

.method private static d(Lb/ae;)V
    .registers 2

    iget-object p0, p0, Lb/ae;->g:Lb/af;

    if-eqz p0, :cond_c

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    return-void
.end method


# virtual methods
.method public final a(Lb/ae;)Lb/ae$a;
    .registers 3
    .param p1    # Lb/ae;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_7

    const-string v0, "networkResponse"

    invoke-static {v0, p1}, Lb/ae$a;->a(Ljava/lang/String;Lb/ae;)V

    :cond_7
    iput-object p1, p0, Lb/ae$a;->h:Lb/ae;

    return-object p0
.end method

.method public final a(Lb/af;)Lb/ae$a;
    .registers 2
    .param p1    # Lb/af;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lb/ae$a;->g:Lb/af;

    return-object p0
.end method

.method public final a(Lb/u;)Lb/ae$a;
    .registers 2

    invoke-virtual {p1}, Lb/u;->b()Lb/u$a;

    move-result-object p1

    iput-object p1, p0, Lb/ae$a;->f:Lb/u$a;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lb/ae$a;
    .registers 4

    iget-object v0, p0, Lb/ae$a;->f:Lb/u$a;

    invoke-virtual {v0, p1, p2}, Lb/u$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/u$a;

    return-object p0
.end method

.method public final a()Lb/ae;
    .registers 4

    iget-object v0, p0, Lb/ae$a;->a:Lb/ac;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lb/ae$a;->b:Lb/aa;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget v0, p0, Lb/ae$a;->c:I

    if-gez v0, :cond_32

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lb/ae$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    iget-object v0, p0, Lb/ae$a;->d:Ljava/lang/String;

    if-nez v0, :cond_3e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    new-instance v0, Lb/ae;

    invoke-direct {v0, p0}, Lb/ae;-><init>(Lb/ae$a;)V

    return-object v0
.end method

.method public final b(Lb/ae;)Lb/ae$a;
    .registers 3
    .param p1    # Lb/ae;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_7

    const-string v0, "cacheResponse"

    invoke-static {v0, p1}, Lb/ae$a;->a(Ljava/lang/String;Lb/ae;)V

    :cond_7
    iput-object p1, p0, Lb/ae$a;->i:Lb/ae;

    return-object p0
.end method
