.class public final Lcom/cyjh/mobileanjian/ipc/uip/d;
.super Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/d;->setLongClickable(Z)V

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/d;->setTextIsSelectable(Z)V

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/uip/d$1;

    invoke-direct {p1, p0}, Lcom/cyjh/mobileanjian/ipc/uip/d$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/d;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/d;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method


# virtual methods
.method public final onTextContextMenuItem(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
