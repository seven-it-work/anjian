.class Lcom/umeng/commonsdk/stateless/b$c;
.super Lcom/umeng/commonsdk/proguard/bk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/stateless/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/bk<",
        "Lcom/umeng/commonsdk/stateless/b;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/bk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/stateless/b$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/aa;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p2, Lcom/umeng/commonsdk/stateless/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/stateless/b$c;->a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/stateless/b;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/stateless/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p1, Lcom/umeng/commonsdk/proguard/bf;

    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bf;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bf;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bf;->a(Ljava/lang/String;)V

    iget v0, p2, Lcom/umeng/commonsdk/stateless/b;->d:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bf;->a(I)V

    iget v0, p2, Lcom/umeng/commonsdk/stateless/b;->e:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bf;->a(I)V

    iget v0, p2, Lcom/umeng/commonsdk/stateless/b;->f:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bf;->a(I)V

    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bf;->a(Ljava/nio/ByteBuffer;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bf;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bf;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->F()Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_3e
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/proguard/bf;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->F()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget p2, p2, Lcom/umeng/commonsdk/stateless/b;->j:I

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/proguard/bf;->a(I)V

    :cond_4d
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/aa;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p2, Lcom/umeng/commonsdk/stateless/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/stateless/b$c;->b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/stateless/b;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/stateless/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p1, Lcom/umeng/commonsdk/proguard/bf;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/stateless/b;->a(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/stateless/b;->b(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/stateless/b;->c(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/commonsdk/stateless/b;->d:I

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/stateless/b;->d(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/commonsdk/stateless/b;->e:I

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/stateless/b;->e(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/commonsdk/stateless/b;->f:I

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/stateless/b;->f(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->A()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/stateless/b;->g(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/stateless/b;->h(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/stateless/b;->i(Z)V

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bf;->b(I)Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->w()I

    move-result p1

    iput p1, p2, Lcom/umeng/commonsdk/stateless/b;->j:I

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/stateless/b;->j(Z)V

    :cond_68
    return-void
.end method
