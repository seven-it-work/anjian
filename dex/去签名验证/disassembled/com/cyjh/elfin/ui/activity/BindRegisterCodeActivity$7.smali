.class final Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;

.field final synthetic b:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$7;->b:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$7;->a:Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$7;->a:Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;->BuyLinkUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "com.android.browser"

    const-string v1, "com.android.browser.BrowserActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_26
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$7;->b:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$7;->b:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    const v1, 0x7f0900c0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
