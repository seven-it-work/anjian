.class public Lcom/cyjh/elfin/ui/adpter/TabAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:[Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/adpter/TabAdapter;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/cyjh/elfin/ui/adpter/TabAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x7f0f0000

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/ui/adpter/TabAdapter;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/adpter/TabAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/adpter/TabAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/adpter/TabAdapter;->b:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
