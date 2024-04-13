.class final Lcom/cyjh/elfin/e/a/a$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/e/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/e/a/a;->o(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/cyjh/elfin/e/a/a$5;->b:Lcom/cyjh/elfin/e/a/a;

    iput-object p2, p0, Lcom/cyjh/elfin/e/a/a$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/elfin/e/a/a$5;->a:Landroid/content/Context;

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.coloros.safecenter"

    const-string v4, "com.coloros.safecenter.sysfloatwindow.FloatWindowListActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
