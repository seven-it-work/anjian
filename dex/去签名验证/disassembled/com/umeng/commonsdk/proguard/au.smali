.class public Lcom/umeng/commonsdk/proguard/au;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:B

.field public final c:S


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BS)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/au;->a:Ljava/lang/String;

    iput-byte p2, p0, Lcom/umeng/commonsdk/proguard/au;->b:B

    iput-short p3, p0, Lcom/umeng/commonsdk/proguard/au;->c:S

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/proguard/au;)Z
    .registers 4

    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/au;->b:B

    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-ne v0, v1, :cond_e

    iget-short v0, p0, Lcom/umeng/commonsdk/proguard/au;->c:S

    iget-short p1, p1, Lcom/umeng/commonsdk/proguard/au;->c:S

    if-ne v0, p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<TField name:\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/au;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/umeng/commonsdk/proguard/au;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " field-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/umeng/commonsdk/proguard/au;->c:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
