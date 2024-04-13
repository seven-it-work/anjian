.class public final Lcom/cyjh/elfin/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final A:Ljava/lang/String; = "network_file_is_exist"

.field public static final B:Ljava/lang/String; = "template_apk_req"

.field public static final C:Ljava/lang/String; = "single_apk_req"

.field public static final D:Ljava/lang/String; = "server_time"

.field public static final E:Ljava/lang/String; = "server_time_successful"

.field public static final F:Ljava/lang/String; = "last_ad_id"

.field public static final G:Ljava/lang/String; = "last_ad_link_url"

.field public static final H:Ljava/lang/String; = "last_ad_link_type"

.field public static final I:Ljava/lang/String; = "last_ad_jump_linkurl"

.field public static final J:Ljava/lang/String; = "last_ad_title"

.field public static final K:Ljava/lang/String; = "5000820"

.field public static final L:Z = true

.field public static final M:Z = false

.field public static final N:Ljava/lang/String; = "1031278"

.field public static final O:Ljava/lang/String; = "andzjjlkp01"

.field public static final P:Ljava/lang/String; = "ANDFZLBDAPI816"

.field public static final Q:Ljava/lang/String; = "RBKOKIXWV"

.field public static final R:Ljava/lang/String; = "com.cyjh.mobileanjian"

.field public static final S:Ljava/lang/String; = "redirect"

.field public static final T:Ljava/lang/String; = "download"

.field public static final U:Ljava/lang/String; = "redownload"

.field public static final V:Ljava/lang/String; = "SDK20191519030326wbwdvdccwn8sye8"

.field public static final W:Ljava/lang/String; = "POSIDe5v7yvk0jx0m"

.field public static final X:Ljava/lang/String; = ".gif"

.field public static final Y:Ljava/lang/String; = "http"

.field public static final Z:Ljava/lang/String; = "1"

.field public static final a:Ljava/lang/String; = "APP"

.field public static final aa:Ljava/lang/String; = "2"

.field public static final ab:Ljava/lang/String;

.field public static final ac:Ljava/lang/String; = "deviceid"

.field public static final ad:Ljava/lang/String; = "5e1f6df6cc024c80b7e8b86dc670c100"

.field public static final ae:Ljava/lang/String; = "101477"

.field public static final af:Ljava/lang/String; = "101478"

.field public static final ag:Ljava/lang/String; = "589ac20e"

.field public static final ah:Ljava/lang/String; = "F4F04588C1076DA9017964B229D657DA"

.field public static final ai:Ljava/lang/String; = "94CCB814573108BFBD19D8E2BB45AEE0"

.field public static final aj:Ljava/lang/String; = "9312C6DA2448C84DB3C4FE8F66E2B394"

.field public static final ak:I = 0x2710

.field public static final al:Ljava/lang/String; = "has_load_splash_first_ad"

.field public static final am:Ljava/lang/String; = "has_load_splash_second_ad"

.field public static final an:Ljava/lang/String; = "has_load_bottom_ad"

.field public static final ao:Ljava/lang/String; = "2xg8d8ga3z"

.field public static final ap:Ljava/lang/String; = "b1214d0324681928"

.field public static final aq:Ljava/lang/String; = "9292308"

.field public static final ar:Ljava/lang/String; = "9732310"

.field public static as:Ljava/lang/String; = "script"

.field public static at:Ljava/lang/String; = ".config"

.field public static au:Ljava/lang/String; = "assets"

.field public static av:I = 0x3c

.field public static final aw:I = 0x24

.field public static final ax:Ljava/lang/String; = "110"

.field public static final b:Ljava/lang/String; = "android"

.field public static final c:Ljava/lang/String; = "msg_data"

.field public static final d:Ljava/lang/String; = "Message"

.field public static final e:Ljava/lang/String; = "red_dot_flag"

.field public static final f:Ljava/lang/String; = "small_red_dot"

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static i:I = 0x2

.field public static final j:Ljava/lang/String; = "ad_old_id"

.field public static final k:Ljava/lang/String; = "ad_new_id"

.field public static final l:Ljava/lang/String; = "new_jump_link"

.field public static final m:Ljava/lang/String; = "old_jump_link"

.field public static final n:Ljava/lang/String; = "ad_is_first"

.field public static final o:Ljava/lang/String; = "is_touch_clicker"

.field public static final p:Ljava/lang/String; = "is_touch_clicker"

.field public static final q:Ljava/lang/String; = "id_description"

.field public static final r:Ljava/lang/String; = "is_clicker_description"

.field public static final s:Ljava/lang/String; = "default_entry_games"

.field public static final t:Ljava/lang/String; = "recommend_games_link"

.field public static final u:Ljava/lang/String; = "app-release.apk"

.field public static final v:I = 0x1

.field public static final w:Ljava/lang/String; = "com.cyjh.gundam"

.field public static final x:Ljava/lang/String; = "http://down.nishuoa.com/fengwocps.apk"

.field public static final y:Ljava/lang/String; = "youxifengwo.apk"

.field public static final z:Ljava/lang/String; = "save_network_message"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/a/b;->ab:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/elfin/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkMessage"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_18
    new-instance v1, Ljava/io/File;

    const-string v2, "NetworkReqLog.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2d

    :try_start_25
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    return-object v1

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2d
    return-object v1
.end method

.method public static final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/elfin/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ErrorMessage"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_18
    new-instance v1, Ljava/io/File;

    const-string v2, "xiaomi4.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static b(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/cyjh/elfin/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "adimg"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_20

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_20
    new-instance p0, Ljava/io/File;

    const-string v1, "pic"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/cyjh/elfin/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Info"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_14
    new-instance p0, Ljava/io/File;

    const-string v1, "device_id"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method
