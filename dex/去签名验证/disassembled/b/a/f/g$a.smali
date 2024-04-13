.class public final Lb/a/f/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/net/Socket;

.field b:Ljava/lang/String;

.field c:Lc/e;

.field d:Lc/d;

.field public e:Lb/a/f/g$b;

.field f:Lb/a/f/m;

.field g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lb/a/f/g$b;->m:Lb/a/f/g$b;

    iput-object v0, p0, Lb/a/f/g$a;->e:Lb/a/f/g$b;

    sget-object v0, Lb/a/f/m;->a:Lb/a/f/m;

    iput-object v0, p0, Lb/a/f/g$a;->f:Lb/a/f/m;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/f/g$a;->g:Z

    return-void
.end method

.method private a(Lb/a/f/g$b;)Lb/a/f/g$a;
    .registers 2

    iput-object p1, p0, Lb/a/f/g$a;->e:Lb/a/f/g$b;

    return-object p0
.end method

.method private a(Lb/a/f/m;)Lb/a/f/g$a;
    .registers 2

    iput-object p1, p0, Lb/a/f/g$a;->f:Lb/a/f/m;

    return-object p0
.end method

.method private a(Ljava/net/Socket;)Lb/a/f/g$a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lc/p;->b(Ljava/net/Socket;)Lc/y;

    move-result-object v1

    invoke-static {v1}, Lc/p;->a(Lc/y;)Lc/e;

    move-result-object v1

    invoke-static {p1}, Lc/p;->a(Ljava/net/Socket;)Lc/x;

    move-result-object v2

    invoke-static {v2}, Lc/p;->a(Lc/x;)Lc/d;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lb/a/f/g$a;->a(Ljava/net/Socket;Ljava/lang/String;Lc/e;Lc/d;)Lb/a/f/g$a;

    move-result-object p1

    return-object p1
.end method

.method private a()Lb/a/f/g;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lb/a/f/g;

    invoke-direct {v0, p0}, Lb/a/f/g;-><init>(Lb/a/f/g$a;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/net/Socket;Ljava/lang/String;Lc/e;Lc/d;)Lb/a/f/g$a;
    .registers 5

    iput-object p1, p0, Lb/a/f/g$a;->a:Ljava/net/Socket;

    iput-object p2, p0, Lb/a/f/g$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lb/a/f/g$a;->c:Lc/e;

    iput-object p4, p0, Lb/a/f/g$a;->d:Lc/d;

    return-object p0
.end method
