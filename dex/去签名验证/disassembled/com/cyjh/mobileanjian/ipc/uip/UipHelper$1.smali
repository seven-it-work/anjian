.class final Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    const/4 p1, 0x0

    return p1
.end method
