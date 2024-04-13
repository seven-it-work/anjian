.class final Lcom/elfin/ad/e/b$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/c/c/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elfin/ad/e/b;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/elfin/ad/e/b;


# direct methods
.method constructor <init>(Lcom/elfin/ad/e/b;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/elfin/ad/e/b$6;->b:Lcom/elfin/ad/e/b;

    iput-object p2, p0, Lcom/elfin/ad/e/b$6;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/http/c/c/c;->d()V

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/elfin/ad/e/b$6;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/elfin/ad/e/a;->a(Landroid/content/Context;)V

    return-void
.end method
