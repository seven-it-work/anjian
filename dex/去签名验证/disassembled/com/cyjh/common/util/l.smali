.class public final Lcom/cyjh/common/util/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x5a0

.field public static final b:I = 0x3c


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .registers 13

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/cyjh/common/R$string;->optionfragment_duetime_day:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    const-wide/16 v0, 0x5a0

    cmp-long v2, p1, v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x3c

    if-ltz v2, :cond_3a

    sget v2, Lcom/cyjh/common/R$string;->optionfragment_duetime_day:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    div-long v8, p1, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v2, v5

    rem-long v0, p1, v0

    div-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v4

    rem-long/2addr p1, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3a
    cmp-long v2, p1, v6

    if-lez v2, :cond_5e

    cmp-long v2, p1, v0

    if-gez v2, :cond_5e

    sget v0, Lcom/cyjh/common/R$string;->optionfragment_duetime_hour:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    div-long v1, p1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v5

    rem-long/2addr p1, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5e
    cmp-long v0, p1, v6

    const-wide/16 v1, 0x0

    if-gtz v0, :cond_7b

    cmp-long v0, p1, v1

    if-lez v0, :cond_7b

    sget v0, Lcom/cyjh/common/R$string;->optionfragment_duetime_minute:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7b
    cmp-long v0, p1, v1

    if-gtz v0, :cond_86

    sget p1, Lcom/cyjh/common/R$string;->optionfragment_duetime_no:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_86
    const-string p0, ""

    return-object p0
.end method
