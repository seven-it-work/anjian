.class public final Lcom/cyjh/mobileanjian/ipc/ui/g;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/view/LayoutInflater;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method private a(F)I
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private a(I)I
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private a(II)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/lang/String;)Landroid/widget/LinearLayout;
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_tab_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 4

    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/cyjh/mobileanjian/ipc/ui/g;
    .registers 2

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/ui/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/ui/k;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;II)Lcom/cyjh/mobileanjian/ipc/ui/k;

    move-result-object p1

    return-object p1
.end method

.method private b(F)I
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;
    .registers 4

    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method private b(II)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eq p1, v1, :cond_e

    if-eq p2, v1, :cond_e

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_e
    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(I)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p2, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;
    .registers 4

    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/cyjh/mobileanjian/ipc/ui/g;->d(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/EditText;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/TextView;
    .registers 8

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_text_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p3, p4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/TextView;
    .registers 8

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_float_text_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eq p3, p2, :cond_1f

    if-eq p4, p2, :cond_1f

    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p4, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_1f
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/Button;
    .registers 8

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x8

    invoke-direct {p0, p3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(I)I

    move-result p3

    invoke-virtual {p2, p1, p1, p3, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Lcom/cyjh/mqsdk/R$drawable;->bg_default_button:I

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-object v0
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/Button;
    .registers 8

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_float_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    if-nez p3, :cond_22

    if-nez p4, :cond_22

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    const/16 p3, 0x64

    invoke-direct {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_27

    :cond_22
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_27
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;IILjava/lang/String;)Landroid/webkit/WebView;
    .registers 7

    const-string v0, "http://"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "https://"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_1e
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, p4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/ui/g$1;

    invoke-direct {p1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/g$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/g;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IIZ)Landroid/widget/CheckBox;
    .registers 9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_checkbox:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p5}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0, p3, p4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/CheckBox;->setPadding(IIII)V

    return-object v0
.end method

.method public final a(ILjava/lang/String;IILjava/lang/String;)Landroid/widget/ImageView;
    .registers 8

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p3, p4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;III)Landroid/widget/RadioGroup;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;III)",
            "Landroid/widget/RadioGroup;"
        }
    .end annotation

    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p4, p5}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    const/4 p4, 0x0

    :goto_13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p5

    if-ge p4, p5, :cond_4e

    iget-object p5, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_radio_button:I

    const/4 v2, 0x0

    invoke-virtual {p5, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/RadioButton;

    invoke-virtual {p5, p4}, Landroid/widget/RadioButton;->setId(I)V

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p5, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(I)I

    move-result v1

    invoke-virtual {p5, p1, v2, p1, v1}, Landroid/widget/RadioButton;->setPadding(IIII)V

    invoke-virtual {v0, p5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    const/16 p5, 0x64

    if-ge p4, p5, :cond_4e

    add-int/lit8 p4, p4, 0x1

    goto :goto_13

    :cond_4e
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p2

    if-ge p3, p2, :cond_58

    move p1, p3

    :cond_58
    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;I)Landroid/widget/Spinner;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/widget/Spinner;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_spinner:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    const/4 p1, -0x2

    invoke-direct {p0, p1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$layout;->ui_show_spinner_dropdown_item:I

    invoke-direct {p1, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p1

    if-ge p3, p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 p3, 0x0

    :goto_2a
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setSelection(I)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/TextView;
    .registers 8

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_text_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p3, p4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;IIII)Lcom/cyjh/mobileanjian/ipc/ui/j;
    .registers 14

    new-instance v7, Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    move-object v0, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cyjh/mobileanjian/ipc/ui/j;-><init>(Landroid/content/Context;Ljava/lang/String;IIII)V

    return-object v7
.end method

.method public final a(Ljava/lang/String;II)Lcom/cyjh/mobileanjian/ipc/ui/k;
    .registers 6

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/cyjh/mobileanjian/ipc/ui/k;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/Button;
    .registers 8

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x8

    invoke-direct {p0, p3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(I)I

    move-result p3

    invoke-virtual {p2, p1, p1, p3, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Lcom/cyjh/mqsdk/R$drawable;->bg_default_button:I

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;II)Landroid/widget/LinearLayout;
    .registers 6

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 p1, -0x1000000

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_18

    const/16 p2, 0xbb8

    :cond_18
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/ImageView;
    .registers 8

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_image_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :try_start_e
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_1d

    :catch_18
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v2

    :goto_1d
    if-eqz p1, :cond_22

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_22
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eq p3, p2, :cond_30

    if-eq p4, p2, :cond_30

    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p4, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_30
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;II)Landroid/widget/LinearLayout;
    .registers 7

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/EditText;
    .registers 8

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_edit_text:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x8

    invoke-direct {p0, p2}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(I)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Lcom/cyjh/mqsdk/R$drawable;->bg_edit_text:I

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    return-object v0
.end method
