.class public Lcom/umeng/commonsdk/statistics/common/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Z = false

.field private static b:Ljava/lang/String; = "ULog"

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3

.field private static final f:I = 0x4

.field private static final g:I = 0x5

.field private static h:I = 0x7d0


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 10

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/umeng/commonsdk/statistics/common/e;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    const/16 v4, 0x64

    if-ge v2, v4, :cond_73

    if-le v0, v1, :cond_48

    packed-switch p0, :pswitch_data_98

    goto :goto_3f

    :pswitch_18
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :pswitch_20
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :pswitch_28
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :pswitch_30
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :pswitch_38
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    sget v3, Lcom/umeng/commonsdk/statistics/common/e;->h:I

    add-int/2addr v3, v1

    add-int/lit8 v2, v2, 0x1

    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_e

    :cond_48
    packed-switch p0, :pswitch_data_a6

    goto :goto_73

    :pswitch_4c
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :pswitch_54
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :pswitch_5c
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :pswitch_64
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :pswitch_6c
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    :goto_73
    if-eqz p3, :cond_96

    invoke-static {p3}, Lcom/umeng/commonsdk/statistics/common/e;->f(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_96

    packed-switch p0, :pswitch_data_b4

    return-void

    :pswitch_83
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_87
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_8b
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_8f
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_93
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    return-void

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_38
        :pswitch_30
        :pswitch_28
        :pswitch_20
        :pswitch_18
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_64
        :pswitch_5c
        :pswitch_54
        :pswitch_4c
    .end packed-switch

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/e;->a:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    const-string v0, ""

    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1e
    if-eqz p1, :cond_26

    const/4 v0, 0x0

    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/e;->a:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    const-string v0, ""

    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1e
    if-eqz p1, :cond_26

    const/4 v0, 0x0

    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs b(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/e;->a:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    const-string v0, ""

    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1e
    if-eqz p1, :cond_26

    const/4 v0, 0x0

    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs c(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/e;->a:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    const-string v0, ""

    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1e
    if-eqz p1, :cond_26

    const/4 v0, 0x0

    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs d(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/e;->a:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    const-string v0, ""

    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1e
    if-eqz p1, :cond_26

    const/4 v0, 0x0

    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs e(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/umeng/commonsdk/statistics/common/e;->b:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static f(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_35
    .catchall {:try_start_3 .. :try_end_8} :catchall_28

    :try_start_8
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_36
    .catchall {:try_start_8 .. :try_end_d} :catchall_26

    :try_start_d
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1a} :catch_24
    .catchall {:try_start_d .. :try_end_1a} :catchall_21

    :try_start_1a
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_1d

    :catch_1d
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    return-object p0

    :catchall_21
    move-exception p0

    move-object v1, v3

    goto :goto_2a

    :catch_24
    move-object v1, v3

    goto :goto_36

    :catchall_26
    move-exception p0

    goto :goto_2a

    :catchall_28
    move-exception p0

    move-object v2, v1

    :goto_2a
    if-eqz v2, :cond_2f

    :try_start_2c
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2f} :catch_2f

    :catch_2f
    :cond_2f
    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_34
    throw p0

    :catch_35
    move-object v2, v1

    :catch_36
    :goto_36
    if-eqz v2, :cond_3b

    :try_start_38
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_3b

    :catch_3b
    :cond_3b
    if-eqz v1, :cond_40

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_40
    move-object p0, v0

    return-object p0
.end method
