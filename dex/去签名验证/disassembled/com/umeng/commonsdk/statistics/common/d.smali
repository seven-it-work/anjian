.class public final Lcom/umeng/commonsdk/statistics/common/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/common/d$b;,
        Lcom/umeng/commonsdk/statistics/common/d$a;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/commonsdk/statistics/common/d; = null

.field private static b:Landroid/content/Context; = null

.field private static c:Ljava/lang/String; = null

.field private static final e:Ljava/lang/String; = "mobclick_agent_user_"

.field private static final f:Ljava/lang/String; = "mobclick_agent_header_"

.field private static final g:Ljava/lang/String; = "mobclick_agent_cached_"


# instance fields
.field private d:Lcom/umeng/commonsdk/statistics/common/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/umeng/commonsdk/statistics/common/d$a;

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/statistics/common/d$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/common/d;->d:Lcom/umeng/commonsdk/statistics/common/d$a;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/common/d;
    .registers 3

    const-class v0, Lcom/umeng/commonsdk/statistics/common/d;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/d;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/d;->c:Ljava/lang/String;

    sget-object v1, Lcom/umeng/commonsdk/statistics/common/d;->a:Lcom/umeng/commonsdk/statistics/common/d;

    if-nez v1, :cond_1a

    new-instance v1, Lcom/umeng/commonsdk/statistics/common/d;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/common/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/d;->a:Lcom/umeng/commonsdk/statistics/common/d;

    :cond_1a
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/d;->a:Lcom/umeng/commonsdk/statistics/common/d;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit v0

    return-object p0

    :catchall_1e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private f()Landroid/content/SharedPreferences;
    .registers 4

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/d;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mobclick_agent_user_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/commonsdk/statistics/common/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 4

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const-string v2, "vt"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_10
    return v1
.end method

.method public final a(I)V
    .registers 4

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vt"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_15
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "st"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_15
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "au_p"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "au_u"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_21
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const-string v2, "st"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    return-object v1
.end method

.method public final c()Z
    .registers 2

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->c(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final d()[Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d;->f()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "au_p"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "au_u"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1f

    if-eqz v1, :cond_1f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    return-object v3

    :catch_1f
    :cond_1f
    return-object v0
.end method

.method public final e()V
    .registers 3

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "au_p"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "au_u"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
