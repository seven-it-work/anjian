.class public Lcom/lidroid/xutils/view/ViewInjectInfo;
.super Ljava/lang/Object;


# instance fields
.field public parentId:I

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/lidroid/xutils/view/ViewInjectInfo;

    iget v1, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    iget v3, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    if-nez v1, :cond_1d

    iget-object p1, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    if-nez p1, :cond_1c

    return v0

    :cond_1c
    return v2

    :cond_1d
    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    add-int/2addr v0, v1

    return v0
.end method
