.class public Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;,
        Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$a;
    }
.end annotation


# instance fields
.field private b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/elfin/entity/ScriptLog;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/cyjh/elfin/ui/adpter/a;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->h:Z

    return p0
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->d:Landroid/widget/Button;

    return-object p0
.end method

.method private b()V
    .registers 8

    const v0, 0x7f1000e2

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f090131

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;B)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setRightImage(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;

    invoke-direct {v1, p0, v2}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;-><init>(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;B)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnRightImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$b;)V

    const v0, 0x7f1000e3

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/cyjh/common/util/o$a;

    const-string v1, ".log"

    invoke-direct {v0, v1}, Lcom/cyjh/common/util/o$a;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/elfin/base/AppContext;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_96

    new-instance v1, Lcom/cyjh/elfin/e/c/g;

    invoke-direct {v1}, Lcom/cyjh/elfin/e/c/g;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v1, v0

    :goto_70
    if-ge v2, v1, :cond_96

    aget-object v3, v0, v2

    new-instance v4, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-direct {v4}, Lcom/cyjh/elfin/entity/ScriptLog;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/cyjh/common/util/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cyjh/elfin/entity/ScriptLog;->setSize(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cyjh/elfin/entity/ScriptLog;->setName(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/cyjh/elfin/entity/ScriptLog;->setFile(Ljava/io/File;)V

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    :cond_96
    new-instance v0, Lcom/cyjh/elfin/ui/adpter/a;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/adpter/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->g:Lcom/cyjh/elfin/ui/adpter/a;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->g:Lcom/cyjh/elfin/ui/adpter/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f1000e4

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->d:Landroid/widget/Button;

    const v0, 0x7f1000e5

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->e:Landroid/widget/Button;

    return-object p0
.end method

.method private c()V
    .registers 4

    const v0, 0x7f1000e2

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f090131

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;B)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setRightImage(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;

    invoke-direct {v1, p0, v2}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;-><init>(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;B)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnRightImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$b;)V

    return-void
.end method

.method static synthetic d(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    return-object p0
.end method

.method private d()V
    .registers 8

    const v0, 0x7f1000e3

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/cyjh/common/util/o$a;

    const-string v1, ".log"

    invoke-direct {v0, v1}, Lcom/cyjh/common/util/o$a;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/elfin/base/AppContext;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_5f

    new-instance v1, Lcom/cyjh/elfin/e/c/g;

    invoke-direct {v1}, Lcom/cyjh/elfin/e/c/g;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_39
    if-ge v2, v1, :cond_5f

    aget-object v3, v0, v2

    new-instance v4, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-direct {v4}, Lcom/cyjh/elfin/entity/ScriptLog;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/cyjh/common/util/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cyjh/elfin/entity/ScriptLog;->setSize(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cyjh/elfin/entity/ScriptLog;->setName(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/cyjh/elfin/entity/ScriptLog;->setFile(Ljava/io/File;)V

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_5f
    new-instance v0, Lcom/cyjh/elfin/ui/adpter/a;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/adpter/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->g:Lcom/cyjh/elfin/ui/adpter/a;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->g:Lcom/cyjh/elfin/ui/adpter/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic e(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method private e()V
    .registers 8

    new-instance v0, Lcom/cyjh/common/util/o$a;

    const-string v1, ".log"

    invoke-direct {v0, v1}, Lcom/cyjh/common/util/o$a;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/elfin/base/AppContext;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4f

    new-instance v1, Lcom/cyjh/elfin/e/c/g;

    invoke-direct {v1}, Lcom/cyjh/elfin/e/c/g;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v1, :cond_4f

    aget-object v3, v0, v2

    new-instance v4, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-direct {v4}, Lcom/cyjh/elfin/entity/ScriptLog;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/cyjh/common/util/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cyjh/elfin/entity/ScriptLog;->setSize(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cyjh/elfin/entity/ScriptLog;->setName(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/cyjh/elfin/entity/ScriptLog;->setFile(Ljava/io/File;)V

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_4f
    return-void
.end method

.method static synthetic f(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Lcom/cyjh/elfin/ui/adpter/a;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->g:Lcom/cyjh/elfin/ui/adpter/a;

    return-object p0
.end method

.method private f()V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/ScriptLog;->isSelect()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :cond_1a
    if-nez v1, :cond_27

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v1, 0x7f090134

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/AppContext;->a(I)V

    return-void

    :cond_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_32
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-virtual {v2}, Lcom/cyjh/elfin/entity/ScriptLog;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v2}, Lcom/cyjh/elfin/entity/ScriptLog;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_52
    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->g:Lcom/cyjh/elfin/ui/adpter/a;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/adpter/a;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_84

    return-void

    :pswitch_9
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-virtual {v1, v0}, Lcom/cyjh/elfin/entity/ScriptLog;->setSelect(Z)V

    goto :goto_f

    :cond_1f
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->g:Lcom/cyjh/elfin/ui/adpter/a;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/adpter/a;->notifyDataSetChanged()V

    return-void

    :pswitch_25
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2b
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/ScriptLog;->isSelect()Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    if-nez v0, :cond_4d

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f090134

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/base/AppContext;->a(I)V

    return-void

    :cond_4d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_58
    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/ScriptLog;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/ScriptLog;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_78
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->g:Lcom/cyjh/elfin/ui/adpter/a;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/adpter/a;->notifyDataSetChanged()V

    return-void

    nop

    :pswitch_data_84
    .packed-switch 0x7f1000e4
        :pswitch_25
        :pswitch_9
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04002a

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->setContentView(I)V

    const p1, 0x7f1000e2

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v0, 0x7f090131

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v0, 0x7f0200df

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;B)V

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v0, 0x7f0200ea

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setRightImage(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;-><init>(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;B)V

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnRightImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$b;)V

    const p1, 0x7f1000e3

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->c:Landroid/widget/ListView;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->c:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance p1, Lcom/cyjh/common/util/o$a;

    const-string v0, ".log"

    invoke-direct {p1, v0}, Lcom/cyjh/common/util/o$a;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/elfin/base/AppContext;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    if-eqz p1, :cond_9f

    new-instance v0, Lcom/cyjh/elfin/e/c/g;

    invoke-direct {v0}, Lcom/cyjh/elfin/e/c/g;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, p1

    :goto_79
    if-ge v1, v0, :cond_9f

    aget-object v2, p1, v1

    new-instance v3, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-direct {v3}, Lcom/cyjh/elfin/entity/ScriptLog;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/cyjh/common/util/o;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cyjh/elfin/entity/ScriptLog;->setSize(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cyjh/elfin/entity/ScriptLog;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/cyjh/elfin/entity/ScriptLog;->setFile(Ljava/io/File;)V

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_9f
    new-instance p1, Lcom/cyjh/elfin/ui/adpter/a;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lcom/cyjh/elfin/ui/adpter/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->g:Lcom/cyjh/elfin/ui/adpter/a;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->g:Lcom/cyjh/elfin/ui/adpter/a;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p1, 0x7f1000e4

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->d:Landroid/widget/Button;

    const p1, 0x7f1000e5

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->e:Landroid/widget/Button;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->d:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->e:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->h:Z

    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/entity/ScriptLog;

    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "com.cyjh.elfin.ui.activity.SettingActivity.FlagLastLog"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "com.cyjh.elfin.ui.activity.ScriptLogActivity.ScriptLog"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->startActivity(Landroid/content/Intent;)V

    :cond_21
    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onPause()V

    const-class v0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onResume()V

    const-class v0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
