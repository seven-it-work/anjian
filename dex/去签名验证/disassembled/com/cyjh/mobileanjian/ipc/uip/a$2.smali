.class final Lcom/cyjh/mobileanjian/ipc/uip/a$2;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/uip/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/uip/a;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 3

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_23

    return-void

    :cond_23
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->d(Lcom/cyjh/mobileanjian/ipc/uip/a;)I

    move-result v1

    if-ge v1, v0, :cond_3b

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    :goto_37
    invoke-static {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Lcom/cyjh/mobileanjian/ipc/uip/a;I)I

    goto :goto_3f

    :cond_3b
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    const/4 v1, -0x1

    goto :goto_37

    :goto_3f
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->g(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    return-void
.end method
