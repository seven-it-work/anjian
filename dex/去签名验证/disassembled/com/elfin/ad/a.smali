.class public Lcom/elfin/ad/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/elfin/ad/a;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/elfin/ad/a;
    .registers 2

    sget-object v0, Lcom/elfin/ad/a;->b:Lcom/elfin/ad/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/elfin/ad/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/elfin/ad/a;->b:Lcom/elfin/ad/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/elfin/ad/a;

    invoke-direct {v1}, Lcom/elfin/ad/a;-><init>()V

    sput-object v1, Lcom/elfin/ad/a;->b:Lcom/elfin/ad/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/elfin/ad/a;->b:Lcom/elfin/ad/a;

    return-object v0
.end method

.method private b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/elfin/ad/a;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/iflytek/voiceads/dex/DexLoader;->initIFLYADModule(Landroid/content/Context;)V

    return-void
.end method
