.class public Lcom/cyjh/elfin/ui/a/h;
.super Lcom/cyjh/elfin/ui/a/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/a/h$a;
    }
.end annotation


# static fields
.field private static final S:I = 0x1f4

.field private static final T:I = 0x3e8

.field private static final U:I = 0x3e9

.field private static final V:I = 0x3ea

.field static a:Ljava/lang/String; = "h"


# instance fields
.field private K:Landroid/widget/Button;

.field private L:Landroid/widget/Button;

.field private M:Landroid/widget/LinearLayout;

.field private N:Landroid/widget/LinearLayout;

.field private O:Lcom/cyjh/http/bean/response/VersionUpdateInfo;

.field private P:Z

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private W:Z

.field private X:Z

.field private Y:Landroid/os/Handler;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/Button;

.field e:Landroid/widget/ProgressBar;

.field f:Z

.field g:Landroid/content/Context;

.field protected h:Lcom/cyjh/elfin/receiver/NetStateReceiver$a;

.field i:Z

.field j:Lcom/cyjh/http/e/b$a;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cyjh/http/bean/response/VersionUpdateInfo;Z)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/a/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/a/h;->i:Z

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/cyjh/elfin/ui/a/i;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/a/i;-><init>(Lcom/cyjh/elfin/ui/a/h;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->Y:Landroid/os/Handler;

    new-instance v0, Lcom/cyjh/elfin/ui/a/h$2;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/a/h$2;-><init>(Lcom/cyjh/elfin/ui/a/h;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->j:Lcom/cyjh/http/e/b$a;

    iput-boolean p3, p0, Lcom/cyjh/elfin/ui/a/h;->P:Z

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->g:Landroid/content/Context;

    iget-boolean p1, p0, Lcom/cyjh/elfin/ui/a/h;->P:Z

    if-eqz p1, :cond_4b

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_31

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/h;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x7f6

    :goto_2d
    invoke-virtual {p1, p3}, Landroid/view/Window;->setType(I)V

    goto :goto_4b

    :cond_31
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x13

    if-lt p1, p3, :cond_44

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x18

    if-ge p1, p3, :cond_44

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/h;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x7d5

    goto :goto_2d

    :cond_44
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/h;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x7d2

    goto :goto_2d

    :cond_4b
    :goto_4b
    iput-object p2, p0, Lcom/cyjh/elfin/ui/a/h;->O:Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    return-void
.end method

.method private synthetic a(Landroid/os/Message;)Z
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_56

    goto :goto_54

    :pswitch_6
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/a/h;->i:Z

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/h;->a()V

    goto :goto_54

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_54

    :pswitch_31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/a/h;->f:Z

    if-nez v0, :cond_54

    sget-object v0, Lcom/cyjh/elfin/ui/a/h;->a:Ljava/lang/String;

    const-string v1, "afterDownloadSuccess --> 1 "

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/h;->a(Ljava/io/File;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->c:Landroid/widget/Button;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->c:Landroid/widget/Button;

    new-instance v1, Lcom/cyjh/elfin/ui/a/j;

    invoke-direct {v1, p0, p1}, Lcom/cyjh/elfin/ui/a/j;-><init>(Lcom/cyjh/elfin/ui/a/h;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_54
    :goto_54
    const/4 p1, 0x0

    return p1

    :pswitch_data_56
    .packed-switch 0x3e8
        :pswitch_31
        :pswitch_d
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/a/h;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cyjh/elfin/ui/a/h;->W:Z

    return p0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/elfin/ui/a/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/io/File;)V
    .registers 4

    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/a/h;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/cyjh/elfin/ui/a/h;->a:Ljava/lang/String;

    const-string v1, "afterDownloadSuccess --> 1 "

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/h;->a(Ljava/io/File;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->c:Landroid/widget/Button;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->c:Landroid/widget/Button;

    new-instance v1, Lcom/cyjh/elfin/ui/a/j;

    invoke-direct {v1, p0, p1}, Lcom/cyjh/elfin/ui/a/j;-><init>(Lcom/cyjh/elfin/ui/a/h;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/cyjh/elfin/ui/a/h;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cyjh/elfin/ui/a/h;->X:Z

    return p0
.end method

.method private c()V
    .registers 4

    const v0, 0x7f100207

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->k:Landroid/widget/TextView;

    const v0, 0x7f100208

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->l:Landroid/widget/TextView;

    const v0, 0x7f10020a

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->b:Landroid/widget/TextView;

    const v0, 0x7f10020d

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->m:Landroid/widget/Button;

    const v0, 0x7f100210

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->K:Landroid/widget/Button;

    const v0, 0x7f10020f

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->L:Landroid/widget/Button;

    const v0, 0x7f10020c

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->c:Landroid/widget/Button;

    const v0, 0x7f10020b

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->e:Landroid/widget/ProgressBar;

    const v0, 0x7f10020e

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->M:Landroid/widget/LinearLayout;

    const v0, 0x7f100209

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->N:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->K:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->L:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/h;->a()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/a/h;->O:Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    iget v1, v1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->PackageSize:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/cyjh/common/util/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/a/h;->O:Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    iget-object v1, v1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic c(Lcom/cyjh/elfin/ui/a/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/a/h;->e()V

    return-void
.end method

.method private synthetic c(Ljava/io/File;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/h;->dismiss()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private d()V
    .registers 2

    new-instance v0, Lcom/cyjh/elfin/ui/a/h$1;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/a/h$1;-><init>(Lcom/cyjh/elfin/ui/a/h;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->h:Lcom/cyjh/elfin/receiver/NetStateReceiver$a;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/cyjh/elfin/receiver/NetStateReceiver;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->h:Lcom/cyjh/elfin/receiver/NetStateReceiver$a;

    invoke-static {v0}, Lcom/cyjh/elfin/receiver/NetStateReceiver;->a(Lcom/cyjh/elfin/receiver/NetStateReceiver$a;)V

    return-void
.end method

.method private synthetic d(Ljava/io/File;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/h;->a(Ljava/io/File;)V

    return-void
.end method

.method static synthetic d(Lcom/cyjh/elfin/ui/a/h;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/a/h;->X:Z

    return v0
.end method

.method private e()V
    .registers 6

    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/a/h;->i:Z

    if-eqz v0, :cond_54

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/a/h;->i:Z

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/a/h;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/a/h;->setCancelable(Z)V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/a/h;->N:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/a/h;->M:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/a/h;->m:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cyjh/elfin/ui/a/h$a;

    invoke-direct {v2, p0, v0}, Lcom/cyjh/elfin/ui/a/h$a;-><init>(Lcom/cyjh/elfin/ui/a/h;B)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/cyjh/elfin/ui/a/h$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_54
    return-void
.end method

.method static synthetic e(Lcom/cyjh/elfin/ui/a/h;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/a/h;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/cyjh/elfin/ui/a/h;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/a/h;->Y:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/cyjh/elfin/ui/a/h;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/a/h;->W:Z

    return v0
.end method

.method static synthetic h(Lcom/cyjh/elfin/ui/a/h;)Lcom/cyjh/http/bean/response/VersionUpdateInfo;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/a/h;->O:Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    return-object p0
.end method


# virtual methods
.method final a()V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->N:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->O:Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    iget v0, v0, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->m:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/a/h;->setCancelable(Z)V

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/a/h;->setCanceledOnTouchOutside(Z)V

    return-void

    :cond_25
    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/cyjh/elfin/ui/a/h;->setCancelable(Z)V

    invoke-virtual {p0, v2}, Lcom/cyjh/elfin/ui/a/h;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method final a(Ljava/io/File;)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cyjh/elfin/ui/a/k;

    invoke-direct {v1, p0, p1}, Lcom/cyjh/elfin/ui/a/k;-><init>(Lcom/cyjh/elfin/ui/a/h;Ljava/io/File;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dismiss()V
    .registers 3

    invoke-super {p0}, Lcom/cyjh/elfin/ui/a/a;->dismiss()V

    sget-object v0, Lcom/cyjh/elfin/ui/a/h;->a:Ljava/lang/String;

    const-string v1, "dismiss -->"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/cyjh/elfin/receiver/NetStateReceiver;->b(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_2a

    :pswitch_7
    return-void

    :pswitch_8
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/h;->dismiss()V

    return-void

    :pswitch_c
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/a/h;->e()V

    return-void

    :pswitch_10
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/a/h;->f:Z

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/cyjh/elfin/receiver/NetStateReceiver;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/cyjh/http/e/b;->a()Lcom/cyjh/http/e/b;

    move-result-object p1

    iget-object v0, p1, Lcom/cyjh/http/e/b;->c:Lb/e;

    if-eqz v0, :cond_25

    iget-object p1, p1, Lcom/cyjh/http/e/b;->c:Lb/e;

    invoke-interface {p1}, Lb/e;->c()V

    :cond_25
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/h;->dismiss()V

    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x7f10020c
        :pswitch_10
        :pswitch_c
        :pswitch_7
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/cyjh/elfin/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0400a0

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/h;->setContentView(I)V

    const p1, 0x3f666666    # 0.9f

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/elfin/ui/a/h;->a(FF)V

    const p1, 0x7f100207

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->k:Landroid/widget/TextView;

    const p1, 0x7f100208

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->l:Landroid/widget/TextView;

    const p1, 0x7f10020a

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->b:Landroid/widget/TextView;

    const p1, 0x7f10020d

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->m:Landroid/widget/Button;

    const p1, 0x7f100210

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->K:Landroid/widget/Button;

    const p1, 0x7f10020f

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->L:Landroid/widget/Button;

    const p1, 0x7f10020c

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->c:Landroid/widget/Button;

    const p1, 0x7f10020b

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->e:Landroid/widget/ProgressBar;

    const p1, 0x7f10020e

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->M:Landroid/widget/LinearLayout;

    const p1, 0x7f100209

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->N:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->m:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->K:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->L:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->c:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/h;->a()V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->O:Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    iget v0, v0, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->PackageSize:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/cyjh/common/util/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->k:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/h;->O:Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/cyjh/elfin/ui/a/h$1;

    invoke-direct {p1, p0}, Lcom/cyjh/elfin/ui/a/h$1;-><init>(Lcom/cyjh/elfin/ui/a/h;)V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->h:Lcom/cyjh/elfin/receiver/NetStateReceiver$a;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/cyjh/elfin/receiver/NetStateReceiver;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/h;->h:Lcom/cyjh/elfin/receiver/NetStateReceiver$a;

    invoke-static {p1}, Lcom/cyjh/elfin/receiver/NetStateReceiver;->a(Lcom/cyjh/elfin/receiver/NetStateReceiver$a;)V

    return-void
.end method

.method public show()V
    .registers 1

    invoke-super {p0}, Lcom/cyjh/elfin/ui/a/a;->show()V

    return-void
.end method
