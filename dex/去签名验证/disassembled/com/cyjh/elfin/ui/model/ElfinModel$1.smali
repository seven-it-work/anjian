.class public final Lcom/cyjh/elfin/ui/model/ElfinModel$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/model/ElfinModel;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/model/ElfinModel;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$1;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    const-string v0, "appDayStatisFree"

    iget-object v1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$1;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-virtual {v1}, Lcom/cyjh/elfin/ui/model/ElfinModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/http/e/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x3e8

    if-nez v1, :cond_27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v2

    const-string v1, "yyyy-MM-dd"

    invoke-static {v4, v5, v1}, Lcom/cyjh/http/e/a;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v2

    const-string v1, "yyyy-MM-dd"

    invoke-static {v4, v5, v1}, Lcom/cyjh/http/e/a;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_51

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$1;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->getApplication()Landroid/app/Application;

    move-result-object v5

    const/4 v6, 0x5

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/cyjh/http/c/c/c;->a(Landroid/content/Context;IIJ)V

    const-string v0, "appDayStatisFree"

    iget-object v4, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$1;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-virtual {v4}, Lcom/cyjh/elfin/ui/model/ElfinModel;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lcom/cyjh/http/e/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    :cond_51
    invoke-static {v1}, Lcom/cyjh/http/e/a;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v0, v4

    div-long/2addr v6, v2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$1;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {v0, v6, v7}, Lcom/cyjh/elfin/ui/model/ElfinModel;->a(Lcom/cyjh/elfin/ui/model/ElfinModel;J)V

    return-void
.end method
