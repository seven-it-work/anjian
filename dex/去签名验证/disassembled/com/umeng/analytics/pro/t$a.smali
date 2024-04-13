.class final Lcom/umeng/analytics/pro/t$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/pro/t;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/umeng/analytics/pro/t;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/t;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/t$a;->a:Lcom/umeng/analytics/pro/t;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/pro/t;
    .registers 1

    sget-object v0, Lcom/umeng/analytics/pro/t$a;->a:Lcom/umeng/analytics/pro/t;

    return-object v0
.end method
