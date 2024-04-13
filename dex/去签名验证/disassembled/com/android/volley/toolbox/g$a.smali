.class public final Lcom/android/volley/toolbox/g$a;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "PATCH"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/g$a;->setURI(Ljava/net/URI;)V

    return-void
.end method

.method private constructor <init>(Ljava/net/URI;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/g$a;->setURI(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public final getMethod()Ljava/lang/String;
    .registers 2

    const-string v0, "PATCH"

    return-object v0
.end method
