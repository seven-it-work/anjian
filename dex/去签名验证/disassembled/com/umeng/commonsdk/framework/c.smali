.class public Lcom/umeng/commonsdk/framework/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "analytics"

.field public static final b:Ljava/lang/String; = "push"

.field public static final c:Ljava/lang/String; = "share"

.field public static final d:Ljava/lang/String; = "internal"

.field private static e:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/framework/UMLogDataProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Landroid/content/Context; = null

.field private static final g:I = 0x4001

.field private static final h:I = 0x5000

.field private static final i:I = 0x6001

.field private static final j:I = 0x7000

.field private static final k:I = 0x8001

.field private static final l:I = 0x9000


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

.method public static a()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/framework/c;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/umeng/commonsdk/framework/UMLogDataProtocol;
    .registers 2

    sget-object v0, Lcom/umeng/commonsdk/framework/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/umeng/commonsdk/framework/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 3

    const-string v0, "analytics"

    const/16 v1, 0x4001

    if-lt p0, v1, :cond_c

    const/16 v1, 0x5000

    if-gt p0, v1, :cond_c

    const-string v0, "push"

    :cond_c
    const/16 v1, 0x6001

    if-lt p0, v1, :cond_16

    const/16 v1, 0x7000

    if-gt p0, v1, :cond_16

    const-string v0, "share"

    :cond_16
    const v1, 0x8001

    if-lt p0, v1, :cond_22

    const v1, 0x9000

    if-gt p0, v1, :cond_22

    const-string v0, "internal"

    :cond_22
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/umeng/commonsdk/framework/c;->f:Landroid/content/Context;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/commonsdk/framework/c;->f:Landroid/content/Context;

    :cond_a
    return-void
.end method

.method public static a(ILcom/umeng/commonsdk/framework/UMLogDataProtocol;)Z
    .registers 5

    sget-object v0, Lcom/umeng/commonsdk/framework/c;->e:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/c;->e:Ljava/util/HashMap;

    :cond_b
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/c;->a(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/umeng/commonsdk/framework/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_39

    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/umeng/commonsdk/framework/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_38
    const/4 v1, 0x0

    :cond_39
    return v1
.end method
