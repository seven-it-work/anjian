.class public Lcom/hlzn/socketclient/f;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/hlzn/socketclient/f;


# instance fields
.field public a:Landroid/content/Context;

.field private b:Lcom/hlzn/socketclient/d/a;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/hlzn/socketclient/f;
    .registers 2

    sget-object v0, Lcom/hlzn/socketclient/f;->c:Lcom/hlzn/socketclient/f;

    if-nez v0, :cond_17

    const-class v0, Lcom/hlzn/socketclient/f;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/hlzn/socketclient/f;->c:Lcom/hlzn/socketclient/f;

    if-nez v1, :cond_12

    new-instance v1, Lcom/hlzn/socketclient/f;

    invoke-direct {v1}, Lcom/hlzn/socketclient/f;-><init>()V

    sput-object v1, Lcom/hlzn/socketclient/f;->c:Lcom/hlzn/socketclient/f;

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
    sget-object v0, Lcom/hlzn/socketclient/f;->c:Lcom/hlzn/socketclient/f;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    iput-object p3, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->d:Ljava/lang/String;

    iput p1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->l:I

    iput-object p2, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->m:Ljava/lang/String;

    iget-object p1, p0, Lcom/hlzn/socketclient/f;->a:Landroid/content/Context;

    const-string p2, "cmd_script_upgrade_success_operate"

    invoke-static {p1, p2, v0}, Lcom/hlzn/socketclient/f/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/f;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/hlzn/socketclient/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/f;->b:Lcom/hlzn/socketclient/d/a;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->h:I

    iput-object p1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->i:Ljava/lang/String;

    iget-object p1, p0, Lcom/hlzn/socketclient/f;->a:Landroid/content/Context;

    const-string v1, "cmd_script_start_success_operate"

    invoke-static {p1, v1, v0}, Lcom/hlzn/socketclient/f/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    return-void
.end method

.method private b()Lcom/hlzn/socketclient/d/a;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/f;->b:Lcom/hlzn/socketclient/d/a;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->j:I

    iput-object p1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->k:Ljava/lang/String;

    iget-object p1, p0, Lcom/hlzn/socketclient/f;->a:Landroid/content/Context;

    const-string v1, "cmd_script_stop_success_operate"

    invoke-static {p1, v1, v0}, Lcom/hlzn/socketclient/f/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/f;->a:Landroid/content/Context;

    const-string v1, "send_heart_operate"

    invoke-static {v0, v1}, Lcom/hlzn/socketclient/f/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    iput-object p1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->d:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->l:I

    iput-object p1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->m:Ljava/lang/String;

    iget-object p1, p0, Lcom/hlzn/socketclient/f;->a:Landroid/content/Context;

    const-string v1, "cmd_script_upgrade_success_operate"

    invoke-static {p1, v1, v0}, Lcom/hlzn/socketclient/f/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    return-void
.end method

.method private d()V
    .registers 4

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scriptStart:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/hlzn/socketclient/b/a;->v:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hlzn/socketclient/f/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/hlzn/socketclient/b/a;->v:Z

    if-eqz v0, :cond_28

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->g:Z

    iget-object v1, p0, Lcom/hlzn/socketclient/f;->a:Landroid/content/Context;

    const-string v2, "script_start_operate"

    invoke-static {v1, v2, v0}, Lcom/hlzn/socketclient/f/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    :cond_28
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->n:I

    iput-object p1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->o:Ljava/lang/String;

    iget-object p1, p0, Lcom/hlzn/socketclient/f;->a:Landroid/content/Context;

    const-string v1, "cmd_script_settings_success_operate"

    invoke-static {p1, v1, v0}, Lcom/hlzn/socketclient/f/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    return-void
.end method

.method private e()V
    .registers 4

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scriptStop:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/hlzn/socketclient/b/a;->v:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hlzn/socketclient/f/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/hlzn/socketclient/b/a;->v:Z

    if-eqz v0, :cond_28

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->g:Z

    iget-object v1, p0, Lcom/hlzn/socketclient/f;->a:Landroid/content/Context;

    const-string v2, "script_stop_operate"

    invoke-static {v1, v2, v0}, Lcom/hlzn/socketclient/f/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    :cond_28
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->p:I

    iput-object p1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->q:Ljava/lang/String;

    iget-object p1, p0, Lcom/hlzn/socketclient/f;->a:Landroid/content/Context;

    const-string v1, "cmd_screen_capture_success_operate"

    invoke-static {p1, v1, v0}, Lcom/hlzn/socketclient/f/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    return-void
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/f;->a:Landroid/content/Context;

    const-string v1, "stop_service_operate"

    invoke-static {v0, v1}, Lcom/hlzn/socketclient/f/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->r:I

    iput-object p1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->s:Ljava/lang/String;

    iget-object p1, p0, Lcom/hlzn/socketclient/f;->a:Landroid/content/Context;

    const-string v1, "cmd_unbind_studio_project_success_operate"

    invoke-static {p1, v1, v0}, Lcom/hlzn/socketclient/f/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->t:I

    iput-object p1, v0, Lcom/hlzn/socketclient/bean/ServiceParam;->u:Ljava/lang/String;

    iget-object p1, p0, Lcom/hlzn/socketclient/f;->a:Landroid/content/Context;

    const-string v1, "cmd_rename_device_name_success_operate"

    invoke-static {p1, v1, v0}, Lcom/hlzn/socketclient/f/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/hlzn/socketclient/bean/ServiceParam;)V

    return-void
.end method
