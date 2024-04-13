.class public Lcom/cyjh/common/view/SlCustomInputLayout;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/common/view/SlCustomInputLayout$SavedState;,
        Lcom/cyjh/common/view/SlCustomInputLayout$b;,
        Lcom/cyjh/common/view/SlCustomInputLayout$c;,
        Lcom/cyjh/common/view/SlCustomInputLayout$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/cyjh/common/view/SlCustomInputLayout$a;

.field private d:I

.field private e:Landroid/content/Context;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyjh/common/view/SlCustomInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyjh/common/view/SlCustomInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x6

    iput p3, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    iput-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->e:Landroid/content/Context;

    sget-object v1, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_box_input_color:I

    sget v1, Lcom/cyjh/common/R$color;->pass_view_rect_input:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->g:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_box_no_input_color:I

    sget v1, Lcom/cyjh/common/R$color;->regi_line_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->h:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_input_line_color:I

    sget v1, Lcom/cyjh/common/R$color;->pass_view_rect_input:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->i:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_text_input_color:I

    sget v1, Lcom/cyjh/common/R$color;->pass_view_rect_input:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->j:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_box_draw_type:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->k:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_interval_width:I

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->l:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_pass_leng:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->d:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_item_width:I

    const/16 p3, 0x28

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->m:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_item_height:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->n:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_pass_inputed_type:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->o:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_draw_txt_size:I

    const/16 p3, 0x12

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->p:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_draw_box_line_size:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->q:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_is_show_input_line:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->f:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/SlCustomInputLayout;->setOrientation(I)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->setGravity(I)V

    new-instance p1, Lcom/cyjh/common/view/SlCustomInputLayout$1;

    invoke-direct {p1, p0}, Lcom/cyjh/common/view/SlCustomInputLayout$1;-><init>(Lcom/cyjh/common/view/SlCustomInputLayout;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/cyjh/common/view/SlCustomInputLayout$b;

    invoke-direct {p1, p0}, Lcom/cyjh/common/view/SlCustomInputLayout$b;-><init>(Lcom/cyjh/common/view/SlCustomInputLayout;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance p1, Lcom/cyjh/common/view/SlCustomInputLayout$2;

    invoke-direct {p1, p0}, Lcom/cyjh/common/view/SlCustomInputLayout$2;-><init>(Lcom/cyjh/common/view/SlCustomInputLayout;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/common/view/SlCustomInputLayout;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    return p0
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4c

    iget-object v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    if-lez v0, :cond_36

    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyjh/common/view/SlCustomInputLayout;->a(IZLjava/lang/String;)V

    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/common/view/PassWordView;

    if-eqz v0, :cond_4c

    goto :goto_44

    :cond_36
    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    if-nez v0, :cond_4c

    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/common/view/PassWordView;

    if-eqz v0, :cond_4c

    :goto_44
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/cyjh/common/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyjh/common/view/PassWordView;->a()V

    :cond_4c
    iget-object v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->c:Lcom/cyjh/common/view/SlCustomInputLayout$a;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5b

    invoke-virtual {p0}, Lcom/cyjh/common/view/SlCustomInputLayout;->getPassString()Ljava/lang/String;

    :cond_5b
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->d:I

    if-ge v0, v1, :cond_4c

    new-instance v1, Lcom/cyjh/common/view/PassWordView;

    invoke-direct {v1, p1}, Lcom/cyjh/common/view/PassWordView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->m:I

    iget v4, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->n:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v0, :cond_19

    iget v3, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->l:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_19
    iget v3, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->g:I

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setInputStateColor(I)V

    iget v3, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->h:I

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setNoinputColor(I)V

    iget v3, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->j:I

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setInputStateTextColor(I)V

    iget v3, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->i:I

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setRemindLineColor(I)V

    iget v3, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->k:I

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setmBoxDrawType(I)V

    iget v3, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->o:I

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setmShowPassType(I)V

    iget v3, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->p:I

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setmDrawTxtSize(I)V

    iget v3, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->q:I

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setmDrawBoxLineSize(I)V

    iget-boolean v3, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->f:Z

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setmIsShowRemindLine(Z)V

    invoke-virtual {p0, v1, v2}, Lcom/cyjh/common/view/SlCustomInputLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4c
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    iput-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->e:Landroid/content/Context;

    sget-object v0, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_box_input_color:I

    sget v0, Lcom/cyjh/common/R$color;->pass_view_rect_input:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->g:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_box_no_input_color:I

    sget v0, Lcom/cyjh/common/R$color;->regi_line_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->h:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_input_line_color:I

    sget v0, Lcom/cyjh/common/R$color;->pass_view_rect_input:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->i:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_text_input_color:I

    sget v0, Lcom/cyjh/common/R$color;->pass_view_rect_input:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->j:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_box_draw_type:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->k:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_interval_width:I

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->l:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_pass_leng:I

    const/4 v2, 0x6

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->d:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_item_width:I

    const/16 v2, 0x28

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->m:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_item_height:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->n:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_pass_inputed_type:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->o:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_draw_txt_size:I

    const/16 v2, 0x12

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->p:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_draw_box_line_size:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->q:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_is_show_input_line:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->f:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/SlCustomInputLayout;->setOrientation(I)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->setGravity(I)V

    new-instance p1, Lcom/cyjh/common/view/SlCustomInputLayout$1;

    invoke-direct {p1, p0}, Lcom/cyjh/common/view/SlCustomInputLayout$1;-><init>(Lcom/cyjh/common/view/SlCustomInputLayout;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/cyjh/common/view/SlCustomInputLayout$b;

    invoke-direct {p1, p0}, Lcom/cyjh/common/view/SlCustomInputLayout$b;-><init>(Lcom/cyjh/common/view/SlCustomInputLayout;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance p1, Lcom/cyjh/common/view/SlCustomInputLayout$2;

    invoke-direct {p1, p0}, Lcom/cyjh/common/view/SlCustomInputLayout$2;-><init>(Lcom/cyjh/common/view/SlCustomInputLayout;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    const/4 v1, 0x0

    if-ltz v0, :cond_2a

    if-lez v0, :cond_15

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyjh/common/view/SlCustomInputLayout;->a(IZLjava/lang/String;)V

    goto :goto_27

    :cond_15
    if-nez v0, :cond_27

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyjh/common/view/PassWordView;

    if-eqz v1, :cond_27

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/cyjh/common/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cyjh/common/view/PassWordView;->a()V

    :cond_27
    :goto_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_2a
    iget-object v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput v1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    :cond_31
    return-void
.end method

.method static synthetic b(Lcom/cyjh/common/view/SlCustomInputLayout;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->f:Z

    return p0
.end method

.method static synthetic c(Lcom/cyjh/common/view/SlCustomInputLayout;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->e:Landroid/content/Context;

    return-object p0
.end method

.method private c()V
    .registers 4

    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    if-lez v0, :cond_25

    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyjh/common/view/SlCustomInputLayout;->a(IZLjava/lang/String;)V

    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/common/view/PassWordView;

    if-eqz v0, :cond_24

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/cyjh/common/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyjh/common/view/PassWordView;->a()V

    :cond_24
    return-void

    :cond_25
    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    if-nez v0, :cond_3b

    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/common/view/PassWordView;

    if-eqz v0, :cond_3b

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/cyjh/common/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyjh/common/view/PassWordView;->a()V

    :cond_3b
    return-void
.end method

.method private setNextInput(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    iget v1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->d:I

    if-ge v0, v1, :cond_21

    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->a(IZLjava/lang/String;)V

    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/common/view/PassWordView;

    if-eqz v0, :cond_21

    invoke-virtual {v0, p1}, Lcom/cyjh/common/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyjh/common/view/PassWordView;->a()V

    :cond_21
    return-void
.end method


# virtual methods
.method public final a(IZLjava/lang/String;)V
    .registers 4

    if-gez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/common/view/PassWordView;

    if-eqz p1, :cond_11

    invoke-virtual {p1, p3}, Lcom/cyjh/common/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/PassWordView;->a(Z)V

    :cond_11
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->d:I

    if-ge v0, v1, :cond_16

    iget-object v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->setNextInput(Ljava/lang/String;)V

    :cond_16
    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->c:Lcom/cyjh/common/view/SlCustomInputLayout$a;

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->d:I

    if-ge p1, v0, :cond_28

    invoke-virtual {p0}, Lcom/cyjh/common/view/SlCustomInputLayout;->getPassString()Ljava/lang/String;

    return-void

    :cond_28
    invoke-virtual {p0}, Lcom/cyjh/common/view/SlCustomInputLayout;->getPassString()Ljava/lang/String;

    :cond_2b
    return-void
.end method

.method public getPassString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3

    const/4 v0, 0x2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v0, 0x10000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    new-instance p1, Lcom/cyjh/common/view/SlCustomInputLayout$c;

    invoke-direct {p1, p0, p0}, Lcom/cyjh/common/view/SlCustomInputLayout$c;-><init>(Lcom/cyjh/common/view/SlCustomInputLayout;Landroid/view/View;)V

    return-object p1
.end method

.method protected onMeasure(II)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/cyjh/common/view/SlCustomInputLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_84

    iget p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->d:I

    iget p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->m:I

    mul-int p1, p1, p2

    iget p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->d:I

    add-int/lit8 p2, p2, -0x1

    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->l:I

    mul-int p2, p2, v0

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/cyjh/common/view/SlCustomInputLayout;->getMeasuredWidth()I

    move-result p2

    if-le p1, p2, :cond_34

    invoke-virtual {p0}, Lcom/cyjh/common/view/SlCustomInputLayout;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->d:I

    add-int/lit8 p2, p2, -0x1

    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->l:I

    mul-int p2, p2, v0

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->d:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->m:I

    iget p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->m:I

    iput p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->n:I

    :cond_34
    invoke-virtual {p0}, Lcom/cyjh/common/view/SlCustomInputLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    :goto_39
    iget v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->d:I

    if-ge p2, v0, :cond_84

    new-instance v0, Lcom/cyjh/common/view/PassWordView;

    invoke-direct {v0, p1}, Lcom/cyjh/common/view/PassWordView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->m:I

    iget v3, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->n:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez p2, :cond_51

    iget v2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->l:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_51
    iget v2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->g:I

    invoke-virtual {v0, v2}, Lcom/cyjh/common/view/PassWordView;->setInputStateColor(I)V

    iget v2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->h:I

    invoke-virtual {v0, v2}, Lcom/cyjh/common/view/PassWordView;->setNoinputColor(I)V

    iget v2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->j:I

    invoke-virtual {v0, v2}, Lcom/cyjh/common/view/PassWordView;->setInputStateTextColor(I)V

    iget v2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->i:I

    invoke-virtual {v0, v2}, Lcom/cyjh/common/view/PassWordView;->setRemindLineColor(I)V

    iget v2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->k:I

    invoke-virtual {v0, v2}, Lcom/cyjh/common/view/PassWordView;->setmBoxDrawType(I)V

    iget v2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->o:I

    invoke-virtual {v0, v2}, Lcom/cyjh/common/view/PassWordView;->setmShowPassType(I)V

    iget v2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->p:I

    invoke-virtual {v0, v2}, Lcom/cyjh/common/view/PassWordView;->setmDrawTxtSize(I)V

    iget v2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->q:I

    invoke-virtual {v0, v2}, Lcom/cyjh/common/view/PassWordView;->setmDrawBoxLineSize(I)V

    iget-boolean v2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->f:Z

    invoke-virtual {v0, v2}, Lcom/cyjh/common/view/PassWordView;->setmIsShowRemindLine(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/common/view/SlCustomInputLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_39

    :cond_84
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    instance-of v0, p1, Lcom/cyjh/common/view/SlCustomInputLayout$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Lcom/cyjh/common/view/SlCustomInputLayout$SavedState;

    invoke-virtual {p1}, Lcom/cyjh/common/view/SlCustomInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lcom/cyjh/common/view/SlCustomInputLayout$SavedState;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->a:I

    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_26

    return-void

    :cond_26
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_28
    invoke-virtual {p0}, Lcom/cyjh/common/view/SlCustomInputLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5a

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyjh/common/view/PassWordView;

    iget-object v2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_47

    if-eqz v1, :cond_5a

    invoke-virtual {v1, p1}, Lcom/cyjh/common/view/PassWordView;->setmIsShowRemindLine(Z)V

    invoke-virtual {v1, p1}, Lcom/cyjh/common/view/PassWordView;->a(Z)V

    return-void

    :cond_47
    if-eqz v1, :cond_57

    iget-object v2, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cyjh/common/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->a(Z)V

    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_5a
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/cyjh/common/view/SlCustomInputLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/cyjh/common/view/SlCustomInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->b:Ljava/util/List;

    iput-object v0, v1, Lcom/cyjh/common/view/SlCustomInputLayout$SavedState;->a:Ljava/util/List;

    return-object v1
.end method

.method public setPwdChangeListener(Lcom/cyjh/common/view/SlCustomInputLayout$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout;->c:Lcom/cyjh/common/view/SlCustomInputLayout$a;

    return-void
.end method
