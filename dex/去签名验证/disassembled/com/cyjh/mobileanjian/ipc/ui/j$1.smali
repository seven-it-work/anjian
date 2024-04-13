.class final Lcom/cyjh/mobileanjian/ipc/ui/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/ui/j;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:J

.field f:J

.field g:Ljava/lang/Runnable;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lcom/cyjh/mobileanjian/ipc/ui/j;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/j;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/ui/j$1$1;

    invoke-direct {p1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/j$1$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/j$1;)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->g:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_13e

    goto/16 :goto_13b

    :pswitch_9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ACTION_MOVE "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-boolean p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->e:Z

    if-eqz p1, :cond_58

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->a:I

    sub-int/2addr p1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->b:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->c:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->d:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->d(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->c(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->a:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float p1, p1, v2

    if-nez p1, :cond_7e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->b:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_13b

    :cond_7e
    iget-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->f:J

    sub-long v2, v0, p1

    const-wide/16 p1, 0x32

    cmp-long v4, v2, p1

    if-lez v4, :cond_13b

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->h:Ljava/lang/String;

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_TOUCH_MOVE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    iput-wide v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->f:J

    goto/16 :goto_13b

    :pswitch_93
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->g:Ljava/lang/Runnable;

    if-eqz p1, :cond_a2

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->b(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_a2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ACTION_UP "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->a:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_e5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->b:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_e5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->e:J

    sub-long v2, p1, v0

    const-wide/16 p1, 0x1f4

    cmp-long v0, v2, p1

    if-gez v0, :cond_e5

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->h:Ljava/lang/String;

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLICK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    goto :goto_e9

    :cond_e5
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->h:Ljava/lang/String;

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_TOUCH_UP:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    :goto_e9
    invoke-static {p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    goto :goto_13b

    :pswitch_ed
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->a:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->b:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->c:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->e:J

    iget-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->e:J

    iput-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->f:J

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->h:Ljava/lang/String;

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_TOUCH_DOWN:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ACTION_DOWN "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->b(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->g:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f5

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13b
    :goto_13b
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_ed
        :pswitch_93
        :pswitch_9
    .end packed-switch
.end method
