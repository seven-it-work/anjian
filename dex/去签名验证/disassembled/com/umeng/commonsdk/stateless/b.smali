.class public Lcom/umeng/commonsdk/stateless/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/umeng/commonsdk/proguard/aa;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/stateless/b$c;,
        Lcom/umeng/commonsdk/stateless/b$d;,
        Lcom/umeng/commonsdk/stateless/b$a;,
        Lcom/umeng/commonsdk/stateless/b$b;,
        Lcom/umeng/commonsdk/stateless/b$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/commonsdk/proguard/aa<",
        "Lcom/umeng/commonsdk/stateless/b;",
        "Lcom/umeng/commonsdk/stateless/b$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final A:I = 0x2

.field private static final B:I = 0x3

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/commonsdk/stateless/b$e;",
            "Lcom/umeng/commonsdk/proguard/am;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:J = 0x5d55b037b877db0L

.field private static final m:Lcom/umeng/commonsdk/proguard/be;

.field private static final n:Lcom/umeng/commonsdk/proguard/au;

.field private static final o:Lcom/umeng/commonsdk/proguard/au;

.field private static final p:Lcom/umeng/commonsdk/proguard/au;

.field private static final q:Lcom/umeng/commonsdk/proguard/au;

.field private static final r:Lcom/umeng/commonsdk/proguard/au;

.field private static final s:Lcom/umeng/commonsdk/proguard/au;

.field private static final t:Lcom/umeng/commonsdk/proguard/au;

.field private static final u:Lcom/umeng/commonsdk/proguard/au;

.field private static final v:Lcom/umeng/commonsdk/proguard/au;

.field private static final w:Lcom/umeng/commonsdk/proguard/au;

.field private static final x:Ljava/util/Map;
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

.field private static final y:I = 0x0

.field private static final z:I = 0x1


# instance fields
.field private C:B

