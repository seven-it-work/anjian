.class public Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$a;,
        Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;
    }
.end annotation


# static fields
.field private static final G:I = 0x1

.field private static final H:I = 0x2

.field private static final I:I = 0x3

.field private static final J:I = 0x4

.field private static final K:I = 0x3c

.field private static final L:I = 0x2

.field private static final M:I = 0x1388

.field private static final N:I = 0x7d0

.field private static final O:I = 0x3e8

.field private static final R:I = 0x5

.field public static final a:Ljava/lang/String; = "ElfinFloatView"

.field public static final b:I = 0xbb8

.field private static final p:I = 0x3e8

.field private static final q:I = 0x3e9


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/LinearLayout;

.field private D:Lcom/cyjh/elfin/floatingwindowprocess/a/c;

.field private E:Lcom/cyjh/elfin/floatingwindowprocess/a/b;

.field private F:Z

.field private P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

.field private Q:I

.field private final S:Landroid/view/View$OnTouchListener;

.field private T:Lcom/cyjh/elfin/floatingwindowprocess/a/a$b;

.field private U:Lcom/cyjh/elfin/floatingwindowprocess/a/a$a;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/LinearLayout;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/ImageView;

.field public j:Z

.field public k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

.field l:Z

.field public m:Landroid/os/CountDownTimer;

.field public n:I

.field o:Lcom/cyjh/http/c/c/c$a;

.field private r:Landroid/view/WindowManager;

.field private s:Landroid/view/WindowManager$LayoutParams;

