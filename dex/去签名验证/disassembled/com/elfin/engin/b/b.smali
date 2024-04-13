.class public final Lcom/elfin/engin/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/elfin/engin/b/a/a;


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/Spinner;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Ljava/io/File;

.field private f:Ljava/io/File;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elfin/engin/b/b;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elfin/engin/b/b;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elfin/engin/b/b;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elfin/engin/b/b;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elfin/engin/b/b;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elfin/engin/b/b;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/elfin/engin/b/b;->e:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/elfin/engin/b/b;->f:Ljava/io/File;

    iput-object p1, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string p1, "a111111"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ScriptUiModel "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(I)I
    .registers 3

    iget-object v0, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method private a(Landroid/util/JsonReader;)Landroid/widget/LinearLayout;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :cond_17
    :goto_17
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_linearlayout"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-direct {p0, p1}, Lcom/elfin/engin/b/b;->b(Landroid/util/JsonReader;)Landroid/widget/LinearLayout;

    move-result-object v1

    :goto_39
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_17

    :cond_3d
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_textview"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-direct {p0, p1}, Lcom/elfin/engin/b/b;->c(Landroid/util/JsonReader;)Landroid/widget/TextView;

    move-result-object v1

    goto :goto_39

    :cond_56
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_edittext"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-direct {p0, p1}, Lcom/elfin/engin/b/b;->d(Landroid/util/JsonReader;)Landroid/widget/EditText;

    move-result-object v1

    goto :goto_39

    :cond_6f
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_checkbox"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-direct {p0, p1}, Lcom/elfin/engin/b/b;->e(Landroid/util/JsonReader;)Landroid/widget/CheckBox;

    move-result-object v1

    goto :goto_39

    :cond_88
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_spinner"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0, p1}, Lcom/elfin/engin/b/b;->f(Landroid/util/JsonReader;)Landroid/widget/Spinner;

    move-result-object v1

    goto :goto_39

    :cond_a1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private a(Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_b6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_b6

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    return-void

    :cond_19
    const/4 v0, 0x0

    :try_start_1a
    iget-object v1, p0, Lcom/elfin/engin/b/b;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_31

    :cond_29
    iget-object p1, p0, Lcom/elfin/engin/b/b;->g:Ljava/lang/String;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2b} :catch_2c

    goto :goto_31

    :catch_2c
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, v0

    :goto_31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/elfin/engin/b/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    :try_start_48
    invoke-virtual {v1}, Landroid/widget/Spinner;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_5f

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3c

    :cond_5f
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_62} :catch_63

    goto :goto_3c

    :catch_63
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    :cond_68
    iget-object p1, p0, Lcom/elfin/engin/b/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    :try_start_7a
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_89} :catch_8a

    goto :goto_6e

    :catch_8a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6e

    :cond_8f
    iget-object p1, p0, Lcom/elfin/engin/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_95
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    :try_start_a1
    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_b0} :catch_b1

    goto :goto_95

    :catch_b1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_95

    :cond_b6
    return-void
.end method

.method private b(Landroid/util/JsonReader;)Landroid/widget/LinearLayout;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_1c
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_linearlayout"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-direct {p0, p1}, Lcom/elfin/engin/b/b;->b(Landroid/util/JsonReader;)Landroid/widget/LinearLayout;

    move-result-object v1

    :goto_3e
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1c

    :cond_42
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_textview"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-direct {p0, p1}, Lcom/elfin/engin/b/b;->c(Landroid/util/JsonReader;)Landroid/widget/TextView;

    move-result-object v1

    goto :goto_3e

    :cond_5b
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_edittext"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-direct {p0, p1}, Lcom/elfin/engin/b/b;->d(Landroid/util/JsonReader;)Landroid/widget/EditText;

    move-result-object v1

    goto :goto_3e

    :cond_74
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_checkbox"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-direct {p0, p1}, Lcom/elfin/engin/b/b;->e(Landroid/util/JsonReader;)Landroid/widget/CheckBox;

    move-result-object v1

    goto :goto_3e

    :cond_8d
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_spinner"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-direct {p0, p1}, Lcom/elfin/engin/b/b;->f(Landroid/util/JsonReader;)Landroid/widget/Spinner;

    move-result-object v1

    goto :goto_3e

    :cond_a6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_1c

    :cond_ab
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private b(Ljava/io/File;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_96

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_96

    :cond_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/elfin/engin/b/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    :try_start_21
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_30} :catch_31

    goto :goto_15

    :catch_31
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    :cond_36
    iget-object v1, p0, Lcom/elfin/engin/b/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    :try_start_48
    invoke-virtual {v2}, Landroid/widget/Spinner;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_57} :catch_58

    goto :goto_3c

    :catch_58
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    :cond_5d
    iget-object v1, p0, Lcom/elfin/engin/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    :try_start_6f
    invoke-virtual {v2}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_82} :catch_83

    goto :goto_63

    :catch_83
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63

    :cond_88
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p1, v1, v2}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_96
    :goto_96
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 7

    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    :try_start_11
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_14
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_activity"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct {p0, v0}, Lcom/elfin/engin/b/b;->a(Landroid/util/JsonReader;)Landroid/widget/LinearLayout;

    move-result-object v1

    move-object p1, v1

    goto :goto_14

    :cond_38
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_14

    :cond_3c
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_42} :catch_42

    :catch_42
    return-object p1
