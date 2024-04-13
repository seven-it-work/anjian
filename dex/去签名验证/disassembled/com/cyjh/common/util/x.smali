.class public final Lcom/cyjh/common/util/x;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x4

.field public static final c:I = 0x3

.field public static final d:I = 0x2

.field public static final e:I = 0x5

.field public static final f:I = -0x1

.field private static g:Landroid/net/ConnectivityManager; = null

.field private static final h:I = 0x10

.field private static final i:I = 0x11

.field private static final j:I = 0x12

.field private static final k:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcom/cyjh/common/util/x;->d(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 5

    invoke-static {p0}, Lcom/cyjh/common/util/x;->d(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p0, :cond_47

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    packed-switch v2, :pswitch_data_4a

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TD-SCDMA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "WCDMA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "CDMA2000"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_48

    goto :goto_43

    :pswitch_41
    const/4 v0, 0x4

    return v0

    :cond_43
    :goto_43
    :pswitch_43
    const/4 v0, 0x3

    return v0

    :pswitch_45
    const/4 v0, 0x2

    return v0

    :cond_47
    const/4 v0, -0x1

    :cond_48
    return v0

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_45
        :pswitch_45
        :pswitch_43
        :pswitch_45
        :pswitch_43
        :pswitch_43
        :pswitch_45
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_45
        :pswitch_43
        :pswitch_41
        :pswitch_43
        :pswitch_43
        :pswitch_45
        :pswitch_43
        :pswitch_41
    .end packed-switch
.end method

.method private static c(Landroid/content/Context;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_11

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_d
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_d
.end method

.method private static d(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 2

    sget-object v0, Lcom/cyjh/common/util/x;->g:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_e

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    sput-object p0, Lcom/cyjh/common/util/x;->g:Landroid/net/ConnectivityManager;

    :cond_e
    sget-object p0, Lcom/cyjh/common/util/x;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcom/cyjh/common/util/x;->d(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private static f(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/cyjh/common/util/x;->d(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private static g(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/cyjh/common/util/x;->d(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    return v0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/cyjh/common/util/x;->i(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static i(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private static j(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/cyjh/common/util/x;->i(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method private static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/cyjh/common/util/x;->b(Landroid/content/Context;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_19

    packed-switch p0, :pswitch_data_1c

    const-string p0, "unknow"

    return-object p0

    :pswitch_d
    const-string p0, "4g"

    return-object p0

    :pswitch_10
    const-string p0, "3g"

    return-object p0

    :pswitch_13
    const-string p0, "2g"

    return-object p0

    :pswitch_16
    const-string p0, "wf"

    return-object p0

    :cond_19
    const-string p0, "ethernet"

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method private static l(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    return v0

    :cond_f
    return v1
.end method

.method private static m(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/cyjh/common/util/x;->b(Landroid/content/Context;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_14

    packed-switch p0, :pswitch_data_16

    const/4 p0, 0x0

    return p0

    :pswitch_c
    const/4 p0, 0x4

    return p0

    :pswitch_e
    const/4 p0, 0x3

    return p0

    :pswitch_10
    const/4 p0, 0x2

    return p0

    :pswitch_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x5

    return p0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
    .end packed-switch
.end method
