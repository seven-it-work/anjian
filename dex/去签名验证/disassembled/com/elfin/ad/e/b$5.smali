.class final Lcom/elfin/ad/e/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elfin/ad/e/b;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/elfin/ad/e/b;


# direct methods
.method constructor <init>(Lcom/elfin/ad/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/e/b$5;->a:Lcom/elfin/ad/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/elfin/ad/e/b$5;->a:Lcom/elfin/ad/e/b;

    iget-object v0, v0, Lcom/elfin/ad/e/b;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/elfin/ad/e/b;->a(Landroid/app/Activity;)V

    return-void
.end method