.field private t:Landroid/content/Context;

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->F:Z

    iput-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->j:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->l:Z

    new-instance v2, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    invoke-direct {v2, p0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;B)V

    iput-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$1;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$1;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    iput-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m:Landroid/os/CountDownTimer;

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    iput-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->S:Landroid/view/View$OnTouchListener;

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$4;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$4;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    iput-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->T:Lcom/cyjh/elfin/floatingwindowprocess/a/a$b;

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$5;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$5;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    iput-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->U:Lcom/cyjh/elfin/floatingwindowprocess/a/a$a;

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$7;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$7;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    iput-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->o:Lcom/cyjh/http/c/c/c$a;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->t:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f04005c

    invoke-virtual {p1, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f100171

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    const p1, 0x7f100172

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    const p1, 0x7f100173

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->A:Landroid/widget/LinearLayout;

    const p1, 0x7f100179

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->B:Landroid/widget/LinearLayout;

    const p1, 0x7f100176

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->C:Landroid/widget/LinearLayout;

    const p1, 0x7f100175

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->f:Landroid/widget/TextView;

    const p1, 0x7f100174

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->g:Landroid/widget/ImageView;

    const p1, 0x7f100178

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->h:Landroid/widget/TextView;

    const p1, 0x7f100177

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->i:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->B:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f10017b

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f10017d

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a()V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->S:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->r:Landroid/view/WindowManager;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_fe

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    :goto_fb
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_114

    :cond_fe
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p1, v1, :cond_10f

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge p1, v1, :cond_10f

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    goto :goto_fb

    :cond_10f
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    goto :goto_fb

    :goto_114
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x28

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x33

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    iput p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->v:F

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    sget-object p1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    const-string p2, "ElfinFloatView EventBus register"

    invoke-static {p1, p2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;F)F
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->u:F

    return p1
.end method

.method private a(FII)V
    .registers 7

    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "posControlBar --> position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",lockState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->n:I

    iget p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->n:I

    if-eqz p2, :cond_2f

    iget-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2f
    iget-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    invoke-virtual {p2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_43

    iget-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->setVisibility(I)V

    iget-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    invoke-virtual {p2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a()V

    :cond_43
    const/4 p2, 0x0

    if-nez p3, :cond_48

    const/4 p3, 0x0

    goto :goto_52

    :cond_48
    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Point;->x:I

    :goto_52
    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0, p3, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(II)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_89

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const p2, 0x7f0200c7

    :goto_85
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_89
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_98

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const p2, 0x7f0200be

    goto :goto_85

    :cond_98
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const p2, 0x7f0200b1

    goto :goto_85
.end method

.method private a(I)V
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_be

    return-void

    :pswitch_7
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-eq p1, v2, :cond_32

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-ne p1, v1, :cond_18

    goto :goto_32

    :cond_18
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-ne p1, v0, :cond_29

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0200c4

    :goto_25
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_29
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0200b9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_32
    :goto_32
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0200cd

    goto :goto_25

    :pswitch_38
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-eq p1, v2, :cond_5d

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-ne p1, v1, :cond_49

    goto :goto_5d

    :cond_49
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-ne p1, v0, :cond_57

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0200c2

    goto :goto_25

    :cond_57
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0200b5

    goto :goto_25

    :cond_5d
    :goto_5d
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0200cb

    goto :goto_25

    :pswitch_63
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-eq p1, v2, :cond_88

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-ne p1, v1, :cond_74

    goto :goto_88

    :cond_74
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-ne p1, v0, :cond_82

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0200c6

    goto :goto_25

    :cond_82
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0200bd

    goto :goto_25

    :cond_88
    :goto_88
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0200cf

    goto :goto_25

    :pswitch_8e
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-eq p1, v2, :cond_b5

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-ne p1, v1, :cond_9f

    goto :goto_b5

    :cond_9f
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-ne p1, v0, :cond_ae

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0200be

    goto/16 :goto_25

    :cond_ae
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0200b1

    goto/16 :goto_25

    :cond_b5
    :goto_b5
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0200c7

    goto/16 :goto_25

    return-void

    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_63
        :pswitch_38
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic a(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V
    .registers 1

    invoke-direct {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m()V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;F)F
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->v:F

    return p1
.end method

.method static synthetic b(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V
    .registers 1

    invoke-direct {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->o()V

    return-void
.end method

.method private b(Z)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-eqz p1, :cond_59

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result p1

    const/16 v2, 0x3e9

    if-eqz p1, :cond_1a

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    move-result-object p1

    const-string v0, "\u811a\u672c\u6b63\u5728\u8fd0\u884c\u4e2d\u2026\u2026"

    invoke-virtual {p1, v1, v2, v0}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a(IILjava/lang/String;)V

    return-void

    :cond_1a
    iget-boolean p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->l:Z

    if-eqz p1, :cond_1f

    return-void

    :cond_1f
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->l:Z

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_50

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900dc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->l:Z

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a(IILjava/lang/String;)V

    return-void

    :cond_50
    new-instance p1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$6;

    invoke-direct {p1, p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$6;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/d/a;->a(Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;)V

    return-void

    :cond_59
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result p1

    const/16 v2, 0x3ea

    if-eqz p1, :cond_79

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->stop()V

    iput-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->l:Z

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    move-result-object p1

    const/4 v0, 0x6

    const-string v1, "\u811a\u672c\u505c\u6b62\u8fd0\u884c\uff01"

    invoke-virtual {p1, v0, v2, v1}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a(IILjava/lang/String;)V

    return-void

    :cond_79
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    move-result-object p1

    const-string v0, "\u811a\u672c\u672a\u5728\u8fd0\u884c\u72b6\u6001\uff01"

    invoke-virtual {p1, v1, v2, v0}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;F)F
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->w:F

    return p1
.end method

.method static synthetic c(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F
    .registers 1

    iget p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->w:F

    return p0
.end method

.method static synthetic d(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;F)F
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->x:F

    return p1
.end method

.method static synthetic e(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;F)F
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->y:F

    return p1
.end method

.method private e()V
    .registers 3

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f100171

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f100172

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f100173

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->A:Landroid/widget/LinearLayout;

    const v0, 0x7f100179

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->B:Landroid/widget/LinearLayout;

    const v0, 0x7f100176

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->C:Landroid/widget/LinearLayout;

    const v0, 0x7f100175

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->f:Landroid/widget/TextView;

    const v0, 0x7f100174

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->g:Landroid/widget/ImageView;

    const v0, 0x7f100178

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->h:Landroid/widget/TextView;

    const v0, 0x7f100177

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10017b

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10017d

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a()V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->S:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic e(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->l:Z

    return v0
.end method

.method static synthetic f(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;F)F
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->z:F

    return p1
.end method

.method private f()V
    .registers 3

    const v0, 0x7f10017d

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a()V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->S:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic f(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V
    .registers 1

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->b()V

    return-void
.end method

.method static synthetic g(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/widget/LinearLayout;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private g()V
    .registers 4

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->r:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_22

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    :goto_1f
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_38

    :cond_22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_33

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_33

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    goto :goto_1f

    :cond_33
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    goto :goto_1f

    :goto_38
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->v:F

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method static synthetic h(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F
    .registers 1

    iget p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->u:F

    return p0
.end method

.method private h()V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a()V

    :cond_14
    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->w:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_57

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->v:F

    iget v4, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->x:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v1, v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(II)V

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_6f

    :cond_57
    iget v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->v:F

    iget v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->x:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v2, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(II)V

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_6f
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    iget v1, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-eq v1, v0, :cond_99

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_81

    goto :goto_99

    :cond_81
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_93

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200be

    :goto_8f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_93
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200b1

    goto :goto_8f

    :cond_99
    :goto_99
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200c7

    goto :goto_8f
.end method

.method static synthetic i(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F
    .registers 1

    iget p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->v:F

    return p0
.end method

.method private i()V
    .registers 3

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200c7

    :goto_e
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    :cond_12
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200be

    goto :goto_e

    :cond_21
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200b1

    goto :goto_e

    :goto_27
    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->b()V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic j(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F
    .registers 1

    iget p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->y:F

    return p0
.end method

.method private j()Z
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    aget v4, v0, v2

    if-le v3, v4, :cond_2f

    aget v3, v1, v2

    aget v4, v0, v2

    iget-object v5, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    iget-object v5, v5, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_2f

    const/4 v3, 0x1

    aget v1, v1, v3

    aget v0, v0, v3

    if-le v1, v0, :cond_2f

    return v3

    :cond_2f
    return v2
.end method

.method static synthetic k(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F
    .registers 1

    iget p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->z:F

    return p0
.end method

.method private k()V
    .registers 5

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ElfinFloatView runScriptOperate --> isPreventRepeatedClick="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "runScriptOperate --> 1 isPreventRepeatedClick="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/elfin/base/AppContext;->f:Z

    if-eqz v0, :cond_4e

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v1, 0x7f0901a1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "ElfinFloatView runScriptOperate --> \u5f53\u524d\u7248\u672c\u8fc7\u4f4e\uff0c\u8bf7\u66f4\u65b0\u81f3\u6700\u65b0\u7248\u672c\uff01"

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_4e
    invoke-static {}, Lcom/cyjh/http/a/e;->a()Lcom/cyjh/http/a/e;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const-string v2, "com.redfinger.appstore"

    invoke-static {v1, v2}, Lcom/cyjh/http/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_66

    iget v0, v0, Lcom/cyjh/http/a/e;->a:I

    if-ne v0, v2, :cond_66

    const/4 v0, 0x1

    goto :goto_67

    :cond_66
    const/4 v0, 0x0

    :goto_67
    if-eqz v0, :cond_74

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v1, 0x7f09009c

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;I)V

    return-void

    :cond_74
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-object v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    if-eqz v1, :cond_88

    iget-object v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_98

    :cond_88
    iget-object v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    if-eqz v1, :cond_9a

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9a

    :cond_98
    const/4 v0, 0x1

    goto :goto_9b

    :cond_9a
    const/4 v0, 0x0

    :goto_9b
    if-eqz v0, :cond_b8

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    iget-boolean v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    invoke-static {v1, v0}, Lcom/cyjh/elfin/e/c/o;->c(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_b8

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v1, 0x7f09012e

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;I)V

    return-void

    :cond_b8
    iget-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->l:Z

    if-eqz v0, :cond_bd

    return-void

    :cond_bd
    iput-boolean v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->l:Z

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->b()Z

    move-result v0

    if-eqz v0, :cond_ed

    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    const-string v1, "runScriptOperate --> 2"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "runScriptOperate -->\u3000\u505c\u6b62\u5f15\u64ce"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ae;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->d()V

    iput-boolean v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->l:Z

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "ElfinFloatView runScriptOperate --> \u505c\u6b62\u5f15\u64ce"

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_127

    :cond_ed
    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    const-string v1, "runScriptOperate --> 3"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11f

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->l:Z

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "ElfinFloatView runScriptOperate --> \u5f53\u524d\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_11f
    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$2;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$2;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/a;->a(Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;)V

    :goto_127
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    if-nez v0, :cond_132

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    invoke-direct {v0, p0, v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;B)V

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    :cond_132
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/a;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/a;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic l(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F
    .registers 1

    iget p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->x:F

    return p0
.end method

.method private l()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(Z)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->c()V

    return-void
.end method

.method static synthetic m(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    return-object p0
.end method

.method private m()V
    .registers 6

    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    const-string v1, "judgeEngineStatus --> "

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ElfinFloatView judgeEngineStatus --> isScriptStopRunning="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    iget-boolean v2, v2, Lcom/cyjh/elfin/base/AppContext;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->Q:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_3f

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->d()V

    iput v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->Q:I

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v2, "ElfinFloatView judgeEngineStatus --> ScriptRunnerManager.getInstance().stop()"

    invoke-static {v0, v2}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3f
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    if-nez v0, :cond_4b

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;B)V

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    :cond_4b
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/elfin/base/AppContext;->i:Z

    const/16 v2, 0x3e8

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;->removeMessages(I)V

    invoke-direct {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k()V

    return-void

    :cond_5e
    iget v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->Q:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->Q:I

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;->removeMessages(I)V

    :cond_70
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private n()V
    .registers 5

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/entity/ParamsWrap;->mStartRunResponseInfo:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->o()V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->o:Lcom/cyjh/http/c/c/c$a;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/a;->a(Lcom/cyjh/http/c/c/c$a;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic n(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Z
    .registers 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    aget v4, v0, v2

    if-le v3, v4, :cond_2f

    aget v3, v1, v2

    aget v4, v0, v2

    iget-object p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    iget-object p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v4, p0

    if-ge v3, v4, :cond_2f

    const/4 p0, 0x1

    aget v1, v1, p0

    aget v0, v0, p0

    if-le v1, v0, :cond_2f

    return p0

    :cond_2f
    return v2
.end method

.method static synthetic o(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lcom/cyjh/elfin/floatingwindowprocess/a/a$b;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->T:Lcom/cyjh/elfin/floatingwindowprocess/a/a$b;

    return-object p0
.end method

.method private o()V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;->removeMessages(I)V

    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    const-string v1, "exitEngine --> "

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/cyjh/elfin/services/PhoneStateService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    invoke-static {}, Lcom/cyjh/mq/sdk/MqBridge;->exit()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_3d

    const-string v1, "com.cyjh.elfin:download_server"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    :cond_3d
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    const-string v1, "ElfinFloatView EventBus unregister"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lcom/cyjh/elfin/floatingwindowprocess/a/a$a;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->U:Lcom/cyjh/elfin/floatingwindowprocess/a/a$a;

    return-object p0
.end method

.method private synthetic p()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->l:Z

    return-void
.end method

.method static synthetic q(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a()V

    :cond_14
    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->w:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_57

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->v:F

    iget v4, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->x:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v1, v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(II)V

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_6f

    :cond_57
    iget v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->v:F

    iget v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->x:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v2, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(II)V

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_6f
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    iget v1, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-eq v1, v0, :cond_99

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_81

    goto :goto_99

    :cond_81
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_93

    iget-object p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0200be

    :goto_8f
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_93
    iget-object p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0200b1

    goto :goto_8f

    :cond_99
    :goto_99
    iget-object p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0200c7

    goto :goto_8f
.end method

.method static synthetic r(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/os/CountDownTimer;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m:Landroid/os/CountDownTimer;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 8

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const v1, 0x7f0200d9

    const v2, 0x7f0900ad

    const/4 v3, 0x2

    if-ne v0, v3, :cond_42

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const v3, 0x7f0200be

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->g:Landroid/widget/ImageView;

    const v3, 0x7f0200d6

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2f
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->i:Landroid/widget/ImageView;

    :goto_3e
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_42
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    const/4 v3, 0x3

    const v4, 0x7f0200d7

    const v5, 0x7f0900ab

    const v6, 0x7f0200b1

    if-ne v0, v3, :cond_6c

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2f

    :cond_6c
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->i:Landroid/widget/ImageView;

    const v1, 0x7f0200d8

    goto :goto_3e
.end method

.method public final a(II)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->r:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(I)V

    const/16 v0, 0x8

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_24

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_17
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_24
    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public final c()V
    .registers 6

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->b()V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->r:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final d()V
    .registers 4

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->b()V

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k:Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->setVisibility(I)V

    :goto_14
    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->setVisibility(I)V

    return-void

    :cond_18
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(II)V

    goto :goto_14
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->s:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->b()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f100173

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq p1, v0, :cond_a5

    const v0, 0x7f100176

    if-eq p1, v0, :cond_4f

    const v0, 0x7f100179

    if-eq p1, v0, :cond_3d

    const v0, 0x7f10017b

    if-eq p1, v0, :cond_20

    goto/16 :goto_cf

    :cond_20
    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/elfin/entity/ParamsWrap;->mStartRunResponseInfo:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    if-nez p1, :cond_2d

    invoke-direct {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->o()V

    goto/16 :goto_cf

    :cond_2d
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->o:Lcom/cyjh/http/c/c/c$a;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/d/a;->a(Lcom/cyjh/http/c/c/c$a;)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    const/16 v0, 0x3e9

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_cf

    :cond_3d
    new-instance p1, Lcom/cyjh/elfin/floatingwindowprocess/a/b;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->E:Lcom/cyjh/elfin/floatingwindowprocess/a/b;

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->E:Lcom/cyjh/elfin/floatingwindowprocess/a/b;

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/b;->show()V

    goto/16 :goto_cf

    :cond_4f
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-eq p1, v3, :cond_7f

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-eq p1, v2, :cond_7f

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-ne p1, v1, :cond_68

    goto :goto_7f

    :cond_68
    new-instance p1, Lcom/cyjh/elfin/floatingwindowprocess/a/c;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->D:Lcom/cyjh/elfin/floatingwindowprocess/a/c;

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->D:Lcom/cyjh/elfin/floatingwindowprocess/a/c;

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->t:Landroid/content/Context;

    iput-object v0, p1, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->a:Landroid/content/Context;

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->D:Lcom/cyjh/elfin/floatingwindowprocess/a/c;

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->show()V

    goto :goto_cf

    :cond_7f
    :goto_7f
    sget-object p1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    const-string v0, "runScriptOperate --> 2"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "runScriptOperate -->\u3000\u505c\u6b62\u5f15\u64ce"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ae;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->d()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->l:Z

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const-string v0, "ElfinFloatView runScriptOperate --> \u505c\u6b62\u5f15\u64ce"

    invoke-static {p1, v0}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_cf

    :cond_a5
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-ne p1, v1, :cond_ae

    return-void

    :cond_ae
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-ne p1, v3, :cond_bd

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->f()V

    goto :goto_cf

    :cond_bd
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-ne p1, v2, :cond_cc

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->e()V

    goto :goto_cf

    :cond_cc
    invoke-direct {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k()V

    :goto_cf
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_a
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public onMessageMainThread(Lcom/cyjh/elfin/entity/MsgItem;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem;->getMsgType()I

    move-result p1

    packed-switch p1, :pswitch_data_22

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->P:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$8;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$8;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$b;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_15
    sget-object p1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    const-string v0, "SCRIPT_NEED_UPGRADE"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/d/a;->a(Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;)V

    return-void

    nop

    :pswitch_data_22
    .packed-switch 0x7d0
        :pswitch_15
        :pswitch_8
    .end packed-switch
.end method

.method public onReceiveElfinFloatViewEvent(Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    const-string v1, "onReceiveElfinFloatViewEvent"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;->getType()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_47

    const/16 v0, 0x2775

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x2777

    if-eq p1, v0, :cond_2f

    const/16 v0, 0x2779

    if-eq p1, v0, :cond_27

    const/16 v0, 0x277b

    if-eq p1, v0, :cond_1f

    return-void

    :cond_1f
    sget-object p1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    const-string v0, "onReceiveSocketMessage --> \u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_27
    sget-object p1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    const-string v0, "onReceiveSocketMessage --> \u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u66f4\u65b0"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2f
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->b(Z)V

    sget-object p1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    const-string v0, "onReceiveSocketMessage --> \u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u505c\u6b62"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3b
    sget-object p1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    const-string v0, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u542f\u52a8"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->b(Z)V

    return-void

    :cond_47
    sget-object p1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a:Ljava/lang/String;

    const-string v0, "onReceiveSocketMessage --> \u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m()V

    return-void
.end method

.method public setControlbarVisiable(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    goto :goto_7

    :cond_5
    const/16 p1, 0x8

    :goto_7
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->setVisibility(I)V

    return-void
.end method
