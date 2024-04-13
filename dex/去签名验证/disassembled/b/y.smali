.class public final Lb/y;
.super Lb/ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/y$a;,
        Lb/y$b;
    }
.end annotation


# static fields
.field public static final a:Lb/x;

.field public static final b:Lb/x;

.field public static final c:Lb/x;

.field public static final d:Lb/x;

.field public static final e:Lb/x;

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B


# instance fields
.field private final i:Lc/f;

.field private final j:Lb/x;

.field private final k:Lb/x;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/y$b;",
            ">;"
        }
    .end annotation
.end field

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lb/x;->a(Ljava/lang/String;)Lb/x;

    move-result-object v0

    sput-object v0, Lb/y;->a:Lb/x;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lb/x;->a(Ljava/lang/String;)Lb/x;

    move-result-object v0

    sput-object v0, Lb/y;->b:Lb/x;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lb/x;->a(Ljava/lang/String;)Lb/x;

    move-result-object v0

    sput-object v0, Lb/y;->c:Lb/x;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lb/x;->a(Ljava/lang/String;)Lb/x;

    move-result-object v0

    sput-object v0, Lb/y;->d:Lb/x;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lb/x;->a(Ljava/lang/String;)Lb/x;

    move-result-object v0

    sput-object v0, Lb/y;->e:Lb/x;

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_40

    sput-object v1, Lb/y;->f:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_46

    sput-object v1, Lb/y;->g:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_4c

    sput-object v0, Lb/y;->h:[B

    return-void

    nop

    :array_40
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_46
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_4c
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lc/f;Lb/x;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/f;",
            "Lb/x;",
            "Ljava/util/List<",
            "Lb/y$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lb/ad;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lb/y;->m:J

    iput-object p1, p0, Lb/y;->i:Lc/f;

    iput-object p2, p0, Lb/y;->j:Lb/x;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/f;->utf8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/x;->a(Ljava/lang/String;)Lb/x;

    move-result-object p1

    iput-object p1, p0, Lb/y;->k:Lb/x;

    invoke-static {p3}, Lb/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lb/y;->l:Ljava/util/List;

    return-void
.end method

.method private a(Lc/d;Z)J
    .registers 15
    .param p1    # Lc/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_9

    new-instance p1, Lc/c;

    invoke-direct {p1}, Lc/c;-><init>()V

    move-object v0, p1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lb/y;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_aa

    iget-object v6, p0, Lb/y;->l:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/y$b;

    iget-object v7, v6, Lb/y$b;->a:Lb/u;

    iget-object v6, v6, Lb/y$b;->b:Lb/ad;

    sget-object v8, Lb/y;->h:[B

    invoke-interface {p1, v8}, Lc/d;->d([B)Lc/d;

    iget-object v8, p0, Lb/y;->i:Lc/f;

    invoke-interface {p1, v8}, Lc/d;->e(Lc/f;)Lc/d;

    sget-object v8, Lb/y;->g:[B

    invoke-interface {p1, v8}, Lc/d;->d([B)Lc/d;

    if-eqz v7, :cond_5a

    iget-object v8, v7, Lb/u;->a:[Ljava/lang/String;

    array-length v8, v8

    div-int/lit8 v8, v8, 0x2

    const/4 v9, 0x0

    :goto_3a
    if-ge v9, v8, :cond_5a

    invoke-virtual {v7, v9}, Lb/u;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v10

    sget-object v11, Lb/y;->f:[B

    invoke-interface {v10, v11}, Lc/d;->d([B)Lc/d;

    move-result-object v10

    invoke-virtual {v7, v9}, Lb/u;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v10

    sget-object v11, Lb/y;->g:[B

    invoke-interface {v10, v11}, Lc/d;->d([B)Lc/d;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    :cond_5a
    invoke-virtual {v6}, Lb/ad;->contentType()Lb/x;

    move-result-object v7

    if-eqz v7, :cond_73

    const-string v8, "Content-Type: "

    invoke-interface {p1, v8}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v8

    invoke-virtual {v7}, Lb/x;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v7

    sget-object v8, Lb/y;->g:[B

    invoke-interface {v7, v8}, Lc/d;->d([B)Lc/d;

    :cond_73
    invoke-virtual {v6}, Lb/ad;->contentLength()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_8d

    const-string v9, "Content-Length: "

    invoke-interface {p1, v9}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Lc/d;->n(J)Lc/d;

    move-result-object v9

    sget-object v10, Lb/y;->g:[B

    invoke-interface {v9, v10}, Lc/d;->d([B)Lc/d;

    goto :goto_93

    :cond_8d
    if-eqz p2, :cond_93

    invoke-virtual {v0}, Lc/c;->w()V

    return-wide v9

    :cond_93
    :goto_93
    sget-object v9, Lb/y;->g:[B

    invoke-interface {p1, v9}, Lc/d;->d([B)Lc/d;

    if-eqz p2, :cond_9e

    add-long v9, v4, v7

    move-wide v4, v9

    goto :goto_a1

    :cond_9e
    invoke-virtual {v6, p1}, Lb/ad;->writeTo(Lc/d;)V

    :goto_a1
    sget-object v6, Lb/y;->g:[B

    invoke-interface {p1, v6}, Lc/d;->d([B)Lc/d;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15

    :cond_aa
    sget-object v1, Lb/y;->h:[B

    invoke-interface {p1, v1}, Lc/d;->d([B)Lc/d;

    iget-object v1, p0, Lb/y;->i:Lc/f;

    invoke-interface {p1, v1}, Lc/d;->e(Lc/f;)Lc/d;

    sget-object v1, Lb/y;->h:[B

    invoke-interface {p1, v1}, Lc/d;->d([B)Lc/d;

    sget-object v1, Lb/y;->g:[B

    invoke-interface {p1, v1}, Lc/d;->d([B)Lc/d;

    if-eqz p2, :cond_c8

    iget-wide p1, v0, Lc/c;->c:J

    add-long v1, v4, p1

    invoke-virtual {v0}, Lc/c;->w()V

    return-wide v1

    :cond_c8
    move-wide v1, v4

    return-wide v1
.end method

.method private a()Lb/x;
    .registers 2

    iget-object v0, p0, Lb/y;->j:Lb/x;

    return-object v0
.end method

.method private a(I)Lb/y$b;
    .registers 3

    iget-object v0, p0, Lb/y;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/y$b;

    return-object p1
.end method

.method static a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 7

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2c

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_24

    const/16 v4, 0xd

    if-eq v3, v4, :cond_21

    if-eq v3, v0, :cond_1e

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_1e
    const-string v3, "%22"

    goto :goto_26

    :cond_21
    const-string v3, "%0D"

    goto :goto_26

    :cond_24
    const-string v3, "%0A"

    :goto_26
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/y;->i:Lc/f;

    invoke-virtual {v0}, Lc/f;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()I
    .registers 2

    iget-object v0, p0, Lb/y;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/y$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/y;->l:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final contentLength()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lb/y;->m:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    return-wide v0

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lb/y;->a(Lc/d;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lb/y;->m:J

    return-wide v0
.end method

.method public final contentType()Lb/x;
    .registers 2

    iget-object v0, p0, Lb/y;->k:Lb/x;

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

    invoke-direct {p0, p1, v0}, Lb/y;->a(Lc/d;Z)J

    return-void
.end method
