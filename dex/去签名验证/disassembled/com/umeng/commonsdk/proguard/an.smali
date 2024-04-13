.class public Lcom/umeng/commonsdk/proguard/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Z

.field public final b:B

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method public constructor <init>(B)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/umeng/commonsdk/proguard/an;-><init>(BZ)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/umeng/commonsdk/proguard/an;->b:B

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/umeng/commonsdk/proguard/an;->a:Z

    iput-object p2, p0, Lcom/umeng/commonsdk/proguard/an;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/umeng/commonsdk/proguard/an;->d:Z

    return-void
.end method

.method public constructor <init>(BZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/umeng/commonsdk/proguard/an;->b:B

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/umeng/commonsdk/proguard/an;->a:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/an;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/umeng/commonsdk/proguard/an;->d:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/umeng/commonsdk/proguard/an;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/an;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 3

    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/an;->b:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 3

    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/an;->b:B

    const/16 v1, 0xf

    if-eq v0, v1, :cond_15

    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/an;->b:B

    const/16 v1, 0xd

    if-eq v0, v1, :cond_15

    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/an;->b:B

    const/16 v1, 0xe

    if-ne v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/umeng/commonsdk/proguard/an;->d:Z

    return v0
.end method
