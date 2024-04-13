.class final Lcom/cyjh/common/util/ah$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/util/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/common/util/ah;


# direct methods
.method private constructor <init>(Lcom/cyjh/common/util/ah;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/util/ah$a;->a:Lcom/cyjh/common/util/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/common/util/ah;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/common/util/ah$a;-><init>(Lcom/cyjh/common/util/ah;)V

    return-void
.end method


# virtual methods
.method public final apply()V
    .registers 1

    return-void
.end method

.method public final clear()Landroid/content/SharedPreferences$Editor;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/util/ah$a;->a:Lcom/cyjh/common/util/ah;

    iget-object v0, v0, Lcom/cyjh/common/util/ah;->a:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/AppPreferences;->clear()Z

    return-object p0
.end method

.method public final commit()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/ah$a;->a:Lcom/cyjh/common/util/ah;

    iget-object v0, v0, Lcom/cyjh/common/util/ah;->a:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Z)Z

    return-object p0
.end method

.method public final putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/ah$a;->a:Lcom/cyjh/common/util/ah;

    iget-object v0, v0, Lcom/cyjh/common/util/ah;->a:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;F)Z

    return-object p0
.end method

.method public final putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/ah$a;->a:Lcom/cyjh/common/util/ah;

    iget-object v0, v0, Lcom/cyjh/common/util/ah;->a:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;I)Z

    return-object p0
.end method

.method public final putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 5

    iget-object v0, p0, Lcom/cyjh/common/util/ah$a;->a:Lcom/cyjh/common/util/ah;

    iget-object v0, v0, Lcom/cyjh/common/util/ah;->a:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2, p3}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;J)Z

    return-object p0
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cyjh/common/util/ah$a;->a:Lcom/cyjh/common/util/ah;

    iget-object v0, v0, Lcom/cyjh/common/util/ah;->a:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    return-object p0
.end method

.method public final putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .registers 3
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    return-object p0
.end method

.method public final remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/util/ah$a;->a:Lcom/cyjh/common/util/ah;

    iget-object v0, v0, Lcom/cyjh/common/util/ah;->a:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/AppPreferences;->remove(Ljava/lang/String;)Z

    return-object p0
.end method
