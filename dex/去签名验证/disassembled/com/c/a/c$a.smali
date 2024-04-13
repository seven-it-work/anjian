.class final Lcom/c/a/c$a;
.super Landroid/webkit/WebViewClient;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/c;


# direct methods
.method private constructor <init>(Lcom/c/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/c/a/c$a;->a:Lcom/c/a/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/c/a/c;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/c/a/c$a;-><init>(Lcom/c/a/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 7

    const-string v0, "https://www.facebook.com/connect/login_success.html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_62

    invoke-static {p1}, Lcom/c/a/c;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "error_reason"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "error"

    invoke-static {v3, v0}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/c/a/c$a;->a:Lcom/c/a/c;

    const/16 v3, 0x23

    const/16 v4, 0x3f

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v3, "access_token"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "token"

    invoke-static {v3, p1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/c/a/c;->b:Ljava/lang/String;

    :cond_36
    iget-object p1, p0, Lcom/c/a/c$a;->a:Lcom/c/a/c;

    iget-object p1, p1, Lcom/c/a/c;->b:Ljava/lang/String;

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lcom/c/a/c$a;->a:Lcom/c/a/c;

    invoke-virtual {p1}, Lcom/c/a/c;->d()V

    iget-object p1, p0, Lcom/c/a/c$a;->a:Lcom/c/a/c;

    iget-object v0, p0, Lcom/c/a/c$a;->a:Lcom/c/a/c;

    iget-object v0, v0, Lcom/c/a/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/c/a/c$a;->a:Lcom/c/a/c;

    iget-object v3, v3, Lcom/c/a/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/c/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/c/a/c$a;->a:Lcom/c/a/c;

    iput-boolean v2, p1, Lcom/c/a/c;->d:Z

    iget-object p1, p0, Lcom/c/a/c$a;->a:Lcom/c/a/c;

    iget-object v0, p0, Lcom/c/a/c$a;->a:Lcom/c/a/c;

    iget-object v0, v0, Lcom/c/a/c;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/c/a/c;->a(Landroid/content/Context;)V

    return v1

    :cond_5c
    iget-object p1, p0, Lcom/c/a/c$a;->a:Lcom/c/a/c;

    invoke-static {p1}, Lcom/c/a/c;->a(Lcom/c/a/c;)V

    return v1

    :cond_62
    const-string v0, "fbconnect:cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_75

    const-string p1, "cancelled"

    invoke-static {p1}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/c/a/c$a;->a:Lcom/c/a/c;

    invoke-static {p1}, Lcom/c/a/c;->a(Lcom/c/a/c;)V

    return v1

    :cond_75
    return v2
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lcom/c/a/c$a;->a:Lcom/c/a/c;

    invoke-static {p1}, Lcom/c/a/c;->a(Lcom/c/a/c;)V

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/c/a/c$a;->a:Lcom/c/a/c;

    invoke-virtual {p1}, Lcom/c/a/c;->e()V

    const-string p1, "finished"

    invoke-static {p1, p2}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    const-string v0, "started"

    invoke-static {v0, p2}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/c/a/c$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_e
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object p1, p0, Lcom/c/a/c$a;->a:Lcom/c/a/c;

    invoke-static {p1}, Lcom/c/a/c;->a(Lcom/c/a/c;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "return url: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/c/a/c$a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
