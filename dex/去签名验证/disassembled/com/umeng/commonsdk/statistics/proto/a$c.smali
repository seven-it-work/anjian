.class Lcom/umeng/commonsdk/statistics/proto/a$c;
.super Lcom/umeng/commonsdk/proguard/bk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/bk<",
        "Lcom/umeng/commonsdk/statistics/proto/a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/bk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/a$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/a$c;-><init>()V

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

    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/a$c;->a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/a;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p1, Lcom/umeng/commonsdk/proguard/bf;

    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bf;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bf;->a(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/proguard/bf;->a(J)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/a;->g()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_20
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/proguard/bf;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/a;->g()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/proguard/bf;->a(Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/aa;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/a$c;->b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/a;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/statistics/proto/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p1, Lcom/umeng/commonsdk/proguard/bf;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->a(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->c(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->d(Z)V

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bf;->b(I)Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/bf;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->b(Z)V

    :cond_32
    return-void
.end method
