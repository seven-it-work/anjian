.class public final Lcom/cyjh/elfin/floatingwindowprocess/a/c;
.super Lcom/cyjh/elfin/ui/a/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/Button;

.field private e:Landroid/widget/ScrollView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/elfin/engin/b/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/a/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getLcFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getLcFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getLcFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/ParamsWrap;->getScriptEncryptKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/elfin/engin/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_3e

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    :goto_3a
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    return-void

    :cond_3e
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_51

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_51

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d5

    goto :goto_3a

    :cond_51
    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    goto :goto_3a
.end method

.method private a()V
    .registers 4

    const v0, 0x7f10015e

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->b:Landroid/widget/ImageView;

    const v0, 0x7f100162

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->c:Landroid/widget/Button;

    const v0, 0x7f100160

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->e:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10015f

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(FFIZ)V
    .registers 13

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->dismiss()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/cyjh/elfin/floatingwindowprocess/a/c$3;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/cyjh/elfin/floatingwindowprocess/a/c$3;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/a/c;FFIZ)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v7, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1e
    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/floatingwindowprocess/a/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->c()V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/floatingwindowprocess/a/c;FF)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->a(FF)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/floatingwindowprocess/a/c;FI)V
    .registers 11

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->dismiss()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/cyjh/elfin/floatingwindowprocess/a/c$3;

    const v3, 0x3f666666    # 0.9f

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/cyjh/elfin/floatingwindowprocess/a/c$3;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/a/c;FFIZ)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v7, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_20
    return-void
.end method

.method private b()V
    .registers 3

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$1;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c$1;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/a/c;)V

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/b;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/a/c$2;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c$2;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/a/c;)V

    iput-object v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->b:Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;

    return-void
.end method

.method private c()V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->g:Lcom/elfin/engin/b/a/a;

    if-nez v1, :cond_2c

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->getContext()Landroid/content/Context;

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

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/elfin/engin/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/elfin/engin/b/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->g:Lcom/elfin/engin/b/a/a;

    :cond_2c
    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->g:Lcom/elfin/engin/b/a/a;

    invoke-interface {v1}, Lcom/elfin/engin/b/a/a;->a()Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->g:Lcom/elfin/engin/b/a/a;

    invoke-interface {v2}, Lcom/elfin/engin/b/a/a;->c()V

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->g:Lcom/elfin/engin/b/a/a;

    invoke-interface {v2}, Lcom/elfin/engin/b/a/a;->d()Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_64

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_64
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->e:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->removeViewAt(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->e:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6f} :catch_70

    return-void

    :catch_70
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->g:Lcom/elfin/engin/b/a/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->g:Lcom/elfin/engin/b/a/a;

    invoke-interface {v0}, Lcom/elfin/engin/b/a/a;->d()Ljava/lang/String;

    :cond_9
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f10015e

    if-eq p1, v0, :cond_38

    const v0, 0x7f100162

    if-eq p1, v0, :cond_f

    return-void

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getCfgFile()Ljava/io/File;

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->g:Lcom/elfin/engin/b/a/a;

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->g:Lcom/elfin/engin/b/a/a;

    invoke-interface {p1}, Lcom/elfin/engin/b/a/a;->d()Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    :goto_26
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v1, 0x3f0

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->dismiss()V

    return-void

    :cond_38
    new-instance p1, Lcom/cyjh/elfin/floatingwindowprocess/a/d;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->a:Landroid/content/Context;

    iput-object v0, p1, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->b:Landroid/content/Context;

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$4;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/c$4;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/a/c;Lcom/cyjh/elfin/floatingwindowprocess/a/d;)V

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->show()V

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->dismiss()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/cyjh/elfin/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040057

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->setContentView(I)V

    const p1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->a(F)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/b;

    move-result-object p1

    iget-boolean p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->a:Z

    const v0, 0x3f666666    # 0.9f

    if-eqz p1, :cond_21

    const p1, 0x3f4ccccd    # 0.8f

    :goto_1d
    invoke-virtual {p0, v0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->a(FF)V

    goto :goto_25

    :cond_21
    const p1, 0x3f19999a    # 0.6f

    goto :goto_1d

    :goto_25
    const p1, 0x7f10015e

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->b:Landroid/widget/ImageView;

    const p1, 0x7f100162

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->c:Landroid/widget/Button;

    const p1, 0x7f100160

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->e:Landroid/widget/ScrollView;

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->c:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f10015f

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->f:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->c()V

    new-instance p1, Lcom/cyjh/elfin/floatingwindowprocess/a/c$1;

    invoke-direct {p1, p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c$1;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/a/c;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/b;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$2;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c$2;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/a/c;)V

    iput-object v0, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->b:Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;

    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Lcom/cyjh/elfin/ui/a/a;->onDetachedFromWindow()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/b;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->b:Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;

    return-void
.end method
