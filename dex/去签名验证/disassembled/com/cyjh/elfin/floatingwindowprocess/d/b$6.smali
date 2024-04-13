.class final Lcom/cyjh/elfin/floatingwindowprocess/d/b$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/a/g;

.field final synthetic b:Lcom/cyjh/elfin/floatingwindowprocess/d/b;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/d/b;Lcom/cyjh/elfin/ui/a/g;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$6;->b:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    iput-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$6;->a:Lcom/cyjh/elfin/ui/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$6;->a:Lcom/cyjh/elfin/ui/a/g;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/a/g;->dismiss()V

    return-void
.end method
