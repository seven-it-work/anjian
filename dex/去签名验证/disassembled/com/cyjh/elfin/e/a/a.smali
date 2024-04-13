.class public Lcom/cyjh/elfin/e/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/e/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "FloatWindowManager"

.field private static volatile b:Lcom/cyjh/elfin/e/a/a;


# instance fields
.field private c:Z

.field private d:Landroid/view/WindowManager;

.field private e:Landroid/view/WindowManager$LayoutParams;

.field private f:Lcom/cyjh/elfin/ui/a/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/e/a/a;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/e/a/a;->d:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/cyjh/elfin/e/a/a;->e:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static a()Lcom/cyjh/elfin/e/a/a;
    .registers 2

    sget-object v0, Lcom/cyjh/elfin/e/a/a;->b:Lcom/cyjh/elfin/e/a/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/elfin/e/a/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/elfin/e/a/a;->b:Lcom/cyjh/elfin/e/a/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/elfin/e/a/a;

    invoke-direct {v1}, Lcom/cyjh/elfin/e/a/a;-><init>()V

    sput-object v1, Lcom/cyjh/elfin/e/a/a;->b:Lcom/cyjh/elfin/e/a/a;

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
    sget-object v0, Lcom/cyjh/elfin/e/a/a;->b:Lcom/cyjh/elfin/e/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/cyjh/elfin/e/a/a;)Lcom/cyjh/elfin/ui/a/c;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/e/a/a;->f:Lcom/cyjh/elfin/ui/a/c;

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/cyjh/elfin/e/a/a$a;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/e/a/a;->f:Lcom/cyjh/elfin/ui/a/c;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/cyjh/elfin/e/a/a;->f:Lcom/cyjh/elfin/ui/a/c;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/a/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/cyjh/elfin/e/a/a;->f:Lcom/cyjh/elfin/ui/a/c;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/a/c;->dismiss()V

    :cond_11
    new-instance v0, Lcom/cyjh/elfin/ui/a/c;

    invoke-direct {v0, p1}, Lcom/cyjh/elfin/ui/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/elfin/e/a/a;->f:Lcom/cyjh/elfin/ui/a/c;

    iget-object p1, p0, Lcom/cyjh/elfin/e/a/a;->f:Lcom/cyjh/elfin/ui/a/c;

    new-instance v0, Lcom/cyjh/elfin/e/a/a$7;

    invoke-direct {v0, p0, p2}, Lcom/cyjh/elfin/e/a/a$7;-><init>(Lcom/cyjh/elfin/e/a/a;Lcom/cyjh/elfin/e/a/a$a;)V

    iput-object v0, p1, Lcom/cyjh/elfin/ui/a/c;->a:Lcom/cyjh/elfin/ui/a/c$a;

    iget-object p1, p0, Lcom/cyjh/elfin/e/a/a;->f:Lcom/cyjh/elfin/ui/a/c;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/a/c;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_54

    invoke-static {}, Lcom/cyjh/elfin/e/a/g;->c()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-eqz v0, :cond_19

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_18

    invoke-static {p0}, Lcom/cyjh/elfin/e/a/d;->a(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_18
    return v1

    :cond_19
    invoke-static {}, Lcom/cyjh/elfin/e/a/g;->d()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {p0}, Lcom/cyjh/elfin/e/a/a;->g(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_24
    invoke-static {}, Lcom/cyjh/elfin/e/a/g;->b()Z

    move-result v0

    if-eqz v0, :cond_34

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_33

    invoke-static {p0}, Lcom/cyjh/elfin/e/a/b;->a(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_33
    return v1

    :cond_34
    invoke-static {}, Lcom/cyjh/elfin/e/a/g;->e()Z

    move-result v0

    if-eqz v0, :cond_44

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_43

    invoke-static {p0}, Lcom/cyjh/elfin/e/a/f;->a(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_43
    return v1

    :cond_44
    invoke-static {}, Lcom/cyjh/elfin/e/a/g;->f()Z

    move-result v0

    if-eqz v0, :cond_54

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_53

    invoke-static {p0}, Lcom/cyjh/elfin/e/a/e;->a(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_53
    return v1

    :cond_54
    invoke-static {p0}, Lcom/cyjh/elfin/e/a/a;->j(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private b(Landroid/content/Context;Lcom/cyjh/elfin/e/a/a$a;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/e/a/a;->f:Lcom/cyjh/elfin/ui/a/c;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/cyjh/elfin/e/a/a;->f:Lcom/cyjh/elfin/ui/a/c;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/a/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/cyjh/elfin/e/a/a;->f:Lcom/cyjh/elfin/ui/a/c;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/a/c;->dismiss()V

    :cond_11
    new-instance v0, Lcom/cyjh/elfin/ui/a/c;

    invoke-direct {v0, p1}, Lcom/cyjh/elfin/ui/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/elfin/e/a/a;->f:Lcom/cyjh/elfin/ui/a/c;

    iget-object p1, p0, Lcom/cyjh/elfin/e/a/a;->f:Lcom/cyjh/elfin/ui/a/c;

    new-instance v0, Lcom/cyjh/elfin/e/a/a$7;

    invoke-direct {v0, p0, p2}, Lcom/cyjh/elfin/e/a/a$7;-><init>(Lcom/cyjh/elfin/e/a/a;Lcom/cyjh/elfin/e/a/a$a;)V

    iput-object v0, p1, Lcom/cyjh/elfin/ui/a/c;->a:Lcom/cyjh/elfin/ui/a/c$a;

    iget-object p1, p0, Lcom/cyjh/elfin/e/a/a;->f:Lcom/cyjh/elfin/ui/a/c;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/a/c;->show()V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-class v0, Landroid/provider/Settings;

    const-string v1, "ACTION_MANAGE_OVERLAY_PERMISSION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/cyjh/elfin/e/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/e/a/a;->b(Landroid/content/Context;)V

    :cond_9
    return-void
.end method

.method private static e(Landroid/content/Context;)Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Lcom/cyjh/elfin/e/a/b;->a(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method private static f(Landroid/content/Context;)Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Lcom/cyjh/elfin/e/a/d;->a(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method private static g(Landroid/content/Context;)Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Lcom/cyjh/elfin/e/a/c;->a(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method private static h(Landroid/content/Context;)Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Lcom/cyjh/elfin/e/a/f;->a(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method private static i(Landroid/content/Context;)Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Lcom/cyjh/elfin/e/a/e;->a(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method private static j(Landroid/content/Context;)Z
    .registers 8

    invoke-static {}, Lcom/cyjh/elfin/e/a/g;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/cyjh/elfin/e/a/a;->g(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_b
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3b

    :try_start_16
    const-class v2, Landroid/provider/Settings;

    const-string v3, "canDrawOverlays"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v6

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_30} :catch_31

    goto :goto_3c

    :catch_31
    move-exception p0

    const-string v0, "FloatWindowManager"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    move-object p0, v1

    :goto_3c
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private k(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/cyjh/elfin/e/a/a$1;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/elfin/e/a/a$1;-><init>(Lcom/cyjh/elfin/e/a/a;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/e/a/a;->a(Landroid/content/Context;Lcom/cyjh/elfin/e/a/a$a;)V

    return-void
.end method

.method private l(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/cyjh/elfin/e/a/a$2;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/elfin/e/a/a$2;-><init>(Lcom/cyjh/elfin/e/a/a;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/e/a/a;->a(Landroid/content/Context;Lcom/cyjh/elfin/e/a/a$a;)V

    return-void
.end method

.method private m(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/cyjh/elfin/e/a/a$3;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/elfin/e/a/a$3;-><init>(Lcom/cyjh/elfin/e/a/a;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/e/a/a;->a(Landroid/content/Context;Lcom/cyjh/elfin/e/a/a$a;)V

    return-void
.end method

.method private n(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/cyjh/elfin/e/a/a$4;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/elfin/e/a/a$4;-><init>(Lcom/cyjh/elfin/e/a/a;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/e/a/a;->a(Landroid/content/Context;Lcom/cyjh/elfin/e/a/a$a;)V

    return-void
.end method

.method private o(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/cyjh/elfin/e/a/a$5;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/elfin/e/a/a$5;-><init>(Lcom/cyjh/elfin/e/a/a;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/e/a/a;->a(Landroid/content/Context;Lcom/cyjh/elfin/e/a/a$a;)V

    return-void
.end method

.method private p(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/cyjh/elfin/e/a/g;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/e/a/a;->m(Landroid/content/Context;)V

    return-void

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_18

    new-instance v0, Lcom/cyjh/elfin/e/a/a$6;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/elfin/e/a/a$6;-><init>(Lcom/cyjh/elfin/e/a/a;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/e/a/a;->a(Landroid/content/Context;Lcom/cyjh/elfin/e/a/a$a;)V

    :cond_18
    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_43

    invoke-static {}, Lcom/cyjh/elfin/e/a/g;->c()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Lcom/cyjh/elfin/e/a/a$4;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/elfin/e/a/a$4;-><init>(Lcom/cyjh/elfin/e/a/a;Landroid/content/Context;)V

    :goto_11
    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/e/a/a;->a(Landroid/content/Context;Lcom/cyjh/elfin/e/a/a$a;)V

    return-void

    :cond_15
    invoke-static {}, Lcom/cyjh/elfin/e/a/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/e/a/a;->m(Landroid/content/Context;)V

    return-void

    :cond_1f
    invoke-static {}, Lcom/cyjh/elfin/e/a/g;->b()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/cyjh/elfin/e/a/a$2;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/elfin/e/a/a$2;-><init>(Lcom/cyjh/elfin/e/a/a;Landroid/content/Context;)V

    goto :goto_11

    :cond_2b
    invoke-static {}, Lcom/cyjh/elfin/e/a/g;->e()Z

    move-result v0

    if-eqz v0, :cond_37

    new-instance v0, Lcom/cyjh/elfin/e/a/a$1;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/elfin/e/a/a$1;-><init>(Lcom/cyjh/elfin/e/a/a;Landroid/content/Context;)V

    goto :goto_11

    :cond_37
    invoke-static {}, Lcom/cyjh/elfin/e/a/g;->f()Z

    move-result v0

    if-eqz v0, :cond_59

    new-instance v0, Lcom/cyjh/elfin/e/a/a$5;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/elfin/e/a/a$5;-><init>(Lcom/cyjh/elfin/e/a/a;Landroid/content/Context;)V

    goto :goto_11

    :cond_43
    invoke-static {}, Lcom/cyjh/elfin/e/a/g;->d()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/e/a/a;->m(Landroid/content/Context;)V

    return-void

    :cond_4d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_59

    new-instance v0, Lcom/cyjh/elfin/e/a/a$6;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/elfin/e/a/a$6;-><init>(Lcom/cyjh/elfin/e/a/a;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/e/a/a;->a(Landroid/content/Context;Lcom/cyjh/elfin/e/a/a$a;)V

    :cond_59
    return-void
.end method
