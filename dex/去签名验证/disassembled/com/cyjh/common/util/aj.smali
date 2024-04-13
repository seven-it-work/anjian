.class public final enum Lcom/cyjh/common/util/aj;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyjh/common/util/aj;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyjh/common/util/aj;

.field public static final enum INSTANCE:Lcom/cyjh/common/util/aj;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/cyjh/common/util/aj;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cyjh/common/util/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/common/util/aj;->INSTANCE:Lcom/cyjh/common/util/aj;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/cyjh/common/util/aj;

    sget-object v1, Lcom/cyjh/common/util/aj;->INSTANCE:Lcom/cyjh/common/util/aj;

    aput-object v1, v0, v2

    sput-object v0, Lcom/cyjh/common/util/aj;->$VALUES:[Lcom/cyjh/common/util/aj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyjh/common/util/aj;
    .registers 2

    const-class v0, Lcom/cyjh/common/util/aj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyjh/common/util/aj;

    return-object p0
.end method

.method public static values()[Lcom/cyjh/common/util/aj;
    .registers 1

    sget-object v0, Lcom/cyjh/common/util/aj;->$VALUES:[Lcom/cyjh/common/util/aj;

    invoke-virtual {v0}, [Lcom/cyjh/common/util/aj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyjh/common/util/aj;

    return-object v0
.end method


# virtual methods
.method public final copyWebInjectFile(Landroid/content/Context;)V
    .registers 9

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libc.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x14

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_d
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_26

    const/16 v0, 0x12

    aget-byte v0, v1, v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_22

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    const/4 v0, 0x0

    goto :goto_27

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    const/4 v0, 0x1

    :goto_27
    invoke-static {}, Lcom/cyjh/common/util/ac;->a()Z

    move-result v1

    const-string v4, "xygtest"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isRoot="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1ce

    const-string v0, "getprop phone.id"

    const/16 v4, 0x64

    invoke-static {v0, v3, v4}, Lcom/cyjh/common/util/ac;->a(Ljava/lang/String;ZI)Lcom/cyjh/common/util/ac$a;

    move-result-object v0

    iget-object v4, v0, Lcom/cyjh/common/util/ac$a;->b:Ljava/lang/String;

    if-eqz v4, :cond_138

    iget-object v0, v0, Lcom/cyjh/common/util/ac$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_138

    if-eqz v1, :cond_1cd

    :try_start_56
    const-string v0, "mkdir -p /sdcard/data/local/tmp/"

    invoke-static {v0, v3, v2}, Lcom/cyjh/common/util/ac;->a(Ljava/lang/String;ZI)Lcom/cyjh/common/util/ac$a;

    move-result-object v0

    const-string v1, "xygtest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/cyjh/common/util/ac$a;->a:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/cyjh/common/util/t;->a(Landroid/content/Context;)Lcom/cyjh/common/util/t;

    move-result-object v0

    const-string v1, "injectDDY/test.apk"

    const-string v4, "data/local/tmp/test.apk"

    invoke-virtual {v0, v1, v4}, Lcom/cyjh/common/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/common/util/t;

    invoke-static {p1}, Lcom/cyjh/common/util/t;->a(Landroid/content/Context;)Lcom/cyjh/common/util/t;

    move-result-object v0

    const-string v1, "injectDDY/ddyinject.apk"

    const-string v4, "data/local/tmp/ddyinject.apk"

    invoke-virtual {v0, v1, v4}, Lcom/cyjh/common/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/common/util/t;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/com.cyjh.mrpa/script/.config"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_af

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/com.cyjh.mrpa/script/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a4

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_a4
    invoke-static {p1}, Lcom/cyjh/common/util/t;->a(Landroid/content/Context;)Lcom/cyjh/common/util/t;

    move-result-object p1

    const-string v0, "injectDDY/config.txt"

    const-string v1, "com.cyjh.mrpa/script/.config"

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/common/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/common/util/t;

    :cond_af
    new-instance p1, Ljava/io/File;

    const-string v0, "/data/local/tmp/ddyinject.apk"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/test.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_fc

    invoke-static {p1}, Lcom/cyjh/common/util/n;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    const-string v4, "/sdcard/data/local/tmp/ddyinject.apk"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cyjh/common/util/n;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fc

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_fc

    invoke-static {v0}, Lcom/cyjh/common/util/n;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/data/local/tmp/test.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cyjh/common/util/n;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fc

    return-void

    :cond_fc
    const-string p1, "cp /sdcard/data/local/tmp/* /data/local/tmp/"

    invoke-static {p1, v3, v2}, Lcom/cyjh/common/util/ac;->a(Ljava/lang/String;ZI)Lcom/cyjh/common/util/ac$a;

    move-result-object p1

    const-string v0, "xygtest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "cp result="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/cyjh/common/util/ac$a;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "chmod 777 /data/local/tmp/*"

    invoke-static {p1, v3, v2}, Lcom/cyjh/common/util/ac;->a(Ljava/lang/String;ZI)Lcom/cyjh/common/util/ac$a;

    move-result-object p1

    const-string v0, "xygtest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/cyjh/common/util/ac$a;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_132} :catch_133

    return-void

    :catch_133
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_138
    if-eqz v1, :cond_1cd

    :try_start_13a
    const-string v0, "mkdir -p /sdcard/data/local/tmp/"

    invoke-static {v0, v3, v2}, Lcom/cyjh/common/util/ac;->a(Ljava/lang/String;ZI)Lcom/cyjh/common/util/ac$a;

    const-string v0, "mkdir -p /data/local/tmp/"

    invoke-static {v0, v3, v2}, Lcom/cyjh/common/util/ac;->a(Ljava/lang/String;ZI)Lcom/cyjh/common/util/ac$a;

    const-string v0, "mkdir -p /sdcard/com.cyjh.mrpa/script/"

    invoke-static {v0, v3, v2}, Lcom/cyjh/common/util/ac;->a(Ljava/lang/String;ZI)Lcom/cyjh/common/util/ac$a;

    invoke-static {p1}, Lcom/cyjh/common/util/t;->a(Landroid/content/Context;)Lcom/cyjh/common/util/t;

    move-result-object v0

    const-string v1, "inject/armeabi-v7a/Inject"

    const-string v4, "data/local/tmp/a"

    invoke-virtual {v0, v1, v4}, Lcom/cyjh/common/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/common/util/t;

    invoke-static {p1}, Lcom/cyjh/common/util/t;->a(Landroid/content/Context;)Lcom/cyjh/common/util/t;

    move-result-object v0

    const-string v1, "inject/armeabi-v7a/libnullso2.so"

    const-string v4, "data/local/tmp/c"

    invoke-virtual {v0, v1, v4}, Lcom/cyjh/common/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/common/util/t;

    invoke-static {p1}, Lcom/cyjh/common/util/t;->a(Landroid/content/Context;)Lcom/cyjh/common/util/t;

    move-result-object v0

    const-string v1, "inject/test.apk"

    const-string v4, "test.apk"

    invoke-virtual {v0, v1, v4}, Lcom/cyjh/common/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/common/util/t;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/com.cyjh.mrpa/script/.config"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_192

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/com.cyjh.mrpa/script/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_187

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_187
    invoke-static {p1}, Lcom/cyjh/common/util/t;->a(Landroid/content/Context;)Lcom/cyjh/common/util/t;

    move-result-object p1

    const-string v0, "inject/config.txt"

    const-string v1, "com.cyjh.mrpa/script/.config"

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/common/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/common/util/t;

    :cond_192
    const-string p1, "cp /sdcard/data/local/tmp/* /data/local/tmp/"

    invoke-static {p1, v3, v2}, Lcom/cyjh/common/util/ac;->a(Ljava/lang/String;ZI)Lcom/cyjh/common/util/ac$a;

    move-result-object p1

    const-string v0, "xygtest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "result="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/cyjh/common/util/ac$a;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "chmod 777 /data/local/tmp/*"

    invoke-static {p1, v3, v2}, Lcom/cyjh/common/util/ac;->a(Ljava/lang/String;ZI)Lcom/cyjh/common/util/ac$a;

    move-result-object p1

    const-string v0, "xygtest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/cyjh/common/util/ac$a;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_1c8} :catch_1c9

    return-void

    :catch_1c9
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1cd
    return-void

    :cond_1ce
    if-eqz v1, :cond_256

    :try_start_1d0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mkdir -p /sdcard/data/local/tmp/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mkdir -p /data/local/tmp/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mkdir -p /sdcard/com.cyjh.mrpa/script/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/cyjh/common/util/ac;->a(Ljava/util/List;)Lcom/cyjh/common/util/ac$a;

    invoke-static {p1}, Lcom/cyjh/common/util/t;->a(Landroid/content/Context;)Lcom/cyjh/common/util/t;

    move-result-object v1

    const-string v2, "inject/x86/Inject"

    const-string v3, "data/local/tmp/a"

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/common/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/common/util/t;

    invoke-static {p1}, Lcom/cyjh/common/util/t;->a(Landroid/content/Context;)Lcom/cyjh/common/util/t;

    move-result-object v1

    const-string v2, "inject/x86/libnullso2.so"

    const-string v3, "data/local/tmp/c"

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/common/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/common/util/t;

    invoke-static {p1}, Lcom/cyjh/common/util/t;->a(Landroid/content/Context;)Lcom/cyjh/common/util/t;

    move-result-object v1

    const-string v2, "inject/test.apk"

    const-string v3, "test.apk"

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/common/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/common/util/t;

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/com.cyjh.mrpa/script/.config"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_230

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/com.cyjh.mrpa/script/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_225

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_225
    invoke-static {p1}, Lcom/cyjh/common/util/t;->a(Landroid/content/Context;)Lcom/cyjh/common/util/t;

    move-result-object p1

    const-string v1, "inject/config.txt"

    const-string v2, "com.cyjh.mrpa/script/.config"

    invoke-virtual {p1, v1, v2}, Lcom/cyjh/common/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/common/util/t;

    :cond_230
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string p1, "cp /sdcard/data/local/tmp/* /data/local/tmp/"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "chmod 777 /data/local/tmp/*"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/cyjh/common/util/ac;->a(Ljava/util/List;)Lcom/cyjh/common/util/ac$a;

    move-result-object p1

    const-string v0, "xygtest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/cyjh/common/util/ac$a;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_256
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_256} :catch_256

    :catch_256
    :cond_256
    return-void
.end method
