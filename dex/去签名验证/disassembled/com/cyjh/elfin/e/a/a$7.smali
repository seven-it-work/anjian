.class final Lcom/cyjh/elfin/e/a/a$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/e/a/a;->b(Landroid/content/Context;Lcom/cyjh/elfin/e/a/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/e/a/a$a;

.field final synthetic b:Lcom/cyjh/elfin/e/a/a;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/e/a/a;Lcom/cyjh/elfin/e/a/a$a;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/e/a/a$7;->b:Lcom/cyjh/elfin/e/a/a;

    iput-object p2, p0, Lcom/cyjh/elfin/e/a/a$7;->a:Lcom/cyjh/elfin/e/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/e/a/a$7;->a:Lcom/cyjh/elfin/e/a/a$a;

    invoke-interface {v0}, Lcom/cyjh/elfin/e/a/a$a;->a()V

    iget-object v0, p0, Lcom/cyjh/elfin/e/a/a$7;->b:Lcom/cyjh/elfin/e/a/a;

    invoke-static {v0}, Lcom/cyjh/elfin/e/a/a;->a(Lcom/cyjh/elfin/e/a/a;)Lcom/cyjh/elfin/ui/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/a/c;->dismiss()V

    return-void
.end method
