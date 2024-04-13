.class public Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field public static final UIP_MESSAGE:I

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

.field private d:Lcom/cyjh/mobileanjian/ipc/uip/a;

.field private e:Lcom/cyjh/mobileanjian/ipc/uip/c;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ScrollView;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Landroid/os/Handler;

.field private i:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".uip.config.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$2;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$2;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->h:Landroid/os/Handler;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;
    .registers 16

    if-nez p2, :cond_9

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;-><init>(Landroid/content/Context;)V

    :cond_9
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v4, Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v5, Landroid/widget/TableLayout$LayoutParams;->weight:F

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/cyjh/mobileanjian/ipc/uip/a;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cyjh/mobileanjian/ipc/uip/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->d:Lcom/cyjh/mobileanjian/ipc/uip/a;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->d:Lcom/cyjh/mobileanjian/ipc/uip/a;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v6, v7}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(F)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->d:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-virtual {v5, v2}, Lcom/cyjh/mobileanjian/ipc/uip/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->d:Lcom/cyjh/mobileanjian/ipc/uip/a;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->d:Lcom/cyjh/mobileanjian/ipc/uip/a;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v5, v6}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5, v6, v6}, Lcom/cyjh/mobileanjian/ipc/uip/a;->setPadding(IIII)V

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->d:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0x20

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Landroid/util/JsonReader;

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    :try_start_7b
    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    :goto_7e
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_15d

    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object v8, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v9, Lcom/cyjh/mqsdk/R$string;->ui_activity:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15d

    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    :cond_99
    :goto_99
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_158

    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/ScrollView;

    iget-object v10, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, p1}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v9, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    :goto_c3
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_147

    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_linearlayout:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e3

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseHorizontalLinearLayout(Landroid/util/JsonReader;)Lcom/cyjh/mobileanjian/ipc/uip/b;

    move-result-object v10

    :goto_df
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_c3

    :cond_e3
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_textview:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f6

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;

    move-result-object v10

    goto :goto_df

    :cond_f6
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_button:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_109

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseButton(Landroid/util/JsonReader;)Landroid/widget/Button;

    move-result-object v10

    goto :goto_df

    :cond_109
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_edittext:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11c

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;

    move-result-object v10

    goto :goto_df

    :cond_11c
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_checkbox:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12f

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;

    move-result-object v10

    goto :goto_df

    :cond_12f
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_spinner:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_142

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;

    move-result-object v10

    goto :goto_df

    :cond_142
    invoke-virtual {v7}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_c3

    :cond_147
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v5, :cond_99

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_99

    :cond_158
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_7e

    :cond_15d
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_160} :catch_166
    .catch Ljava/lang/IllegalStateException; {:try_start_7b .. :try_end_160} :catch_161

    goto :goto_16a

    :catch_161
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_16a

    :catch_166
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_16a
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/uip/f;

    invoke-direct {p1, v2, v6}, Lcom/cyjh/mobileanjian/ipc/uip/f;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->d:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/uip/a;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->bindEvent(Ljava/util/List;)V

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveToConfigFile(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_48

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/cyjh/mobileanjian/ipc/uip/b;

    if-nez v3, :cond_40

    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_14

    goto :goto_40

    :cond_14
    sget v3, Lcom/cyjh/mqsdk/R$id;->uip_function_key:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    instance-of v3, v2, Landroid/widget/Spinner;

    if-eqz v3, :cond_2c

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_45

    :cond_2c
    instance-of v3, v2, Landroid/widget/CheckBox;

    if-eqz v3, :cond_36

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_45

    :cond_36
    instance-of v3, v2, Landroid/widget/Button;

    if-eqz v3, :cond_45

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_45

    :cond_40
    :goto_40
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->a(Landroid/view/ViewGroup;)V

    :cond_45
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_48
    return-void
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_e0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Landroid/widget/Spinner;

    if-eqz v4, :cond_5f

    check-cast v2, Landroid/widget/Spinner;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_spinner_defaultitem:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/uip/e;

    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/uip/e;->a:Ljava/util/List;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_42

    :cond_52
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_spinner_items:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_e0

    :cond_5f
    instance-of v4, v2, Landroid/widget/CheckBox;

    if-eqz v4, :cond_88

    check-cast v2, Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_hintcontent:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_checked:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    :goto_84
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_e0

    :cond_88
    instance-of v4, v2, Landroid/widget/Button;

    if-eqz v4, :cond_a2

    check-cast v2, Landroid/widget/Button;

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_9a
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_e0

    :cond_a2
    instance-of v4, v2, Landroid/widget/EditText;

    if-eqz v4, :cond_cd

    check-cast v2, Landroid/widget/EditText;

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_edittext_defaultcontent:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p0, :cond_c9

    const-string p0, "\u5bc6\u7801"

    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_e0

    :cond_c9
    const-string p0, "\u5bc6\u7801"

    const/4 p1, 0x0

    goto :goto_84

    :cond_cd
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_b

    check-cast v2, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_9a

    :cond_e0
    :goto_e0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "rtnJson:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setUipAttributeData(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->UiRequestReturn(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    :try_start_a
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/Spinner;

    if-eqz v2, :cond_96

    check-cast v1, Landroid/widget/Spinner;

    const/4 p1, -0x1

    const/4 p2, 0x0

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_2b
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_spinner_defaultitem:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result p1

    goto :goto_2b

    :cond_48
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_spinner_items:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    :goto_5e
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_6c
    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_2b

    :cond_70
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2b

    :cond_74
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    if-eqz p2, :cond_89

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/e;

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v0, p0, p2}, Lcom/cyjh/mobileanjian/ipc/uip/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const p0, 0x1090009

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/e;->setDropDownViewResource(I)V

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_89
    if-ltz p1, :cond_18b

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result p0

    if-ge p1, p0, :cond_18b

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_18b

    :cond_96
    instance-of v2, v1, Landroid/widget/CheckBox;

    if-eqz v2, :cond_de

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_9f
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_hintcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_bf

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9f

    :cond_bf
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_checked:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d5

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_9f

    :cond_d5
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_9f

    :cond_d9
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_18b

    :cond_de
    instance-of v2, v1, Landroid/widget/Button;

    if-eqz v2, :cond_10b

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_e7
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_107

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e7

    :cond_107
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_e7

    :cond_10b
    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_155

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_114
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_edittext_defaultcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_134

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_114

    :cond_134
    const-string p2, "\u5bc6\u7801"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_13a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_13a} :catch_187
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13a} :catch_182

    if-eqz p1, :cond_151

    const/4 p1, 0x0

    :try_start_13d
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result p2
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_141} :catch_142
    .catch Ljava/lang/IllegalStateException; {:try_start_13d .. :try_end_141} :catch_187
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_141} :catch_182

    move p1, p2

    :catch_142
    if-eqz p1, :cond_14c

    :try_start_144
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object p1

    :goto_148
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_114

    :cond_14c
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object p1

    goto :goto_148

    :cond_151
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_114

    :cond_155
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_10

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_15e
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17e

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15e

    :cond_17e
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V
    :try_end_181
    .catch Ljava/lang/IllegalStateException; {:try_start_144 .. :try_end_181} :catch_187
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_181} :catch_182

    goto :goto_15e

    :catch_182
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18b

    :catch_187
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_18b
    :goto_18b
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->UiRequestReturn(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_dd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Landroid/widget/Spinner;

    if-eqz v4, :cond_5f

    check-cast v2, Landroid/widget/Spinner;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_spinner_defaultitem:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/uip/e;

    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/uip/e;->a:Ljava/util/List;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_42

    :cond_52
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_spinner_items:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_5a
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_dd

    :cond_5f
    instance-of v4, v2, Landroid/widget/CheckBox;

    if-eqz v4, :cond_88

    check-cast v2, Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_hintcontent:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_checked:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    :goto_84
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_dd

    :cond_88
    instance-of v4, v2, Landroid/widget/Button;

    if-eqz v4, :cond_9f

    check-cast v2, Landroid/widget/Button;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_9a
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5a

    :cond_9f
    instance-of v4, v2, Landroid/widget/EditText;

    if-eqz v4, :cond_ca

    check-cast v2, Landroid/widget/EditText;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_edittext_defaultcontent:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    instance-of p1, p1, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p1, :cond_c6

    const-string p1, "\u5bc6\u7801"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_dd

    :cond_c6
    const-string p1, "\u5bc6\u7801"

    const/4 v1, 0x0

    goto :goto_84

    :cond_ca
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_b

    check-cast v2, Landroid/widget/TextView;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_9a

    :cond_dd
    :goto_dd
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "rtnJson:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setUipAttributeData(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->UiRequestReturn(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    :try_start_a
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/Spinner;

    if-eqz v2, :cond_96

    check-cast v1, Landroid/widget/Spinner;

    const/4 p1, -0x1

    const/4 p2, 0x0

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_2b
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_spinner_defaultitem:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result p1

    goto :goto_2b

    :cond_48
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_spinner_items:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    :goto_5e
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_6c
    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_2b

    :cond_70
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2b

    :cond_74
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    if-eqz p2, :cond_89

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/e;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v0, v2, p2}, Lcom/cyjh/mobileanjian/ipc/uip/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const p2, 0x1090009

    invoke-virtual {v0, p2}, Lcom/cyjh/mobileanjian/ipc/uip/e;->setDropDownViewResource(I)V

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_89
    if-ltz p1, :cond_18b

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_18b

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_18b

    :cond_96
    instance-of v2, v1, Landroid/widget/CheckBox;

    if-eqz v2, :cond_de

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_9f
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_hintcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_bf

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9f

    :cond_bf
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_checked:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d5

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_9f

    :cond_d5
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_9f

    :cond_d9
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_18b

    :cond_de
    instance-of v2, v1, Landroid/widget/Button;

    if-eqz v2, :cond_10b

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_e7
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_107

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e7

    :cond_107
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_e7

    :cond_10b
    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_155

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_114
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_edittext_defaultcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_134

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_114

    :cond_134
    const-string p2, "\u5bc6\u7801"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_13a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_13a} :catch_187
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13a} :catch_182

    if-eqz p1, :cond_151

    const/4 p1, 0x0

    :try_start_13d
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result p2
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_141} :catch_142
    .catch Ljava/lang/IllegalStateException; {:try_start_13d .. :try_end_141} :catch_187
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_141} :catch_182

    move p1, p2

    :catch_142
    if-eqz p1, :cond_14c

    :try_start_144
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object p1

    :goto_148
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_114

    :cond_14c
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object p1

    goto :goto_148

    :cond_151
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_114

    :cond_155
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_10

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_15e
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17e

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15e

    :cond_17e
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V
    :try_end_181
    .catch Ljava/lang/IllegalStateException; {:try_start_144 .. :try_end_181} :catch_187
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_181} :catch_182

    goto :goto_15e

    :catch_182
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18b

    :catch_187
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_18b
    :goto_18b
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->UiRequestReturn(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;
    .registers 16

    if-nez p2, :cond_9

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;-><init>(Landroid/content/Context;)V

    :cond_9
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    new-array v5, v3, [I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/cyjh/mqsdk/R$color;->ui_show_blue:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v4, v3}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setDistributeEvenly(Z)V

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v5, Landroid/widget/TableLayout$LayoutParams;->weight:F

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0x20

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Landroid/util/JsonReader;

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    :try_start_7d
    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    :goto_80
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_172

    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object v8, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v9, Lcom/cyjh/mqsdk/R$string;->ui_activity:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_172

    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    :cond_9b
    :goto_9b
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_16d

    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/ScrollView;

    iget-object v10, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, p1}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v9, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/high16 v10, 0x20000

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    invoke-virtual {v9, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    invoke-virtual {v9, v3}, Landroid/widget/ScrollView;->setFocusableInTouchMode(Z)V

    new-instance v10, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$1;

    invoke-direct {v10, p0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;)V

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    :goto_d8
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15c

    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_linearlayout:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f8

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseHorizontalLinearLayout(Landroid/util/JsonReader;)Lcom/cyjh/mobileanjian/ipc/uip/b;

    move-result-object v10

    :goto_f4
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_d8

    :cond_f8
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_textview:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10b

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;

    move-result-object v10

    goto :goto_f4

    :cond_10b
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_button:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11e

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseButton(Landroid/util/JsonReader;)Landroid/widget/Button;

    move-result-object v10

    goto :goto_f4

    :cond_11e
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_edittext:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_131

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;

    move-result-object v10

    goto :goto_f4

    :cond_131
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_checkbox:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_144

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;

    move-result-object v10

    goto :goto_f4

    :cond_144
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_spinner:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_157

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;

    move-result-object v10

    goto :goto_f4

    :cond_157
    invoke-virtual {v7}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_d8

    :cond_15c
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v5, :cond_9b

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9b

    :cond_16d
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_80

    :cond_172
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V
    :try_end_175
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_175} :catch_17b
    .catch Ljava/lang/IllegalStateException; {:try_start_7d .. :try_end_175} :catch_176

    goto :goto_17f

    :catch_176
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_17f

    :catch_17b
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_17f
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/uip/f;

    invoke-direct {p1, v2, v6}, Lcom/cyjh/mobileanjian/ipc/uip/f;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->bindEvent(Ljava/util/List;)V

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveToConfigFile(Ljava/lang/String;)V

    return-object v0
