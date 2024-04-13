.class final Lcom/c/a/d$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/d;


# direct methods
.method private constructor <init>(Lcom/c/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/c/a/d$a;->a:Lcom/c/a/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/c/a/d;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/c/a/d$a;-><init>(Lcom/c/a/d;)V

    return-void
.end method

.method private varargs a()Landroid/os/Bundle;
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/c/a/d$a;->a:Lcom/c/a/d;

    invoke-static {v0}, Lcom/c/a/d;->a(Lcom/c/a/d;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v0, p0, Lcom/c/a/d$a;->a:Lcom/c/a/d;

    invoke-static {v0}, Lcom/c/a/d;->b(Lcom/c/a/d;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v0, p0, Lcom/c/a/d$a;->a:Lcom/c/a/d;

    invoke-static {v0}, Lcom/c/a/d;->c(Lcom/c/a/d;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/c/a/d$a;->a:Lcom/c/a/d;

    invoke-static {v0}, Lcom/c/a/d;->d(Lcom/c/a/d;)Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_25
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_25} :catch_2a
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_25} :catch_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    return-object v0

    :catch_26
    move-exception v0

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    :catch_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 4

    if-eqz p1, :cond_21

    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/c/a/d$a;->a:Lcom/c/a/d;

    const-string v1, "authtoken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/c/a/d;->a(Lcom/c/a/d;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/c/a/d$a;->a:Lcom/c/a/d;

    iget-object v0, p0, Lcom/c/a/d$a;->a:Lcom/c/a/d;

    invoke-static {v0}, Lcom/c/a/d;->d(Lcom/c/a/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/c/a/d;->a(Landroid/content/Context;)V

    return-void

    :cond_21
    iget-object p1, p0, Lcom/c/a/d$a;->a:Lcom/c/a/d;

    const/16 v0, -0x66

    const-string v1, "rejected"

    invoke-virtual {p1, v0, v1}, Lcom/c/a/d;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/c/a/d$a;->a()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_23

    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/c/a/d$a;->a:Lcom/c/a/d;

    const-string v1, "authtoken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/c/a/d;->a(Lcom/c/a/d;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/c/a/d$a;->a:Lcom/c/a/d;

    iget-object v0, p0, Lcom/c/a/d$a;->a:Lcom/c/a/d;

    invoke-static {v0}, Lcom/c/a/d;->d(Lcom/c/a/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/c/a/d;->a(Landroid/content/Context;)V

    return-void

    :cond_23
    iget-object p1, p0, Lcom/c/a/d$a;->a:Lcom/c/a/d;

    const/16 v0, -0x66

    const-string v1, "rejected"

    invoke-virtual {p1, v0, v1}, Lcom/c/a/d;->a(ILjava/lang/String;)V

    return-void
.end method
