.class public Lcom/cyjh/common/util/ab;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/cyjh/common/util/ab; = null

.field private static c:Ljava/lang/String; = "com.cyjh.elfin.base.AppContext"


# instance fields
.field public a:Landroid/content/SharedPreferences;


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

.method public static a()Lcom/cyjh/common/util/ab;
    .registers 2

    sget-object v0, Lcom/cyjh/common/util/ab;->b:Lcom/cyjh/common/util/ab;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/common/util/ab;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/common/util/ab;->b:Lcom/cyjh/common/util/ab;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/common/util/ab;

    invoke-direct {v1}, Lcom/cyjh/common/util/ab;-><init>()V

    sput-object v1, Lcom/cyjh/common/util/ab;->b:Lcom/cyjh/common/util/ab;

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
    sget-object v0, Lcom/cyjh/common/util/ab;->b:Lcom/cyjh/common/util/ab;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/cyjh/common/util/ah;

    invoke-direct {v0, p1}, Lcom/cyjh/common/util/ah;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/common/util/ab;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/util/ab;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/cyjh/common/util/ab;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/ab;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/cyjh/common/util/ab;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private b(Ljava/lang/String;I)I
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/ab;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object v0, p0, Lcom/cyjh/common/util/ab;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/ab;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    iget-object v0, p0, Lcom/cyjh/common/util/ab;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/ab;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/cyjh/common/util/ab;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/ab;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/cyjh/common/util/ab;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/ab;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object v0, p0, Lcom/cyjh/common/util/ab;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
