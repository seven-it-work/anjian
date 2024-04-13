.class public Lcom/umeng/commonsdk/proguard/p;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Z
    .registers 3

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private c()Z
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_f

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :catch_f
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private d()Z
    .registers 3

    new-instance v0, Lcom/umeng/commonsdk/proguard/m;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/m;-><init>()V

    sget-object v1, Lcom/umeng/commonsdk/proguard/m$a;->a:Lcom/umeng/commonsdk/proguard/m$a;

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/m;->a(Lcom/umeng/commonsdk/proguard/m$a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private e()Z
    .registers 8

    const-string v0, "/bin"

    const-string v1, "/system/bin/"

    const-string v2, "/system/xbin/"

    const-string v3, "/system/sbin/"

    const-string v4, "/sbin/"

    const-string v5, "/vendor/bin/"

    const-string v6, "/su/bin/"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_14
    const/4 v3, 0x7

    if-ge v2, v3, :cond_3a

    aget-object v3, v0, v2

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "su"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_37

    const/4 v0, 0x1

    return v0

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_3a
    return v1
.end method


# virtual methods
.method public a()Z
    .registers 3

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/p;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/p;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/p;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    :cond_16
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/p;->e()Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method
