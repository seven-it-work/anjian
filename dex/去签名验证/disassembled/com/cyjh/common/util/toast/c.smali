.class public final Lcom/cyjh/common/util/toast/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/common/util/toast/c$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/cyjh/common/util/toast/c$a;
    .registers 10

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v6, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_1b

    new-instance p0, Lcom/cyjh/common/util/toast/c$a;

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/cyjh/common/util/toast/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object p0

    :cond_1b
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget p0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_31

    const/4 v7, 0x1

    goto :goto_33

    :cond_31
    const/4 p0, 0x0

    const/4 v7, 0x0

    :goto_33
    new-instance p0, Lcom/cyjh/common/util/toast/c$a;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/cyjh/common/util/toast/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object p0
.end method

.method private static a(Ljava/io/File;)Lcom/cyjh/common/util/toast/c$a;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    return-object v0

    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    return-object v0

    :cond_1b
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_26

    return-object v0

    :cond_26
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_2e

    return-object v0

    :cond_2e
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cyjh/common/util/toast/c;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/cyjh/common/util/toast/c$a;

    move-result-object p0

    return-object p0

    :cond_39
    return-object v0
.end method

.method private static a(Landroid/app/Activity;I)V
    .registers 4

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_1f

    invoke-static {v0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    :cond_11
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/s;->a(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/s;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1f
    return-void
.end method

.method private static a(Landroid/app/Activity;ILjava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_18

    invoke-static {p2}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/cyjh/common/util/toast/s;->a(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcom/cyjh/common/util/toast/s;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_18
    return-void
.end method

.method private static a(Lcom/cyjh/common/util/toast/q$d;)V
    .registers 2
    .param p0    # Lcom/cyjh/common/util/toast/q$d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    iget-object v0, v0, Lcom/cyjh/common/util/toast/r;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a()Z
    .registers 1

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/c;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_10
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_16} :catch_17

    return p0

    :catch_17
    return v1
.end method

.method private static b(Lcom/cyjh/common/util/toast/q$d;)V
    .registers 2
    .param p0    # Lcom/cyjh/common/util/toast/q$d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    iget-object v0, v0, Lcom/cyjh/common/util/toast/r;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static b()Z
    .registers 1

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/c;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_16} :catch_1d

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v1

    :catch_1d
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method private static c()Z
    .registers 1

    invoke-static {}, Lcom/cyjh/common/util/toast/s;->a()Z

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_16} :catch_1c

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_1b

    return v0

    :cond_1b
    return v1

    :catch_1c
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method private static d()V
    .registers 2

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/s;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v0, "AppUtils"

    const-string v1, "Didn\'t exist launcher activity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/cyjh/common/util/toast/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private static e()V
    .registers 2

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/s;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v0, "AppUtils"

    const-string v1, "Didn\'t exist launcher activity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static e(Ljava/lang/String;)Z
    .registers 8

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_70

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_47

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_47

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_2a

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    return v4

    :cond_47
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_70

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_70

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    return v4

    :cond_70
    return v1
.end method

.method private static f()V
    .registers 2

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/toast/s;->a(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/s;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    :cond_20
    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, "AppUtils"

    const-string v0, "Didn\'t exist launcher activity."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static g()V
    .registers 3

    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    invoke-virtual {v1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_a

    :cond_1e
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private static g(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/cyjh/common/util/toast/s;->a(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static h()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/c;->h(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static h(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_18

    return-object v1

    :cond_18
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v1
.end method

.method private static i()I
    .registers 1

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/c;->i(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static i(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_17

    return v1

    :cond_17
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method private static j()Ljava/lang/String;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    :try_start_9
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_1b

    const-string p0, ""

    return-object p0

    :cond_1b
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private static k()Ljava/lang/String;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/c;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    :try_start_9
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_1b

    const-string p0, ""

    return-object p0

    :cond_1b
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private static l()Ljava/lang/String;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    :try_start_9
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_1b

    const-string p0, ""

    return-object p0

    :cond_1b
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private static m(Ljava/lang/String;)I
    .registers 4

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_18

    return v1

    :cond_18
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1a} :catch_1b

    return p0

    :catch_1b
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method private static m()Ljava/lang/String;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/c;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static n()I
    .registers 1

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/c;->m(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static n(Ljava/lang/String;)I
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return p0

    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private static o()I
    .registers 1

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/c;->n(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static o(Ljava/lang/String;)Lcom/cyjh/common/util/toast/c$a;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/cyjh/common/util/toast/c;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/cyjh/common/util/toast/c$a;

    move-result-object p0
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v0
.end method

.method private static p()Lcom/cyjh/common/util/toast/c$a;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/c;->o(Ljava/lang/String;)Lcom/cyjh/common/util/toast/c$a;

    move-result-object v0

    return-object v0
.end method

.method private static p(Ljava/lang/String;)Lcom/cyjh/common/util/toast/c$a;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_13

    return-object v1

    :cond_13
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_1b

    return-object v1

    :cond_1b
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/cyjh/common/util/toast/c;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/cyjh/common/util/toast/c$a;

    move-result-object p0

    return-object p0
.end method

.method private static q()Ljava/util/List;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cyjh/common/util/toast/c$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_10

    return-object v0

    :cond_10
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    invoke-static {v1, v3}, Lcom/cyjh/common/util/toast/c;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/cyjh/common/util/toast/c$a;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2f
    return-object v0
.end method

.method private static r()Z
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v1, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1a} :catch_20

    cmp-long v6, v4, v1

    if-nez v6, :cond_1f

    return v0

    :cond_1f
    return v3

    :catch_20
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method
