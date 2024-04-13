.class public final Lcom/c/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Ljava/lang/Runnable;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:I = 0x1

.field protected static final b:I = 0x2


# instance fields
.field public c:Landroid/widget/AbsListView$OnScrollListener;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/Object;

.field private g:Z

.field private h:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/d/c;->j:I

    iput-boolean v0, p0, Lcom/c/d/c;->m:Z

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/c/d/c;->j:I

    return v0
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)I
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    cmp-long v2, p0, v0

    if-lez v2, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    cmp-long v2, p0, v0

    if-nez v2, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method private varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lcom/c/d/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/c/d/c;->f:[Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/c/d/c;->f:[Ljava/lang/Object;

    :cond_a
    move-object v5, p1

    iget-object p1, p0, Lcom/c/d/c;->d:Ljava/lang/Object;

    if-nez p1, :cond_11

    move-object v0, p0

    goto :goto_12

    :cond_11
    move-object v0, p1

    :goto_12
    iget-object v1, p0, Lcom/c/d/c;->e:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/c/d/c;->g:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/c/d/c;->h:[Ljava/lang/Class;

    invoke-static/range {v0 .. v5}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1e
    iget p1, p0, Lcom/c/d/c;->i:I

    if-eqz p1, :cond_58

    iget p1, p0, Lcom/c/d/c;->i:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_5a

    goto :goto_58

    :pswitch_2a
    iget-object p1, p0, Lcom/c/d/c;->f:[Ljava/lang/Object;

    aget-object p1, p1, v1

    check-cast p1, Ljava/io/File;

    iget-object v1, p0, Lcom/c/d/c;->f:[Ljava/lang/Object;

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/c/d/c;->f:[Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/c/d/a;->a(Ljava/io/File;JJ)V

    goto :goto_58

    :pswitch_49
    iget-object p1, p0, Lcom/c/d/c;->f:[Ljava/lang/Object;

    aget-object p1, p1, v1

    check-cast p1, Ljava/io/File;

    iget-object v1, p0, Lcom/c/d/c;->f:[Ljava/lang/Object;

    aget-object v0, v1, v0

    check-cast v0, [B

    invoke-static {p1, v0}, Lcom/c/d/a;->b(Ljava/io/File;[B)V

    :cond_58
    :goto_58
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_49
        :pswitch_2a
    .end packed-switch
.end method

.method private a(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2

    iput-object p1, p0, Lcom/c/d/c;->c:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method private a(Landroid/widget/AbsListView;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    if-nez p2, :cond_25

    add-int/lit8 v2, v1, 0x1

    if-ne v0, v2, :cond_25

    iget v0, p0, Lcom/c/d/c;->k:I

    if-eq v1, v0, :cond_28

    iput v1, p0, Lcom/c/d/c;->k:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-direct {p0, v0}, Lcom/c/d/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_25
    const/4 p1, -0x1

    iput p1, p0, Lcom/c/d/c;->k:I

    :cond_28
    return-void
.end method

.method private static a(Landroid/widget/ExpandableListView;I)V
    .registers 15

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x40ff0004

    invoke-virtual {p0, v1, v0}, Landroid/widget/ExpandableListView;->setTag(ILjava/lang/Object;)V

    if-nez p1, :cond_68

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1b
    if-le v10, v0, :cond_1e

    return-void

    :cond_1e
    add-int v2, v10, p1

    invoke-virtual {p0, v2}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v4

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v5

    if-ltz v4, :cond_65

    invoke-virtual {p0, v10}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_65

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v12, v6, v2

    if-nez v12, :cond_65

    const/4 v2, -0x1

    if-ne v5, v2, :cond_4d

    invoke-virtual {p0, v4}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    invoke-interface {v8, v4, v2, v11, p0}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_61

    :cond_4d
    invoke-interface {v8, v4}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v5, v2, :cond_57

    const/4 v6, 0x1

    goto :goto_58

    :cond_57
    const/4 v6, 0x0

    :goto_58
    move-object v2, v8

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v11

    move-object v7, p0

    invoke-interface/range {v2 .. v7}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :goto_61
    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_65
    add-int/lit8 v10, v10, 0x1

    goto :goto_1b

    :cond_68
    return-void
.end method

.method private a(Landroid/widget/Gallery;)V
    .registers 3

    invoke-virtual {p1}, Landroid/widget/Gallery;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/c/d/c;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/d/c;->m:Z

    invoke-virtual {p1, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Z)V
    .registers 7

    if-eqz p0, :cond_70

    instance-of v0, p0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    instance-of v2, p0, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    check-cast p0, Landroid/widget/ProgressBar;

    goto :goto_13

    :cond_12
    move-object p0, v3

    :goto_13
    const v2, 0x40ff0001

    if-eqz p2, :cond_29

    invoke-virtual {v0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p0, :cond_70

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void

    :cond_29
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_35

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_70

    :cond_35
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p0, :cond_40

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result p0

    if-eqz p0, :cond_70

    :cond_40
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_46
    instance-of p1, p0, Landroid/app/Dialog;

    if-eqz p1, :cond_5f

    check-cast p0, Landroid/app/Dialog;

    new-instance p1, Lcom/c/a;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/c/a;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_5b

    invoke-virtual {p1, p0}, Lcom/c/a;->a(Landroid/app/Dialog;)Lcom/c/b;

    return-void

    :cond_5b
    invoke-virtual {p1, p0}, Lcom/c/a;->b(Landroid/app/Dialog;)Lcom/c/b;

    return-void

    :cond_5f
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_70

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    if-eqz p2, :cond_70

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setProgress(I)V

    :cond_70
    return-void
.end method

.method public static a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p4, :cond_4d

    invoke-static {p4}, Lcom/c/b/d;->d(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_a

    return v0

    :cond_a
    move-object p4, p3

    check-cast p4, Landroid/widget/AbsListView;

    const v1, 0x40ff0002

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$OnScrollListener;

    if-nez v2, :cond_23

    new-instance v2, Lcom/c/d/c;

    invoke-direct {v2}, Lcom/c/d/c;-><init>()V

    invoke-virtual {p4, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p3, v1, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_23
    const v1, 0x40ff0004

    invoke-virtual {p4, v1}, Landroid/widget/AbsListView;->getTag(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    if-eqz p4, :cond_4d

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/4 v2, 0x1

    if-ne p4, v2, :cond_3c

    return v0

    :cond_3c
    int-to-long v3, p1

    instance-of p3, p3, Landroid/widget/ExpandableListView;

    if-eqz p3, :cond_45

    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v3

    :cond_45
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return v2

    :cond_4d
    return v0
.end method

.method public static a(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .registers 9

    instance-of v0, p2, Landroid/widget/Gallery;

    if-eqz v0, :cond_66

    const/4 v0, 0x0

    if-eqz p3, :cond_65

    invoke-static {p3}, Lcom/c/b/d;->d(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_e

    return v0

    :cond_e
    check-cast p2, Landroid/widget/Gallery;

    const p3, 0x40ff0004

    invoke-virtual {p2, p3}, Landroid/widget/Gallery;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_3a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Landroid/widget/Gallery;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    new-instance v3, Lcom/c/d/c;

    invoke-direct {v3}, Lcom/c/d/c;-><init>()V

    invoke-virtual {p2}, Landroid/widget/Gallery;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v4

    iput-object v4, v3, Lcom/c/d/c;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    iput-boolean v2, v3, Lcom/c/d/c;->m:Z

    invoke-virtual {p2, v3}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_3a
    invoke-virtual {p2}, Landroid/widget/Gallery;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p2}, Landroid/widget/Gallery;->getLastVisiblePosition()I

    move-result p2

    sub-int/2addr p2, v3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p2

    if-gez v3, :cond_54

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    :cond_54
    if-lt p0, v3, :cond_60

    if-gt p0, v1, :cond_60

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return v0

    :cond_60
    const/4 p0, 0x0

    invoke-virtual {p1, p3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return v2

    :cond_65
    return v0

    :cond_66
    const/4 v0, -0x2

    invoke-static {v0, p0, p1, p2, p3}, Lcom/c/d/c;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, -0x1

    invoke-static {v0, p0, p1, p2}, Lcom/c/d/c;->a(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/widget/AbsListView;I)V
    .registers 10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x40ff0004

    invoke-virtual {p0, v1, v0}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    if-nez p1, :cond_39

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    :goto_1c
    if-le v3, v0, :cond_1f

    return-void

    :cond_1f
    add-int v4, v3, p1

    int-to-long v4, v4

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    if-eqz v7, :cond_36

    long-to-int v4, v4

    invoke-interface {v2, v4, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v6, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_39
    return-void
.end method

.method private static b(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p3, :cond_61

    invoke-static {p3}, Lcom/c/b/d;->d(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    return v0

    :cond_a
    check-cast p2, Landroid/widget/Gallery;

    const p3, 0x40ff0004

    invoke-virtual {p2, p3}, Landroid/widget/Gallery;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_36

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Landroid/widget/Gallery;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    new-instance v3, Lcom/c/d/c;

    invoke-direct {v3}, Lcom/c/d/c;-><init>()V

    invoke-virtual {p2}, Landroid/widget/Gallery;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v4

    iput-object v4, v3, Lcom/c/d/c;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    iput-boolean v2, v3, Lcom/c/d/c;->m:Z

    invoke-virtual {p2, v3}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_36
    invoke-virtual {p2}, Landroid/widget/Gallery;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p2}, Landroid/widget/Gallery;->getLastVisiblePosition()I

    move-result p2

    sub-int/2addr p2, v3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p2

    if-gez v3, :cond_50

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    :cond_50
    if-lt p0, v3, :cond_5c

    if-gt p0, v1, :cond_5c

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return v0

    :cond_5c
    const/4 p0, 0x0

    invoke-virtual {p1, p3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return v2

    :cond_61
    return v0
.end method


# virtual methods
.method public final varargs a(I[Ljava/lang/Object;)Lcom/c/d/c;
    .registers 3

    iput p1, p0, Lcom/c/d/c;->i:I

    iput-object p2, p0, Lcom/c/d/c;->f:[Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Lcom/c/d/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/c/d/c;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/d/c;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/c/d/c;->e:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/c/d/c;->g:Z

    iput-object p3, p0, Lcom/c/d/c;->h:[Ljava/lang/Class;

    return-object p0
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-lez v2, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    cmp-long v2, p1, v0

    if-nez v2, :cond_18

    const/4 p1, 0x0

    return p1

    :cond_18
    const/4 p1, -0x1

    return p1
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/c/d/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-direct {p0, v0}, Lcom/c/d/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-direct {p0, v0}, Lcom/c/d/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/c/d/c;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_27

    iget-object v2, p0, Lcom/c/d/c;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_27
    iget-boolean p2, p0, Lcom/c/d/c;->m:Z

    if-eqz p2, :cond_6a

    const p2, 0x40ff0004

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getTag(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eq p4, p3, :cond_6a

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/AdapterView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p5

    :goto_4d
    if-lt v1, p3, :cond_50

    return-void

    :cond_50
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int v2, p5, v1

    invoke-virtual {v0, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_64

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_67

    :cond_64
    invoke-interface {p4, v2, v0, p1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_6a
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/c/d/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_15
    return v1
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/d/c;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/c/d/c;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    :cond_9
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 6

    iget v0, p0, Lcom/c/d/c;->j:I

    invoke-direct {p0, p1, v0}, Lcom/c/d/c;->a(Landroid/widget/AbsListView;I)V

    iget-object v0, p0, Lcom/c/d/c;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/c/d/c;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_e
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iput v2, v0, Lcom/c/d/c;->j:I

    invoke-direct/range {p0 .. p2}, Lcom/c/d/c;->a(Landroid/widget/AbsListView;I)V

    instance-of v3, v1, Landroid/widget/ExpandableListView;

    const/4 v4, 0x0

    const v6, 0x40ff0004

    if-eqz v3, :cond_85

    move-object v3, v1

    check-cast v3, Landroid/widget/ExpandableListView;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/widget/ExpandableListView;->setTag(ILjava/lang/Object;)V

    if-nez v2, :cond_ba

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v13

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v7

    sub-int v14, v7, v13

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v15

    const/4 v12, 0x0

    :goto_2e
    if-le v12, v14, :cond_32

    goto/16 :goto_ba

    :cond_32
    add-int v7, v12, v13

    invoke-virtual {v3, v7}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v9

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v10

    if-ltz v9, :cond_80

    invoke-virtual {v3, v12}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_80

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v5, v17, v7

    if-nez v5, :cond_80

    const/4 v5, -0x1

    if-ne v10, v5, :cond_66

    invoke-virtual {v3, v9}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v5

    invoke-interface {v15, v9, v5, v11, v3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-object v5, v11

    move/from16 v16, v12

    goto :goto_7c

    :cond_66
    invoke-interface {v15, v9}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    if-ne v10, v5, :cond_70

    const/4 v5, 0x1

    goto :goto_71

    :cond_70
    const/4 v5, 0x0

    :goto_71
    move-object v7, v15

    move v8, v9

    move v9, v10

    move v10, v5

    move-object v5, v11

    move/from16 v16, v12

    move-object v12, v3

    invoke-interface/range {v7 .. v12}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :goto_7c
    invoke-virtual {v5, v6, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_82

    :cond_80
    move/from16 v16, v12

    :goto_82
    add-int/lit8 v12, v16, 0x1

    goto :goto_2e

    :cond_85
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    if-nez v2, :cond_ba

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v7

    check-cast v7, Landroid/widget/ListAdapter;

    const/4 v8, 0x0

    :goto_9e
    if-le v8, v5, :cond_a1

    goto :goto_ba

    :cond_a1
    add-int v9, v8, v3

    int-to-long v9, v9

    invoke-virtual {v1, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    if-eqz v12, :cond_b7

    long-to-int v9, v9

    invoke-interface {v7, v9, v11, v1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {v11, v6, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_b7
    add-int/lit8 v8, v8, 0x1

    goto :goto_9e

    :cond_ba
    :goto_ba
    iget-object v3, v0, Lcom/c/d/c;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v3, :cond_c3

    iget-object v3, v0, Lcom/c/d/c;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v3, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_c3
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-direct {p0, v0}, Lcom/c/d/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final run()V
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/c/d/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
