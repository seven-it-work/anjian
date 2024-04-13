.class final Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/io/InputStream;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[Ljava/io/File;

.field private b:Ljava/lang/ref/WeakReference;
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

    iput-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;->a:[Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;[Ljava/io/File;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;-><init>(Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;[Ljava/io/File;)V

    return-void
.end method

.method private varargs a([Ljava/io/InputStream;)Ljava/lang/Boolean;
    .registers 7

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/elf11.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "copyScriptFiles doInBackground 1\n"

    const-string v2, "UTF-8"

    invoke-static {v0, v1, v2}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_10
    array-length v2, p1

    if-ge v1, v2, :cond_23

    aget-object v2, p1, v1

    if-eqz v2, :cond_20

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;->a:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lcom/cyjh/common/util/o;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_23
    new-instance p1, Ljava/io/File;

    const-string v1, "/sdcard/elf11.txt"

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "copyScriptFiles doInBackground 2\n"

    const-string v2, "UTF-8"

    invoke-static {p1, v1, v2}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    if-eqz p1, :cond_72

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_72

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_72

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;->a:[Ljava/io/File;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/ParamsWrap;->getScriptEncryptKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/elfin/engin/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    new-instance p1, Ljava/io/File;

    const-string v0, "/sdcard/elf11.txt"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "copyScriptFiles doInBackground 3\n"

    const-string v1, "UTF-8"

    invoke-static {p1, v0, v1}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/elf11.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "copyScriptFiles onPostExecute 1\n"

    const-string v2, "UTF-8"

    invoke-static {v0, v1, v2}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    if-eqz v0, :cond_24

    invoke-static {v0}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->a(Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_24
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/elf11.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "copyScriptFiles onPostExecute 2\n"

    const-string v2, "UTF-8"

    invoke-static {v0, v1, v2}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    check-cast p1, [Ljava/io/InputStream;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/elf11.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "copyScriptFiles doInBackground 1\n"

    const-string v2, "UTF-8"

    invoke-static {v0, v1, v2}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_12
    array-length v2, p1

    if-ge v1, v2, :cond_25

    aget-object v2, p1, v1

    if-eqz v2, :cond_22

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;->a:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lcom/cyjh/common/util/o;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_25
    new-instance p1, Ljava/io/File;

    const-string v1, "/sdcard/elf11.txt"

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "copyScriptFiles doInBackground 2\n"

    const-string v2, "UTF-8"

    invoke-static {p1, v1, v2}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    if-eqz p1, :cond_74

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_74

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_74

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;->a:[Ljava/io/File;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/ParamsWrap;->getScriptEncryptKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/elfin/engin/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    new-instance p1, Ljava/io/File;

    const-string v0, "/sdcard/elf11.txt"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "copyScriptFiles doInBackground 3\n"

    const-string v1, "UTF-8"

    invoke-static {p1, v0, v1}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    new-instance p1, Ljava/io/File;

    const-string v0, "/sdcard/elf11.txt"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "copyScriptFiles onPostExecute 1\n"

    const-string v1, "UTF-8"

    invoke-static {p1, v0, v1}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;

    if-eqz p1, :cond_24

    invoke-static {p1}, Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;->a(Lcom/cyjh/elfin/ui/model/ScriptUipSetModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_24
    new-instance p1, Ljava/io/File;

    const-string v0, "/sdcard/elf11.txt"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "copyScriptFiles onPostExecute 2\n"

    const-string v1, "UTF-8"

    invoke-static {p1, v0, v1}, Lcom/cyjh/common/util/n;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
