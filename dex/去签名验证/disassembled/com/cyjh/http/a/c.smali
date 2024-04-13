.class public Lcom/cyjh/http/a/c;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x1

.field public static b:I = 0x2

.field public static c:I = 0x1

.field public static d:I = 0x0

.field private static f:Ljava/lang/String; = "c"

.field private static g:Lcom/cyjh/http/a/c;


# instance fields
.field public e:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/cyjh/http/a/c;
    .registers 2

    sget-object v0, Lcom/cyjh/http/a/c;->g:Lcom/cyjh/http/a/c;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/http/a/c;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/http/a/c;->g:Lcom/cyjh/http/a/c;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/http/a/c;

    invoke-direct {v1}, Lcom/cyjh/http/a/c;-><init>()V

    sput-object v1, Lcom/cyjh/http/a/c;->g:Lcom/cyjh/http/a/c;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/cyjh/http/a/c;->g:Lcom/cyjh/http/a/c;

    return-object v0
.end method

.method private static a(Landroid/content/Context;I[Ljava/lang/String;)Z
    .registers 13

    sget-object v0, Lcom/cyjh/http/a/c;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRecognitionResult --> mode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_51

    array-length v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1a
    if-ge v0, v1, :cond_52

    aget-object v5, p2, v0

    invoke-static {p0, v5}, Lcom/cyjh/http/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    sget-object v7, Lcom/cyjh/http/a/c;->f:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getRecognitionResult --> packageName="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",isInstall="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget v5, Lcom/cyjh/http/a/c;->a:I

    if-ne p1, v5, :cond_44

    and-int/2addr v2, v6

    move v4, v2

    goto :goto_4a

    :cond_44
    sget v5, Lcom/cyjh/http/a/c;->b:I

    if-ne p1, v5, :cond_4a

    or-int/2addr v3, v6

    move v4, v3

    :cond_4a
    :goto_4a
    if-eqz v2, :cond_52

    if-nez v3, :cond_52

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_51
    const/4 v4, 0x0

    :cond_52
    sget-object p0, Lcom/cyjh/http/a/c;->f:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getRecognitionResult --> result="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/cyjh/http/a/c;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPackageArr --> packageNames="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    move-object p0, v0

    return-object p0

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/cyjh/http/a/c;->e:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/List;)Lcom/cyjh/http/bean/response/PhoneConfig;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/response/PhoneConfig;",
            ">;)",
            "Lcom/cyjh/http/bean/response/PhoneConfig;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_72

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/http/bean/response/PhoneConfig;

    invoke-virtual {v0}, Lcom/cyjh/http/bean/response/PhoneConfig;->getJudgeMode()I

    move-result v2

    invoke-virtual {v0}, Lcom/cyjh/http/bean/response/PhoneConfig;->getPackage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cyjh/http/a/c;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getPackageArr --> packageNames="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_49

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_41

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_4a

    :cond_41
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object v3, v4

    goto :goto_4a

    :cond_49
    move-object v3, v1

    :goto_4a
    invoke-static {p1, v2, v3}, Lcom/cyjh/http/a/c;->a(Landroid/content/Context;I[Ljava/lang/String;)Z

    move-result v2

    sget-object v3, Lcom/cyjh/http/a/c;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "init --> recognitionResult="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/cyjh/http/bean/response/PhoneConfig;->getCloudPhoneType()I

    move-result p1

    iput p1, p0, Lcom/cyjh/http/a/c;->e:I

    invoke-virtual {v0}, Lcom/cyjh/http/bean/response/PhoneConfig;->getActive()I

    move-result p1

    sget p2, Lcom/cyjh/http/a/c;->d:I

    if-ne p1, p2, :cond_72

    return-object v0

    :cond_72
    move-object v0, v1

    return-object v0
.end method
