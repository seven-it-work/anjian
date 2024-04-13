.class public Lcom/cyjh/elfin/b/b;
.super Ljava/lang/Object;


# static fields
.field private static final b:I = 0x1

.field private static c:Lcom/cyjh/elfin/b/b;


# instance fields
.field public a:Lcom/cyjh/elfin/b/a;


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyjh/elfin/b/a;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const-string v2, "MESSAGE.db"

    invoke-direct {v0, v1, v2}, Lcom/cyjh/elfin/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cyjh/elfin/b/b;->a:Lcom/cyjh/elfin/b/a;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/b/b;)Lcom/cyjh/elfin/b/a;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/b/b;->a:Lcom/cyjh/elfin/b/a;

    return-object p0
.end method

.method public static a()Lcom/cyjh/elfin/b/b;
    .registers 2

    sget-object v0, Lcom/cyjh/elfin/b/b;->c:Lcom/cyjh/elfin/b/b;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/elfin/b/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/elfin/b/b;->c:Lcom/cyjh/elfin/b/b;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/elfin/b/b;

    invoke-direct {v1}, Lcom/cyjh/elfin/b/b;-><init>()V

    sput-object v1, Lcom/cyjh/elfin/b/b;->c:Lcom/cyjh/elfin/b/b;

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
    sget-object v0, Lcom/cyjh/elfin/b/b;->c:Lcom/cyjh/elfin/b/b;

    return-object v0
.end method

.method private a(Lcom/cyjh/common/f/a;)V
    .registers 4

    invoke-static {}, Lcom/cyjh/feedback/lib/d/b;->a()Lcom/cyjh/feedback/lib/d/a;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/b/b$1;

    invoke-direct {v1, p0, p1}, Lcom/cyjh/elfin/b/b$1;-><init>(Lcom/cyjh/elfin/b/b;Lcom/cyjh/common/f/a;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/d/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/b/b;->a:Lcom/cyjh/elfin/b/a;

    invoke-virtual {v0}, Lcom/cyjh/elfin/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_11
    if-ltz v2, :cond_4f

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/http/bean/NotifyMsgBean;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    const-string v4, "number"

    iget-object v5, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "title"

    iget-object v5, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "time"

    iget-object v5, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTime:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "content"

    iget-object v5, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeContent:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "description"

    iget-object v5, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeDescription:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "type"

    iget-object v3, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->DescriptionType:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Message"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    :cond_4f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/b/b;->a:Lcom/cyjh/elfin/b/a;

    invoke-virtual {v0}, Lcom/cyjh/elfin/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "Message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/b/b;->a:Lcom/cyjh/elfin/b/a;

    invoke-virtual {v0}, Lcom/cyjh/elfin/b/a;->close()V

    return-void
.end method
