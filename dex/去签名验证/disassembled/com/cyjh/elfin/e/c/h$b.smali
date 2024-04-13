.class public final Lcom/cyjh/elfin/e/c/h$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/e/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/e/c/h$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "[",
        "Ljava/io/File;",
        "Ljava/util/ArrayList<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;",
        "Ljava/util/ArrayList<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/cyjh/elfin/e/c/h$b$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static varargs a([[Ljava/io/File;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_a
    aget-object v2, p0, v1

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    aget-object v2, p0, v1

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget-object v3, p0, v3

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/cyjh/elfin/e/c/h;->a(Ljava/io/File;Ljava/io/File;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcom/cyjh/elfin/e/c/h$b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/e/c/h$b;->a:Lcom/cyjh/elfin/e/c/h$b$a;

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method private varargs a([Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p1, [[Ljava/io/File;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_c
    aget-object v2, p1, v1

    array-length v2, v2

    if-ge v0, v2, :cond_20

    aget-object v2, p1, v1

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget-object v3, p1, v3

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/cyjh/elfin/e/c/h;->a(Ljava/io/File;Ljava/io/File;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/ArrayList;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected final onPreExecute()V
    .registers 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected final bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/util/ArrayList;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method
