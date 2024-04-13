.class public final Lcom/cyjh/elfin/b/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/b/b;->a(Lcom/cyjh/common/f/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/common/f/a;

.field final synthetic b:Lcom/cyjh/elfin/b/b;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/b/b;Lcom/cyjh/common/f/a;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/b/b$1;->b:Lcom/cyjh/elfin/b/b;

    iput-object p2, p0, Lcom/cyjh/elfin/b/b$1;->a:Lcom/cyjh/common/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/b/b$1;->b:Lcom/cyjh/elfin/b/b;

    invoke-static {v1}, Lcom/cyjh/elfin/b/b;->a(Lcom/cyjh/elfin/b/b;)Lcom/cyjh/elfin/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/elfin/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "Message"

    const-string v9, "id desc"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_79

    :cond_23
    new-instance v3, Lcom/cyjh/http/bean/NotifyMsgBean;

    invoke-direct {v3}, Lcom/cyjh/http/bean/NotifyMsgBean;-><init>()V

    const-string v4, "content"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeContent:Ljava/lang/String;

    const-string v4, "type"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->DescriptionType:Ljava/lang/String;

    const-string v4, "description"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeDescription:Ljava/lang/String;

    const-string v4, "number"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    const-string v4, "title"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    const-string v4, "time"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTime:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_23

    :cond_79
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v1, p0, Lcom/cyjh/elfin/b/b$1;->a:Lcom/cyjh/common/f/a;

    invoke-interface {v1, v0}, Lcom/cyjh/common/f/a;->a(Ljava/lang/Object;)V

    return-void
.end method
