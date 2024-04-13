.class public Lcom/cyjh/elfin/ui/model/ElfinModel;
.super Landroid/arch/lifecycle/AndroidViewModel;

# interfaces
.implements Lcom/cyjh/http/c/d/f;


# static fields
.field public static final a:I = 0x3ee

.field public static final b:I = 0x3ef

.field public static final c:I = 0x3f0

.field private static final i:Ljava/lang/String; = "ElfinModel"


# instance fields
.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/VersionUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/concurrent/ScheduledExecutorService;

.field private m:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private n:Lcom/cyjh/http/c/c/m;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 3
    .param p1    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->d:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->j:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->k:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->l:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->e:Landroid/arch/lifecycle/MutableLiveData;

    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->f:Landroid/arch/lifecycle/MutableLiveData;

    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->g:Landroid/arch/lifecycle/MutableLiveData;

    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->h:Landroid/arch/lifecycle/MutableLiveData;

    new-instance p1, Lcom/cyjh/http/c/c/m;

    invoke-direct {p1, p0}, Lcom/cyjh/http/c/c/m;-><init>(Lcom/cyjh/http/c/d/f;)V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->n:Lcom/cyjh/http/c/c/m;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/model/ElfinModel;)Landroid/arch/lifecycle/MutableLiveData;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->e:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/model/ElfinModel;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/elfin/ui/model/ElfinModel;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/model/ElfinModel;Ljava/util/ArrayList;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/http/bean/NotifyMsgBean;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->k:Ljava/util/List;

    iget-object v0, v0, Lcom/cyjh/http/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_29
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/http/bean/NotifyMsgBean;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->k:Ljava/util/List;

    iget-object v0, v0, Lcom/cyjh/http/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_29
    return-void
.end method

.method static synthetic b(Lcom/cyjh/elfin/ui/model/ElfinModel;)Landroid/arch/lifecycle/MutableLiveData;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->g:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private c()Landroid/arch/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->f:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method static synthetic c(Lcom/cyjh/elfin/ui/model/ElfinModel;)Landroid/arch/lifecycle/MutableLiveData;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->h:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private d()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e()Landroid/arch/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->h:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method private f()Landroid/arch/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/cyjh/http/bean/response/VersionUpdateInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->e:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method private g()Landroid/arch/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->g:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method private h()V
    .registers 3

    invoke-static {}, Lcom/cyjh/feedback/lib/d/b;->a()Lcom/cyjh/feedback/lib/d/a;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/model/ElfinModel$1;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/model/ElfinModel$1;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/d/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i()V
    .registers 5

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "updateVersionRequest --> "

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "script.info"

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-direct {v2}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    iput-object v1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    const/4 v0, 0x1

    iput v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->IsScriptHotUpgrade:I

    invoke-static {}, Lcom/cyjh/common/util/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->AppVersion:Ljava/lang/String;

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "updateVersionRequest --> 1 ScriptId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",DeviceName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/http/c/b/a;->a()Lcom/cyjh/http/c/b/a;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/model/ElfinModel$3;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/model/ElfinModel$3;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    iput-object v1, v0, Lcom/cyjh/http/c/b/a;->c:Lcom/cyjh/http/c/b/a$a;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/cyjh/http/c/b/a;->a(ZLandroid/content/Context;Lcom/cyjh/http/bean/request/UpdateRequestInfo;)V

    return-void
.end method

