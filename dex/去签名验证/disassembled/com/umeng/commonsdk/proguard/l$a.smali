.class Lcom/umeng/commonsdk/proguard/l$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/commonsdk/proguard/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/umeng/commonsdk/proguard/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/l;-><init>(Lcom/umeng/commonsdk/proguard/l$1;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/l$a;->a:Lcom/umeng/commonsdk/proguard/l;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/commonsdk/proguard/l;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/proguard/l$a;->a:Lcom/umeng/commonsdk/proguard/l;

    return-object v0
.end method
