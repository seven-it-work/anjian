.class final Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/RedirectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/http/HttpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotUseApacheRedirectHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;)V
    .registers 2

    invoke-direct {p0}, Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
