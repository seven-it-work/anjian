.class final Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->b(Lcom/cyjh/feedback/lib/c/b;)V
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

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$4;->a:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p2}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
