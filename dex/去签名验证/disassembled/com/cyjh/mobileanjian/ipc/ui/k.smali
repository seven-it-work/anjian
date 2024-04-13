.class public final Lcom/cyjh/mobileanjian/ipc/ui/k;
.super Ljava/lang/Object;


# static fields
.field private static final d:I = 0x1000

.field private static final e:Ljava/lang/String; = "first_row_tag"

.field private static final f:Ljava/lang/String; = "row_mark"

.field private static final v:I = 0x100

.field private static x:I


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field public b:Landroid/view/View$OnClickListener;

.field public c:Z

.field private g:Landroid/view/WindowManager;

.field private h:Landroid/view/WindowManager$LayoutParams;

.field private i:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

.field private j:Landroid/content/Context;

.field private k:Landroid/widget/LinearLayout;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/cyjh/mobileanjian/ipc/ui/g;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/TextView;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->l:Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->m:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->n:Ljava/util/Set;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->o:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->p:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->u:Ljava/util/ArrayList;

    new-instance v2, Lcom/cyjh/mobileanjian/ipc/ui/k$3;

    invoke-direct {v2, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k$3;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/k;)V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->w:Landroid/os/Handler;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Landroid/content/Context;)Lcom/cyjh/mobileanjian/ipc/ui/g;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->q:Lcom/cyjh/mobileanjian/ipc/ui/g;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->g:Landroid/view/WindowManager;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_5b

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7f6

    :goto_58
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_71

    :cond_5b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt p1, v2, :cond_6c

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge p1, v2, :cond_6c

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d5

    goto :goto_58

    :cond_6c
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d2

    goto :goto_58

    :goto_71
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x10

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/16 v2, 0x28

    invoke-direct {p0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v3

    add-int/2addr v3, p3

    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v5, 0xc8

    const/4 v6, -0x2

    if-lt v3, v4, :cond_ad

    const/4 p3, -0x1

    goto :goto_bb

    :cond_ad
    if-lt p3, v6, :cond_b7

    if-ltz p3, :cond_bb

    invoke-direct {p0, v5}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v3

    if-ge p3, v3, :cond_bb

    :cond_b7
    invoke-direct {p0, v5}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result p3

    :cond_bb
    :goto_bb
    invoke-direct {p0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v2

    add-int/2addr v2, p4

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, p1, :cond_c6

    const/4 p4, -0x2

    goto :goto_d4

    :cond_c6
    if-lt p4, v6, :cond_d0

    if-ltz p4, :cond_d4

    invoke-direct {p0, v5}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result p1

    if-ge p4, p1, :cond_d4

    :cond_d0
    invoke-direct {p0, v5}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result p4

    :cond_d4
    :goto_d4
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v2, Lcom/cyjh/mqsdk/R$layout;->layout_ui_show:I

    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget v2, Lcom/cyjh/mqsdk/R$layout;->layout_display:I

    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    const/16 p4, 0x11

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget p3, Lcom/cyjh/mqsdk/R$id;->title:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->t:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget p3, Lcom/cyjh/mqsdk/R$id;->layout_user:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget p3, Lcom/cyjh/mqsdk/R$id;->exit:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/ui/k$1;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/k;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget p3, Lcom/cyjh/mqsdk/R$id;->next:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/ui/k$2;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/k;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->l:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;)V

    const-string p1, "row_mark"

    invoke-virtual {p0, p1, p2, v1, v6}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/ui/k;)Landroid/view/View$OnClickListener;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->a:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private a(II)V
    .registers 9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v2

    add-int/2addr v2, p1

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, -0x2

    const/16 v5, 0xc8

    if-lt v2, v3, :cond_1a

    const/4 p1, -0x1

    goto :goto_28

    :cond_1a
    if-lt p1, v4, :cond_24

    if-ltz p1, :cond_28

    invoke-direct {p0, v5}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v2

    if-ge p1, v2, :cond_28

    :cond_24
    invoke-direct {p0, v5}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result p1

    :cond_28
    :goto_28
    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v1

    add-int/2addr v1, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v1, v0, :cond_33

    const/4 p2, -0x2

    goto :goto_41

    :cond_33
    if-lt p2, v4, :cond_3d

    if-ltz p2, :cond_41

    invoke-direct {p0, v5}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v0

    if-ge p2, v0, :cond_41

    :cond_3d
    invoke-direct {p0, v5}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result p2

    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$layout;->layout_ui_show:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->layout_display:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget p2, Lcom/cyjh/mqsdk/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->t:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget p2, Lcom/cyjh/mqsdk/R$id;->layout_user:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget p2, Lcom/cyjh/mqsdk/R$id;->exit:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/ui/k$1;

    invoke-direct {p2, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/k;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget p2, Lcom/cyjh/mqsdk/R$id;->next:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/ui/k$2;

    invoke-direct {p2, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/k;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/cyjh/mobileanjian/ipc/ui/k;)Landroid/view/View$OnClickListener;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->b:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private c(I)I
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method static synthetic c(Lcom/cyjh/mobileanjian/ipc/ui/k;)Landroid/widget/LinearLayout;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->l:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method private f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->l:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->g:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_20

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    :goto_1d
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_36

    :cond_20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_31

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_31

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    goto :goto_1d

    :cond_31
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    goto :goto_1d

    :goto_36
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private static h()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "first_row_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/cyjh/mobileanjian/ipc/ui/k;->x:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/cyjh/mobileanjian/ipc/ui/k;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final a(Landroid/graphics/Typeface;I)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->t:Landroid/widget/TextView;

    int-to-float p2, p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "row tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->o:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->l:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->m:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/l;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->o:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/l;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_sliding_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcom/cyjh/mqsdk/R$id;->slidingTabLayout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setDistributeEvenly(Z)V

    new-array p1, p1, [I

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$color;->ui_show_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, p1, v3

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    sget p1, Lcom/cyjh/mqsdk/R$drawable;->bg_tab_host:I

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setBackgroundResource(I)V

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/ui/k$4;

    invoke-direct {p1, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k$4;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/k;Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)V

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const/4 p1, -0x2

    if-ne p2, p1, :cond_4d

    const/16 p1, 0xc8

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result p2

    :cond_4d
    sget p1, Lcom/cyjh/mqsdk/R$id;->viewPager:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/ui/l;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/l;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->u:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->l:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->q:Lcom/cyjh/mobileanjian/ipc/ui/g;

    const-string v1, "row_mark"

    invoke-virtual {v0, v1, p3, p4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->c(Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object p3

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->r:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    iget-object p4, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->o:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->m:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/l;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_45
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Landroid/content/Context;)Lcom/cyjh/mobileanjian/ipc/ui/g;

    move-result-object v2

    invoke-virtual {v2, p1, p3, p4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->c(Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_45

    :cond_6b
    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->o:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_70
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->n:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "first_row_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/cyjh/mobileanjian/ipc/ui/k;->x:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/cyjh/mobileanjian/ipc/ui/k;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->m:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->o:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->q:Lcom/cyjh/mobileanjian/ipc/ui/g;

    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v2, Lcom/cyjh/mqsdk/R$layout;->ui_show_tab_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->q:Lcom/cyjh/mobileanjian/ipc/ui/g;

    const/4 p2, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1, v0, p2, v2}, Lcom/cyjh/mobileanjian/ipc/ui/g;->c(Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->r:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p3, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/ui/l;

    iget-object p2, p1, Lcom/cyjh/mobileanjian/ipc/ui/l;->a:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p1, Lcom/cyjh/mobileanjian/ipc/ui/l;->b:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/l;->notifyDataSetChanged()V

    iget-object p2, p3, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object p1, p3, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p3, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/String;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_40

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/l;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2b

    :cond_3d
    move-object v0, v2

    if-eqz v0, :cond_e

    :cond_40
    return-object v0
.end method

.method public final b()V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->w:Landroid/os/Handler;

    const/16 v1, 0x100

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final b(I)V
    .registers 6

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, p1, v3

    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, p1, v3

    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    aput v2, p1, v3

    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x3

    aput v2, p1, v3

    const/4 v2, 0x0

    aput v2, p1, v1

    const/4 v1, 0x5

    aput v2, p1, v1

    const/4 v1, 0x6

    aput v2, p1, v1

    const/4 v1, 0x7

    aput v2, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final c()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    return v0
.end method

.method public final e()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method
