.class public final Lcom/c/a/e;
.super Lcom/c/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/e$a;,
        Lcom/c/a/e$b;,
        Lcom/c/a/e$c;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "https://api.twitter.com/oauth/request_token"

.field private static final h:Ljava/lang/String; = "https://api.twitter.com/oauth/access_token"

.field private static final i:Ljava/lang/String; = "https://api.twitter.com/oauth/authorize"

.field private static final j:Ljava/lang/String; = "twitter://callback"

.field private static final k:Ljava/lang/String; = "twitter://cancel"

.field private static final l:Ljava/lang/String; = "aq.tw.token"

.field private static final m:Ljava/lang/String; = "aq.tw.secret"


# instance fields
.field a:Landroid/app/Activity;

.field b:Lcom/c/c;

.field c:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

.field d:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/c/a/a;-><init>()V

    iput-object p1, p0, Lcom/c/a/e;->a:Landroid/app/Activity;

    new-instance p1, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-direct {p1, p2, p3}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/c/a/e;->c:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    const-string p1, "aq.tw.token"

    invoke-direct {p0, p1}, Lcom/c/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/c/a/e;->e:Ljava/lang/String;

    const-string p1, "aq.tw.secret"

    invoke-direct {p0, p1}, Lcom/c/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/c/a/e;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/c/a/e;->e:Ljava/lang/String;

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/c/a/e;->f:Ljava/lang/String;

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/c/a/e;->c:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    iget-object p2, p0, Lcom/c/a/e;->e:Ljava/lang/String;

    iget-object p3, p0, Lcom/c/a/e;->f:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    new-instance p1, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    const-string p2, "https://api.twitter.com/oauth/request_token"

    const-string p3, "https://api.twitter.com/oauth/access_token"

    const-string v0, "https://api.twitter.com/oauth/authorize"

    invoke-direct {p1, p2, p3, v0}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/c/a/e;->d:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/c/a/e;)V
    .registers 3

    iget-object v0, p0, Lcom/c/a/e;->b:Lcom/c/c;

    if-eqz v0, :cond_10

    new-instance v0, Lcom/c/a;

    iget-object v1, p0, Lcom/c/a/e;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/c/a;-><init>(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/c/a/e;->b:Lcom/c/c;

    invoke-virtual {v0, p0}, Lcom/c/a;->a(Landroid/app/Dialog;)Lcom/c/b;

    :cond_10
    return-void
.end method

.method private static synthetic a(Lcom/c/a/e;Lcom/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/c/a/e;->b:Lcom/c/c;

    return-void
.end method

.method private static synthetic a(Lcom/c/a/e;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/c/a/e;->e:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a(Lcom/c/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .registers 2

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/c/a/e;->e:Ljava/lang/String;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/c/a/e;->f:Ljava/lang/String;

    if-nez p1, :cond_d

    :cond_a
    invoke-virtual {p0}, Lcom/c/a/e;->b()V

    :cond_d
    return-void
.end method

.method private static synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/c/a/e;)V
    .registers 3

    invoke-virtual {p0}, Lcom/c/a/e;->d()V

    const-string v0, "cancel"

    const/16 v1, 0x191

    invoke-virtual {p0, v1, v0}, Lcom/c/a/e;->a(ILjava/lang/String;)V

    return-void
.end method

.method private static synthetic b(Lcom/c/a/e;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/c/a/e;->f:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/c/a/e;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic c(Lcom/c/a/e;)Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;
    .registers 1

    iget-object p0, p0, Lcom/c/a/e;->d:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    return-object p0
.end method

.method private static synthetic d(Lcom/c/a/e;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
    .registers 1

    iget-object p0, p0, Lcom/c/a/e;->c:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    return-object p0
.end method

.method private static synthetic e(Lcom/c/a/e;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/c/a/e;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/a/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic f(Lcom/c/a/e;)Lcom/c/c;
    .registers 1

    iget-object p0, p0, Lcom/c/a/e;->b:Lcom/c/c;

    return-object p0
.end method

.method private f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/a/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic g(Lcom/c/a/e;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/c/a/e;->e:Ljava/lang/String;

    return-object p0
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/c/a/e;->b:Lcom/c/c;

    if-eqz v0, :cond_10

    new-instance v0, Lcom/c/a;

    iget-object v1, p0, Lcom/c/a/e;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/c/a;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/c/a/e;->b:Lcom/c/c;

    invoke-virtual {v0, v1}, Lcom/c/a;->a(Landroid/app/Dialog;)Lcom/c/b;

    :cond_10
    return-void
.end method

.method private static synthetic h(Lcom/c/a/e;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/c/a/e;->f:Ljava/lang/String;

    return-object p0
.end method

.method private h()V
    .registers 3

    invoke-virtual {p0}, Lcom/c/a/e;->d()V

    const-string v0, "cancel"

    const/16 v1, 0x191

    invoke-virtual {p0, v1, v0}, Lcom/c/a/e;->a(ILjava/lang/String;)V

    return-void
.end method

.method private static i()V
    .registers 0

    return-void
.end method

.method private static synthetic i(Lcom/c/a/e;)V
    .registers 1

    invoke-virtual {p0}, Lcom/c/a/e;->d()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/b/a;Ljava/net/HttpURLConnection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/a<",
            "**>;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    const-string v0, "apply token multipart"

    iget-object p1, p1, Lcom/c/b/a;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Loauth/signpost/basic/DefaultOAuthConsumer;

    iget-object v0, p0, Lcom/c/a/e;->c:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v0}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getConsumerKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/e;->c:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v1}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getConsumerSecret()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Loauth/signpost/basic/DefaultOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/a/e;->c:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v0}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/e;->c:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v1}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_27
    invoke-interface {p1, p2}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception p1

    invoke-static {p1}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/c/b/a;Lorg/apache/http/HttpRequest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/a<",
            "**>;",
            "Lorg/apache/http/HttpRequest;",
            ")V"
        }
    .end annotation

    const-string v0, "apply token"

    iget-object p1, p1, Lcom/c/b/a;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_7
    iget-object p1, p0, Lcom/c/a/e;->c:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {p1, p2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    invoke-static {p1}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/c/a/e;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcom/c/a/e;->e:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/c/a/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/c/b/a;Lcom/c/b/c;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/a<",
            "**>;",
            "Lcom/c/b/c;",
            ")Z"
        }
    .end annotation

    iget p1, p2, Lcom/c/b/c;->i:I

    const/16 p2, 0x190

    if-eq p1, p2, :cond_c

    const/16 p2, 0x191

    if-eq p1, p2, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    const/4 p1, 0x1

    return p1
.end method

.method protected final b()V
    .registers 3

    new-instance v0, Lcom/c/a/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/c/a/e$a;-><init>(Lcom/c/a/e;B)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/c/a/e$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final b(Lcom/c/b/a;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/a<",
            "**>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/e;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/c/a/e;->f:Ljava/lang/String;

    const-string v1, "aq.tw.token"

    const-string v2, "aq.tw.secret"

    invoke-virtual {p0, v1, v0, v2, v0}, Lcom/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/c/a/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/c/a/e$a;-><init>(Lcom/c/a/e;B)V

    invoke-static {v0, p1}, Lcom/c/a/e$a;->a(Lcom/c/a/e$a;Lcom/c/b/a;)V

    invoke-static {p1}, Lcom/c/d/a;->a(Ljava/lang/Runnable;)V

    return v1
.end method

.method public final c()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/e;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/c/a/e;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/c/a/e;->a:Landroid/app/Activity;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    const-string v1, "aq.tw.token"

    const-string v2, "aq.tw.secret"

    invoke-virtual {p0, v1, v0, v2, v0}, Lcom/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final d()V
    .registers 3

    iget-object v0, p0, Lcom/c/a/e;->b:Lcom/c/c;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/c/a;

    iget-object v1, p0, Lcom/c/a/e;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/c/a;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/c/a/e;->b:Lcom/c/c;

    invoke-virtual {v0, v1}, Lcom/c/a;->b(Landroid/app/Dialog;)Lcom/c/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/e;->b:Lcom/c/c;

    :cond_13
    return-void
.end method
