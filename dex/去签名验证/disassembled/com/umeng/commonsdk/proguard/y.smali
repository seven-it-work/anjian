.class public Lcom/umeng/commonsdk/proguard/y;
.super Ljava/lang/Object;


# instance fields
.field private a:[S

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/commonsdk/proguard/y;->b:I

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/y;->a:[S

    return-void
.end method

.method private d()V
    .registers 5

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/y;->a:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/y;->a:[S

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/y;->a:[S

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/y;->a:[S

    return-void
.end method


# virtual methods
.method public a()S
    .registers 4

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/y;->a:[S

    iget v1, p0, Lcom/umeng/commonsdk/proguard/y;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/umeng/commonsdk/proguard/y;->b:I

    aget-short v0, v0, v1

    return v0
.end method

.method public a(S)V
    .registers 4

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/y;->a:[S

    array-length v0, v0

    iget v1, p0, Lcom/umeng/commonsdk/proguard/y;->b:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_c

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/y;->d()V

    :cond_c
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/y;->a:[S

    iget v1, p0, Lcom/umeng/commonsdk/proguard/y;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/umeng/commonsdk/proguard/y;->b:I

    aput-short p1, v0, v1

    return-void
.end method

.method public b()S
    .registers 3

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/y;->a:[S

    iget v1, p0, Lcom/umeng/commonsdk/proguard/y;->b:I

    aget-short v0, v0, v1

    return v0
.end method

.method public c()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/commonsdk/proguard/y;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<ShortStack vector:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/y;->a:[S

    array-length v2, v2

    if-ge v1, v2, :cond_33

    if-eqz v1, :cond_17

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget v2, p0, Lcom/umeng/commonsdk/proguard/y;->b:I

    if-ne v1, v2, :cond_20

    const-string v2, ">>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/y;->a:[S

    aget-short v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/umeng/commonsdk/proguard/y;->b:I

    if-ne v1, v2, :cond_30

    const-string v2, "<<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_33
    const-string v1, "]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
