.class public Lcom/umeng/analytics/c;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/umeng/analytics/c;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/umeng/analytics/c;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v0, Lcom/umeng/analytics/c;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    if-eqz p0, :cond_13

    invoke-static {p0}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/t;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static a(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/umeng/analytics/c;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    sget-object v0, Lcom/umeng/analytics/c;->a:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object p0, Lcom/umeng/analytics/c;->a:[Ljava/lang/String;

    return-object p0

    :cond_19
    if-eqz p0, :cond_34

    invoke-static {p0}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/t;->a()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_34

    sget-object v0, Lcom/umeng/analytics/c;->a:[Ljava/lang/String;

    aget-object v3, p0, v1

    aput-object v3, v0, v1

    sget-object v0, Lcom/umeng/analytics/c;->a:[Ljava/lang/String;

    aget-object p0, p0, v2

    aput-object p0, v0, v2

    sget-object p0, Lcom/umeng/analytics/c;->a:[Ljava/lang/String;

    return-object p0

    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/umeng/analytics/c;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v0, Lcom/umeng/analytics/c;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    if-eqz p0, :cond_14

    invoke-static {p0}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/t;->b()V

    :cond_14
    return-void
.end method
