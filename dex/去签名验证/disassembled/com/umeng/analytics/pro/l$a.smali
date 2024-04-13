.class Lcom/umeng/analytics/pro/l$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/umeng/analytics/pro/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/umeng/analytics/pro/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/l;-><init>(Lcom/umeng/analytics/pro/l$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/l$a;->a:Lcom/umeng/analytics/pro/l;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
