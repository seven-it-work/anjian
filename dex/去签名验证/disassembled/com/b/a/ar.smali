.class final Lcom/b/a/ar;
.super Lcom/b/a/aq;


# instance fields
.field final synthetic a:Lcom/b/a/ah;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(I[B)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/ar;->a:Lcom/b/a/ah;

    iput p1, p0, Lcom/b/a/ar;->b:I

    iput-object p2, p0, Lcom/b/a/ar;->c:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/b/a/ar;->d:I

    invoke-direct {p0}, Lcom/b/a/aq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/ah;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ar;->a:Lcom/b/a/ah;

    return-object v0
.end method

.method public final a(Lcom/b/b/g;)V
    .registers 5

    iget-object v0, p0, Lcom/b/a/ar;->c:[B

    iget v1, p0, Lcom/b/a/ar;->d:I

    iget v2, p0, Lcom/b/a/ar;->b:I

    invoke-interface {p1, v0, v1, v2}, Lcom/b/b/g;->b([BII)Lcom/b/b/g;

    return-void
.end method

.method public final b()J
    .registers 3

    iget v0, p0, Lcom/b/a/ar;->b:I

    int-to-long v0, v0

    return-wide v0
.end method
