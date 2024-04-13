.class public abstract Lb/a/j/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/j/e$b;,
        Lb/a/j/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljavax/net/ssl/X509TrustManager;)Lb/a/j/e;
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v1, Lb/a/j/e$a;

    invoke-direct {v1, p0, v0}, Lb/a/j/e$a;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v1

    :catch_1b
    invoke-interface {p0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-static {p0}, Lb/a/j/e;->a([Ljava/security/cert/X509Certificate;)Lb/a/j/e;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a([Ljava/security/cert/X509Certificate;)Lb/a/j/e;
    .registers 2

    new-instance v0, Lb/a/j/e$b;

    invoke-direct {v0, p0}, Lb/a/j/e$b;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
.end method
