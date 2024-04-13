.class public Lcom/umeng/commonsdk/statistics/idtracking/j;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;


# static fields
.field private static final a:Ljava/lang/String; = "oldumid"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "oldumid"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->b:Landroid/content/Context;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_e
    return-void
.end method

.method private j()V
    .registers 3

    :try_start_0
    const-string v0, "/data/local/tmp/.um"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/.um/sysid.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

.method private k()V
    .registers 3

    :try_start_0
    const-string v0, "/sdcard/Android/obj/.um"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/obj/.um/sysid.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

.method private l()V
    .registers 3

    :try_start_0
    const-string v0, "/sdcard/Android/data/.um"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/data/.um/sysid.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .registers 2

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->h()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .registers 6

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->b:Landroid/content/Context;

    const-string v1, "umid"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->encryptBySHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/data/.um/sysid.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/Android/obj/.um/sysid.dat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/local/tmp/.um/sysid.dat"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_47

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->l()V

    goto :goto_52

    :cond_47
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->c:Ljava/lang/String;

    return v4

    :cond_52
    :goto_52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->k()V

    goto :goto_67

    :cond_5c
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->c:Ljava/lang/String;

    return v4

    :cond_67
    :goto_67
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->j()V

    goto :goto_7c

    :cond_71
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    iput-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->c:Ljava/lang/String;

    return v4

    :cond_7c
    :goto_7c
    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .registers 1

    :try_start_0
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->l()V

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->k()V

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->j()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
