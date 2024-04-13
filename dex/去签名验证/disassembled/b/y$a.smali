.class public final Lb/y$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lc/f;

.field private b:Lb/x;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/y$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/y$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lb/y;->a:Lb/x;

    iput-object v0, p0, Lb/y$a;->b:Lb/x;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/y$a;->c:Ljava/util/List;

    invoke-static {p1}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object p1

    iput-object p1, p0, Lb/y$a;->a:Lc/f;

    return-void
.end method

.method private a(Lb/ad;)Lb/y$a;
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lb/y$b;->a(Lb/u;Lb/ad;)Lb/y$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/y$a;->a(Lb/y$b;)Lb/y$a;

    move-result-object p1

    return-object p1
.end method

.method private a(Lb/u;Lb/ad;)Lb/y$a;
    .registers 3
    .param p1    # Lb/u;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lb/y$b;->a(Lb/u;Lb/ad;)Lb/y$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/y$a;->a(Lb/y$b;)Lb/y$a;

    move-result-object p1

    return-object p1
.end method

.method private a(Lb/x;)Lb/y$a;
    .registers 5

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object v0, p1, Lb/x;->a:Ljava/lang/String;

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "multipart != "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    iput-object p1, p0, Lb/y$a;->b:Lb/x;

    return-object p0
.end method

.method private a(Lb/y$b;)Lb/y$a;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "part == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object v0, p0, Lb/y$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lb/y$a;
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lb/ad;->create(Lb/x;Ljava/lang/String;)Lb/ad;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lb/y$b;->a(Ljava/lang/String;Ljava/lang/String;Lb/ad;)Lb/y$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/y$a;->a(Lb/y$b;)Lb/y$a;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lb/ad;)Lb/y$a;
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2, p3}, Lb/y$b;->a(Ljava/lang/String;Ljava/lang/String;Lb/ad;)Lb/y$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/y$a;->a(Lb/y$b;)Lb/y$a;

    move-result-object p1

    return-object p1
.end method

.method private a()Lb/y;
    .registers 5

    iget-object v0, p0, Lb/y$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lb/y;

    iget-object v1, p0, Lb/y$a;->a:Lc/f;

    iget-object v2, p0, Lb/y$a;->b:Lb/x;

    iget-object v3, p0, Lb/y$a;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lb/y;-><init>(Lc/f;Lb/x;Ljava/util/List;)V

    return-object v0
.end method
