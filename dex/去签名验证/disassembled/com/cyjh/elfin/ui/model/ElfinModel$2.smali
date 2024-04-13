.class final Lcom/cyjh/elfin/ui/model/ElfinModel$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/model/ElfinModel;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/model/ElfinModel;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$2;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-string v4, "yyyy-MM-dd"

    invoke-static {v0, v1, v4}, Lcom/cyjh/http/e/a;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appDayStatisFree"

    iget-object v4, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$2;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-virtual {v4}, Lcom/cyjh/elfin/ui/model/ElfinModel;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcom/cyjh/http/e/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$2;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v4

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->getApplication()Landroid/app/Application;

    move-result-object v5

    const/4 v6, 0x5

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/cyjh/http/c/c/c;->a(Landroid/content/Context;IIJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v2

    const-string v1, "yyyy-MM-dd"

    invoke-static {v4, v5, v1}, Lcom/cyjh/http/e/a;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/http/e/a;->a(Ljava/lang/String;)J

    move-result-wide v6

    div-long/2addr v6, v2

    const/4 v1, 0x0

    sub-long v1, v6, v4

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/elfin/ui/model/ElfinModel;->a(J)V
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v1, "zzz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ElfinFreeActivity--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