.end method

.method private c(Landroid/util/JsonReader;)Landroid/widget/TextView;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "integer"

    const-string v2, "ui_textSize_normal"

    invoke-static {v1, v2}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :cond_28
    :goto_28
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10b

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_name"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_28

    :cond_4e
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_textview_textcontent"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_28

    :cond_6a
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_textsize"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const-string v2, "integer"

    const-string v3, "ui_textsize_min"

    invoke-static {v2, v3}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v2

    if-le v1, v2, :cond_95

    :goto_90
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_28

    :cond_95
    const-string v2, "integer"

    const-string v3, "ui_textSize_default"

    invoke-static {v2, v3}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v2

    if-eq v1, v2, :cond_28

    const-string v1, "integer"

    const-string v2, "ui_textsize_min"

    invoke-static {v1, v2}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v1

    goto :goto_90

    :cond_b0
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_layout_height"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const-string v2, "integer"

    const-string v3, "ui_default_height"

    invoke-static {v2, v3}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v2

    if-le v1, v2, :cond_28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_28

    :cond_db
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_layout_width"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_106

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const-string v2, "integer"

    const-string v3, "ui_default_width"

    invoke-static {v2, v3}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v2

    if-le v1, v2, :cond_28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_28

    :cond_106
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_28

    :cond_10b
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private d(Landroid/util/JsonReader;)Landroid/widget/EditText;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "integer"

    const-string v2, "ui_textSize_normal"

    invoke-static {v1, v2}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :cond_27
    :goto_27
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_172

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v4, "string"

    const-string v5, "ui_name"

    invoke-static {v4, v5}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto :goto_27

    :cond_4d
    iget-object v3, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v4, "string"

    const-string v5, "ui_edittext_hintcontent"

    invoke-static {v4, v5}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_27

    :cond_69
    iget-object v3, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v4, "string"

    const-string v5, "ui_textsize"

    invoke-static {v4, v5}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    const-string v3, "integer"

    const-string v4, "ui_textsize_min"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v3

    if-le v2, v3, :cond_94

    :goto_8f
    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    goto :goto_27

    :cond_94
    const-string v3, "integer"

    const-string v4, "ui_textSize_default"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v3

    if-eq v2, v3, :cond_27

    const-string v2, "integer"

    const-string v3, "ui_textsize_min"

    invoke-static {v2, v3}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v2

    goto :goto_8f

    :cond_af
    iget-object v3, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v4, "string"

    const-string v5, "ui_layout_height"

    invoke-static {v4, v5}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_da

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    const-string v3, "integer"

    const-string v4, "ui_default_height"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v3

    if-le v2, v3, :cond_27

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHeight(I)V

    goto/16 :goto_27

    :cond_da
    iget-object v3, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v4, "string"

    const-string v5, "ui_layout_width"

    invoke-static {v4, v5}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_105

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    const-string v3, "integer"

    const-string v4, "ui_default_width"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v3

    if-le v2, v3, :cond_27

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setWidth(I)V

    goto/16 :goto_27

    :cond_105
    iget-object v3, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v4, "string"

    const-string v5, "ui_edittext_maxlength"

    invoke-static {v4, v5}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_12e

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    if-lez v2, :cond_27

    new-array v3, v1, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_27

    :cond_12e
    iget-object v3, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v5, "string"

    const-string v6, "ui_edittext_inputnumber"

    invoke-static {v5, v6}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_150

    :try_start_142
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_146} :catch_147

    goto :goto_148

    :catch_147
    const/4 v2, 0x0

    :goto_148
    if-eqz v2, :cond_27

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_27

    :cond_150
    iget-object v3, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v4, "string"

    const-string v5, "ui_edittext_defaultcontent"

    invoke-static {v4, v5}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16d

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_27

    :cond_16d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_27

    :cond_172
    iget-object v1, p0, Lcom/elfin/engin/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private e(Landroid/util/JsonReader;)Landroid/widget/CheckBox;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "integer"

    const-string v2, "ui_textSize_normal"

    invoke-static {v1, v2}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :cond_23
    :goto_23
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_128

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_name"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    goto :goto_23

    :cond_49
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_checkbox_hintcontent"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    :cond_65
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_checkbox_checked"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_84

    const/4 v1, 0x1

    :goto_80
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_23

    :cond_84
    const/4 v1, 0x0

    goto :goto_80

    :cond_86
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_textsize"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const-string v2, "integer"

    const-string v3, "ui_textsize_min"

    invoke-static {v2, v3}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v2

    if-le v1, v2, :cond_b2

    :goto_ac
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    goto/16 :goto_23

    :cond_b2
    const-string v2, "integer"

    const-string v3, "ui_textSize_default"

    invoke-static {v2, v3}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v2

    if-eq v1, v2, :cond_23

    const-string v1, "integer"

    const-string v2, "ui_textsize_min"

    invoke-static {v1, v2}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v1

    goto :goto_ac

    :cond_cd
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_layout_height"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f8

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const-string v2, "integer"

    const-string v3, "ui_default_height"

    invoke-static {v2, v3}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v2

    if-le v1, v2, :cond_23

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setHeight(I)V

    goto/16 :goto_23

    :cond_f8
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_layout_width"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_123

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const-string v2, "integer"

    const-string v3, "ui_default_width"

    invoke-static {v2, v3}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/elfin/engin/b/b;->a(I)I

    move-result v2

    if-le v1, v2, :cond_23

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setWidth(I)V

    goto/16 :goto_23

    :cond_123
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_23

    :cond_128
    iget-object v1, p0, Lcom/elfin/engin/b/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private f(Landroid/util/JsonReader;)Landroid/widget/Spinner;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_13
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a9

    :try_start_19
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v4, "string"

    const-string v5, "ui_name"

    invoke-static {v4, v5}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    goto :goto_13

    :cond_3e
    iget-object v3, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v4, "string"

    const-string v5, "ui_spinner_items"

    invoke-static {v4, v5}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    :catch_55
    :goto_55
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_59} :catch_a3

    if-eqz v1, :cond_63

    :try_start_5b
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_62} :catch_55

    goto :goto_55

    :cond_63
    :try_start_63
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const v4, 0x1090008

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_13

    :cond_7a
    iget-object v2, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "ui_spinner_defaultitem"

    invoke-static {v3, v4}, Lcom/elfin/engin/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_92} :catch_a3

    const/4 v2, 0x1

    :try_start_93
    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_98

    goto/16 :goto_13

    :catch_98
    const/4 v1, 0x0

    :try_start_99
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_13

    :cond_9e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a1} :catch_a3

    goto/16 :goto_13

    :catch_a3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_13

    :cond_a9
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    iget-object p1, p0, Lcom/elfin/engin/b/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/widget/LinearLayout;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/elfin/engin/b/b;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/cyjh/mqm/MiscUtilities;

    invoke-direct {v0}, Lcom/cyjh/mqm/MiscUtilities;-><init>()V

    iget-object v1, p0, Lcom/elfin/engin/b/b;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/mqm/MiscUtilities;->LoadUIFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a111111"

    const-string v2, "ScriptUiModel parseui begin"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/elfin/engin/b/b;->c(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "a111111"

    const-string v2, "ScriptUiModel end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2b
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/elfin/engin/b/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/engin/b/b;->g:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final c()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/elfin/engin/b/b;->f:Ljava/io/File;

    if-eqz v0, :cond_b8

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_b8

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_b9

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1b

    return-void

    :cond_1b
    const/4 v1, 0x0

    :try_start_1c
    iget-object v2, p0, Lcom/elfin/engin/b/b;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_2b
    iget-object v0, p0, Lcom/elfin/engin/b/b;->g:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2d} :catch_b9

    goto :goto_33

    :catch_2e
    move-exception v0

    :try_start_2f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    :goto_33
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/elfin/engin/b/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4a} :catch_b9

    :try_start_4a
    invoke-virtual {v2}, Landroid/widget/Spinner;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_61

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3e

    :cond_61
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_64} :catch_65

    goto :goto_3e

    :catch_65
    move-exception v2

    :try_start_66
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e

    :cond_6a
    iget-object v0, p0, Lcom/elfin/engin/b/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7c} :catch_b9

    :try_start_7c
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8b} :catch_8c

    goto :goto_70

    :catch_8c
    move-exception v2

    :try_start_8d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_70

    :cond_91
    iget-object v0, p0, Lcom/elfin/engin/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_97
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_a3} :catch_b9

    :try_start_a3
    invoke-virtual {v2}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_b2} :catch_b3

    goto :goto_97

    :catch_b3
    move-exception v2

    :try_start_b4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_b9

    goto :goto_97

    :cond_b8
    return-void

    :catch_b9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/elfin/engin/b/b;->f:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/elfin/engin/b/b;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
