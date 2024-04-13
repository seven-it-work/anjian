.class public final Lcom/android/volley/toolbox/t;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "volley"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/volley/m;
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "volley"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "volley/0"

    const/4 v2, 0x0

    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_30} :catch_31

    goto :goto_32

    :catch_31
    move-object p0, v1

    :goto_32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v1, v3, :cond_3e

    new-instance p0, Lcom/android/volley/toolbox/j;

    invoke-direct {p0}, Lcom/android/volley/toolbox/j;-><init>()V

    goto :goto_48

    :cond_3e
    new-instance v1, Lcom/android/volley/toolbox/g;

    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/volley/toolbox/g;-><init>(Lorg/apache/http/client/HttpClient;)V

    move-object p0, v1

    :goto_48
    new-instance v1, Lcom/android/volley/toolbox/c;

    invoke-direct {v1, p0}, Lcom/android/volley/toolbox/c;-><init>(Lcom/android/volley/toolbox/i;)V

    new-instance p0, Lcom/android/volley/m;

    new-instance v3, Lcom/android/volley/toolbox/f;

    invoke-direct {v3, v0, v2}, Lcom/android/volley/toolbox/f;-><init>(Ljava/io/File;B)V

    invoke-direct {p0, v3, v1, v2}, Lcom/android/volley/m;-><init>(Lcom/android/volley/b;Lcom/android/volley/f;B)V

    invoke-virtual {p0}, Lcom/android/volley/m;->a()V

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Lcom/android/volley/m;
    .registers 1

    invoke-static {p0}, Lcom/android/volley/toolbox/t;->a(Landroid/content/Context;)Lcom/android/volley/m;

    move-result-object p0

    return-object p0
.end method
