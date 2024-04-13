.class public abstract Lcom/cyjh/elfin/ui/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Landroid/app/AlertDialog;

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/ui/b/a;->c:I

    return-void
.end method

.method private a(Landroid/app/AlertDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/b/a;->b:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    iget p1, p0, Lcom/cyjh/elfin/ui/b/a;->c:I

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/b/a;->b()V

    goto :goto_b

    :cond_8
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/b/a;->a()V

    :goto_b
    iget-object p1, p0, Lcom/cyjh/elfin/ui/b/a;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
