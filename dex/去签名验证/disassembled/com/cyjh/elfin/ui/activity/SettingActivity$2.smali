.class final Lcom/cyjh/elfin/ui/activity/SettingActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/c/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/SettingActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$2;->a:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/cyjh/elfin/ui/a/h;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$2;->a:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/cyjh/elfin/ui/a/h;-><init>(Landroid/content/Context;Lcom/cyjh/http/bean/response/VersionUpdateInfo;Z)V

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/a/h;->show()V

    return-void
.end method

.method public final b(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .registers 2

    return-void
.end method

.method public final c(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .registers 2

    return-void
.end method
