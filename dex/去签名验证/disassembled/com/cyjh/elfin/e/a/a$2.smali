.class final Lcom/cyjh/elfin/e/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/e/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/e/a/a;->l(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/cyjh/elfin/e/a/a;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/e/a/a;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/e/a/a$2;->b:Lcom/cyjh/elfin/e/a/a;

    iput-object p2, p0, Lcom/cyjh/elfin/e/a/a$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 9

    iget-object v0, p0, Lcom/cyjh/elfin/e/a/a$2;->a:Landroid/content/Context;

    const/high16 v1, 0x10000000

    :try_start_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.huawei.systemmanager"

    const-string v5, "com.huawei.systemmanager.addviewmonitor.AddViewMonitorActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/cyjh/elfin/e/a/g;->a()D

    move-result-wide v3

    const-wide v5, 0x4008cccccccccccdL    # 3.1

    cmpl-double v7, v3, v5

    if-nez v7, :cond_29

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_29
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.huawei.systemmanager"

    const-string v5, "com.huawei.notificationmanager.ui.NotificationManagmentActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_38} :catch_70
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_38} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception v1

    const-string v2, "\u8fdb\u5165\u8bbe\u7f6e\u9875\u9762\u5931\u8d25\uff0c\u8bf7\u624b\u52a8\u8bbe\u7f6e"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "HuaweiUtils"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    :goto_4a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_4e
    move-exception v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.Android.settings"

    const-string v5, "com.android.settings.permission.TabItem"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_69
    const-string v0, "HuaweiUtils"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4a

    :catch_70
    move-exception v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.huawei.systemmanager"

    const-string v5, "com.huawei.permissionmanager.ui.MainActivity"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_69
.end method
