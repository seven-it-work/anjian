.class public final Lcom/c/d/h;
.super Landroid/webkit/WebViewClient;


# static fields
.field private static g:Ljava/lang/String; = null

.field private static final h:Ljava/lang/String; = "WebViewSettings"

.field private static final i:Ljava/lang/String; = "double_tap_toast_count"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Landroid/webkit/WebView;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/c/d/h;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/c/d/h;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/c/d/h;->d:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/c/d/h;->e:Z

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/c/d/h;->f:I

    return-void
.end method

.method static synthetic a(Lcom/c/d/h;)Landroid/webkit/WebView;
    .registers 1

    iget-object p0, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    const-string v0, "WebViewSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "double_tap_toast_count"

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1d

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "double_tap_toast_count"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1d
    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .registers 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-string v3, "setDisplayZoomControls"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 p0, 0x1

    new-array v6, p0, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    new-array v7, p0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v7, v1

    invoke-static/range {v2 .. v7}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/c/d/h;->g:Ljava/lang/String;

    if-nez v0, :cond_1e

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "com/androidquery/util/web_image.html"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/c/d/a;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/c/d/h;->g:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p0

    invoke-static {p0}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    sget-object p0, Lcom/c/d/h;->g:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .registers 13

    iget-object v0, p0, Lcom/c/d/h;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    const v2, 0x40ff0001

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/c/d/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-gt v0, v1, :cond_25

    iget-object v0, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    :cond_25
    iget-object v0, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WebViewSettings"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "double_tap_toast_count"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_47

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "double_tap_toast_count"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_47
    iget-object v0, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-boolean v1, p0, Lcom/c/d/h;->d:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-boolean v1, p0, Lcom/c/d/h;->d:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-boolean v1, p0, Lcom/c/d/h;->e:Z

    if-nez v1, :cond_7c

    iget-object v1, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_7c

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    const-string v7, "setDisplayZoomControls"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v10, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v10, v3

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v11, v3

    invoke-static/range {v6 .. v11}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7c
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    iget v1, p0, Lcom/c/d/h;->f:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/c/d/h;->a:Ljava/lang/Object;

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/c/d/h;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/c/d/h;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/c/d/c;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_91
    iget-object v0, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    if-lez v0, :cond_9d

    invoke-virtual {p0}, Lcom/c/d/h;->a()V

    return-void

    :cond_9d
    iget-object v0, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/c/d/h$1;

    invoke-direct {v1, p0}, Lcom/c/d/h$1;-><init>(Lcom/c/d/h;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    iget-object v0, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    const-string v1, "<html></html>"

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    iget v1, p0, Lcom/c/d/h;->f:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method private b(Landroid/webkit/WebView;)V
    .registers 5

    iget-object v0, p0, Lcom/c/d/h;->a:Ljava/lang/Object;

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v1, p0, Lcom/c/d/h;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/c/d/h;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/c/d/c;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method static synthetic b(Lcom/c/d/h;)V
    .registers 1

    invoke-virtual {p0}, Lcom/c/d/h;->a()V

    return-void
.end method

.method private c()V
    .registers 5

    iget-object v0, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/c/d/h$1;

    invoke-direct {v1, p0}, Lcom/c/d/h$1;-><init>(Lcom/c/d/h;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    iget-object v0, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    const-string v1, "<html></html>"

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    iget v1, p0, Lcom/c/d/h;->f:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 10

    iget-object v0, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/c/d/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@src"

    iget-object v2, p0, Lcom/c/d/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@color"

    iget v2, p0, Lcom/c/d/h;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v3, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    const-string v6, "text/html"

    const-string v7, "utf-8"

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    iget v1, p0, Lcom/c/d/h;->f:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/c/d/h;->b(Landroid/webkit/WebView;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/c/d/h;->b(Landroid/webkit/WebView;)V

    return-void
.end method

.method public final onScaleChanged(Landroid/webkit/WebView;FF)V
    .registers 4

    return-void
.end method
