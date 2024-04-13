.class public final Lcom/b/a/a/c/i;
.super Lcom/b/a/au;


# instance fields
.field private final a:Lcom/b/a/aa;

.field private final b:Lcom/b/b/h;


# direct methods
.method public constructor <init>(Lcom/b/a/aa;Lcom/b/b/h;)V
    .registers 3

    invoke-direct {p0}, Lcom/b/a/au;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/c/i;->a:Lcom/b/a/aa;

    iput-object p2, p0, Lcom/b/a/a/c/i;->b:Lcom/b/b/h;

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/ah;
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/c/i;->a:Lcom/b/a/aa;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/b/a/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/b/a/ah;->a(Ljava/lang/String;)Lcom/b/a/ah;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()J
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/c/i;->a:Lcom/b/a/aa;

    invoke-static {v0}, Lcom/b/a/a/c/f;->a(Lcom/b/a/aa;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Lcom/b/b/h;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/c/i;->b:Lcom/b/b/h;

    return-object v0
.end method
