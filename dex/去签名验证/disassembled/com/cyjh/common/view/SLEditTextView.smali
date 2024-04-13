.class public Lcom/cyjh/common/view/SLEditTextView;
.super Landroid/support/v7/widget/AppCompatEditText;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:I = 0x3


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/SLEditTextView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/SLEditTextView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/SLEditTextView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private a()V
    .registers 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const-string v0, "#a9b7b7"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyjh/common/view/SLEditTextView;->c:I

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/view/SLEditTextView;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/SLEditTextView;->setDrawable(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lcom/cyjh/common/view/SLEditTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0, p0}, Lcom/cyjh/common/view/SLEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/SLEditTextView;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 6

    invoke-virtual {p0}, Lcom/cyjh/common/view/SLEditTextView;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_1e

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/cyjh/common/view/SLEditTextView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/cyjh/common/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/cyjh/common/view/SLEditTextView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/cyjh/common/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v1, v3, v1

    :goto_1a
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/cyjh/common/view/SLEditTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1e
    iget-object p1, p0, Lcom/cyjh/common/view/SLEditTextView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/cyjh/common/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/cyjh/common/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v1, v3, v1

    goto :goto_1a
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/cyjh/common/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/cyjh/common/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/cyjh/common/view/SLEditTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/SLEditTextView;->a(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->d:Landroid/graphics/drawable/Drawable;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    iput-boolean p2, p0, Lcom/cyjh/common/view/SLEditTextView;->j:Z

    invoke-direct {p0, p2}, Lcom/cyjh/common/view/SLEditTextView;->a(Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/cyjh/common/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    invoke-virtual {p0}, Lcom/cyjh/common/view/SLEditTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/SLEditTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_39

    invoke-virtual {p0}, Lcom/cyjh/common/view/SLEditTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/SLEditTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_39

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/SLEditTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_39
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDrawable(Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p0}, Lcom/cyjh/common/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/cyjh/common/view/SLEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cyjh/common/R$drawable;->icon_clear_edit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->d:Landroid/graphics/drawable/Drawable;

    :cond_19
    iget-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->d:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {p1, v1}, Lcom/cyjh/common/view/SLEditTextView;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v1}, Lcom/cyjh/common/view/SLEditTextView;->a(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/cyjh/common/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->e:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {p1, v1}, Lcom/cyjh/common/view/SLEditTextView;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v1}, Lcom/cyjh/common/view/SLEditTextView;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v0, v3, v3, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_44
    return-void
.end method
