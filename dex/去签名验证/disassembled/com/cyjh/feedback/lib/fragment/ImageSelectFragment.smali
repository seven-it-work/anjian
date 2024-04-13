.class public Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;
.super Lcom/cyjh/feedback/lib/base/BaseFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:I = 0x110

.field private static final b:Ljava/lang/String; = ","


# instance fields
.field private c:Landroid/widget/GridView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/feedback/lib/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/cyjh/feedback/lib/a/a;

.field private f:Landroid/widget/Button;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/io/File;

.field private j:I

.field private k:Landroid/app/ProgressDialog;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/feedback/lib/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$1;

    invoke-direct {v0, p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$1;-><init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->l:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->j:I

    return p1
.end method

.method static synthetic a(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Landroid/app/ProgressDialog;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->k:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic a(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;Ljava/io/File;)Ljava/io/File;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->i:Ljava/io/File;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->g:Ljava/util/ArrayList;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->grid_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->c:Landroid/widget/GridView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->d:Ljava/util/List;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_sure:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->f:Landroid/widget/Button;

    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->f:Landroid/widget/Button;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->btn_sure:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->f:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Lcom/cyjh/feedback/lib/c/b;)V
    .registers 4

    iget-object p1, p1, Lcom/cyjh/feedback/lib/c/b;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_everything_picture:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1b
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->i:Ljava/io/File;

    const/4 v0, 0x1

    if-nez p1, :cond_32

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_everything_picture:I

    invoke-virtual {p0, v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_32
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->h:Ljava/util/List;

    if-eqz p1, :cond_50

    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_50

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_everything_picture:I

    invoke-virtual {p0, v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_50
    new-instance p1, Lcom/cyjh/feedback/lib/a/a;

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->h:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/cyjh/feedback/lib/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->e:Lcom/cyjh/feedback/lib/a/a;

    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->c:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->e:Lcom/cyjh/feedback/lib/a/a;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->e:Lcom/cyjh/feedback/lib/a/a;

    invoke-virtual {p1}, Lcom/cyjh/feedback/lib/a/a;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->e:Lcom/cyjh/feedback/lib/a/a;

    new-instance v0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$2;

    invoke-direct {v0, p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$2;-><init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)V

    iput-object v0, p1, Lcom/cyjh/feedback/lib/a/a;->b:Lcom/cyjh/feedback/lib/a/a$a;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;Lcom/cyjh/feedback/lib/c/b;)V
    .registers 4

    iget-object p1, p1, Lcom/cyjh/feedback/lib/c/b;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_everything_picture:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1b
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->i:Ljava/io/File;

    const/4 v0, 0x1

    if-nez p1, :cond_32

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_everything_picture:I

    invoke-virtual {p0, v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_32
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->h:Ljava/util/List;

    if-eqz p1, :cond_50

    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_50

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_everything_picture:I

    invoke-virtual {p0, v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_50
    new-instance p1, Lcom/cyjh/feedback/lib/a/a;

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->h:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/cyjh/feedback/lib/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->e:Lcom/cyjh/feedback/lib/a/a;

    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->c:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->e:Lcom/cyjh/feedback/lib/a/a;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->e:Lcom/cyjh/feedback/lib/a/a;

    invoke-virtual {p1}, Lcom/cyjh/feedback/lib/a/a;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->e:Lcom/cyjh/feedback/lib/a/a;

    new-instance v0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$2;

    invoke-direct {v0, p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$2;-><init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)V

    iput-object v0, p1, Lcom/cyjh/feedback/lib/a/a;->b:Lcom/cyjh/feedback/lib/a/a$a;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    return p0

    :cond_27
    :goto_27
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic b(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->f:Landroid/widget/Button;

    return-object p0
.end method

.method public static b()Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;
    .registers 1

    new-instance v0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-direct {v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;-><init>()V

    return-object v0
.end method

.method private b(Lcom/cyjh/feedback/lib/c/b;)V
    .registers 13

    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p1, p1, Lcom/cyjh/feedback/lib/c/b;->a:Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_49

    aget-object v3, p1, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$4;

    invoke-direct {v5, p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$4;-><init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_46

    array-length v5, v4

    const/4 v6, 0x0

    :goto_26
    if-ge v6, v5, :cond_46

    aget-object v7, v4, v6

    iget-object v8, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->h:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_49
    return-void
.end method

.method static synthetic b(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;Lcom/cyjh/feedback/lib/c/b;)V
    .registers 13

    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p1, p1, Lcom/cyjh/feedback/lib/c/b;->a:Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_49

    aget-object v3, p1, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$4;

    invoke-direct {v5, p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$4;-><init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_46

    array-length v5, v4

    const/4 v6, 0x0

    :goto_26
    if-ge v6, v5, :cond_46

    aget-object v7, v4, v6

    iget-object v8, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->h:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_49
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    return p0

    :cond_27
    :goto_27
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic c(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->j:I

    return p0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->e:Lcom/cyjh/feedback/lib/a/a;

    new-instance v1, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$2;

    invoke-direct {v1, p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$2;-><init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)V

    iput-object v1, v0, Lcom/cyjh/feedback/lib/a/a;->b:Lcom/cyjh/feedback/lib/a/a$a;

    return-void
.end method

.method static synthetic d(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->d:Ljava/util/List;

    return-object p0
.end method

.method private d()V
    .registers 4

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_sdk:I

    invoke-virtual {p0, v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1f
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->loading_somethings:I

    invoke-virtual {p0, v2}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->k:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;

    invoke-direct {v0, p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;-><init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)V

    invoke-virtual {v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->start()V

    return-void
.end method

.method static synthetic e(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->l:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .registers 2

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->fragment_select_image:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_sure:I

    if-ne p1, v0, :cond_69

    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->e:Lcom/cyjh/feedback/lib/a/a;

    if-nez p1, :cond_d

    return-void

    :cond_d
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->e:Lcom/cyjh/feedback/lib/a/a;

    iget-object p1, p1, Lcom/cyjh/feedback/lib/a/a;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-gtz p1, :cond_2a

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->please_choose_photo:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2a
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->e:Lcom/cyjh/feedback/lib/a/a;

    iget-object p1, p1, Lcom/cyjh/feedback/lib/a/a;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_44
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "image"

    iget-object v2, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "bundle"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_69
    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/feedback/lib/base/BaseFragment;->onPause()V

    const-class v0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/feedback/lib/base/BaseFragment;->onResume()V

    const-class v0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1, p2}, Lcom/cyjh/feedback/lib/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->g:Ljava/util/ArrayList;

    sget p2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->grid_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->c:Landroid/widget/GridView;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->h:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->d:Ljava/util/List;

    sget p2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_sure:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->f:Landroid/widget/Button;

    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->f:Landroid/widget/Button;

    sget p2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->btn_sure:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p2, v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->f:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_sdk:I

    invoke-virtual {p0, p2}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_6a
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->loading_somethings:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->k:Landroid/app/ProgressDialog;

    new-instance p1, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;

    invoke-direct {p1, p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;-><init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)V

    invoke-virtual {p1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->start()V

    return-void
.end method