.method private j()V
    .registers 7

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/http/c/c/c;->a(Landroid/content/Context;IIJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-string v4, "yyyy-MM-dd"

    invoke-static {v0, v1, v4}, Lcom/cyjh/http/e/a;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cyjh/http/e/a;->a(Ljava/lang/String;)J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long v2, v4, v0

    invoke-virtual {p0, v2, v3}, Lcom/cyjh/elfin/ui/model/ElfinModel;->a(J)V

    return-void
.end method

.method private k()V
    .registers 5

    invoke-static {}, Lcom/cyjh/elfin/b/b;->a()Lcom/cyjh/elfin/b/b;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/model/ElfinModel$4;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/model/ElfinModel$4;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    invoke-static {}, Lcom/cyjh/feedback/lib/d/b;->a()Lcom/cyjh/feedback/lib/d/a;

    move-result-object v2

    new-instance v3, Lcom/cyjh/elfin/b/b$1;

    invoke-direct {v3, v0, v1}, Lcom/cyjh/elfin/b/b$1;-><init>(Lcom/cyjh/elfin/b/b;Lcom/cyjh/common/f/a;)V

    invoke-virtual {v2, v3}, Lcom/cyjh/feedback/lib/d/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private l()V
    .registers 8

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->f:Landroid/arch/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->j:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v0

    const-string v1, "red_dot_flag"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/cyjh/elfin/b/b;->a()Lcom/cyjh/elfin/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->j:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/cyjh/elfin/b/b;->a:Lcom/cyjh/elfin/b/a;

    invoke-virtual {v0}, Lcom/cyjh/elfin/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_30
    if-ltz v4, :cond_6e

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/http/bean/NotifyMsgBean;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    const-string v5, "number"

    iget-object v6, v2, Lcom/cyjh/http/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "title"

    iget-object v6, v2, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "time"

    iget-object v6, v2, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTime:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "content"

    iget-object v6, v2, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeContent:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "description"

    iget-object v6, v2, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeDescription:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "type"

    iget-object v2, v2, Lcom/cyjh/http/bean/NotifyMsgBean;->DescriptionType:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Message"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v4, v4, -0x1

    goto :goto_30

    :cond_6e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method private m()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/cyjh/elfin/b/b;->a()Lcom/cyjh/elfin/b/b;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/b/b;->a:Lcom/cyjh/elfin/b/a;

    invoke-virtual {v0}, Lcom/cyjh/elfin/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "Message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private n()V
    .registers 3

    invoke-static {}, Lcom/cyjh/feedback/lib/d/b;->a()Lcom/cyjh/feedback/lib/d/a;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/model/ElfinModel$5;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/model/ElfinModel$5;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/d/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private o()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->h:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    new-instance v0, Lcom/cyjh/elfin/ui/model/ElfinModel$6;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/model/ElfinModel$6;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/a;->a(Lcom/cyjh/common/f/a;)V

    return-void
.end method

.method private static p()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    const-string v0, "TAG"

    const-string v1, "updateVersionRequestJudgeOperate --> "

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "updateVersionRequestJudgeOperate --> "

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "updateVersionRequest --> "

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "script.info"

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-direct {v2}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    iput-object v1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    const/4 v0, 0x1

    iput v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->IsScriptHotUpgrade:I

    invoke-static {}, Lcom/cyjh/common/util/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->AppVersion:Ljava/lang/String;

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "updateVersionRequest --> 1 ScriptId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",DeviceName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/http/c/b/a;->a()Lcom/cyjh/http/c/b/a;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/model/ElfinModel$3;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/model/ElfinModel$3;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    iput-object v1, v0, Lcom/cyjh/http/c/b/a;->c:Lcom/cyjh/http/c/b/a$a;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/cyjh/http/c/b/a;->a(ZLandroid/content/Context;Lcom/cyjh/http/bean/request/UpdateRequestInfo;)V

    return-void

    :cond_90
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u7f51\u7edc\u65e0\u6cd5\u8bbf\u95ee\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\u2026\u2026"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method final a(J)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->m:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->m:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->m:Ljava/util/concurrent/ScheduledFuture;

    :cond_14
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x48a8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x258

    int-to-long v0, v0

    add-long v2, p1, v0

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->l:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/cyjh/elfin/ui/model/ElfinModel$2;

    invoke-direct {p2, p0}, Lcom/cyjh/elfin/ui/model/ElfinModel$2;-><init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v2, v3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->m:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/http/bean/NotifyMsgBean;

    iget-object v0, v0, Lcom/cyjh/http/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_94

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->f:Landroid/arch/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v0, "red_dot_flag"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/cyjh/elfin/b/b;->a()Lcom/cyjh/elfin/b/b;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->j:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/cyjh/elfin/b/b;->a:Lcom/cyjh/elfin/b/a;

    invoke-virtual {p1}, Lcom/cyjh/elfin/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_53
    if-ltz v3, :cond_91

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/http/bean/NotifyMsgBean;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    const-string v4, "number"

    iget-object v5, v1, Lcom/cyjh/http/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "title"

    iget-object v5, v1, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "time"

    iget-object v5, v1, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTime:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "content"

    iget-object v5, v1, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeContent:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "description"

    iget-object v5, v1, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeDescription:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "type"

    iget-object v1, v1, Lcom/cyjh/http/bean/NotifyMsgBean;->DescriptionType:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Message"

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v3, v3, -0x1

    goto :goto_53

    :cond_91
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_94
    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->n:Lcom/cyjh/http/c/c/m;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/http/c/c/m;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onCleared()V
    .registers 3

    invoke-super {p0}, Landroid/arch/lifecycle/AndroidViewModel;->onCleared()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->n:Lcom/cyjh/http/c/c/m;

    invoke-virtual {v0}, Lcom/cyjh/http/c/c/m;->a()V

    invoke-static {}, Lcom/cyjh/http/c/b/a;->a()Lcom/cyjh/http/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/http/c/b/a;->d()V

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/http/c/c/c;->c()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->m:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel;->m:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_20
    return-void
.end method
