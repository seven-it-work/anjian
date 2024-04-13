.class public final Lcom/cyjh/mobileanjian/ipc/ui/j;
.super Landroid/widget/RelativeLayout;


# instance fields
.field a:Landroid/view/WindowManager;

.field b:Landroid/view/WindowManager$LayoutParams;

.field c:Landroid/widget/RelativeLayout;

.field d:Z

.field e:Z

.field f:I

.field g:F

.field h:I

.field i:Ljava/lang/String;

.field private j:Landroid/content/Context;

.field private k:Lcom/cyjh/mobileanjian/ipc/ui/g;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIII)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->e:Z

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/16 v0, 0x64

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->l:Landroid/os/Handler;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->j:Landroid/content/Context;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Landroid/content/Context;)Lcom/cyjh/mobileanjian/ipc/ui/g;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->k:Lcom/cyjh/mobileanjian/ipc/ui/g;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->j:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_4a

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7f6

    :goto_47
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_60

    :cond_4a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_5b

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_5b

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7d5

    goto :goto_47

    :cond_5b
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7d2

    goto :goto_47

    :goto_60
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x528

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x33

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->j:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/cyjh/mqsdk/R$layout;->ui_show_float:I

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p6, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0, p2}, Lcom/cyjh/mobileanjian/ipc/ui/j;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method private a(II)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->j:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_20

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

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

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    goto :goto_1d

    :cond_31
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    goto :goto_1d

    :goto_36
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x528

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V
    .registers 3

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cyjh/mq/sdk/MqRunner;->c(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->e:Z

    return-void
.end method

.method static synthetic b(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->l:Landroid/os/Handler;

    return-object p0
.end method

.method private b(II)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->j:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_float:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_18

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_18
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V
    .registers 3

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cyjh/mq/sdk/MqRunner;->c(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private c(I)I
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->j:Landroid/content/Context;

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

.method static synthetic c(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/widget/RelativeLayout;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic d(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    return-object p0
.end method

.method private f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->e:Z

    return v0
.end method

.method private g()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .registers 8

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x10

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2a

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_6b

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6b

    :cond_2a
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v6, v4, v5

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v5, v4, v2

    const/4 v5, 0x2

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v6, v4, v5

    const/4 v5, 0x4

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v6, v4, v5

    const/4 v5, 0x6

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v6, v4, v5

    const/4 v5, 0x7

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :try_start_5d
    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_62} :catch_62

    :catch_62
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_6b

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6b
    :goto_6b
    iput-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cyjh/mobileanjian/ipc/ui/j$1;

    invoke-direct {v2, p0, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/j;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public final a(I)V
    .registers 5

    int-to-float p1, p1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x6

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x7

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :try_start_37
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_3c

    :catch_3c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_47

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_47
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    instance-of v1, p1, Landroid/widget/Button;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/mobileanjian/ipc/ui/j$2;

    invoke-direct {v1, p0, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/j;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_12
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    :try_start_3
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public final b(I)V
    .registers 5

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x6

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x7

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :try_start_36
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3b} :catch_3b

    :catch_3b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_46

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_46
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public final c()V
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->b()V

    :cond_7
    return-void
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    return v0
.end method

.method public final e()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11
    return-void
.end method

.method public final getOpacity()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    return v0
.end method

.method public final getParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final setFloatHeight(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFloatHeight wLayoutParams[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_36
    return-void
.end method

.method public final setFloatLeft(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFloatLeft wLayoutParams[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-interface {p1, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2c
    return-void
.end method

.method public final setFloatTop(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFloatTop wLayoutParams[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-interface {p1, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2c
    return-void
.end method

.method public final setFloatWidth(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFloatWidth wLayoutParams[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_36
    return-void
.end method

.method public final setOpacity(I)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    mul-int/lit16 v1, p1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    return-void
.end method
