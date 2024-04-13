.class final Lcom/cyjh/common/util/toast/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field static final a:Lcom/cyjh/common/util/toast/r;

.field static final d:Landroid/app/Activity;


# instance fields
.field final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/common/util/toast/q$d;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/cyjh/common/util/toast/q$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/common/util/toast/r;

    invoke-direct {v0}, Lcom/cyjh/common/util/toast/r;-><init>()V

    sput-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    new-instance v0, Landroid/app/Activity;

    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    sput-object v0, Lcom/cyjh/common/util/toast/r;->d:Landroid/app/Activity;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/util/toast/r;->b:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/util/toast/r;->c:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/util/toast/r;->f:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/common/util/toast/r;->g:I

    iput v0, p0, Lcom/cyjh/common/util/toast/r;->h:I

    iput-boolean v0, p0, Lcom/cyjh/common/util/toast/r;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/cyjh/common/util/toast/r;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/common/util/toast/r;->f:Ljava/util/Map;

    return-object p0
.end method

.method private a(Landroid/app/Activity;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/cyjh/common/util/toast/r$2;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/common/util/toast/r$2;-><init>(Lcom/cyjh/common/util/toast/r;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/cyjh/common/util/toast/o;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/common/util/toast/r;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lcom/cyjh/common/util/toast/r;->a(Landroid/app/Activity;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/util/List;)V

    iget-object v0, p0, Lcom/cyjh/common/util/toast/r;->f:Ljava/util/Map;

    sget-object v1, Lcom/cyjh/common/util/toast/r;->d:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lcom/cyjh/common/util/toast/r;->a(Landroid/app/Activity;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/util/List;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            "Ljava/util/List<",
            "Lcom/cyjh/common/util/toast/q$a;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/common/util/toast/q$a;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v1}, Landroid/arch/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0, p1}, Lcom/cyjh/common/util/toast/q$a;->a(Landroid/app/Activity;)V

    goto :goto_7

    :cond_1f
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v0}, Landroid/arch/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v0}, Landroid/arch/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v0}, Landroid/arch/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v0}, Landroid/arch/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v0}, Landroid/arch/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_45
    sget-object p3, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, p3}, Landroid/arch/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_52

    iget-object p2, p0, Lcom/cyjh/common/util/toast/r;->f:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    return-void
.end method

.method private a(Landroid/app/Activity;Z)V
    .registers 5

    const/16 v0, -0x7b

    if-eqz p2, :cond_1e

    :try_start_4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_1e
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_2f

    return-void

    :cond_2f
    new-instance v0, Lcom/cyjh/common/util/toast/r$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/cyjh/common/util/toast/r$4;-><init>(Lcom/cyjh/common/util/toast/r;Landroid/app/Activity;Ljava/lang/Object;)V

    const-wide/16 p1, 0x64

    invoke-static {v0, p1, p2}, Lcom/cyjh/common/util/toast/o;->a(Ljava/lang/Runnable;J)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_39

    :catch_39
    return-void
.end method

