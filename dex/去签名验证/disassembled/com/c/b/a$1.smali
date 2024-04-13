.class final Lcom/c/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/b/a;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/c/b/a;

.field private final synthetic b:Ljava/lang/Object;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/c/b/a;Ljava/lang/Object;Z)V
    .registers 4

    iput-object p1, p0, Lcom/c/b/a$1;->a:Lcom/c/b/a;

    iput-object p2, p0, Lcom/c/b/a$1;->b:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/c/b/a$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/c/b/a$1;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/c/b/a$1;->a:Lcom/c/b/a;

    invoke-static {v1}, Lcom/c/b/a;->a(Lcom/c/b/a;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/c/b/a$1;->c:Z

    invoke-static {v0, v1, v2}, Lcom/c/d/c;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method
