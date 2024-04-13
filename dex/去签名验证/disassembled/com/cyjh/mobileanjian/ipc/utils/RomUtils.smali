.class public Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/cyjh/mobileanjian/ipc/utils/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/utils/b;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/utils/b;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmuiVersion()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.build.version.emui"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFlymeVersion()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public static getKnownRomVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "undefined"

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isMIUI()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->getMUIUDetailVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isFlyme()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->getFlymeVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isEmui()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->getEmuiVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isHaimawanVM()Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v0, "\u6d77\u9a6c\u73a9\u6a21\u62df\u5668"

    return-object v0

    :cond_2c
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isTiantianVM()Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v0, "\u5929\u5929\u6a21\u62df\u5668"

    return-object v0

    :cond_35
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isNoxVM()Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v0, "\u591c\u795e\u6a21\u62df\u5668"

    return-object v0

    :cond_3e
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isXiaoyaoVM()Z

    move-result v1

    if-eqz v1, :cond_47

    const-string v0, "\u900d\u9065\u6a21\u62df\u5668"

    return-object v0

    :cond_47
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isXXZS()Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v0, "\u7329\u7329\u52a9\u624b"

    :cond_4f
    return-object v0
.end method

.method public static getMUIUDetailVersion()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isMIUI()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    :cond_9
    const-string v0, "MIUI %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v4, "ro.miui.ui.version.name"

    invoke-virtual {v3, v4}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMUIUVersion()I
    .registers 3

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isMIUI()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.miui.ui.version.name"

    const-string v2, "V0"

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "V8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/16 v0, 0x8

    return v0

    :cond_1d
    const-string v1, "V7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v0, 0x7

    return v0

    :cond_27
    const-string v1, "V6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 v0, 0x6

    return v0

    :cond_31
    const-string v1, "V5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x5

    return v0

    :cond_3b
    const/4 v0, 0x0

    return v0
.end method

.method public static isARMCpu()Z
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libc.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x14

    new-array v1, v1, [B

    const/4 v2, 0x1

    :try_start_c
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_26

    const/16 v0, 0x12

    aget-byte v0, v1, v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_22

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    const/4 v0, 0x0

    const/4 v2, 0x0

    return v2

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    return v2
.end method

.method public static isEmui()Z
    .registers 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.build.version.emui"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEmulator()Z
    .registers 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isHaimawanVM()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isTiantianVM()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isNoxVM()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isXiaoyaoVM()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isXXZS()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    return v0

    :cond_21
    :goto_21
    const/4 v0, 0x1

    return v0
.end method

.method public static isFlyme()Z
    .registers 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.flyme.published"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHaimawanVM()Z
    .registers 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "droid4x.inited"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.droid4x.host.mac"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "droid4x.battery.status"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "persist.droid4x.op_alpha"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    return v0

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    return v0
.end method

.method public static isMIUI()Z
    .registers 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.miui.ui.version.name"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNoxVM()Z
    .registers 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "nox.inited"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "nox.vbox_dpi"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.nox.host.mac"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "nox.battery.status"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    return v0

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    return v0
.end method

.method public static isOppoR9S()Z
    .registers 4

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.product.name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v2, "ro.product.model"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2a

    const-string v2, "R9s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    const-string v0, "R9s"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    return v0

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public static isTiantianVM()Z
    .registers 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ttVM.inited"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ttvmd.battery.status"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ttVM.vbox_dpi"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ttvmd.battery.mode"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    return v0

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    return v0
.end method

.method public static isXXZS()Z
    .registers 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.xxzs.DeviceId"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.xxzs.origDeviceId"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method public static isXiaoyaoVM()Z
    .registers 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "microvirt.inited"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "microvirt.channel"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "ro.microvirt.hmac"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->a:Lcom/cyjh/mobileanjian/ipc/utils/b;

    const-string v1, "microvirt.vbox_dpi"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    return v0

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    return v0
.end method
