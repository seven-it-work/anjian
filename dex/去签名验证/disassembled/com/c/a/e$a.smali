.class final Lcom/c/a/e$a;
.super Landroid/os/AsyncTask;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/e;
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
        "Ljava/lang/String;",
        ">;",
        "Landroid/content/DialogInterface$OnCancelListener;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/e;

.field private b:Lcom/c/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/c/b/a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/c/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/c/a/e;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/c/a/e$a;-><init>(Lcom/c/a/e;)V

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    iget-object v0, v0, Lcom/c/a/e;->d:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    iget-object v1, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    iget-object v1, v1, Lcom/c/a/e;->c:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    const-string v2, "twitter://callback"

    invoke-virtual {v0, v1, v2}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcom/c/a/e$a;Lcom/c/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/c/a/e$a;->b:Lcom/c/b/a;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_2b

    iget-object v0, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    new-instance v1, Lcom/c/c;

    iget-object v2, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    iget-object v2, v2, Lcom/c/a/e;->a:Landroid/app/Activity;

    new-instance v3, Lcom/c/a/e$c;

    iget-object v4, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/c/a/e$c;-><init>(Lcom/c/a/e;B)V

    invoke-direct {v1, v2, p1, v3}, Lcom/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebViewClient;)V

    iput-object v1, v0, Lcom/c/a/e;->b:Lcom/c/c;

    iget-object p1, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    iget-object p1, p1, Lcom/c/a/e;->b:Lcom/c/c;

    invoke-virtual {p1, p0}, Lcom/c/c;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    invoke-static {p1}, Lcom/c/a/e;->a(Lcom/c/a/e;)V

    iget-object p1, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    iget-object p1, p1, Lcom/c/a/e;->b:Lcom/c/c;

    invoke-virtual {p1}, Lcom/c/c;->a()V

    return-void

    :cond_2b
    iget-object p1, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    invoke-static {p1}, Lcom/c/a/e;->b(Lcom/c/a/e;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/c/a/e$a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    invoke-static {p1}, Lcom/c/a/e;->b(Lcom/c/a/e;)V

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 8

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2d

    iget-object v0, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    new-instance v1, Lcom/c/c;

    iget-object v2, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    iget-object v2, v2, Lcom/c/a/e;->a:Landroid/app/Activity;

    new-instance v3, Lcom/c/a/e$c;

    iget-object v4, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/c/a/e$c;-><init>(Lcom/c/a/e;B)V

    invoke-direct {v1, v2, p1, v3}, Lcom/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebViewClient;)V

    iput-object v1, v0, Lcom/c/a/e;->b:Lcom/c/c;

    iget-object p1, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    iget-object p1, p1, Lcom/c/a/e;->b:Lcom/c/c;

    invoke-virtual {p1, p0}, Lcom/c/c;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    invoke-static {p1}, Lcom/c/a/e;->a(Lcom/c/a/e;)V

    iget-object p1, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    iget-object p1, p1, Lcom/c/a/e;->b:Lcom/c/c;

    invoke-virtual {p1}, Lcom/c/c;->a()V

    return-void

    :cond_2d
    iget-object p1, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    invoke-static {p1}, Lcom/c/a/e;->b(Lcom/c/a/e;)V

    return-void
.end method

.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/c/a/e$a;->a:Lcom/c/a/e;

    iget-object v1, p0, Lcom/c/a/e$a;->b:Lcom/c/b/a;

    invoke-virtual {v0, v1}, Lcom/c/a/e;->a(Lcom/c/b/a;)V

    return-void
.end method
