.class final Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$a;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$a;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->l(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static b()V
    .registers 0

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$a;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->l(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method
