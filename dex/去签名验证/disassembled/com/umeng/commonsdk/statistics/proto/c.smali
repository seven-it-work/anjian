.class public Lcom/umeng/commonsdk/statistics/proto/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/umeng/commonsdk/proguard/aa;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/proto/c$c;,
        Lcom/umeng/commonsdk/statistics/proto/c$d;,
        Lcom/umeng/commonsdk/statistics/proto/c$a;,
        Lcom/umeng/commonsdk/statistics/proto/c$b;,
        Lcom/umeng/commonsdk/statistics/proto/c$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/commonsdk/proguard/aa<",
        "Lcom/umeng/commonsdk/statistics/proto/c;",
        "Lcom/umeng/commonsdk/statistics/proto/c$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/commonsdk/statistics/proto/c$e;",
            "Lcom/umeng/commonsdk/proguard/am;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:J = -0x4ffe4305ce3009afL

.field private static final f:Lcom/umeng/commonsdk/proguard/be;

.field private static final g:Lcom/umeng/commonsdk/proguard/au;

.field private static final h:Lcom/umeng/commonsdk/proguard/au;

.field private static final i:Lcom/umeng/commonsdk/proguard/au;

.field private static final j:Ljava/util/Map;
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


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/commonsdk/statistics/proto/a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field private k:[Lcom/umeng/commonsdk/statistics/proto/c$e;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    new-instance v0, Lcom/umeng/commonsdk/proguard/be;

    const-string v1, "IdTracking"

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/be;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->f:Lcom/umeng/commonsdk/proguard/be;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "snapshots"

    const/4 v2, 0x1

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v2}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->g:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "journals"

    const/16 v4, 0xf

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->h:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "checksum"

    const/16 v6, 0xb

    const/4 v7, 0x3

    invoke-direct {v0, v1, v6, v7}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->i:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->j:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/bj;

    new-instance v7, Lcom/umeng/commonsdk/statistics/proto/c$b;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/umeng/commonsdk/statistics/proto/c$b;-><init>(Lcom/umeng/commonsdk/statistics/proto/c$1;)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->j:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/bk;

    new-instance v7, Lcom/umeng/commonsdk/statistics/proto/c$d;

    invoke-direct {v7, v8}, Lcom/umeng/commonsdk/statistics/proto/c$d;-><init>(Lcom/umeng/commonsdk/statistics/proto/c$1;)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/umeng/commonsdk/statistics/proto/c$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/c$e;->a:Lcom/umeng/commonsdk/statistics/proto/c$e;

    new-instance v7, Lcom/umeng/commonsdk/proguard/am;

    const-string v8, "snapshots"

    new-instance v9, Lcom/umeng/commonsdk/proguard/ap;

    new-instance v10, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v10, v6}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    new-instance v11, Lcom/umeng/commonsdk/proguard/ar;

    const-class v12, Lcom/umeng/commonsdk/statistics/proto/b;

    const/16 v13, 0xc

    invoke-direct {v11, v13, v12}, Lcom/umeng/commonsdk/proguard/ar;-><init>(BLjava/lang/Class;)V

    invoke-direct {v9, v3, v10, v11}, Lcom/umeng/commonsdk/proguard/ap;-><init>(BLcom/umeng/commonsdk/proguard/an;Lcom/umeng/commonsdk/proguard/an;)V

    invoke-direct {v7, v8, v2, v9}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/c$e;->b:Lcom/umeng/commonsdk/statistics/proto/c$e;

    new-instance v2, Lcom/umeng/commonsdk/proguard/am;

    const-string v3, "journals"

    new-instance v7, Lcom/umeng/commonsdk/proguard/ao;

    new-instance v8, Lcom/umeng/commonsdk/proguard/ar;

    const-class v9, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-direct {v8, v13, v9}, Lcom/umeng/commonsdk/proguard/ar;-><init>(BLjava/lang/Class;)V

    invoke-direct {v7, v4, v8}, Lcom/umeng/commonsdk/proguard/ao;-><init>(BLcom/umeng/commonsdk/proguard/an;)V

    invoke-direct {v2, v3, v5, v7}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/c$e;->c:Lcom/umeng/commonsdk/statistics/proto/c$e;

    new-instance v2, Lcom/umeng/commonsdk/proguard/am;

    const-string v3, "checksum"

    new-instance v4, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v4, v6}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->d:Ljava/util/Map;

    const-class v0, Lcom/umeng/commonsdk/statistics/proto/c;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/c;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/am;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/commonsdk/statistics/proto/c$e;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/c$e;->b:Lcom/umeng/commonsdk/statistics/proto/c$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/c$e;->c:Lcom/umeng/commonsdk/statistics/proto/c$e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->k:[Lcom/umeng/commonsdk/statistics/proto/c$e;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/proto/c;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/commonsdk/statistics/proto/c$e;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/c$e;->b:Lcom/umeng/commonsdk/statistics/proto/c$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/c$e;->c:Lcom/umeng/commonsdk/statistics/proto/c$e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->k:[Lcom/umeng/commonsdk/statistics/proto/c$e;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/c;->e()Z

    move-result v0

    if-eqz v0, :cond_4a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/statistics/proto/b;

    new-instance v4, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-direct {v4, v2}, Lcom/umeng/commonsdk/statistics/proto/b;-><init>(Lcom/umeng/commonsdk/statistics/proto/b;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_48
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    :cond_4a
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/c;->j()Z

    move-result v0

    if-eqz v0, :cond_72

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/statistics/proto/a;

    new-instance v3, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-direct {v3, v2}, Lcom/umeng/commonsdk/statistics/proto/a;-><init>(Lcom/umeng/commonsdk/statistics/proto/a;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_70
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    :cond_72
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/c;->m()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object p1, p1, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    :cond_7c
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/c;-><init>()V

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

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

    :try_start_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/at;

    new-instance v1, Lcom/umeng/commonsdk/proguard/bl;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/bl;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/at;-><init>(Lcom/umeng/commonsdk/proguard/bn;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/c;->read(Lcom/umeng/commonsdk/proguard/az;)V
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

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/c;->write(Lcom/umeng/commonsdk/proguard/az;)V
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

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->f:Lcom/umeng/commonsdk/proguard/be;

    return-object v0
.end method

.method static synthetic p()Lcom/umeng/commonsdk/proguard/au;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->g:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic q()Lcom/umeng/commonsdk/proguard/au;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->h:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic r()Lcom/umeng/commonsdk/proguard/au;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->i:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/umeng/commonsdk/statistics/proto/c$e;
    .registers 2

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/proto/c$e;->a(I)Lcom/umeng/commonsdk/statistics/proto/c$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/umeng/commonsdk/statistics/proto/c;
    .registers 2

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/proto/c;-><init>(Lcom/umeng/commonsdk/statistics/proto/c;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/c;
    .registers 2

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/umeng/commonsdk/statistics/proto/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/umeng/commonsdk/statistics/proto/a;",
            ">;)",
            "Lcom/umeng/commonsdk/statistics/proto/c;"
        }
    .end annotation

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/umeng/commonsdk/statistics/proto/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/b;",
            ">;)",
            "Lcom/umeng/commonsdk/statistics/proto/c;"
        }
    .end annotation

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    return-object p0
.end method

.method public a(Lcom/umeng/commonsdk/statistics/proto/a;)V
    .registers 3

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/proto/b;)V
    .registers 4

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    :cond_5
    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public b(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    :cond_5
    return-void
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    return-object v0
.end method

.method public c(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    return-void
.end method

.method public synthetic deepCopy()Lcom/umeng/commonsdk/proguard/aa;
    .registers 2

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/c;->a()Lcom/umeng/commonsdk/statistics/proto/c;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic fieldForId(I)Lcom/umeng/commonsdk/proguard/ah;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/c;->a(I)Lcom/umeng/commonsdk/statistics/proto/c$e;

    move-result-object p1

    return-object p1
.end method

.method public g()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/umeng/commonsdk/statistics/proto/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/commonsdk/statistics/proto/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    return-void
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    return-void
.end method

.method public m()Z
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public n()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'snapshots\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    return-void
.end method

.method public read(Lcom/umeng/commonsdk/proguard/az;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->j:Ljava/util/Map;

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
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdTracking("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "snapshots:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    if-nez v1, :cond_16

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_16
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1b
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/c;->j()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "journals:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    if-nez v1, :cond_35

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_35
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/c;->m()Z

    move-result v1

    if-eqz v1, :cond_57

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    if-nez v1, :cond_54

    const-string v1, "null"

    :goto_50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    :cond_54
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    goto :goto_50

    :cond_57
    :goto_57
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

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->j:Ljava/util/Map;

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
