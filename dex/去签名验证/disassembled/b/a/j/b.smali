.class public abstract Lb/a/j/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljavax/net/ssl/X509TrustManager;)Lb/a/j/b;
    .registers 2

    invoke-static {}, Lb/a/h/e;->b()Lb/a/h/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb/a/h/e;->a(Ljavax/net/ssl/X509TrustManager;)Lb/a/j/b;

    move-result-object p0

    return-object p0
.end method

.method private static varargs a([Ljava/security/cert/X509Certificate;)Lb/a/j/b;
    .registers 2

    new-instance v0, Lb/a/j/a;

    invoke-static {p0}, Lb/a/j/e;->a([Ljava/security/cert/X509Certificate;)Lb/a/j/e;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/a/j/a;-><init>(Lb/a/j/e;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method
