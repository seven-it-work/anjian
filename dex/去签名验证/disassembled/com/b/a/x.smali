.class public final Lcom/b/a/x;
.super Lcom/b/a/aq;


# static fields
.field private static final a:Lcom/b/a/ah;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lcom/b/a/ah;->a(Ljava/lang/String;)Lcom/b/a/ah;

    move-result-object v0

    sput-object v0, Lcom/b/a/x;->a:Lcom/b/a/ah;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/b/a/aq;-><init>()V

    invoke-static {p1}, Lcom/b/a/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/x;->b:Ljava/util/List;

    invoke-static {p2}, Lcom/b/a/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/x;->c:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/b/b/g;Z)J
    .registers 6

    if-eqz p2, :cond_8

    new-instance p1, Lcom/b/b/f;

    invoke-direct {p1}, Lcom/b/b/f;-><init>()V

    goto :goto_c

    :cond_8
    invoke-interface {p1}, Lcom/b/b/g;->c()Lcom/b/b/f;

    move-result-object p1

    :goto_c
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/b/a/x;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_13
    if-ge v0, v1, :cond_3a

    if-lez v0, :cond_1c

    const/16 v2, 0x26

    invoke-virtual {p1, v2}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    :cond_1c
    iget-object v2, p0, Lcom/b/a/x;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/b/b/f;->a(Ljava/lang/String;)Lcom/b/b/f;

    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    iget-object v2, p0, Lcom/b/a/x;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/b/b/f;->a(Ljava/lang/String;)Lcom/b/b/f;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_3a
    if-eqz p2, :cond_44

    invoke-virtual {p1}, Lcom/b/b/f;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/b/b/f;->o()V

    return-wide v0

    :cond_44
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public final a()Lcom/b/a/ah;
    .registers 2

    sget-object v0, Lcom/b/a/x;->a:Lcom/b/a/ah;

    return-object v0
.end method

.method public final a(Lcom/b/b/g;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/x;->a(Lcom/b/b/g;Z)J

    return-void
.end method

.method public final b()J
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/b/a/x;->a(Lcom/b/b/g;Z)J

    move-result-wide v0

    return-wide v0
.end method
