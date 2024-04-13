.class final Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$a;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->setVisibility(I)V

    :cond_17
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->g(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2b

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(Z)V

    goto :goto_30

    :cond_2b
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(Z)V

    :goto_30
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->r(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return v0
.end method
