.class Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/RemoteViewsAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteViewsTarget"
.end annotation


# instance fields
.field final remoteViews:Landroid/widget/RemoteViews;

.field final viewId:I


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->remoteViews:Landroid/widget/RemoteViews;

    iput p2, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->viewId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    return v1

    :cond_12
    check-cast p1, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;

    iget v2, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->viewId:I

    iget v3, p1, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->viewId:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->remoteViews:Landroid/widget/RemoteViews;

    iget-object p1, p1, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    return v0

    :cond_25
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->viewId:I

    add-int/2addr v0, v1

    return v0
.end method
