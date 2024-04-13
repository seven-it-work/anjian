.class public Lcom/cyjh/elfin/receiver/NetStateReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/receiver/NetStateReceiver$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final b:Ljava/lang/String; = "NetStateReceiver"

.field private static c:Z

.field private static d:I

.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/elfin/receiver/NetStateReceiver$a;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a()Landroid/content/BroadcastReceiver;
    .registers 2

    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->f:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/elfin/receiver/NetStateReceiver;->f:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/elfin/receiver/NetStateReceiver;

    invoke-direct {v1}, Lcom/cyjh/elfin/receiver/NetStateReceiver;-><init>()V

    sput-object v1, Lcom/cyjh/elfin/receiver/NetStateReceiver;->f:Landroid/content/BroadcastReceiver;

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
    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->f:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/cyjh/elfin/receiver/NetStateReceiver;->a()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static a(Lcom/cyjh/elfin/receiver/NetStateReceiver$a;)V
    .registers 2

    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->e:Ljava/util/ArrayList;

    :cond_b
    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_d

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    return-void
.end method

.method private static b(Lcom/cyjh/elfin/receiver/NetStateReceiver$a;)V
    .registers 2

    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method private static b()Z
    .registers 1

    sget-boolean v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->c:Z

    return v0
.end method

.method private static c()I
    .registers 1

    sget v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->d:I

    return v0
.end method

.method private static c(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static d()V
    .registers 4

    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_29

    sget-object v2, Lcom/cyjh/elfin/receiver/NetStateReceiver;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/elfin/receiver/NetStateReceiver$a;

    if-eqz v2, :cond_26

    sget-boolean v3, Lcom/cyjh/elfin/receiver/NetStateReceiver;->c:Z

    if-eqz v3, :cond_23

    invoke-interface {v2}, Lcom/cyjh/elfin/receiver/NetStateReceiver$a;->a()V

    goto :goto_26

    :cond_23
    invoke-interface {v2}, Lcom/cyjh/elfin/receiver/NetStateReceiver$a;->b()V

    :cond_26
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_29
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    sput-object p0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_63

    invoke-static {p1}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "<--- network disconnected --->"

    invoke-static {p1, p2}, Lcom/cyjh/common/util/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->c:Z

    goto :goto_3b

    :cond_25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "<--- network connected --->"

    invoke-static {p2, v1}, Lcom/cyjh/common/util/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    sput-boolean p2, Lcom/cyjh/elfin/receiver/NetStateReceiver;->c:Z

    invoke-static {p1}, Lcom/cyjh/common/util/x;->b(Landroid/content/Context;)I

    move-result p1

    sput p1, Lcom/cyjh/elfin/receiver/NetStateReceiver;->d:I

    :goto_3b
    sget-object p1, Lcom/cyjh/elfin/receiver/NetStateReceiver;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_63

    sget-object p1, Lcom/cyjh/elfin/receiver/NetStateReceiver;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_49
    if-ge v0, p1, :cond_63

    sget-object p2, Lcom/cyjh/elfin/receiver/NetStateReceiver;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cyjh/elfin/receiver/NetStateReceiver$a;

    if-eqz p2, :cond_60

    sget-boolean v1, Lcom/cyjh/elfin/receiver/NetStateReceiver;->c:Z

    if-eqz v1, :cond_5d

    invoke-interface {p2}, Lcom/cyjh/elfin/receiver/NetStateReceiver$a;->a()V

    goto :goto_60

    :cond_5d
    invoke-interface {p2}, Lcom/cyjh/elfin/receiver/NetStateReceiver$a;->b()V

    :cond_60
    :goto_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_63
    return-void
.end method
