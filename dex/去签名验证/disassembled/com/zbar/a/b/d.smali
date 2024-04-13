.class public final Lcom/zbar/a/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zbar/a/b/d;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-virtual {p0}, Lcom/zbar/a/b/d;->run()V

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-virtual {p0}, Lcom/zbar/a/b/d;->run()V

    return-void
.end method

.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/zbar/a/b/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
