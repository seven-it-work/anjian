.class public final Lcom/cyjh/mobileanjian/ipc/stuff/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "com.cyjh.mobileanjian"

.field private static b:Z = true

.field private static c:Ljava/lang/String; = "12345678-0000-0000-0000-BA9876543210"

.field private static d:Ljava/lang/String; = "2015-06-24"

.field private static e:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/cyjh/mobileanjian/ipc/stuff/a;->d:Ljava/lang/String;

    return-void
.end method

.method private static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/cyjh/mobileanjian/ipc/stuff/a;->b:Z

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/cyjh/mobileanjian/ipc/stuff/a;->b:Z

    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "NOT_FOUND"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p0, v0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/cyjh/mobileanjian/ipc/stuff/a;->c:Ljava/lang/String;

    return-void
.end method

.method private static c(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/16 p0, -0x7d0

    return p0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/cyjh/mobileanjian/ipc/stuff/a;->e:Ljava/lang/String;

    return-void
.end method

.method private static d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.cyjh.mobileanjian"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
