.class public final Lcom/umeng/commonsdk/proguard/ax;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:B

.field public final c:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/umeng/commonsdk/proguard/ax;-><init>(Ljava/lang/String;BI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/ax;->a:Ljava/lang/String;

    iput-byte p2, p0, Lcom/umeng/commonsdk/proguard/ax;->b:B

    iput p3, p0, Lcom/umeng/commonsdk/proguard/ax;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/umeng/commonsdk/proguard/ax;)Z
    .registers 4

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ax;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/umeng/commonsdk/proguard/ax;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/ax;->b:B

    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/ax;->b:B

    if-ne v0, v1, :cond_18

    iget v0, p0, Lcom/umeng/commonsdk/proguard/ax;->c:I

    iget p1, p1, Lcom/umeng/commonsdk/proguard/ax;->c:I

    if-ne v0, p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/umeng/commonsdk/proguard/ax;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/umeng/commonsdk/proguard/ax;

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/ax;->a(Lcom/umeng/commonsdk/proguard/ax;)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<TMessage name:\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ax;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/umeng/commonsdk/proguard/ax;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seqid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/umeng/commonsdk/proguard/ax;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
