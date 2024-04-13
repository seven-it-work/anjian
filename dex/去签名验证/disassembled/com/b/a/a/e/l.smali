.class final Lcom/b/a/a/e/l;
.super Lcom/b/a/a/b;


# instance fields
.field final synthetic a:I

.field final synthetic c:J

.field final synthetic d:Lcom/b/a/a/e/j;


# direct methods
.method varargs constructor <init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .registers 7

    iput-object p1, p0, Lcom/b/a/a/e/l;->d:Lcom/b/a/a/e/j;

    iput p4, p0, Lcom/b/a/a/e/l;->a:I

    iput-wide p5, p0, Lcom/b/a/a/e/l;->c:J

    invoke-direct {p0, p2, p3}, Lcom/b/a/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/e/l;->d:Lcom/b/a/a/e/j;

    iget-object v0, v0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    iget v1, p0, Lcom/b/a/a/e/l;->a:I

    iget-wide v2, p0, Lcom/b/a/a/e/l;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/a/a/e/af;->a(IJ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
