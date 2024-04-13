.class final Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/File;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;[Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;->c:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;->a:Ljava/io/File;

    const/4 p1, 0x1

    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;->b:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;[Ljava/io/File;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;-><init>(Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;[Ljava/io/File;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .registers 6

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2f

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/ParamsWrap;->getScriptEncryptKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/elfin/engin/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    if-eqz v0, :cond_16

    invoke-static {v0}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->a(Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_16
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2f

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/ParamsWrap;->getScriptEncryptKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/elfin/engin/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 3

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    if-eqz p1, :cond_16

    invoke-static {p1}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->a(Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_16
    return-void
.end method
