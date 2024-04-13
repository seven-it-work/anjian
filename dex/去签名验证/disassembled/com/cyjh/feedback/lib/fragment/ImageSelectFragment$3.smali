.class final Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;


# direct methods
.method constructor <init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-virtual {v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mime_type= ? or mime_type=?"

    const-string v2, "image/jpeg"

    const-string v4, "image/png"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "date_modified"

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_22
    :goto_22
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_82

    const-string v2, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/cyjh/feedback/lib/c/b;

    invoke-direct {v5}, Lcom/cyjh/feedback/lib/c/b;-><init>()V

    invoke-virtual {v5, v4}, Lcom/cyjh/feedback/lib/c/b;->a(Ljava/lang/String;)V

    iput-object v2, v5, Lcom/cyjh/feedback/lib/c/b;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    new-instance v2, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3$1;

    invoke-direct {v2, p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3$1;-><init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;)V

    invoke-virtual {v3, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    iget-object v4, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v4}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->c(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)I

    move-result v4

    if-le v2, v4, :cond_76

    iget-object v4, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v4, v2}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->a(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;I)I

    iget-object v4, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v4, v3}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->a(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;Ljava/io/File;)Ljava/io/File;

    :cond_76
    iput v2, v5, Lcom/cyjh/feedback/lib/c/b;->d:I

    iget-object v2, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v2}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->d(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_82
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    new-instance v0, Lcom/cyjh/feedback/lib/c/b;

    invoke-direct {v0}, Lcom/cyjh/feedback/lib/c/b;-><init>()V

    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->d(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b9

    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->d(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b9

    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    sget v3, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->all_photo_mobile:I

    invoke-virtual {v1, v3}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/feedback/lib/c/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->d(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/feedback/lib/c/b;

    iget-object v1, v1, Lcom/cyjh/feedback/lib/c/b;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/cyjh/feedback/lib/c/b;->c:Ljava/lang/String;

    :cond_b9
    const-string v1, ""

    iget-object v3, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v3}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->d(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_c6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ec

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cyjh/feedback/lib/c/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/cyjh/feedback/lib/c/b;->a:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v5, v5, Lcom/cyjh/feedback/lib/c/b;->d:I

    add-int/2addr v4, v5

    goto :goto_c6

    :cond_ec
    iput v4, v0, Lcom/cyjh/feedback/lib/c/b;->d:I

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/c/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->d(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v1, v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->b(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;Lcom/cyjh/feedback/lib/c/b;)V

    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->e(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x110

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->e(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
