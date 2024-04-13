.class final synthetic Lcom/elfin/ad/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/elfin/ad/e/b;


# direct methods
.method constructor <init>(Lcom/elfin/ad/e/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/elfin/ad/e/c;->a:Lcom/elfin/ad/e/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/elfin/ad/e/c;->a:Lcom/elfin/ad/e/b;

    iget-object v0, v0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    invoke-interface {v0}, Lcom/elfin/ad/c/a;->a()V

    return-void
.end method
