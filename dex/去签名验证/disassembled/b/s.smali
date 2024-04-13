.class public final Lb/s;
.super Lb/ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/s$a;
    }
.end annotation


# static fields
.field private static final a:Lb/x;


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

    invoke-static {v0}, Lb/x;->a(Ljava/lang/String;)Lb/x;

    move-result-object v0

    sput-object v0, Lb/s;->a:Lb/x;

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

    invoke-direct {p0}, Lb/ad;-><init>()V

    invoke-static {p1}, Lb/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lb/s;->b:Ljava/util/List;

    invoke-static {p2}, Lb/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lb/s;->c:Ljava/util/List;

    return-void
.end method

.method private a()I
    .registers 2

    iget-object v0, p0, Lb/s;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private a(Lc/d;Z)J
    .registers 6
    .param p1    # Lc/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_8

    new-instance p1, Lc/c;

    invoke-direct {p1}, Lc/c;-><init>()V

    goto :goto_c

    :cond_8
    invoke-interface {p1}, Lc/d;->a()Lc/c;

    move-result-object p1

    :goto_c
    const/4 v0, 0x0

    iget-object v1, p0, Lb/s;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_13
    if-ge v0, v1, :cond_3a

    if-lez v0, :cond_1c

    const/16 v2, 0x26

    invoke-virtual {p1, v2}, Lc/c;->b(I)Lc/c;

    :cond_1c
    iget-object v2, p0, Lb/s;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lc/c;->a(Ljava/lang/String;)Lc/c;

    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Lc/c;->b(I)Lc/c;

    iget-object v2, p0, Lb/s;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lc/c;->a(Ljava/lang/String;)Lc/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_3a
    if-eqz p2, :cond_42

    iget-wide v0, p1, Lc/c;->c:J

    invoke-virtual {p1}, Lc/c;->w()V

    return-wide v0

    :cond_42
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private a(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lb/s;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private b(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lb/s;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lb/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lb/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private d(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lb/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lb/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final contentLength()J
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lb/s;->a(Lc/d;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lb/x;
    .registers 2

    sget-object v0, Lb/s;->a:Lb/x;

    return-object v0
.end method

.method public final writeTo(Lc/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/s;->a(Lc/d;Z)J

    return-void
.end method
