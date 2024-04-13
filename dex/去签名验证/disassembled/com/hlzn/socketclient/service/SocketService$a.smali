.class public final Lcom/hlzn/socketclient/service/SocketService$a;
.super Landroid/os/Binder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hlzn/socketclient/service/SocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/hlzn/socketclient/e/b;

.field final synthetic b:Lcom/hlzn/socketclient/service/SocketService;

.field private c:Lcom/hlzn/socketclient/service/SocketService;


# direct methods
.method public constructor <init>(Lcom/hlzn/socketclient/service/SocketService;Lcom/hlzn/socketclient/service/SocketService;)V
    .registers 3

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService$a;->b:Lcom/hlzn/socketclient/service/SocketService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p2, p0, Lcom/hlzn/socketclient/service/SocketService$a;->c:Lcom/hlzn/socketclient/service/SocketService;

    return-void
.end method


# virtual methods
.method public final sendMethod(Ljava/lang/Object;)V
    .registers 2

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->a()V

    return-void
.end method

.method public final setOnServiceCallBack(Lcom/hlzn/socketclient/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService$a;->a:Lcom/hlzn/socketclient/e/b;

    return-void
.end method
