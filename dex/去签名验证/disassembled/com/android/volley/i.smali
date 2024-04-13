.class public final Lcom/android/volley/i;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:J


# direct methods
.method private constructor <init>(I[BLjava/util/Map;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/volley/i;-><init>(I[BLjava/util/Map;ZJ)V

    return-void
.end method

.method public constructor <init>(I[BLjava/util/Map;ZJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/volley/i;->a:I

    iput-object p2, p0, Lcom/android/volley/i;->b:[B

    iput-object p3, p0, Lcom/android/volley/i;->c:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/android/volley/i;->d:Z

    iput-wide p5, p0, Lcom/android/volley/i;->e:J

    return-void
.end method

.method private constructor <init>([B)V
    .registers 9

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/16 v1, 0xc8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/volley/i;-><init>(I[BLjava/util/Map;ZJ)V

    return-void
.end method

.method public constructor <init>([BLjava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v1, 0xc8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/volley/i;-><init>(I[BLjava/util/Map;ZJ)V

    return-void
.end method
