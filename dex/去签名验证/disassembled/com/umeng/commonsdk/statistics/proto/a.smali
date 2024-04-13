.class public Lcom/umeng/commonsdk/statistics/proto/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/umeng/commonsdk/proguard/aa;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/proto/a$c;,
        Lcom/umeng/commonsdk/statistics/proto/a$d;,
        Lcom/umeng/commonsdk/statistics/proto/a$a;,
        Lcom/umeng/commonsdk/statistics/proto/a$b;,
        Lcom/umeng/commonsdk/statistics/proto/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/commonsdk/proguard/aa<",
        "Lcom/umeng/commonsdk/statistics/proto/a;",
        "Lcom/umeng/commonsdk/statistics/proto/a$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/commonsdk/statistics/proto/a$e;",
            "Lcom/umeng/commonsdk/proguard/am;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:J = 0x7ebdcad047a76397L

.field private static final g:Lcom/umeng/commonsdk/proguard/be;

.field private static final h:Lcom/umeng/commonsdk/proguard/au;

.field private static final i:Lcom/umeng/commonsdk/proguard/au;

.field private static final j:Lcom/umeng/commonsdk/proguard/au;

.field private static final k:Lcom/umeng/commonsdk/proguard/au;

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/commonsdk/proguard/bh;",
            ">;",
            "Lcom/umeng/commonsdk/proguard/bi;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field private n:B

.field private o:[Lcom/umeng/commonsdk/statistics/proto/a$e;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/umeng/commonsdk/proguard/be;

    const-string v1, "IdJournal"

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/be;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->g:Lcom/umeng/commonsdk/proguard/be;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "domain"

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->h:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "old_id"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->i:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "new_id"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v3, v5}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->j:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "ts"

    const/16 v5, 0xa

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->k:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->l:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/bj;

    new-instance v6, Lcom/umeng/commonsdk/statistics/proto/a$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/umeng/commonsdk/statistics/proto/a$b;-><init>(Lcom/umeng/commonsdk/statistics/proto/a$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->l:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/bk;

    new-instance v6, Lcom/umeng/commonsdk/statistics/proto/a$d;

    invoke-direct {v6, v7}, Lcom/umeng/commonsdk/statistics/proto/a$d;-><init>(Lcom/umeng/commonsdk/statistics/proto/a$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/umeng/commonsdk/statistics/proto/a$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a$e;->a:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "domain"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v3}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a$e;->b:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "old_id"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v3}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v4, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a$e;->c:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v4, Lcom/umeng/commonsdk/proguard/am;

    const-string v6, "new_id"

    new-instance v7, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v7, v3}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v4, v6, v2, v7}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a$e;->d:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v3, Lcom/umeng/commonsdk/proguard/am;

    const-string v4, "ts"

    new-instance v6, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v6, v5}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v3, v4, v2, v6}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->e:Ljava/util/Map;

    const-class v0, Lcom/umeng/commonsdk/statistics/proto/a;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/am;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/commonsdk/statistics/proto/a$e;

    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/a$e;->b:Lcom/umeng/commonsdk/statistics/proto/a$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->o:[Lcom/umeng/commonsdk/statistics/proto/a$e;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/proto/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/commonsdk/statistics/proto/a$e;

    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/a$e;->b:Lcom/umeng/commonsdk/statistics/proto/a$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->o:[Lcom/umeng/commonsdk/statistics/proto/a$e;

    iget-byte v0, p1, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    :cond_1d
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/a;->g()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    :cond_27
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/a;->j()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    :cond_31
    iget-wide v0, p1, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/a;-><init>()V

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    iput-wide p3, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->d(Z)V

    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    new-instance v0, Lcom/umeng/commonsdk/proguard/at;

    new-instance v1, Lcom/umeng/commonsdk/proguard/bl;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/bl;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/at;-><init>(Lcom/umeng/commonsdk/proguard/bn;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->read(Lcom/umeng/commonsdk/proguard/az;)V
    :try_end_10
    .catch Lcom/umeng/commonsdk/proguard/ag; {:try_start_1 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ag;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/at;

    new-instance v1, Lcom/umeng/commonsdk/proguard/bl;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/bl;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/at;-><init>(Lcom/umeng/commonsdk/proguard/bn;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->write(Lcom/umeng/commonsdk/proguard/az;)V
    :try_end_d
    .catch Lcom/umeng/commonsdk/proguard/ag; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ag;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic o()Lcom/umeng/commonsdk/proguard/be;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->g:Lcom/umeng/commonsdk/proguard/be;

    return-object v0
.end method

.method static synthetic p()Lcom/umeng/commonsdk/proguard/au;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->h:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic q()Lcom/umeng/commonsdk/proguard/au;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->i:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic r()Lcom/umeng/commonsdk/proguard/au;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->j:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic s()Lcom/umeng/commonsdk/proguard/au;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->k:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/umeng/commonsdk/statistics/proto/a$e;
    .registers 2

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/proto/a$e;->a(I)Lcom/umeng/commonsdk/statistics/proto/a$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/umeng/commonsdk/statistics/proto/a;
    .registers 2

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/proto/a;-><init>(Lcom/umeng/commonsdk/statistics/proto/a;)V

    return-object v0
.end method

.method public a(J)Lcom/umeng/commonsdk/statistics/proto/a;
    .registers 3

    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->d(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/a;
    .registers 2

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/a;
    .registers 2

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/a;
    .registers 2

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public clear()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->d(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    return-void
.end method

.method public d(Z)V
    .registers 4

    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/x;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic deepCopy()Lcom/umeng/commonsdk/proguard/aa;
    .registers 2

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/a;->a()Lcom/umeng/commonsdk/statistics/proto/a;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic fieldForId(I)Lcom/umeng/commonsdk/proguard/ah;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->a(I)Lcom/umeng/commonsdk/statistics/proto/a$e;

    move-result-object p1

    return-object p1
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    return-void
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public k()J
    .registers 3

    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    return-wide v0
.end method

.method public l()V
    .registers 3

    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    return-void
.end method

.method public m()Z
    .registers 3

    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->a(BI)Z

    move-result v0

    return v0
.end method

.method public n()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'domain\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    if-nez v0, :cond_38

    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'new_id\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    return-void
.end method

.method public read(Lcom/umeng/commonsdk/proguard/az;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/bi;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/bi;->b()Lcom/umeng/commonsdk/proguard/bh;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/bh;->b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/aa;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdJournal("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "domain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    if-nez v1, :cond_16

    const-string v1, "null"

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_16
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    goto :goto_12

    :goto_19
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/a;->g()Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "old_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    if-nez v1, :cond_33

    const-string v1, "null"

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    :cond_33
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    goto :goto_2f

    :cond_36
    :goto_36
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "new_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    if-nez v1, :cond_4a

    const-string v1, "null"

    :goto_46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    :cond_4a
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    goto :goto_46

    :goto_4d
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/umeng/commonsdk/proguard/az;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/bi;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/bi;->b()Lcom/umeng/commonsdk/proguard/bh;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/bh;->a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/aa;)V

    return-void
.end method
