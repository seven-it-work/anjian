.class final Lcom/umeng/commonsdk/UMConfigureImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/UMConfigureImpl;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/commonsdk/UMConfigureImpl$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/UMConfigureImpl$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/commonsdk/UMConfigureImpl$2;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10a

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_10b

    if-eqz v0, :cond_10a

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_20
    iget-object v2, p0, Lcom/umeng/commonsdk/UMConfigureImpl$2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/proguard/h;->a(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_3e

    :catch_26
    move-exception v2

    :try_start_27
    const-string v3, "internal"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "e is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_3e} :catch_10b

    :goto_3e
    :try_start_3e
    iget-object v2, p0, Lcom/umeng/commonsdk/UMConfigureImpl$2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/proguard/l;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/proguard/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/proguard/l;->a()Z

    move-result v2

    if-nez v2, :cond_6f

    iget-object v2, p0, Lcom/umeng/commonsdk/UMConfigureImpl$2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/proguard/l;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/proguard/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/proguard/l;->b()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_53} :catch_54

    goto :goto_6f

    :catch_54
    move-exception v2

    :try_start_55
    const-string v3, "internal"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "e is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_6f} :catch_10b

    :cond_6f
    :goto_6f
    :try_start_6f
    iget-object v2, p0, Lcom/umeng/commonsdk/UMConfigureImpl$2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/proguard/t;->b(Landroid/content/Context;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_74} :catch_75
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_74} :catch_10b

    goto :goto_8d

    :catch_75
    move-exception v2

    :try_start_76
    const-string v3, "internal"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "e is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_8d} :catch_10b

    :goto_8d
    :try_start_8d
    iget-object v2, p0, Lcom/umeng/commonsdk/UMConfigureImpl$2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/proguard/j;->n(Landroid/content/Context;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_92} :catch_93
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_92} :catch_10b

    goto :goto_ab

    :catch_93
    move-exception v2

    :try_start_94
    const-string v3, "internal"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "e is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_ab} :catch_10b

    :goto_ab
    :try_start_ab
    iget-object v2, p0, Lcom/umeng/commonsdk/UMConfigureImpl$2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/proguard/j;->d(Landroid/content/Context;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b0} :catch_b1
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_b0} :catch_10b

    goto :goto_c9

    :catch_b1
    move-exception v2

    :try_start_b2
    const-string v3, "internal"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "e is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_c9} :catch_10b

    :goto_c9
    :try_start_c9
    iget-object v2, p0, Lcom/umeng/commonsdk/UMConfigureImpl$2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/proguard/r;->b(Landroid/content/Context;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_ce} :catch_cf
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_ce} :catch_10b

    goto :goto_e7

    :catch_cf
    move-exception v2

    :try_start_d0
    const-string v3, "internal"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "e is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_d0 .. :try_end_e7} :catch_10b

    :goto_e7
    :try_start_e7
    iget-object v2, p0, Lcom/umeng/commonsdk/UMConfigureImpl$2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/proguard/d;->a(Landroid/content/Context;)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ec} :catch_ed
    .catch Ljava/lang/Throwable; {:try_start_e7 .. :try_end_ec} :catch_10b

    goto :goto_105

    :catch_ed
    move-exception v2

    :try_start_ee
    const-string v3, "internal"

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "e is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_105
    .catch Ljava/lang/Throwable; {:try_start_ee .. :try_end_105} :catch_10b

    :goto_105
    :try_start_105
    iget-object v0, p0, Lcom/umeng/commonsdk/UMConfigureImpl$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/d;->b(Landroid/content/Context;)V
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_105 .. :try_end_10a} :catch_10a

    :catch_10a
    :cond_10a
    return-void

    :catch_10b
    move-exception v0

    iget-object v1, p0, Lcom/umeng/commonsdk/UMConfigureImpl$2;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method
