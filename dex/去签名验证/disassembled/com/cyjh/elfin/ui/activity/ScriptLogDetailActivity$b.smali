.class final Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/io/File;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$b;-><init>(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)V

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->a(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)Lcom/cyjh/elfin/entity/ScriptLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/ScriptLog;->getFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cyjh/common/util/o;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->b(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->c(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/Integer;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$b;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->b(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->c(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)V

    return-void
.end method

.method protected final onPreExecute()V
    .registers 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-static {v0, v1}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->a(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;Landroid/content/Context;)V

    return-void
.end method

.method protected final bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/Integer;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method
