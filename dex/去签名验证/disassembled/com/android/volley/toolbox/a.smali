.class public final Lcom/android/volley/toolbox/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/toolbox/b;


# instance fields
.field private final a:Landroid/accounts/AccountManager;

.field private final b:Landroid/accounts/Account;

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method private constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/a;->a:Landroid/accounts/AccountManager;

    iput-object p2, p0, Lcom/android/volley/toolbox/a;->b:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/android/volley/toolbox/a;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/volley/toolbox/a;->d:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/volley/toolbox/a;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;B)V
    .registers 5

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/volley/toolbox/a;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method private b()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/android/volley/toolbox/a;->b:Landroid/accounts/Account;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/a;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/volley/toolbox/a;->a:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/volley/toolbox/a;->b:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/volley/toolbox/a;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/volley/toolbox/a;->d:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    :try_start_e
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_56

    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "intent"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "intent"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    new-instance v1, Lcom/android/volley/a;

    invoke-direct {v1, v0}, Lcom/android/volley/a;-><init>(Landroid/content/Intent;)V

    throw v1

    :cond_37
    const-string v0, "authtoken"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3d
    if-nez v2, :cond_55

    new-instance v0, Lcom/android/volley/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got null auth token for type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/volley/toolbox/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/volley/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    return-object v2

    :catch_56
    move-exception v0

    new-instance v1, Lcom/android/volley/a;

    const-string v2, "Error while retrieving auth token"

    invoke-direct {v1, v2, v0}, Lcom/android/volley/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/volley/toolbox/a;->a:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/volley/toolbox/a;->b:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
