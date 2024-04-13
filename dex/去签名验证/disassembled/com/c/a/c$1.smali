.class final Lcom/c/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/a/c;->b(Lcom/c/b/a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/c;

.field private final synthetic b:Lcom/c/b/a;


# direct methods
.method constructor <init>(Lcom/c/a/c;Lcom/c/b/a;)V
    .registers 3

    iput-object p1, p0, Lcom/c/a/c$1;->a:Lcom/c/a/c;

    iput-object p2, p0, Lcom/c/a/c$1;->b:Lcom/c/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/c/a/c$1;->a:Lcom/c/a/c;

    iget-object v1, p0, Lcom/c/a/c$1;->b:Lcom/c/b/a;

    invoke-virtual {v0, v1}, Lcom/c/a/c;->a(Lcom/c/b/a;)V

    return-void
.end method
