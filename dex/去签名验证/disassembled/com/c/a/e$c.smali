.class final Lcom/c/a/e$c;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/e;


# direct methods
.method private constructor <init>(Lcom/c/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/c/a/e$c;->a:Lcom/c/a/e;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/c/a/e;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/c/a/e$c;-><init>(Lcom/c/a/e;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "twitter://callback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    const-string v0, "oauth_verifier"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/c/a/e$c;->a:Lcom/c/a/e;

    invoke-virtual {v0}, Lcom/c/a/e;->d()V

    new-instance v0, Lcom/c/a/e$b;

    iget-object v3, p0, Lcom/c/a/e$c;->a:Lcom/c/a/e;

    invoke-direct {v0, v3, v2}, Lcom/c/a/e$b;-><init>(Lcom/c/a/e;B)V

    new-array v3, v1, [Ljava/lang/String;

    aput-object p1, v3, v2

    invoke-virtual {v0, v3}, Lcom/c/a/e$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v1

    :cond_28
    const-string v0, "twitter://cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/c/a/e$c;->a:Lcom/c/a/e;

    invoke-static {p1}, Lcom/c/a/e;->b(Lcom/c/a/e;)V

    return v1

    :cond_36
    return v2
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    const-string v0, "finished"

    invoke-static {v0, p2}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/c/a/e$c;->a:Lcom/c/a/e;

    invoke-static {p1}, Lcom/c/a/e;->a(Lcom/c/a/e;)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    const-string v0, "started"

    invoke-static {v0, p2}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/c/a/e$c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_e
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object p1, p0, Lcom/c/a/e$c;->a:Lcom/c/a/e;

    invoke-static {p1}, Lcom/c/a/e;->b(Lcom/c/a/e;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p2}, Lcom/c/a/e$c;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