.field private D:[Lcom/umeng/commonsdk/stateless/b$e;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/umeng/commonsdk/proguard/be;

    const-string v1, "UMSLEnvelope"

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/be;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->m:Lcom/umeng/commonsdk/proguard/be;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "version"

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->n:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "address"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->o:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "signature"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v3, v5}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->p:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "serial_num"

    const/16 v5, 0x8

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->q:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "ts_secs"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->r:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "length"

    const/4 v6, 0x6

    invoke-direct {v0, v1, v5, v6}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->s:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "entity"

    const/4 v6, 0x7

    invoke-direct {v0, v1, v3, v6}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->t:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "guid"

    invoke-direct {v0, v1, v3, v5}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->u:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "checksum"

    const/16 v6, 0x9

    invoke-direct {v0, v1, v3, v6}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->v:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "codex"

    const/16 v6, 0xa

    invoke-direct {v0, v1, v5, v6}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->w:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->x:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/bj;

    new-instance v6, Lcom/umeng/commonsdk/stateless/b$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/umeng/commonsdk/stateless/b$b;-><init>(Lcom/umeng/commonsdk/stateless/b$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->x:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/bk;

    new-instance v6, Lcom/umeng/commonsdk/stateless/b$d;

    invoke-direct {v6, v7}, Lcom/umeng/commonsdk/stateless/b$d;-><init>(Lcom/umeng/commonsdk/stateless/b$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/umeng/commonsdk/stateless/b$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->a:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "version"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v3}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->b:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "address"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v3}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->c:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "signature"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v3}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->d:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "serial_num"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v5}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->e:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "ts_secs"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v5}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->f:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "length"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v5}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->g:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "entity"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v3, v2}, Lcom/umeng/commonsdk/proguard/an;-><init>(BZ)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->h:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "guid"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v3}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->i:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "checksum"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v3}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->j:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v2, Lcom/umeng/commonsdk/proguard/am;

    const-string v3, "codex"

    new-instance v6, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v6, v5}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v2, v3, v4, v6}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->k:Ljava/util/Map;

    const-class v0, Lcom/umeng/commonsdk/stateless/b;

    sget-object v1, Lcom/umeng/commonsdk/stateless/b;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/am;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/commonsdk/stateless/b$e;

    sget-object v2, Lcom/umeng/commonsdk/stateless/b$e;->j:Lcom/umeng/commonsdk/stateless/b$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->D:[Lcom/umeng/commonsdk/stateless/b$e;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/stateless/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/commonsdk/stateless/b$e;

    sget-object v2, Lcom/umeng/commonsdk/stateless/b$e;->j:Lcom/umeng/commonsdk/stateless/b$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->D:[Lcom/umeng/commonsdk/stateless/b$e;

    iget-byte v0, p1, Lcom/umeng/commonsdk/stateless/b;->C:B

    iput-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    invoke-virtual {p1}, Lcom/umeng/commonsdk/stateless/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    :cond_1d
    invoke-virtual {p1}, Lcom/umeng/commonsdk/stateless/b;->g()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    :cond_27
    invoke-virtual {p1}, Lcom/umeng/commonsdk/stateless/b;->j()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p1, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    :cond_31
    iget v0, p1, Lcom/umeng/commonsdk/stateless/b;->d:I

    iput v0, p0, Lcom/umeng/commonsdk/stateless/b;->d:I

    iget v0, p1, Lcom/umeng/commonsdk/stateless/b;->e:I

    iput v0, p0, Lcom/umeng/commonsdk/stateless/b;->e:I

    iget v0, p1, Lcom/umeng/commonsdk/stateless/b;->f:I

    iput v0, p0, Lcom/umeng/commonsdk/stateless/b;->f:I

    invoke-virtual {p1}, Lcom/umeng/commonsdk/stateless/b;->w()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p1, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/ab;->d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    :cond_4b
    invoke-virtual {p1}, Lcom/umeng/commonsdk/stateless/b;->z()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p1, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    :cond_55
    invoke-virtual {p1}, Lcom/umeng/commonsdk/stateless/b;->C()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p1, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    :cond_5f
    iget p1, p1, Lcom/umeng/commonsdk/stateless/b;->j:I

    iput p1, p0, Lcom/umeng/commonsdk/stateless/b;->j:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/b;-><init>()V

    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    iput p4, p0, Lcom/umeng/commonsdk/stateless/b;->d:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->d(Z)V

    iput p5, p0, Lcom/umeng/commonsdk/stateless/b;->e:I

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->e(Z)V

    iput p6, p0, Lcom/umeng/commonsdk/stateless/b;->f:I

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->f(Z)V

    iput-object p7, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    iput-object p8, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic H()Lcom/umeng/commonsdk/proguard/be;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->m:Lcom/umeng/commonsdk/proguard/be;

    return-object v0
.end method

.method static synthetic I()Lcom/umeng/commonsdk/proguard/au;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->n:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic J()Lcom/umeng/commonsdk/proguard/au;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->o:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic K()Lcom/umeng/commonsdk/proguard/au;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->p:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic L()Lcom/umeng/commonsdk/proguard/au;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->q:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic M()Lcom/umeng/commonsdk/proguard/au;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->r:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic N()Lcom/umeng/commonsdk/proguard/au;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->s:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic O()Lcom/umeng/commonsdk/proguard/au;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->t:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic P()Lcom/umeng/commonsdk/proguard/au;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->u:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic Q()Lcom/umeng/commonsdk/proguard/au;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->v:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic R()Lcom/umeng/commonsdk/proguard/au;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->w:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
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
    iput-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    new-instance v0, Lcom/umeng/commonsdk/proguard/at;

    new-instance v1, Lcom/umeng/commonsdk/proguard/bl;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/bl;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/at;-><init>(Lcom/umeng/commonsdk/proguard/bn;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/stateless/b;->read(Lcom/umeng/commonsdk/proguard/az;)V
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

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/stateless/b;->write(Lcom/umeng/commonsdk/proguard/az;)V
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


# virtual methods
.method public A()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public B()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    return-void
.end method

.method public C()Z
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public D()I
    .registers 2

    iget v0, p0, Lcom/umeng/commonsdk/stateless/b;->j:I

    return v0
.end method

.method public E()V
    .registers 3

    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    return-void
.end method

.method public F()Z
    .registers 3

    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->a(BI)Z

    move-result v0

    return v0
.end method

.method public G()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'version\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/stateless/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    if-nez v0, :cond_38

    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'address\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/stateless/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    if-nez v0, :cond_54

    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'signature\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/stateless/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_70

    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'entity\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/stateless/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_70
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    if-nez v0, :cond_8c

    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/stateless/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8c
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    if-nez v0, :cond_a8

    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/stateless/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a8
    return-void
.end method

.method public a()Lcom/umeng/commonsdk/stateless/b;
    .registers 2

    new-instance v0, Lcom/umeng/commonsdk/stateless/b;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/stateless/b;-><init>(Lcom/umeng/commonsdk/stateless/b;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/commonsdk/stateless/b;
    .registers 2

    iput p1, p0, Lcom/umeng/commonsdk/stateless/b;->d:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->d(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;
    .registers 2

    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lcom/umeng/commonsdk/stateless/b;
    .registers 2

    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public a([B)Lcom/umeng/commonsdk/stateless/b;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    :cond_4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_8
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->a(Ljava/nio/ByteBuffer;)Lcom/umeng/commonsdk/stateless/b;

    return-object p0
.end method

.method public a(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public b(I)Lcom/umeng/commonsdk/stateless/b;
    .registers 2

    iput p1, p0, Lcom/umeng/commonsdk/stateless/b;->e:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->e(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;
    .registers 2

    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public c(I)Lcom/umeng/commonsdk/stateless/b;
    .registers 2

    iput p1, p0, Lcom/umeng/commonsdk/stateless/b;->f:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->f(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;
    .registers 2

    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public clear()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/stateless/b;->d(Z)V

    iput v1, p0, Lcom/umeng/commonsdk/stateless/b;->d:I

    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/stateless/b;->e(Z)V

    iput v1, p0, Lcom/umeng/commonsdk/stateless/b;->e:I

    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/stateless/b;->f(Z)V

    iput v1, p0, Lcom/umeng/commonsdk/stateless/b;->f:I

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/stateless/b;->j(Z)V

    iput v1, p0, Lcom/umeng/commonsdk/stateless/b;->j:I

    return-void
.end method

.method public d(I)Lcom/umeng/commonsdk/stateless/b;
    .registers 2

    iput p1, p0, Lcom/umeng/commonsdk/stateless/b;->j:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->j(Z)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;
    .registers 2

    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)V
    .registers 4

    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/x;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic deepCopy()Lcom/umeng/commonsdk/proguard/aa;
    .registers 2

    invoke-virtual {p0}, Lcom/umeng/commonsdk/stateless/b;->a()Lcom/umeng/commonsdk/stateless/b;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/umeng/commonsdk/stateless/b$e;
    .registers 2

    invoke-static {p1}, Lcom/umeng/commonsdk/stateless/b$e;->a(I)Lcom/umeng/commonsdk/stateless/b$e;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;
    .registers 2

    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Z)V
    .registers 4

    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/x;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    return-void
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .registers 4

    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/x;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    return-void
.end method

.method public synthetic fieldForId(I)Lcom/umeng/commonsdk/proguard/ah;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->e(I)Lcom/umeng/commonsdk/stateless/b$e;

    move-result-object p1

    return-object p1
.end method

.method public g(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    :cond_5
    return-void
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    return-void
.end method

.method public i(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public j(Z)V
    .registers 4

    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/x;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    return-void
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lcom/umeng/commonsdk/stateless/b;->d:I

    return v0
.end method

.method public l()V
    .registers 3

    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    return-void
.end method

.method public m()Z
    .registers 3

    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->a(BI)Z

    move-result v0

    return v0
.end method

.method public n()I
    .registers 2

    iget v0, p0, Lcom/umeng/commonsdk/stateless/b;->e:I

    return v0
.end method

.method public o()V
    .registers 3

    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    return-void
.end method

.method public p()Z
    .registers 3

    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->a(BI)Z

    move-result v0

    return v0
.end method

.method public q()I
    .registers 2

    iget v0, p0, Lcom/umeng/commonsdk/stateless/b;->f:I

    return v0
.end method

.method public r()V
    .registers 3

    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    return-void
.end method

.method public read(Lcom/umeng/commonsdk/proguard/az;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->x:Ljava/util/Map;

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

.method public s()Z
    .registers 3

    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->a(BI)Z

    move-result v0

    return v0
.end method

.method public t()[B
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/ab;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/stateless/b;->a(Ljava/nio/ByteBuffer;)Lcom/umeng/commonsdk/stateless/b;

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UMSLEnvelope("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    if-nez v1, :cond_16

    const-string v1, "null"

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_16
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    goto :goto_12

    :goto_19
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    if-nez v1, :cond_2d

    const-string v1, "null"

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    :cond_2d
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    goto :goto_29

    :goto_30
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "signature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    if-nez v1, :cond_44

    const-string v1, "null"

    :goto_40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    :cond_44
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    goto :goto_40

    :goto_47
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "serial_num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/umeng/commonsdk/stateless/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts_secs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/umeng/commonsdk/stateless/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/umeng/commonsdk/stateless/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "entity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_88

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8d

    :cond_88
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/ab;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    :goto_8d
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "guid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    if-nez v1, :cond_a1

    const-string v1, "null"

    :goto_9d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a4

    :cond_a1
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    goto :goto_9d

    :goto_a4
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    if-nez v1, :cond_b8

    const-string v1, "null"

    :goto_b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bb

    :cond_b8
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    goto :goto_b4

    :goto_bb
    invoke-virtual {p0}, Lcom/umeng/commonsdk/stateless/b;->F()Z

    move-result v1

    if-eqz v1, :cond_d0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "codex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/umeng/commonsdk/stateless/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_d0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public v()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public w()Z
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public write(Lcom/umeng/commonsdk/proguard/az;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->x:Ljava/util/Map;

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

.method public x()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public y()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    return-void
.end method

.method public z()Z
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
