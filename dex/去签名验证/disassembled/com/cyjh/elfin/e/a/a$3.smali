.class final Lcom/cyjh/elfin/e/a/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/e/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/e/a/a;->m(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/cyjh/elfin/e/a/a$3;->b:Lcom/cyjh/elfin/e/a/a;

    iput-object p2, p0, Lcom/cyjh/elfin/e/a/a$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/elfin/e/a/a$3;->a:Landroid/content/Context;

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.meizu.safe.security.SHOW_APPSEC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "packageName"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception v1

    :try_start_1c
    const-string v2, "MeizuUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u83b7\u53d6\u60ac\u6d6e\u7a97\u6743\u9650, \u6253\u5f00AppSecActivity\u5931\u8d25, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/cyjh/elfin/e/a/a;->c(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_36} :catch_37

    return-void

    :catch_37
    move-exception v0

    const-string v1, "MeizuUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u83b7\u53d6\u60ac\u6d6e\u7a97\u6743\u9650\u5931\u8d25, \u901a\u7528\u83b7\u53d6\u65b9\u6cd5\u5931\u8d25, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
