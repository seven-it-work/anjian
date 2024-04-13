.class public Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;
.super Lcom/cyjh/common/base/fragment/BaseFragement;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;
    }
.end annotation


# static fields
.field public static final a:I = 0xa

.field private static final d:Ljava/lang/String; = "ScriptUipSetFragment"

.field private static final e:I = 0x5

.field private static final q:I = 0x1337959


# instance fields
.field b:Z

.field public c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:I

.field private p:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;

.field private r:Landroid/os/Handler;

.field private s:Lcom/elfin/engin/b/a/a;

.field private t:Lcom/elfin/ad/e/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/cyjh/common/base/fragment/BaseFragement;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->o:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->r:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->l:Landroid/widget/ImageView;

    return-object p0
.end method

.method private synthetic a(I)V
    .registers 3

    const/16 v0, 0x65

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->b:Z

    :cond_7
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result v0

    if-nez v0, :cond_c8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c8

    invoke-static {p1}, Lcom/cyjh/common/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateScriptSettings --> 1 \u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0 encoding="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",scriptSetting="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2f
    invoke-static {p1}, Lcom/cyjh/common/util/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "script.cfg"

    invoke-static {v1, v2}, Lcom/cyjh/common/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    iget-object v1, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, p1, v3}, Lcom/cyjh/common/util/n;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cyjh/elfin/entity/Script;->setCfgFile(Ljava/io/File;)V

    sget-object v3, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateScriptSettings --> 2 \u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0 toUtf8Result="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\ncfgFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",result="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b5

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_b5

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->s:Lcom/elfin/engin/b/a/a;

    invoke-interface {v0}, Lcom/elfin/engin/b/a/a;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->s:Lcom/elfin/engin/b/a/a;

    invoke-interface {v1}, Lcom/elfin/engin/b/a/a;->b()Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_b5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->s:Lcom/elfin/engin/b/a/a;

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->s:Lcom/elfin/engin/b/a/a;

    invoke-interface {v0}, Lcom/elfin/engin/b/a/a;->d()Ljava/lang/String;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->s:Lcom/elfin/engin/b/a/a;

    invoke-interface {v0, p1}, Lcom/elfin/engin/b/a/a;->b(Ljava/lang/String;)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_c3} :catch_c4

    :cond_c3
    return-void

    :catch_c4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c8
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->p:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;

    if-nez v0, :cond_c

    new-instance v0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;-><init>(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;B)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->p:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;

    :cond_c
    iget-object p0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->p:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic c(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method private c()V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_54

    :try_start_6
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_24

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v0

    const-string v1, "first_open_float_permission"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    xor-int/2addr v0, v2

    :cond_24
    sget-object v1, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showRunFloatJudgeOperate --> canDrawOverlays="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3d

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d()V

    return-void

    :cond_3d
    new-instance v0, Lcom/cyjh/elfin/ui/a/e;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/cyjh/elfin/ui/fragment/a;

    invoke-direct {v2, p0}, Lcom/cyjh/elfin/ui/fragment/a;-><init>(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/cyjh/elfin/ui/a/e;-><init>(Landroid/content/Context;Lcom/cyjh/elfin/ui/a/e$a;)V

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/a/e;->show()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4e} :catch_4f

    return-void

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_54
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d()V

    return-void
.end method

.method static synthetic d(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Landroid/widget/RelativeLayout;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->k:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private d()V
    .registers 5

    sget-object v0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d:Ljava/lang/String;

    const-string v1, "showRunFloat -->"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    new-instance v1, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$b;-><init>(Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;B)V

    iput-object v1, v0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->a:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$b;

    invoke-static {}, Lcom/cyjh/feedback/lib/d/b;->a()Lcom/cyjh/feedback/lib/d/a;

    move-result-object v1

    iget-object v0, v0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->a:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$b;

    invoke-virtual {v1, v0}, Lcom/cyjh/feedback/lib/d/a;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/elfin/engin/a/c$a;->a()Lcom/elfin/engin/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elfin/engin/a/c;->c()Lcom/elfin/engin/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/elfin/engin/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/cyjh/feedback/lib/e/e;->a()Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance v0, Lcom/cyjh/elfin/ui/a/d;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/ui/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/a/d;->show()V

    return-void

    :cond_3b
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->e()V

    return-void

    :cond_3f
    invoke-static {}, Lcom/cyjh/feedback/lib/e/e;->a()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {}, Lcom/cyjh/feedback/lib/e/e;->b()Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v2, 0x1

    :cond_4c
    sget-object v0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "showRunFloat isRoot\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_65

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->e()V

    return-void

    :cond_65
    invoke-static {}, Lcom/elfin/engin/a/c$a;->a()Lcom/elfin/engin/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elfin/engin/a/c;->c()Lcom/elfin/engin/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/elfin/engin/a/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic e(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method private e()V
    .registers 3

    invoke-static {}, Lcom/cyjh/elfin/e/a/a;->a()Lcom/cyjh/elfin/e/a/a;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/elfin/e/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Lcom/cyjh/elfin/e/a/a;->a()Lcom/cyjh/elfin/e/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/e/a/a;->b(Landroid/content/Context;)V

    return-void

    :cond_19
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_28

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iput v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    :cond_28
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/cyjh/elfin/e/c/k;->a(I)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method private f()V
    .registers 4

    new-instance v0, Lcom/elfin/ad/e/b;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->k:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2}, Lcom/elfin/ad/e/b;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->t:Lcom/elfin/ad/e/b;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->t:Lcom/elfin/ad/e/b;

    new-instance v1, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;-><init>(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/elfin/ad/e/b;->a(ILcom/elfin/ad/c/a;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->t:Lcom/elfin/ad/e/b;

    invoke-virtual {v0}, Lcom/elfin/ad/e/b;->b()V

    return-void
.end method

.method static synthetic f(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->l()V

    return-void
.end method

.method static synthetic g(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Lcom/elfin/engin/b/a/a;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->s:Lcom/elfin/engin/b/a/a;

    return-object p0
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->b:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$2;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$2;-><init>(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method static synthetic h(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)I
    .registers 3

    iget v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->o:I

    return v0
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    const v1, 0x7f10019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic i(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)I
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->o:I

    return v0
.end method

.method private i()V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    iget-boolean v1, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    if-eqz v1, :cond_1c

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/elf11.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "sdCardScriptFiles\n"

    const-string v3, "UTF-8"

    invoke-static {v1, v2, v3}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->a()V

    goto :goto_2d

    :cond_1c
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/elf11.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "copyScriptFiles\n"

    const-string v3, "UTF-8"

    invoke-static {v1, v2, v3}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->b()V

    :goto_2d
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private j()V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    const v1, 0x7f100190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    const v1, 0x7f100194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    const v1, 0x7f10019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    const v1, 0x7f10019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    const v1, 0x7f10019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->k:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    const v1, 0x7f100167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    const v1, 0x7f1001a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    const v1, 0x7f1001a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->m:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget-boolean v0, Lcom/cyjh/elfin/d/c;->d:Z

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    :goto_7a
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_88

    :cond_83
    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->i:Landroid/widget/Button;

    const/16 v1, 0x8

    goto :goto_7a

    :goto_88
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->k()V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v3, 0x3f666666    # 0.9f

    mul-float v0, v0, v3

    sub-float/2addr v2, v0

    float-to-int v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private k()V
    .registers 12

    sget-boolean v0, Lcom/cyjh/elfin/d/c;->d:Z

    if-eqz v0, :cond_119

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->j:Landroid/widget/TextView;

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v1

    iget-object v2, v1, Lcom/cyjh/elfin/d/c;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    iget-wide v2, v1, Lcom/cyjh/elfin/d/c;->b:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1b

    goto :goto_3d

    :cond_1b
    iget-wide v1, v1, Lcom/cyjh/elfin/d/c;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    sub-long v5, v1, v3

    const-wide/16 v1, 0x3c

    div-long/2addr v5, v1

    const-wide/16 v1, 0x0

    cmp-long v3, v5, v1

    if-lez v3, :cond_39

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-static {v1, v5, v6}, Lcom/cyjh/common/util/l;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_116

    :cond_39
    const-string v1, ""

    goto/16 :goto_116

    :cond_3d
    :goto_3d
    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v2

    iget v2, v2, Lcom/cyjh/elfin/entity/ParamsWrap;->onceTryMinute:I

    if-gtz v2, :cond_55

    const/4 v2, 0x3

    iput v2, v1, Lcom/cyjh/elfin/d/c;->c:I

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const v2, 0x7f0900f6

    invoke-virtual {v1, v2}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_116

    :cond_55
    const/4 v2, 0x1

    iput v2, v1, Lcom/cyjh/elfin/d/c;->c:I

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const v3, 0x7f0900fc

    invoke-virtual {v1, v3}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v5

    iget v5, v5, Lcom/cyjh/elfin/entity/ParamsWrap;->onceTryMinute:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v4

    iget v4, v4, Lcom/cyjh/elfin/entity/ParamsWrap;->onceTryMinute:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u5206\u949f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9a

    const/4 v1, 0x0

    goto/16 :goto_112

    :cond_9a
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x2

    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/style/StyleSpan;

    invoke-direct {v8, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v9, 0x11

    invoke-virtual {v7, v8, v6, v3, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v8, Landroid/text/style/BackgroundColorSpan;

    const-string v10, "#2964AA"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v8, v10}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v7, v8, v6, v3, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c9

    goto :goto_111

    :cond_c9
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x2

    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v7, v6, v3, v4, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    const-string v8, "#2964AA"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v6, v8}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v7, v6, v3, v4, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f1

    goto :goto_111

    :cond_f1
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    sub-int/2addr v3, v2

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v7, v4, v1, v3, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    const-string v4, "#2964AA"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v7, v2, v1, v3, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_111
    move-object v1, v7

    :goto_112
    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_116
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_119
    return-void
.end method

.method private l()V
    .registers 5

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getUiFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/elfin/engin/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/elfin/engin/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->s:Lcom/elfin/engin/b/a/a;

    :try_start_28
    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->s:Lcom/elfin/engin/b/a/a;

    invoke-interface {v0}, Lcom/elfin/engin/b/a/a;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->s:Lcom/elfin/engin/b/a/a;

    invoke-interface {v1}, Lcom/elfin/engin/b/a/a;->c()V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->s:Lcom/elfin/engin/b/a/a;

    invoke-interface {v1}, Lcom/elfin/engin/b/a/a;->d()Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_42} :catch_43

    return-void

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private m()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->c()V

    :cond_9
    return-void
.end method

.method private n()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->h:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private o()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->p:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;

    if-nez v0, :cond_c

    new-instance v0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;-><init>(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;B)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->p:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;

    :cond_c
    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->p:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private p()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->p:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->o:I

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->p:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->p:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;

    :cond_f
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const v0, 0x7f040066

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/cyjh/common/base/fragment/BaseFragement;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/elf11.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "sdCardScriptFiles\n"

    const-string v2, "UTF-8"

    invoke-static {v0, v1, v2}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->a()V

    goto :goto_30

    :cond_1f
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/elf11.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "copyScriptFiles\n"

    const-string v2, "UTF-8"

    invoke-static {v0, v1, v2}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->b()V

    :goto_30
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/cyjh/common/base/fragment/BaseFragement;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_18

    const/4 p2, 0x2

    if-ne p1, p2, :cond_18

    invoke-static {}, Lcom/elfin/engin/a/c$a;->a()Lcom/elfin/engin/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/elfin/engin/a/c;->c()Lcom/elfin/engin/a/b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/elfin/engin/a/b;->a(Landroid/content/Context;)V

    :cond_18
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f100167

    if-eq p1, v0, :cond_b1

    const v0, 0x7f100194

    if-eq p1, v0, :cond_57

    const v0, 0x7f10019d

    if-eq p1, v0, :cond_32

    const v0, 0x7f1001a0

    if-eq p1, v0, :cond_19

    return-void

    :cond_19
    iget p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->o:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_27

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->t:Lcom/elfin/ad/e/b;

    invoke-virtual {p1}, Lcom/elfin/ad/e/b;->d()V

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->p()V

    return-void

    :cond_27
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->p()V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->k:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_32
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/d/c;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-class v2, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_57
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->b:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_ad

    :try_start_60
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_7d

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v0

    const-string v1, "first_open_float_permission"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    xor-int/2addr v0, p1

    :cond_7d
    sget-object p1, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showRunFloatJudgeOperate --> canDrawOverlays="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_96

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d()V

    return-void

    :cond_96
    new-instance p1, Lcom/cyjh/elfin/ui/a/e;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/fragment/a;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/fragment/a;-><init>(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V

    invoke-direct {p1, v0, v1}, Lcom/cyjh/elfin/ui/a/e;-><init>(Landroid/content/Context;Lcom/cyjh/elfin/ui/a/e$a;)V

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/a/e;->show()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_a7} :catch_a8

    return-void

    :catch_a8
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_ad
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d()V

    return-void

    :cond_b1
    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->t:Lcom/elfin/ad/e/b;

    invoke-virtual {p1}, Lcom/elfin/ad/e/b;->d()V

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->p()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/cyjh/common/base/fragment/BaseFragement;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/cyjh/common/base/fragment/BaseFragement;->onDestroy()V

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->r:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->t:Lcom/elfin/ad/e/b;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->t:Lcom/elfin/ad/e/b;

    invoke-virtual {v0}, Lcom/elfin/ad/e/b;->e()V

    :cond_19
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/cyjh/common/base/fragment/BaseFragement;->onDestroyView()V

    return-void
.end method

.method public onMessageMainThread(Lcom/cyjh/elfin/entity/MsgItem;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem;->getMsgType()I

    move-result p1

    const/16 v0, 0x3f0

    if-eq p1, v0, :cond_18

    const/16 v0, 0x2761

    if-eq p1, v0, :cond_d

    return-void

    :cond_d
    :try_start_d
    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->s:Lcom/elfin/engin/b/a/a;

    invoke-interface {p1}, Lcom/elfin/engin/b/a/a;->c()V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    :cond_18
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->l()V

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/d/a$3;

    invoke-direct {v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/a$3;-><init>()V

    iput-object v0, p1, Lcom/cyjh/http/c/c/c;->c:Lcom/cyjh/http/c/c/c$b;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/elfin/d/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v2}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreStart"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/cyjh/http/c/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMessageThreadMain(Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;)V
    .registers 7
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;->getExpireTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_27

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/d/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/elfin/engin/d;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;->getExpireTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/cyjh/elfin/d/c;->b:J

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lcom/cyjh/elfin/d/c;->c:I

    goto :goto_3b

    :cond_27
    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;->getExpireTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_3b

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;->getExpireTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/cyjh/elfin/d/c;->b:J

    :cond_3b
    :goto_3b
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->k()V

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/common/base/fragment/BaseFragement;->onPause()V

    const-class v0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveScriptUIEvent(Lcom/cyjh/common/e/b;)V
    .registers 9
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "ScriptUipSetFragment onReceiveScriptUIEvent -->"

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "onReceiveScriptUIEvent --> \u66f4\u65b0Script UI"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ae;->b(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d:Ljava/lang/String;

    const-string v1, "onReceiveScriptUIEvent --> \u66f4\u65b0Script UI"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->l()V

    iget v0, p1, Lcom/cyjh/common/e/b;->a:I

    sget v1, Lcom/cyjh/elfin/e/c/n;->a:I

    if-ne v0, v1, :cond_ab

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    invoke-static {p1, v0}, Lcom/cyjh/elfin/e/c/o;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/elfin/e/c/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/cyjh/common/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5}, Lcom/cyjh/common/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceiveScriptUIEvent -->scriptCFGContent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",scriptUIPContent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceiveScriptUIEvent -->scriptUIPContentEncoding="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",scriptCFGContentEncoding="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-static {}, Lcom/cyjh/http/c/c/s;->a()Lcom/cyjh/http/c/c/s;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$3;

    invoke-direct {v6, p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$3;-><init>(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/http/c/c/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/c/c/s$a;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    invoke-static {p1, v0}, Lcom/cyjh/elfin/e/c/o;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v0

    const-string v1, "script_version"

    invoke-virtual {v0, v1, p1}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_ab
    iget p1, p1, Lcom/cyjh/common/e/b;->a:I

    sget v0, Lcom/cyjh/elfin/e/c/n;->d:I

    if-ne p1, v0, :cond_bd

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->r:Landroid/os/Handler;

    new-instance v0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$4;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$4;-><init>(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_bd
    return-void
.end method

.method public onReceiveSocketMessage(Lcom/elf/studio/a/a;)V
    .registers 8
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget v0, p1, Lcom/elf/studio/a/a;->a:I

    const/16 v1, 0x2775

    if-eq v0, v1, :cond_f6

    const/16 v1, 0x2777

    if-eq v0, v1, :cond_e1

    const/16 v1, 0x277b

    if-eq v0, v1, :cond_f

    return-void

    :cond_f
    sget-object v0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d:Ljava/lang/String;

    const-string v1, "onReceiveSocketMessage --> \u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/elf/studio/a/a;->d:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result v0

    if-nez v0, :cond_e0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e0

    invoke-static {p1}, Lcom/cyjh/common/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateScriptSettings --> 1 \u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0 encoding="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",scriptSetting="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_47
    invoke-static {p1}, Lcom/cyjh/common/util/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "script.cfg"

    invoke-static {v1, v2}, Lcom/cyjh/common/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    iget-object v1, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, p1, v3}, Lcom/cyjh/common/util/n;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cyjh/elfin/entity/Script;->setCfgFile(Ljava/io/File;)V

    sget-object v3, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateScriptSettings --> 2 \u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0 toUtf8Result="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\ncfgFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",result="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_cd

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_cd

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->s:Lcom/elfin/engin/b/a/a;

    invoke-interface {v0}, Lcom/elfin/engin/b/a/a;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->s:Lcom/elfin/engin/b/a/a;

    invoke-interface {v1}, Lcom/elfin/engin/b/a/a;->b()Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_cd
    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->s:Lcom/elfin/engin/b/a/a;

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->s:Lcom/elfin/engin/b/a/a;

    invoke-interface {v0}, Lcom/elfin/engin/b/a/a;->d()Ljava/lang/String;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->s:Lcom/elfin/engin/b/a/a;

    invoke-interface {v0, p1}, Lcom/elfin/engin/b/a/a;->b(Ljava/lang/String;)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_db} :catch_dc

    :cond_db
    return-void

    :catch_dc
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e0
    return-void

    :cond_e1
    sget-object p1, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d:Ljava/lang/String;

    const-string v0, "onReceiveSocketMessage --> \u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u505c\u6b62"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->h:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    invoke-static {}, Lcom/cyjh/elfin/services/a;->a()Lcom/cyjh/elfin/services/a;

    move-result-object p1

    const/4 v0, 0x3

    :goto_f2
    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/services/a;->a(I)V

    return-void

    :cond_f6
    sget-object p1, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d:Ljava/lang/String;

    const-string v0, "onReceiveSocketMessage --> \u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u542f\u52a8"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->h:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    invoke-static {}, Lcom/cyjh/elfin/services/a;->a()Lcom/cyjh/elfin/services/a;

    move-result-object p1

    const/4 v0, 0x2

    goto :goto_f2
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/common/base/fragment/BaseFragement;->onResume()V

    const-class v0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->b:Z

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->k()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/cyjh/common/base/fragment/BaseFragement;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public onStart()V
    .registers 1

    invoke-super {p0}, Lcom/cyjh/common/base/fragment/BaseFragement;->onStart()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/cyjh/common/base/fragment/BaseFragement;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_11b

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class p2, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->c:Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    iget-object p1, p1, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->b:Landroid/arch/lifecycle/MutableLiveData;

    new-instance p2, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$2;

    invoke-direct {p2, p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$2;-><init>(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V

    invoke-virtual {p1, p0, p2}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    const p2, 0x7f100190

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->g:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    const p2, 0x7f100194

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->h:Landroid/widget/Button;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    const p2, 0x7f10019d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->i:Landroid/widget/Button;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    const v0, 0x7f10019e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->j:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    const v0, 0x7f10019f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->k:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    const v0, 0x7f100167

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->l:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    const v0, 0x7f1001a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->m:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    const v0, 0x7f1001a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->n:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->m:Landroid/widget/TextView;

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-boolean p1, Lcom/cyjh/elfin/d/c;->d:Z

    if-eqz p1, :cond_ac

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->i:Landroid/widget/Button;

    const/4 v0, 0x0

    :goto_a3
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b1

    :cond_ac
    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->i:Landroid/widget/Button;

    const/16 v0, 0x8

    goto :goto_a3

    :goto_b1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->k()V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    const v2, 0x3f666666    # 0.9f

    mul-float p1, p1, v2

    sub-float/2addr v1, p1

    float-to-int p1, v1

    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/elfin/ad/e/a;->b()Z

    move-result p1

    if-nez p1, :cond_103

    new-instance p1, Lcom/elfin/ad/e/b;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->k:Landroid/widget/RelativeLayout;

    invoke-direct {p1, v0, v1}, Lcom/elfin/ad/e/b;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->t:Lcom/elfin/ad/e/b;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->t:Lcom/elfin/ad/e/b;

    const/4 v0, 0x3

    new-instance v1, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;-><init>(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/elfin/ad/e/b;->a(ILcom/elfin/ad/c/a;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->t:Lcom/elfin/ad/e/b;

    invoke-virtual {p1}, Lcom/elfin/ad/e/b;->b()V

    :cond_103
    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->h:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->m:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11b
    return-void
.end method
