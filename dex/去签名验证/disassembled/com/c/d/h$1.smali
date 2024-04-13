.class public final Lcom/c/d/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/d/h;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/c/d/h;


# direct methods
.method public constructor <init>(Lcom/c/d/h;)V
    .registers 2

    iput-object p1, p0, Lcom/c/d/h$1;->a:Lcom/c/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .registers 3

    iget-object p1, p0, Lcom/c/d/h$1;->a:Lcom/c/d/h;

    invoke-static {p1}, Lcom/c/d/h;->a(Lcom/c/d/h;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    iget-object p1, p0, Lcom/c/d/h$1;->a:Lcom/c/d/h;

    invoke-static {p1}, Lcom/c/d/h;->b(Lcom/c/d/h;)V

    return-void
.end method
