.class public final Lcn/bingoogolapple/androidcommon/adapter/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Lcn/bingoogolapple/androidcommon/adapter/h;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/bingoogolapple/androidcommon/adapter/b;->a:Landroid/view/View;

    iget-object p2, p0, Lcn/bingoogolapple/androidcommon/adapter/b;->a:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance p2, Lcn/bingoogolapple/androidcommon/adapter/h;

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/b;->a:Landroid/view/View;

    invoke-direct {p2, p1, v0}, Lcn/bingoogolapple/androidcommon/adapter/h;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object p2, p0, Lcn/bingoogolapple/androidcommon/adapter/b;->b:Lcn/bingoogolapple/androidcommon/adapter/h;

    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/ViewGroup;I)Lcn/bingoogolapple/androidcommon/adapter/b;
    .registers 3

    if-nez p0, :cond_8

    new-instance p0, Lcn/bingoogolapple/androidcommon/adapter/b;

    invoke-direct {p0, p1, p2}, Lcn/bingoogolapple/androidcommon/adapter/b;-><init>(Landroid/view/ViewGroup;I)V

    return-object p0

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/bingoogolapple/androidcommon/adapter/b;

    return-object p0
.end method


# virtual methods
.method public final a()Lcn/bingoogolapple/androidcommon/adapter/h;
    .registers 2

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/b;->b:Lcn/bingoogolapple/androidcommon/adapter/h;

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcn/bingoogolapple/androidcommon/adapter/b;->a:Landroid/view/View;

    return-object v0
.end method
