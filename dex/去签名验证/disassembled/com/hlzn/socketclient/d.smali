.class public Lcom/hlzn/socketclient/d;
.super Ljava/util/Timer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hlzn/socketclient/d$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "d"


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/hlzn/socketclient/d$a;

.field private e:Lcom/hlzn/socketclient/service/SocketService;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/hlzn/socketclient/service/SocketService;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/hlzn/socketclient/d;->e:Lcom/hlzn/socketclient/service/SocketService;

    iput-object p2, p0, Lcom/hlzn/socketclient/d;->b:Ljava/lang/String;

    new-instance p1, Lcom/hlzn/socketclient/d$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/hlzn/socketclient/d$a;-><init>(Lcom/hlzn/socketclient/d;B)V

    iput-object p1, p0, Lcom/hlzn/socketclient/d;->d:Lcom/hlzn/socketclient/d$a;

    iget-object v1, p0, Lcom/hlzn/socketclient/d;->d:Lcom/hlzn/socketclient/d$a;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x1388

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/hlzn/socketclient/d;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic a(Lcom/hlzn/socketclient/d;)Lcom/hlzn/socketclient/service/SocketService;
    .registers 1

    iget-object p0, p0, Lcom/hlzn/socketclient/d;->e:Lcom/hlzn/socketclient/service/SocketService;

    return-object p0
.end method

.method static synthetic b(Lcom/hlzn/socketclient/d;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/hlzn/socketclient/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/hlzn/socketclient/d;)I
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/d;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hlzn/socketclient/d;->c:I

    return v0
.end method

.method static synthetic d(Lcom/hlzn/socketclient/d;)I
    .registers 1

    iget p0, p0, Lcom/hlzn/socketclient/d;->c:I

    return p0
.end method

.method static synthetic e(Lcom/hlzn/socketclient/d;)I
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/hlzn/socketclient/d;->c:I

    return v0
.end method
