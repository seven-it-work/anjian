.class public final Lcom/b/a/a/e/r;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/net/Socket;

.field b:Ljava/lang/String;

.field c:Lcom/b/b/h;

.field d:Lcom/b/b/g;

.field e:Lcom/b/a/a/e/s;

.field f:Lcom/b/a/a/e/aj;

.field g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/b/a/a/e/s;->f:Lcom/b/a/a/e/s;

    iput-object v0, p0, Lcom/b/a/a/e/r;->e:Lcom/b/a/a/e/s;

    sget-object v0, Lcom/b/a/a/e/aj;->a:Lcom/b/a/a/e/aj;

    iput-object v0, p0, Lcom/b/a/a/e/r;->f:Lcom/b/a/a/e/aj;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/e/r;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/a/e/j;
    .registers 2

    new-instance v0, Lcom/b/a/a/e/j;

    invoke-direct {v0, p0}, Lcom/b/a/a/e/j;-><init>(Lcom/b/a/a/e/r;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/a/e/s;)Lcom/b/a/a/e/r;
    .registers 2

    iput-object p1, p0, Lcom/b/a/a/e/r;->e:Lcom/b/a/a/e/s;

    return-object p0
.end method

.method public final a(Ljava/net/Socket;Ljava/lang/String;Lcom/b/b/h;Lcom/b/b/g;)Lcom/b/a/a/e/r;
    .registers 5

    iput-object p1, p0, Lcom/b/a/a/e/r;->a:Ljava/net/Socket;

    iput-object p2, p0, Lcom/b/a/a/e/r;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/b/a/a/e/r;->c:Lcom/b/b/h;

    iput-object p4, p0, Lcom/b/a/a/e/r;->d:Lcom/b/b/g;

    return-object p0
.end method
