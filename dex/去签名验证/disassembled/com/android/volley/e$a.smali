.class final Lcom/android/volley/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/e;

.field private final b:Lcom/android/volley/l;

.field private final c:Lcom/android/volley/n;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/volley/e;Lcom/android/volley/l;Lcom/android/volley/n;Ljava/lang/Runnable;)V
    .registers 5

    iput-object p1, p0, Lcom/android/volley/e$a;->a:Lcom/android/volley/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/volley/e$a;->b:Lcom/android/volley/l;

    iput-object p3, p0, Lcom/android/volley/e$a;->c:Lcom/android/volley/n;

    iput-object p4, p0, Lcom/android/volley/e$a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/volley/e$a;->b:Lcom/android/volley/l;

    invoke-virtual {v0}, Lcom/android/volley/l;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/volley/e$a;->b:Lcom/android/volley/l;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/android/volley/l;->b(Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/volley/e$a;->c:Lcom/android/volley/n;

    iget-object v0, v0, Lcom/android/volley/n;->c:Lcom/android/volley/s;

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/volley/e$a;->b:Lcom/android/volley/l;

    iget-object v1, p0, Lcom/android/volley/e$a;->c:Lcom/android/volley/n;

    iget-object v1, v1, Lcom/android/volley/n;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/volley/l;->a(Ljava/lang/Object;)V

    goto :goto_34

    :cond_25
    iget-object v0, p0, Lcom/android/volley/e$a;->b:Lcom/android/volley/l;

    iget-object v1, p0, Lcom/android/volley/e$a;->c:Lcom/android/volley/n;

    iget-object v1, v1, Lcom/android/volley/n;->c:Lcom/android/volley/s;

    iget-object v2, v0, Lcom/android/volley/l;->d:Lcom/android/volley/n$a;

    if-eqz v2, :cond_34

    iget-object v0, v0, Lcom/android/volley/l;->d:Lcom/android/volley/n$a;

    invoke-interface {v0, v1}, Lcom/android/volley/n$a;->a(Lcom/android/volley/s;)V

    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/android/volley/e$a;->c:Lcom/android/volley/n;

    iget-boolean v0, v0, Lcom/android/volley/n;->d:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/volley/e$a;->b:Lcom/android/volley/l;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    goto :goto_49

    :cond_42
    iget-object v0, p0, Lcom/android/volley/e$a;->b:Lcom/android/volley/l;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/android/volley/l;->b(Ljava/lang/String;)V

    :goto_49
    iget-object v0, p0, Lcom/android/volley/e$a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/volley/e$a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_52
    return-void
.end method
