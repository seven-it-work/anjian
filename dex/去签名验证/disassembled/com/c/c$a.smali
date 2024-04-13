.class final Lcom/c/c$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/c/c;


# direct methods
.method private constructor <init>(Lcom/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/c/c$a;->a:Lcom/c/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/c/c;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/c/c$a;-><init>(Lcom/c/c;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/c/c$a;->a:Lcom/c/c;

    invoke-static {v0}, Lcom/c/c;->a(Lcom/c/c;)V

    iget-object v0, p0, Lcom/c/c$a;->a:Lcom/c/c;

    invoke-static {v0}, Lcom/c/c;->b(Lcom/c/c;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    iget-object v0, p0, Lcom/c/c$a;->a:Lcom/c/c;

    invoke-static {v0}, Lcom/c/c;->b(Lcom/c/c;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/c/c$a;->a:Lcom/c/c;

    invoke-static {v0}, Lcom/c/c;->b(Lcom/c/c;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/c/c$a;->a:Lcom/c/c;

    invoke-static {v0}, Lcom/c/c;->b(Lcom/c/c;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
