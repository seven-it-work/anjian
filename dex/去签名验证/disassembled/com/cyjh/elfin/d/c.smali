.class public Lcom/cyjh/elfin/d/c;
.super Ljava/lang/Object;


# static fields
.field public static d:Z = true

.field private static final e:Ljava/lang/String; = "PayModelManager"

.field private static f:Lcom/cyjh/elfin/d/c;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cyjh/elfin/d/c;->b:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyjh/elfin/d/c;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/d/c;->h:Z

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .registers 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x2

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v4, 0x11

    invoke-virtual {v1, v2, v0, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    const-string v5, "#2964AA"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v2, v0, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_38

    return-object v1

    :cond_38
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x2

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v0, p1, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const-string v2, "#2964AA"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v0, p1, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_60

    return-object v1

    :cond_60
    invoke-virtual {p0, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p0

    sub-int/2addr p1, v3

    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, p2, p0, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p2, Landroid/text/style/BackgroundColorSpan;

    const-string p3, "#2964AA"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p2, p3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v1, p2, p0, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public static a()Lcom/cyjh/elfin/d/c;
    .registers 2

    sget-object v0, Lcom/cyjh/elfin/d/c;->f:Lcom/cyjh/elfin/d/c;

    if-nez v0, :cond_19

    const-class v0, Lcom/cyjh/elfin/d/c;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/elfin/d/c;->f:Lcom/cyjh/elfin/d/c;

    if-nez v1, :cond_14

    new-instance v1, Lcom/cyjh/elfin/d/c;

    invoke-direct {v1}, Lcom/cyjh/elfin/d/c;-><init>()V

    sput-object v1, Lcom/cyjh/elfin/d/c;->f:Lcom/cyjh/elfin/d/c;

    monitor-exit v0

    return-object v1

    :cond_14
    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    sget-object v0, Lcom/cyjh/elfin/d/c;->f:Lcom/cyjh/elfin/d/c;

    return-object v0
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/d/c;->g:I

    return-void
.end method

.method private a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/cyjh/elfin/d/c;->b:J

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/d/c;->a:Ljava/lang/String;

    return-void
.end method

.method private static b(J)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/cyjh/common/util/l;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d()J
    .registers 3

    iget-wide v0, p0, Lcom/cyjh/elfin/d/c;->b:J

    return-wide v0
.end method

.method private e()Ljava/lang/String;
    .registers 11

    iget-object v0, p0, Lcom/cyjh/elfin/d/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-wide v0, p0, Lcom/cyjh/elfin/d/c;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    goto :goto_31

    :cond_11
    iget-wide v0, p0, Lcom/cyjh/elfin/d/c;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3c

    div-long/2addr v4, v0

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-lez v2, :cond_2e

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/cyjh/common/util/l;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    const-string v0, ""

    return-object v0

    :cond_31
    :goto_31
    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/entity/ParamsWrap;->onceTryMinute:I

    if-gtz v0, :cond_48

    const/4 v0, 0x3

    iput v0, p0, Lcom/cyjh/elfin/d/c;->c:I

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_48
    const/4 v0, 0x1

    iput v0, p0, Lcom/cyjh/elfin/d/c;->c:I

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const v2, 0x7f0900fc

    invoke-virtual {v1, v2}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v4

    iget v4, v4, Lcom/cyjh/elfin/entity/ParamsWrap;->onceTryMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v3

    iget v3, v3, Lcom/cyjh/elfin/entity/ParamsWrap;->onceTryMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u5206\u949f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8d

    const/4 v0, 0x0

    goto/16 :goto_105

    :cond_8d
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x2

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v8, 0x11

    invoke-virtual {v6, v7, v5, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v7, Landroid/text/style/BackgroundColorSpan;

    const-string v9, "#2964AA"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v7, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v7, v5, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_bc

    goto :goto_104

    :cond_bc
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x2

    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v6, v5, v2, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    const-string v7, "#2964AA"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v5, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v5, v2, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e4

    goto :goto_104

    :cond_e4
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    sub-int/2addr v2, v0

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v6, v3, v1, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const-string v3, "#2964AA"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v0, v1, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_104
    move-object v0, v6

    :goto_105
    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/entity/ParamsWrap;->onceTryMinute:I

    if-gtz v0, :cond_17

    const/4 v0, 0x3

    iput v0, p0, Lcom/cyjh/elfin/d/c;->c:I

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    const/4 v0, 0x1

    iput v0, p0, Lcom/cyjh/elfin/d/c;->c:I

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const v2, 0x7f0900fc

    invoke-virtual {v1, v2}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v4

    iget v4, v4, Lcom/cyjh/elfin/entity/ParamsWrap;->onceTryMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v3

    iget v3, v3, Lcom/cyjh/elfin/entity/ParamsWrap;->onceTryMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u5206\u949f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5c

    const/4 v0, 0x0

    goto/16 :goto_d4

    :cond_5c
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x2

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v8, 0x11

    invoke-virtual {v6, v7, v5, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v7, Landroid/text/style/BackgroundColorSpan;

    const-string v9, "#2964AA"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v7, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v7, v5, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8b

    goto :goto_d3

    :cond_8b
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x2

    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v6, v5, v2, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    const-string v7, "#2964AA"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v5, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v5, v2, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b3

    goto :goto_d3

    :cond_b3
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    sub-int/2addr v2, v0

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v6, v3, v1, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const-string v3, "#2964AA"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v0, v1, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_d3
    move-object v0, v6

    :goto_d4
    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .registers 7

    iget-wide v0, p0, Lcom/cyjh/elfin/d/c;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3c

    div-long/2addr v4, v0

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-lez v2, :cond_1d

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/cyjh/common/util/l;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    const-string v0, ""

    return-object v0
.end method

.method private h()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/d/c;->g:I

    return v0
.end method

.method private i()V
    .registers 7

    sget-boolean v0, Lcom/cyjh/elfin/d/c;->d:Z

    if-eqz v0, :cond_35

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/cyjh/elfin/d/c;->b:J

    sub-long v4, v2, v0

    const-wide/16 v0, 0x3c

    div-long/2addr v4, v0

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-lez v2, :cond_35

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6ce8\u518c\u7801"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/cyjh/common/util/l;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_35
    return-void
.end method

.method private j()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/elfin/d/c;->c:I

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/d/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/cyjh/elfin/d/c;->h:Z

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/cyjh/elfin/d/c;->c()V

    iget-object v0, p0, Lcom/cyjh/elfin/d/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, ""

    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/cyjh/elfin/d/c;->a:Ljava/lang/String;

    return-object v0

    :cond_1d
    const-string v0, ""

    return-object v0

    :cond_20
    iget-object v0, p0, Lcom/cyjh/elfin/d/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "regCode"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/common/a/a;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/http/e/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "regCodeStatus"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/common/a/a;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/http/e/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iput-object v0, p0, Lcom/cyjh/elfin/d/c;->a:Ljava/lang/String;

    return-void

    :cond_3d
    const-class v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;

    invoke-static {v1, v0}, Lcom/cyjh/common/util/r;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;

    if-eqz v0, :cond_4b

    iget-object v0, v0, Lcom/cyjh/http/bean/response/RegCodeStatusInfo;->regCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/cyjh/elfin/d/c;->a:Ljava/lang/String;

    :cond_4b
    return-void
.end method
