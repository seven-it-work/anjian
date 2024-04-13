.class final Lcom/cyjh/elfin/floatingwindowprocess/a/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/a/c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/floatingwindowprocess/a/d;

.field final synthetic b:Lcom/cyjh/elfin/floatingwindowprocess/a/c;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/a/c;Lcom/cyjh/elfin/floatingwindowprocess/a/d;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$4;->b:Lcom/cyjh/elfin/floatingwindowprocess/a/c;

    iput-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$4;->a:Lcom/cyjh/elfin/floatingwindowprocess/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$4;->a:Lcom/cyjh/elfin/floatingwindowprocess/a/d;

    iget-boolean p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->c:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$4;->b:Lcom/cyjh/elfin/floatingwindowprocess/a/c;

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->dismiss()V

    :cond_b
    return-void
.end method