.method private a(Landroid/app/Application;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private a(Lcom/cyjh/common/util/toast/q$a;)V
    .registers 3

    sget-object v0, Lcom/cyjh/common/util/toast/r;->d:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/cyjh/common/util/toast/r;->a(Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V

    return-void
.end method

.method private a(Lcom/cyjh/common/util/toast/q$d;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/util/toast/r;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/cyjh/common/util/toast/r;Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/toast/r;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object p0, p0, Lcom/cyjh/common/util/toast/r;->f:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_15
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    :goto_1b
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    return-void
.end method

.method static b()Landroid/app/Application;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/common/util/toast/r;->g()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_e

    return-object v0

    :cond_e
    const-string v3, "getApplication"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_20

    return-object v0

    :cond_20
    check-cast v1, Landroid/app/Application;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    return-object v1

    :catch_23
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private b(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/util/toast/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/cyjh/common/util/toast/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/cyjh/common/util/toast/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_1b
    iget-object v0, p0, Lcom/cyjh/common/util/toast/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_20
    return-void
.end method

.method private b(Landroid/app/Application;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/util/toast/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private b(Lcom/cyjh/common/util/toast/q$a;)V
    .registers 3

    sget-object v0, Lcom/cyjh/common/util/toast/r;->d:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/cyjh/common/util/toast/r;->b(Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V

    return-void
.end method

.method private b(Lcom/cyjh/common/util/toast/q$d;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/util/toast/r;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lcom/cyjh/common/util/toast/r;Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V
    .registers 3

    iget-object p0, p0, Lcom/cyjh/common/util/toast/r;->f:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_13

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method private c()Landroid/app/Activity;
    .registers 4

    invoke-virtual {p0}, Lcom/cyjh/common/util/toast/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/cyjh/common/util/toast/a;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method private c(Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/common/util/toast/r;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/cyjh/common/util/toast/r;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_15
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    return-void

    :cond_1c
    :goto_1c
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private d(Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/toast/r;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method private d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/common/util/toast/r;->e:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/util/toast/r;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/cyjh/common/util/toast/r;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_f

    :cond_19
    return-void
.end method

.method private static f()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    invoke-static {}, Lcom/cyjh/common/util/toast/r;->g()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d

    return-object v0

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mActivities"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Map;

    if-nez v3, :cond_24

    return-object v0

    :cond_24
    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    if-nez v1, :cond_5e

    const-string v7, "paused"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    move-object v1, v6

    goto :goto_2e

    :cond_5e
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_61} :catch_62

    goto :goto_2e

    :catch_62
    move-exception v2

    const-string v3, "UtilsActivityLifecycle"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getActivitiesByReflect: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    if-eqz v1, :cond_7f

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_7f
    return-object v0
.end method

.method private static g()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lcom/cyjh/common/util/toast/r;->h()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-static {}, Lcom/cyjh/common/util/toast/r;->i()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static h()Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sCurrentActivityThread"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_16

    return-object v1

    :catch_16
    move-exception v1

    const-string v2, "UtilsActivityLifecycle"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getActivityThreadInActivityThreadStaticField: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static i()Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    return-object v1

    :catch_17
    move-exception v1

    const-string v2, "UtilsActivityLifecycle"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getActivityThreadInActivityThreadStaticMethod: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static j()V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    :try_start_d
    const-class v0, Landroid/animation/ValueAnimator;

    const-string v1, "sDurationScale"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_39

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "UtilsActivityLifecycle"

    const-string v1, "setAnimatorsEnabled: Animators are enabled now!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_39} :catch_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_39} :catch_3a

    :cond_39
    return-void

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/common/util/toast/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/r;->b:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_10
    invoke-static {}, Lcom/cyjh/common/util/toast/r;->f()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/common/util/toast/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/r;->b:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method final a(Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V
    .registers 4

    if-eqz p1, :cond_d

    if-nez p2, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/cyjh/common/util/toast/r$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/cyjh/common/util/toast/r$1;-><init>(Lcom/cyjh/common/util/toast/r;Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V

    invoke-static {v0}, Lcom/cyjh/common/util/toast/o;->a(Ljava/lang/Runnable;)V

    :cond_d
    return-void
.end method

.method final b(Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V
    .registers 4

    if-eqz p1, :cond_d

    if-nez p2, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/cyjh/common/util/toast/r$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/cyjh/common/util/toast/r$3;-><init>(Lcom/cyjh/common/util/toast/r;Landroid/app/Activity;Lcom/cyjh/common/util/toast/q$a;)V

    invoke-static {v0}, Lcom/cyjh/common/util/toast/o;->a(Ljava/lang/Runnable;)V

    :cond_d
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/cyjh/common/util/toast/r;->b:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    if-nez p2, :cond_b

    invoke-direct {p0}, Lcom/cyjh/common/util/toast/r;->e()V

    :cond_b
    const-string p2, "Utils"

    invoke-static {p2}, Lcom/cyjh/common/util/toast/k;->a(Ljava/lang/String;)Lcom/cyjh/common/util/toast/k;

    move-result-object p2

    const-string v0, "KEY_LOCALE"

    const-string v1, ""

    iget-object p2, p2, Lcom/cyjh/common/util/toast/k;->a:Landroid/content/SharedPreferences;

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "VALUE_FOLLOW_SYSTEM"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_41

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p2

    goto :goto_78

    :cond_41
    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_78

    :cond_44
    invoke-static {p2}, Lcom/cyjh/common/util/toast/h;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_77

    const-string v1, "LanguageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The string of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not in the correct format."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Utils"

    invoke-static {p2}, Lcom/cyjh/common/util/toast/k;->a(Ljava/lang/String;)Lcom/cyjh/common/util/toast/k;

    move-result-object p2

    const-string v1, "KEY_LOCALE"

    iget-object p2, p2, Lcom/cyjh/common/util/toast/k;->a:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_77
    move-object p2, v0

    :goto_78
    if-eqz p2, :cond_84

    invoke-static {p1, p2}, Lcom/cyjh/common/util/toast/h;->a(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/cyjh/common/util/toast/h;->a(Landroid/content/Context;Ljava/util/Locale;)V

    :cond_84
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_90

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result p2

    if-nez p2, :cond_c6

    :cond_90
    :try_start_90
    const-class p2, Landroid/animation/ValueAnimator;

    const-string v0, "sDurationScale"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_c6

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p2, "UtilsActivityLifecycle"

    const-string v0, "setAnimatorsEnabled: Animators are enabled now!"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldException; {:try_start_90 .. :try_end_bc} :catch_c2
    .catch Ljava/lang/IllegalAccessException; {:try_start_90 .. :try_end_bc} :catch_bd

    goto :goto_c6

    :catch_bd
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_c6

    :catch_c2
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_c6
    :goto_c6
    invoke-direct {p0, p1}, Lcom/cyjh/common/util/toast/r;->b(Landroid/app/Activity;)V

    sget-object p2, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, p2}, Lcom/cyjh/common/util/toast/r;->a(Landroid/app/Activity;Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cyjh/common/util/toast/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/cyjh/common/util/toast/g;->a(Landroid/app/Activity;)V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/common/util/toast/r;->a(Landroid/app/Activity;Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/common/util/toast/r;->a(Landroid/app/Activity;Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/cyjh/common/util/toast/r;->b(Landroid/app/Activity;)V

    iget-boolean v0, p0, Lcom/cyjh/common/util/toast/r;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iput-boolean v1, p0, Lcom/cyjh/common/util/toast/r;->e:Z

    invoke-direct {p0}, Lcom/cyjh/common/util/toast/r;->e()V

    :cond_d
    invoke-direct {p0, p1, v1}, Lcom/cyjh/common/util/toast/r;->a(Landroid/app/Activity;Z)V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/common/util/toast/r;->a(Landroid/app/Activity;Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/cyjh/common/util/toast/r;->e:Z

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/cyjh/common/util/toast/r;->b(Landroid/app/Activity;)V

    :cond_7
    iget v0, p0, Lcom/cyjh/common/util/toast/r;->h:I

    if-gez v0, :cond_12

    iget v0, p0, Lcom/cyjh/common/util/toast/r;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/common/util/toast/r;->h:I

    goto :goto_18

    :cond_12
    iget v0, p0, Lcom/cyjh/common/util/toast/r;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/common/util/toast/r;->g:I

    :goto_18
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/common/util/toast/r;->a(Landroid/app/Activity;Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/cyjh/common/util/toast/r;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/common/util/toast/r;->h:I

    goto :goto_1b

    :cond_d
    iget v0, p0, Lcom/cyjh/common/util/toast/r;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/common/util/toast/r;->g:I

    iget v0, p0, Lcom/cyjh/common/util/toast/r;->g:I

    if-gtz v0, :cond_1b

    iput-boolean v1, p0, Lcom/cyjh/common/util/toast/r;->e:Z

    invoke-direct {p0}, Lcom/cyjh/common/util/toast/r;->e()V

    :cond_1b
    :goto_1b
    invoke-direct {p0, p1, v1}, Lcom/cyjh/common/util/toast/r;->a(Landroid/app/Activity;Z)V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/common/util/toast/r;->a(Landroid/app/Activity;Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method
