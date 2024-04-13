.class public final Lcom/cyjh/elfin/e/b/c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MyAsyncTask"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/base/AppContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_capture.png"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v1

    new-instance v2, Lcom/cyjh/elfin/e/b/c$1;

    invoke-direct {v2, p0, v0}, Lcom/cyjh/elfin/e/b/c$1;-><init>(Lcom/cyjh/elfin/e/b/c;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;)V

    return-object v0
.end method

.method private static b()V
    .registers 0

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/elfin/base/AppContext;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "screen_capture.png"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/e/b/c$1;

    invoke-direct {v1, p0, p1}, Lcom/cyjh/elfin/e/b/c$1;-><init>(Lcom/cyjh/elfin/e/b/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;)V

    return-object p1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method
