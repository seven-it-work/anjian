.class public Lcom/umeng/commonsdk/statistics/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/umeng/commonsdk/statistics/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/d;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/common/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/common/d;->b()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/umeng/commonsdk/statistics/a;->b:Ljava/lang/String;

    :cond_12
    sget-object p0, Lcom/umeng/commonsdk/statistics/a;->b:Ljava/lang/String;

    return-object p0
.end method
