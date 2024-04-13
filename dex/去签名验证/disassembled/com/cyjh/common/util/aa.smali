.class public final Lcom/cyjh/common/util/aa;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "MIUI"

.field public static final b:Ljava/lang/String; = "EMUI"

.field public static final c:Ljava/lang/String; = "FLYME"

.field public static final d:Ljava/lang/String; = "OPPO"

.field public static final e:Ljava/lang/String; = "SMARTISAN"

.field public static final f:Ljava/lang/String; = "VIVO"

.field public static final g:Ljava/lang/String; = "QIKU"

.field public static h:Ljava/lang/String; = null

.field private static final i:Ljava/lang/String; = "Rom"

.field private static final j:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final k:Ljava/lang/String; = "ro.build.version.emui"

.field private static final l:Ljava/lang/String; = "ro.build.version.opporom"

.field private static final m:Ljava/lang/String; = "ro.smartisan.version"

.field private static final n:Ljava/lang/String; = "ro.vivo.os.version"

.field private static o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getprop "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_27} :catch_3b
    .catchall {:try_start_1 .. :try_end_27} :catchall_39

    :try_start_27
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_37
    .catchall {:try_start_27 .. :try_end_2e} :catchall_5b

    :try_start_2e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    return-object v1

    :catch_32
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1

    :catch_37
    move-exception v1

    goto :goto_3d

    :catchall_39
    move-exception p0

    goto :goto_5d

    :catch_3b
    move-exception v1

    move-object v2, v0

    :goto_3d
    :try_start_3d
    const-string v3, "Rom"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to read prop "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_3d .. :try_end_50} :catchall_5b

    if-eqz v2, :cond_5a

    :try_start_52
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    return-object v0

    :catch_56
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5a
    return-object v0

    :catchall_5b
    move-exception p0

    move-object v0, v2

    :goto_5d
    if-eqz v0, :cond_67

    :try_start_5f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_67

    :catch_63
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_67
    :goto_67
    throw p0
.end method

.method private static a()Z
    .registers 1

    const-string v0, "EMUI"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b()Z
    .registers 1

    const-string v0, "MIUI"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/cyjh/common/util/aa;->o:Ljava/lang/String;

    if-eqz v0, :cond_b

    :goto_4
    sget-object v0, Lcom/cyjh/common/util/aa;->o:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_b
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/common/util/aa;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "MIUI"

    :goto_1b
    sput-object v0, Lcom/cyjh/common/util/aa;->o:Ljava/lang/String;

    goto :goto_4

    :cond_1e
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/common/util/aa;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "EMUI"

    goto :goto_1b

    :cond_2f
    const-string v0, "ro.build.version.opporom"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/common/util/aa;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "OPPO"

    goto :goto_1b

    :cond_40
    const-string v0, "ro.vivo.os.version"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/common/util/aa;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "VIVO"

    goto :goto_1b

    :cond_51
    const-string v0, "ro.smartisan.version"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/common/util/aa;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, "SMARTISAN"

    goto :goto_1b

    :cond_62
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lcom/cyjh/common/util/aa;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLYME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_75

    const-string v0, "FLYME"

    goto :goto_1b

    :cond_75
    const-string v0, "unknown"

    sput-object v0, Lcom/cyjh/common/util/aa;->h:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method private static c()Z
    .registers 1

    const-string v0, "VIVO"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static d()Z
    .registers 1

    const-string v0, "OPPO"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static e()Z
    .registers 1

    const-string v0, "FLYME"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static f()Z
    .registers 1

    const-string v0, "QIKU"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "360"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method private static g()Z
    .registers 1

    const-string v0, "SMARTISAN"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static h()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/common/util/aa;->o:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->b(Ljava/lang/String;)Z

    :cond_9
    sget-object v0, Lcom/cyjh/common/util/aa;->o:Ljava/lang/String;

    return-object v0
.end method

.method private static i()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/common/util/aa;->h:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->b(Ljava/lang/String;)Z

    :cond_9
    sget-object v0, Lcom/cyjh/common/util/aa;->h:Ljava/lang/String;

    return-object v0
.end method

.method private static j()Ljava/lang/String;
    .registers 2

    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/common/util/aa;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "MIUI"

    return-object v0

    :cond_11
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/common/util/aa;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "EMUI"

    return-object v0

    :cond_22
    const-string v0, "ro.build.version.opporom"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/common/util/aa;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "OPPO"

    return-object v0

    :cond_33
    const-string v0, "ro.vivo.os.version"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/common/util/aa;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "VIVO"

    return-object v0

    :cond_44
    const-string v0, "ro.smartisan.version"

    invoke-static {v0}, Lcom/cyjh/common/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/common/util/aa;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    const-string v0, "SMARTISAN"

    return-object v0

    :cond_55
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lcom/cyjh/common/util/aa;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLYME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    const-string v0, "FLYME"

    return-object v0

    :cond_68
    const-string v0, "unknown"

    sput-object v0, Lcom/cyjh/common/util/aa;->h:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7a

    const-string v0, "0"

    :cond_7a
    return-object v0
.end method
