.class public final Lcom/cyjh/common/util/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/common/util/ah$a;
    }
.end annotation


# instance fields
.field protected final a:Lnet/grandcentrix/tray/AppPreferences;

.field protected final b:Lcom/cyjh/common/util/ah$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyjh/common/util/ah$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/common/util/ah$a;-><init>(Lcom/cyjh/common/util/ah;B)V

    iput-object v0, p0, Lcom/cyjh/common/util/ah;->b:Lcom/cyjh/common/util/ah$a;

    new-instance v0, Lnet/grandcentrix/tray/AppPreferences;

    invoke-direct {v0, p1}, Lnet/grandcentrix/tray/AppPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/common/util/ah;->a:Lnet/grandcentrix/tray/AppPreferences;

    return-void
.end method

.method private a()Lnet/grandcentrix/tray/AppPreferences;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/util/ah;->a:Lnet/grandcentrix/tray/AppPreferences;

    return-object v0
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/util/ah;->a:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/AppPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final edit()Landroid/content/SharedPreferences$Editor;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/util/ah;->b:Lcom/cyjh/common/util/ah$a;

    return-object v0
.end method

.method public final getAll()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/ah;->a:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/ah;->a:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/AppPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public final getInt(Ljava/lang/String;I)I
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/ah;->a:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/AppPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final getLong(Ljava/lang/String;J)J
    .registers 5

    iget-object v0, p0, Lcom/cyjh/common/util/ah;->a:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2, p3}, Lnet/grandcentrix/tray/AppPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/cyjh/common/util/ah;->a:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 2

    return-void
.end method

.method public final unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 2

    return-void
.end method
