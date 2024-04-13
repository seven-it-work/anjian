.class public abstract Lcom/android/volley/toolbox/o;
.super Lcom/android/volley/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/l<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static final m:Ljava/lang/String; = "utf-8"

.field private static final n:Ljava/lang/String;


# instance fields
.field private final o:Lcom/android/volley/n$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/n$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "application/json; charset=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "utf-8"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/volley/toolbox/o;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/n$b<",
            "TT;>;",
            "Lcom/android/volley/n$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p5}, Lcom/android/volley/l;-><init>(ILjava/lang/String;Lcom/android/volley/n$a;)V

    iput-object p4, p0, Lcom/android/volley/toolbox/o;->o:Lcom/android/volley/n$b;

    iput-object p3, p0, Lcom/android/volley/toolbox/o;->p:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/n$b<",
            "TT;>;",
            "Lcom/android/volley/n$a;",
            ")V"
        }
    .end annotation

    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/o;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/android/volley/i;)Lcom/android/volley/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/i;",
            ")",
            "Lcom/android/volley/n<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected final a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/volley/toolbox/o;->o:Lcom/android/volley/n$b;

    invoke-interface {v0, p1}, Lcom/android/volley/n$b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/volley/toolbox/o;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final d()[B
    .registers 2

    invoke-virtual {p0}, Lcom/android/volley/toolbox/o;->g()[B

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/volley/toolbox/o;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final g()[B
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/volley/toolbox/o;->p:Ljava/lang/String;

    if-nez v1, :cond_6

    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/android/volley/toolbox/o;->p:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_e} :catch_f

    return-object v1

    :catch_f
    const-string v1, "Unsupported Encoding while trying to get the bytes of %s using %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/volley/toolbox/o;->p:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "utf-8"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/volley/t;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
