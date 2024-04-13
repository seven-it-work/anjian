.class final Lcom/android/volley/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/l;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/android/volley/l;


# direct methods
.method constructor <init>(Lcom/android/volley/l;Ljava/lang/String;J)V
    .registers 5

    iput-object p1, p0, Lcom/android/volley/l$1;->c:Lcom/android/volley/l;

    iput-object p2, p0, Lcom/android/volley/l$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/volley/l$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/volley/l$1;->c:Lcom/android/volley/l;

    invoke-static {v0}, Lcom/android/volley/l;->a(Lcom/android/volley/l;)Lcom/android/volley/t$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/l$1;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/volley/l$1;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/volley/t$a;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/volley/l$1;->c:Lcom/android/volley/l;

    invoke-static {v0}, Lcom/android/volley/l;->a(Lcom/android/volley/l;)Lcom/android/volley/t$a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/t$a;->a(Ljava/lang/String;)V

    return-void
.end method
