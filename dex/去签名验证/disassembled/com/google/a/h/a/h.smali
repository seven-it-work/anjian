.class final Lcom/google/a/h/a/h;
.super Lcom/google/a/h/a/g;


# instance fields
.field final c:Z


# direct methods
.method constructor <init>(Lcom/google/a/h/a/c;Z)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/a/h/a/g;-><init>(Lcom/google/a/h/a/c;)V

    iput-boolean p2, p0, Lcom/google/a/h/a/h;->c:Z

    return-void
.end method

.method private a(Lcom/google/a/h/a/a;)V
    .registers 15

    iget-object v0, p0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    iget-object v1, p0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v2, :cond_13

    aget-object v5, v1, v4

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/google/a/h/a/d;->b()V

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_13
    invoke-virtual {p0, v0, p1}, Lcom/google/a/h/a/h;->a([Lcom/google/a/h/a/d;Lcom/google/a/h/a/a;)V

    iget-object v1, p0, Lcom/google/a/h/a/g;->a:Lcom/google/a/h/a/c;

    iget-boolean v2, p0, Lcom/google/a/h/a/h;->c:Z

    if-eqz v2, :cond_1f

    iget-object v2, v1, Lcom/google/a/h/a/c;->b:Lcom/google/a/t;

    goto :goto_21

    :cond_1f
    iget-object v2, v1, Lcom/google/a/h/a/c;->d:Lcom/google/a/t;

    :goto_21
    iget-boolean v4, p0, Lcom/google/a/h/a/h;->c:Z

    if-eqz v4, :cond_28

    iget-object v1, v1, Lcom/google/a/h/a/c;->c:Lcom/google/a/t;

    goto :goto_2a

    :cond_28
    iget-object v1, v1, Lcom/google/a/h/a/c;->e:Lcom/google/a/t;

    :goto_2a
    iget v2, v2, Lcom/google/a/t;->b:F

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/google/a/h/a/h;->b(I)I

    move-result v2

    iget v1, v1, Lcom/google/a/t;->b:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/google/a/h/a/h;->b(I)I

    move-result v1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_3c
    if-ge v2, v1, :cond_8f

    aget-object v8, v0, v2

    if-eqz v8, :cond_8c

    aget-object v8, v0, v2

    iget v9, v8, Lcom/google/a/h/a/d;->e:I

    sub-int/2addr v9, v4

    if-nez v9, :cond_4c

    add-int/lit8 v6, v6, 0x1

    goto :goto_8c

    :cond_4c
    if-ne v9, v5, :cond_58

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v6, v8, Lcom/google/a/h/a/d;->e:I

    move v7, v4

    move v4, v6

    :goto_56
    const/4 v6, 0x1

    goto :goto_8c

    :cond_58
    const/4 v10, 0x0

    if-ltz v9, :cond_8a

    iget v11, v8, Lcom/google/a/h/a/d;->e:I

    iget v12, p1, Lcom/google/a/h/a/a;->e:I

    if-ge v11, v12, :cond_8a

    if-le v9, v2, :cond_64

    goto :goto_8a

    :cond_64
    const/4 v11, 0x2

    if-le v7, v11, :cond_6b

    add-int/lit8 v11, v7, -0x2

    mul-int v9, v9, v11

    :cond_6b
    if-lt v9, v2, :cond_6f

    const/4 v11, 0x1

    goto :goto_70

    :cond_6f
    const/4 v11, 0x0

    :goto_70
    move v12, v11

    const/4 v11, 0x1

    :goto_72
    if-gt v11, v9, :cond_82

    if-nez v12, :cond_82

    sub-int v12, v2, v11

    aget-object v12, v0, v12

    if-eqz v12, :cond_7e

    const/4 v12, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v12, 0x0

    :goto_7f
    add-int/lit8 v11, v11, 0x1

    goto :goto_72

    :cond_82
    if-eqz v12, :cond_87

    aput-object v10, v0, v2

    goto :goto_8c

    :cond_87
    iget v4, v8, Lcom/google/a/h/a/d;->e:I

    goto :goto_56

    :cond_8a
    :goto_8a
    aput-object v10, v0, v2

    :cond_8c
    :goto_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_8f
    return-void
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/google/a/h/a/d;->b()V

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method private b(Lcom/google/a/h/a/a;)V
    .registers 12

    iget-object v0, p0, Lcom/google/a/h/a/g;->a:Lcom/google/a/h/a/c;

    iget-boolean v1, p0, Lcom/google/a/h/a/h;->c:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/google/a/h/a/c;->b:Lcom/google/a/t;

    goto :goto_b

    :cond_9
    iget-object v1, v0, Lcom/google/a/h/a/c;->d:Lcom/google/a/t;

    :goto_b
    iget-boolean v2, p0, Lcom/google/a/h/a/h;->c:Z

    if-eqz v2, :cond_12

    iget-object v0, v0, Lcom/google/a/h/a/c;->c:Lcom/google/a/t;

    goto :goto_14

    :cond_12
    iget-object v0, v0, Lcom/google/a/h/a/c;->e:Lcom/google/a/t;

    :goto_14
    iget v1, v1, Lcom/google/a/t;->b:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/google/a/h/a/h;->b(I)I

    move-result v1

    iget v0, v0, Lcom/google/a/t;->b:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/a/h/a/h;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_28
    if-ge v1, v0, :cond_57

    aget-object v7, v2, v1

    if-eqz v7, :cond_54

    aget-object v7, v2, v1

    invoke-virtual {v7}, Lcom/google/a/h/a/d;->b()V

    iget v8, v7, Lcom/google/a/h/a/d;->e:I

    sub-int/2addr v8, v3

    if-nez v8, :cond_3b

    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    :cond_3b
    if-ne v8, v5, :cond_47

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v7, Lcom/google/a/h/a/d;->e:I

    move v6, v3

    move v3, v4

    :goto_45
    const/4 v4, 0x1

    goto :goto_54

    :cond_47
    iget v8, v7, Lcom/google/a/h/a/d;->e:I

    iget v9, p1, Lcom/google/a/h/a/a;->e:I

    if-lt v8, v9, :cond_51

    const/4 v7, 0x0

    aput-object v7, v2, v1

    goto :goto_54

    :cond_51
    iget v3, v7, Lcom/google/a/h/a/d;->e:I

    goto :goto_45

    :cond_54
    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_57
    return-void
.end method

.method private c()[I
    .registers 14

    invoke-virtual {p0}, Lcom/google/a/h/a/h;->a()Lcom/google/a/h/a/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    iget-object v2, p0, Lcom/google/a/h/a/g;->a:Lcom/google/a/h/a/c;

    iget-boolean v3, p0, Lcom/google/a/h/a/h;->c:Z

    if-eqz v3, :cond_11

    iget-object v3, v2, Lcom/google/a/h/a/c;->b:Lcom/google/a/t;

    goto :goto_13

    :cond_11
    iget-object v3, v2, Lcom/google/a/h/a/c;->d:Lcom/google/a/t;

    :goto_13
    iget-boolean v4, p0, Lcom/google/a/h/a/h;->c:Z

    if-eqz v4, :cond_1a

    iget-object v2, v2, Lcom/google/a/h/a/c;->c:Lcom/google/a/t;

    goto :goto_1c

    :cond_1a
    iget-object v2, v2, Lcom/google/a/h/a/c;->e:Lcom/google/a/t;

    :goto_1c
    iget v3, v3, Lcom/google/a/t;->b:F

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/google/a/h/a/h;->b(I)I

    move-result v3

    iget v2, v2, Lcom/google/a/t;->b:F

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/google/a/h/a/h;->b(I)I

    move-result v2

    iget-object v4, p0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_31
    if-ge v3, v2, :cond_5f

    aget-object v10, v4, v3

    if-eqz v10, :cond_5c

    aget-object v10, v4, v3

    invoke-virtual {v10}, Lcom/google/a/h/a/d;->b()V

    iget v11, v10, Lcom/google/a/h/a/d;->e:I

    sub-int/2addr v11, v5

    if-nez v11, :cond_44

    add-int/lit8 v8, v8, 0x1

    goto :goto_5c

    :cond_44
    if-ne v11, v7, :cond_50

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v8, v10, Lcom/google/a/h/a/d;->e:I

    move v9, v5

    move v5, v8

    :goto_4e
    const/4 v8, 0x1

    goto :goto_5c

    :cond_50
    iget v11, v10, Lcom/google/a/h/a/d;->e:I

    iget v12, v0, Lcom/google/a/h/a/a;->e:I

    if-lt v11, v12, :cond_59

    aput-object v1, v4, v3

    goto :goto_5c

    :cond_59
    iget v5, v10, Lcom/google/a/h/a/d;->e:I

    goto :goto_4e

    :cond_5c
    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_5f
    iget v0, v0, Lcom/google/a/h/a/a;->e:I

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    array-length v2, v1

    :goto_66
    if-ge v6, v2, :cond_79

    aget-object v3, v1, v6

    if-eqz v3, :cond_76

    iget v3, v3, Lcom/google/a/h/a/d;->e:I

    array-length v4, v0

    if-ge v3, v4, :cond_76

    aget v4, v0, v3

    add-int/2addr v4, v7

    aput v4, v0, v3

    :cond_76
    add-int/lit8 v6, v6, 0x1

    goto :goto_66

    :cond_79
    return-object v0
.end method

.method private d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/a/h/a/h;->c:Z

    return v0
.end method


# virtual methods
.method final a()Lcom/google/a/h/a/a;
    .registers 13

    iget-object v0, p0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    new-instance v1, Lcom/google/a/h/a/b;

    invoke-direct {v1}, Lcom/google/a/h/a/b;-><init>()V

    new-instance v2, Lcom/google/a/h/a/b;

    invoke-direct {v2}, Lcom/google/a/h/a/b;-><init>()V

    new-instance v3, Lcom/google/a/h/a/b;

    invoke-direct {v3}, Lcom/google/a/h/a/b;-><init>()V

    new-instance v4, Lcom/google/a/h/a/b;

    invoke-direct {v4}, Lcom/google/a/h/a/b;-><init>()V

    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_19
    const/4 v8, 0x3

    if-ge v7, v5, :cond_4f

    aget-object v9, v0, v7

    if-eqz v9, :cond_4c

    invoke-virtual {v9}, Lcom/google/a/h/a/d;->b()V

    iget v10, v9, Lcom/google/a/h/a/d;->d:I

    rem-int/lit8 v10, v10, 0x1e

    iget v9, v9, Lcom/google/a/h/a/d;->e:I

    iget-boolean v11, p0, Lcom/google/a/h/a/h;->c:Z

    if-nez v11, :cond_2f

    add-int/lit8 v9, v9, 0x2

    :cond_2f
    rem-int/2addr v9, v8

    packed-switch v9, :pswitch_data_b8

    goto :goto_4c

    :pswitch_34
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v1, v10}, Lcom/google/a/h/a/b;->a(I)V

    goto :goto_4c

    :pswitch_3a
    div-int/lit8 v8, v10, 0x3

    invoke-virtual {v4, v8}, Lcom/google/a/h/a/b;->a(I)V

    rem-int/lit8 v10, v10, 0x3

    invoke-virtual {v3, v10}, Lcom/google/a/h/a/b;->a(I)V

    goto :goto_4c

    :pswitch_45
    mul-int/lit8 v10, v10, 0x3

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v2, v10}, Lcom/google/a/h/a/b;->a(I)V

    :cond_4c
    :goto_4c
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_4f
    invoke-virtual {v1}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_b5

    invoke-virtual {v2}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_b5

    invoke-virtual {v3}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_b5

    invoke-virtual {v4}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_b5

    invoke-virtual {v1}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v5

    aget v5, v5, v6

    if-lez v5, :cond_b5

    invoke-virtual {v2}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v5

    aget v5, v5, v6

    invoke-virtual {v3}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v7

    aget v7, v7, v6

    add-int/2addr v5, v7

    if-lt v5, v8, :cond_b5

    invoke-virtual {v2}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v5

    aget v5, v5, v6

    invoke-virtual {v3}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v7

    aget v7, v7, v6

    add-int/2addr v5, v7

    const/16 v7, 0x5a

    if-le v5, v7, :cond_94

    goto :goto_b5

    :cond_94
    new-instance v5, Lcom/google/a/h/a/a;

    invoke-virtual {v1}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v1

    aget v1, v1, v6

    invoke-virtual {v2}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v2

    aget v2, v2, v6

    invoke-virtual {v3}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v3

    aget v3, v3, v6

    invoke-virtual {v4}, Lcom/google/a/h/a/b;->a()[I

    move-result-object v4

    aget v4, v4, v6

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/a/h/a/a;-><init>(IIII)V

    invoke-virtual {p0, v0, v5}, Lcom/google/a/h/a/h;->a([Lcom/google/a/h/a/d;Lcom/google/a/h/a/a;)V

    return-object v5

    :cond_b5
    :goto_b5
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_45
        :pswitch_3a
        :pswitch_34
    .end packed-switch
.end method

.method final a([Lcom/google/a/h/a/d;Lcom/google/a/h/a/a;)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_49

    aget-object v1, p1, v0

    aget-object v2, p1, v0

    if-eqz v2, :cond_46

    iget v2, v1, Lcom/google/a/h/a/d;->d:I

    rem-int/lit8 v2, v2, 0x1e

    iget v1, v1, Lcom/google/a/h/a/d;->e:I

    iget v3, p2, Lcom/google/a/h/a/a;->e:I

    const/4 v4, 0x0

    if-le v1, v3, :cond_18

    aput-object v4, p1, v0

    goto :goto_46

    :cond_18
    iget-boolean v3, p0, Lcom/google/a/h/a/h;->c:Z

    if-nez v3, :cond_1e

    add-int/lit8 v1, v1, 0x2

    :cond_1e
    rem-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_4a

    goto :goto_46

    :pswitch_24
    add-int/lit8 v2, v2, 0x1

    iget v1, p2, Lcom/google/a/h/a/a;->a:I

    if-eq v2, v1, :cond_46

    aput-object v4, p1, v0

    goto :goto_46

    :pswitch_2d
    div-int/lit8 v1, v2, 0x3

    iget v3, p2, Lcom/google/a/h/a/a;->b:I

    if-ne v1, v3, :cond_39

    rem-int/lit8 v2, v2, 0x3

    iget v1, p2, Lcom/google/a/h/a/a;->d:I

    if-eq v2, v1, :cond_46

    :cond_39
    aput-object v4, p1, v0

    goto :goto_46

    :pswitch_3c
    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    iget v1, p2, Lcom/google/a/h/a/a;->c:I

    if-eq v2, v1, :cond_46

    aput-object v4, p1, v0

    :cond_46
    :goto_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_49
    return-void

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_2d
        :pswitch_24
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsLeft: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/a/h/a/h;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/google/a/h/a/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
