.class public final Lcom/cyjh/http/c/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/c/a/b;
.implements Lcom/cyjh/http/c/d/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/http/c/b/a$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x2

.field public static final b:I = 0x3

.field private static e:Lcom/cyjh/http/c/b/a;


# instance fields
.field public c:Lcom/cyjh/http/c/b/a$a;

.field private d:Lcom/cyjh/http/c/c/d;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/cyjh/http/c/b/a;
    .registers 1

    sget-object v0, Lcom/cyjh/http/c/b/a;->e:Lcom/cyjh/http/c/b/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/cyjh/http/c/b/a;

    invoke-direct {v0}, Lcom/cyjh/http/c/b/a;-><init>()V

    sput-object v0, Lcom/cyjh/http/c/b/a;->e:Lcom/cyjh/http/c/b/a;

    :cond_b
    sget-object v0, Lcom/cyjh/http/c/b/a;->e:Lcom/cyjh/http/c/b/a;

    return-object v0
.end method

.method private a(Lcom/cyjh/http/c/b/a$a;)Lcom/cyjh/http/c/b/a;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/c/b/a;->c:Lcom/cyjh/http/c/b/a$a;

    return-object p0
.end method

.method private a(ZLandroid/content/Context;)V
    .registers 4

    new-instance v0, Lcom/cyjh/http/c/c/d;

    invoke-direct {v0, p2, p0, p1}, Lcom/cyjh/http/c/c/d;-><init>(Landroid/content/Context;Lcom/cyjh/http/c/d/j;Z)V

    iput-object v0, p0, Lcom/cyjh/http/c/b/a;->d:Lcom/cyjh/http/c/c/d;

    iget-object p1, p0, Lcom/cyjh/http/c/b/a;->d:Lcom/cyjh/http/c/c/d;

    invoke-virtual {p1, p2}, Lcom/cyjh/http/c/c/d;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/c/b/a;->c:Lcom/cyjh/http/c/b/a$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cyjh/http/c/b/a;->c:Lcom/cyjh/http/c/b/a$a;

    invoke-interface {v0, p1}, Lcom/cyjh/http/c/b/a$a;->a(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V

    :cond_9
    return-void
.end method

.method public final a(ZLandroid/content/Context;Lcom/cyjh/http/bean/request/UpdateRequestInfo;)V
    .registers 5

    new-instance v0, Lcom/cyjh/http/c/c/d;

    invoke-direct {v0, p2, p0, p1, p3}, Lcom/cyjh/http/c/c/d;-><init>(Landroid/content/Context;Lcom/cyjh/http/c/d/j;ZLcom/cyjh/http/bean/request/UpdateRequestInfo;)V

    iput-object v0, p0, Lcom/cyjh/http/c/b/a;->d:Lcom/cyjh/http/c/c/d;

    iget-object p1, p0, Lcom/cyjh/http/c/b/a;->d:Lcom/cyjh/http/c/c/d;

    invoke-virtual {p1, p2}, Lcom/cyjh/http/c/c/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/c/b/a;->c:Lcom/cyjh/http/c/b/a$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cyjh/http/c/b/a$a;->a(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V

    return-void
.end method

.method public final b(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/c/b/a;->c:Lcom/cyjh/http/c/b/a$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cyjh/http/c/b/a;->c:Lcom/cyjh/http/c/b/a$a;

    invoke-interface {v0, p1}, Lcom/cyjh/http/c/b/a$a;->b(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V

    :cond_9
    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/c/b/a;->c:Lcom/cyjh/http/c/b/a$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cyjh/http/c/b/a$a;->a(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V

    return-void
.end method

.method public final c(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/c/b/a;->c:Lcom/cyjh/http/c/b/a$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cyjh/http/c/b/a;->c:Lcom/cyjh/http/c/b/a$a;

    invoke-interface {v0, p1}, Lcom/cyjh/http/c/b/a$a;->c(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V

    :cond_9
    return-void
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/c/b/a;->d:Lcom/cyjh/http/c/c/d;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/cyjh/http/c/b/a;->d:Lcom/cyjh/http/c/c/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/http/d/b/c;->a(Ljava/lang/Object;)V

    :cond_15
    return-void
.end method
