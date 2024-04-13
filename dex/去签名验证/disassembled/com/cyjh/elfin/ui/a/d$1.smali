.class final Lcom/cyjh/elfin/ui/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/a/d;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/a/d;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/d$1;->a:Lcom/cyjh/elfin/ui/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/d$1;->a:Lcom/cyjh/elfin/ui/a/d;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/a/d;->dismiss()V

    return-void
.end method