.end method

.method private b(Landroid/view/ViewGroup;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_56

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    instance-of v4, v2, Landroid/widget/LinearLayout;

    if-nez v4, :cond_4e

    instance-of v4, v2, Lcom/cyjh/mobileanjian/ipc/uip/b;

    if-eqz v4, :cond_1a

    goto :goto_4e

    :cond_1a
    instance-of v4, v2, Landroid/widget/CheckBox;

    if-eqz v4, :cond_2a

    check-cast v2, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->i:Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_53

    :cond_2a
    instance-of v4, v2, Landroid/widget/Spinner;

    if-eqz v4, :cond_3a

    check-cast v2, Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->i:Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_53

    :cond_3a
    instance-of v4, v2, Landroid/widget/EditText;

    if-eqz v4, :cond_53

    check-cast v2, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->i:Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_53

    :cond_4e
    :goto_4e
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b(Landroid/view/ViewGroup;)V

    :cond_53
    :goto_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_56
    return-void
.end method

.method private c(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;
    .registers 10

    if-nez p2, :cond_9

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;-><init>(Landroid/content/Context;)V

    :cond_9
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/c;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    :try_start_1d
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_20
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18a

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_activity:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18a

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    :goto_3c
    const/16 v2, 0x20

    if-ge v1, v2, :cond_185

    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_185

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    new-instance v4, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/cyjh/mobileanjian/ipc/uip/c;->a:[I

    iget v6, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->g:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setId(I)V

    iget v5, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->d:I

    invoke-virtual {v4, p1, p1, p1, v5}, Landroid/widget/RadioButton;->setPadding(IIII)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/cyjh/mqsdk/R$color;->selector_tab:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setLines(I)V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v6, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/ScrollView;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    iget-object v4, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    const/high16 v6, 0x20000

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    iget-object v4, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v4, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setFocusableInTouchMode(Z)V

    iget-object v4, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    new-instance v6, Lcom/cyjh/mobileanjian/ipc/uip/c$1;

    invoke-direct {v6, v3}, Lcom/cyjh/mobileanjian/ipc/uip/c$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/c;)V

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    invoke-virtual {v4, v2}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    iget-object v2, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->e:Landroid/widget/LinearLayout;

    iget-object v2, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    iget-object v3, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_e0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_170

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_linearlayout:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_102

    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseHorizontalLinearLayout(Landroid/util/JsonReader;)Lcom/cyjh/mobileanjian/ipc/uip/b;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    :goto_fe
    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/uip/c;->a(Landroid/view/View;)V

    goto :goto_e0

    :cond_102
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_textview:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_117

    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    goto :goto_fe

    :cond_117
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_button:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12c

    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseButton(Landroid/util/JsonReader;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    goto :goto_fe

    :cond_12c
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_edittext:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_141

    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    goto :goto_fe

    :cond_141
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_checkbox:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_156

    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    goto :goto_fe

    :cond_156
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_spinner:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16b

    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    goto :goto_fe

    :cond_16b
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_e0

    :cond_170
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    iget-object v3, v2, Lcom/cyjh/mobileanjian/ipc/uip/c;->c:Ljava/util/List;

    iget-object v4, v2, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lcom/cyjh/mobileanjian/ipc/uip/c;->g:I

    add-int/2addr v3, v5

    iput v3, v2, Lcom/cyjh/mobileanjian/ipc/uip/c;->g:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3c

    :cond_185
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_20

    :cond_18a
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_18d} :catch_193
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_18d} :catch_18e

    goto :goto_197

    :catch_18e
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_197

    :catch_193
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_197
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/uip/c;->setSelectTab(I)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getScrollViewList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->bindEvent(Ljava/util/List;)V

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveToConfigFile(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    return-object p1
.end method


# virtual methods
.method public bindEvent(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ScrollView;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->h:Landroid/os/Handler;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->registerHandler(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-direct {p0, v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->a(Landroid/view/ViewGroup;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public configViewFromFile(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->configViewFromJson(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public configViewFromJson(Ljava/lang/String;)V
    .registers 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->g:Z

    const/4 v0, 0x0

    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_26

    instance-of v5, v4, Landroid/widget/CheckBox;

    if-eqz v5, :cond_46

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_26

    :cond_46
    instance-of v5, v4, Landroid/widget/Spinner;

    if-eqz v5, :cond_64

    check-cast v4, Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v5

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ge v6, v5, :cond_5f

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_60

    :cond_5f
    const/4 v5, 0x0

    :goto_60
    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_26

    :cond_64
    instance-of v5, v4, Landroid/widget/EditText;

    if-eqz v5, :cond_26

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_71} :catch_72

    goto :goto_26

    :catch_72
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_76
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->g:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->g:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLICK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$id;->uip_function_key:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setEventFunctionName(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->hasEvent(Lcom/google/protobuf/ByteString;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClick Function Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/cyjh/mqsdk/R$id;->uip_function_key:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "isCodeEvent: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->g:Z

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->g:Z

    if-eqz p2, :cond_11

    return-void

    :cond_11
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p2

    sget-object p4, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLICK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-virtual {p2, p4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setEventArgs(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p2

    sget p3, Lcom/cyjh/mqsdk/R$id;->uip_function_key:I

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setEventFunctionName(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p2

    sget-object p3, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    invoke-virtual {p2, p3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-static {p2}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->hasEvent(Lcom/google/protobuf/ByteString;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onItemSelected: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public parseLayoutFromJson(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1

    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public restoreConfig()V
    .registers 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->configViewFromFile(Ljava/lang/String;)V

    return-void
.end method

.method public saveConfigToJson()Ljava/lang/String;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->i:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    :try_start_20
    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b(Landroid/view/ViewGroup;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_d

    :catch_24
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d

    :cond_29
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->i:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveToConfigFile(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveConfigToJson()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public transform(I)Landroid/view/View;
    .registers 10

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1e

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "childCount of scrollview: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_33
    const/4 v0, 0x2

    if-ne p1, v0, :cond_58

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/uip/c;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/c;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/c;->setSelectTab(I)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    return-object p1

    :cond_58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_79
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    new-array v5, v1, [I

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/cyjh/mqsdk/R$color;->ui_show_blue:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v5, v2

    invoke-virtual {v4, v5}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setDistributeEvenly(Z)V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/TableLayout$LayoutParams;->weight:F

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/cyjh/mobileanjian/ipc/uip/f;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-direct {v2, v3, p1}, Lcom/cyjh/mobileanjian/ipc/uip/f;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getCurrentItem()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    return-object v0
.end method
