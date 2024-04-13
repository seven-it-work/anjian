.class final Lcom/core/util/share/a;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x3

.field static final d:I = 0x4

.field static final e:I = 0x5

.field static final f:I = 0x6

.field static final g:I = 0x1

.field static final h:I = 0x2

.field static final i:I = 0x3

.field static final j:I = 0x4

.field static final k:I = 0x5

.field static final l:I = 0x6

.field static final m:Ljava/lang/String; = "key_key"

.field static final n:Ljava/lang/String; = "key_value"

.field static final o:Ljava/lang/String; = "key_value_type"

.field static final p:Ljava/lang/String; = "key_op_type"


# instance fields
.field q:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()I
    .registers 4

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private b(J)J
    .registers 5

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method private b(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private c()I
    .registers 4

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_op_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private c(I)Lcom/core/util/share/a;
    .registers 4

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method static c(Ljava/lang/String;)Lcom/core/util/share/a;
    .registers 2

    new-instance v0, Lcom/core/util/share/a;

    invoke-direct {v0}, Lcom/core/util/share/a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/core/util/share/a;->a(Ljava/lang/String;)Lcom/core/util/share/a;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/core/util/share/a;->a(I)Lcom/core/util/share/a;

    move-result-object p0

    return-object p0
.end method

.method private d()F
    .registers 3

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private d(I)I
    .registers 4

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method static d(Ljava/lang/String;)Lcom/core/util/share/a;
    .registers 2

    new-instance v0, Lcom/core/util/share/a;

    invoke-direct {v0}, Lcom/core/util/share/a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/core/util/share/a;->a(Ljava/lang/String;)Lcom/core/util/share/a;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/core/util/share/a;->a(I)Lcom/core/util/share/a;

    move-result-object p0

    return-object p0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    :cond_c
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private f()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    return-object v0
.end method

.method private static f(Ljava/lang/String;)Lcom/core/util/share/a;
    .registers 2

    new-instance v0, Lcom/core/util/share/a;

    invoke-direct {v0}, Lcom/core/util/share/a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/core/util/share/a;->a(Ljava/lang/String;)Lcom/core/util/share/a;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/core/util/share/a;->a(I)Lcom/core/util/share/a;

    move-result-object p0

    return-object p0
.end method

.method private static g()Lcom/core/util/share/a;
    .registers 2

    new-instance v0, Lcom/core/util/share/a;

    invoke-direct {v0}, Lcom/core/util/share/a;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/core/util/share/a;->a(I)Lcom/core/util/share/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(F)Lcom/core/util/share/a;
    .registers 5

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public final a(I)Lcom/core/util/share/a;
    .registers 4

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_op_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public final a(J)Lcom/core/util/share/a;
    .registers 6

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/core/util/share/a;
    .registers 4

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Ljava/util/Set;)Lcom/core/util/share/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/core/util/share/a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value"

    if-nez p1, :cond_10

    const/4 p1, 0x0

    goto :goto_16

    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v2

    :goto_16
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public final a(Z)Lcom/core/util/share/a;
    .registers 5

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public final b(I)Lcom/core/util/share/a;
    .registers 5

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/core/util/share/a;
    .registers 5

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
