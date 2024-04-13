.class public Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDefaultFlowLayoutChildLayoutParams:Lcom/cyjh/mobileanjian/ipc/uip/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/uip/b$a;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Lcom/cyjh/mobileanjian/ipc/uip/b$a;-><init>(II)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mDefaultFlowLayoutChildLayoutParams:Lcom/cyjh/mobileanjian/ipc/uip/b$a;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mDefaultFlowLayoutChildLayoutParams:Lcom/cyjh/mobileanjian/ipc/uip/b$a;

    const/16 v0, 0x11

    iput v0, p1, Lcom/cyjh/mobileanjian/ipc/uip/b$a;->a:I

    return-void
.end method


# virtual methods
.method public parseButton(Landroid/util/JsonReader;)Landroid/widget/Button;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$integer;->ui_textSize_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :cond_28
    :goto_28
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_105

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_28

    :cond_48
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_28

    :cond_5e
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_onclick:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    sget v1, Lcom/cyjh/mqsdk/R$id;->uip_function_key:I

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    goto :goto_28

    :cond_76
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_textsize:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_textsize_min:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_9b

    :goto_96
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    goto :goto_28

    :cond_9b
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_textSize_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_28

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$integer;->ui_textsize_min:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_96

    :cond_b6
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_layout_height:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_default_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_28

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    goto/16 :goto_28

    :cond_db
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_layout_width:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_100

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_default_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_28

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setWidth(I)V

    goto/16 :goto_28

    :cond_100
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_28

    :cond_105
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method public parseCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$integer;->ui_textSize_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :cond_23
    :goto_23
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11c

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    goto :goto_23

    :cond_43
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_onclick:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    sget v1, Lcom/cyjh/mqsdk/R$id;->uip_function_key:I

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    goto :goto_23

    :cond_5b
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_hintcontent:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    :cond_71
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_checked:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_8a

    const/4 v1, 0x1

    :goto_86
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_23

    :cond_8a
    const/4 v1, 0x0

    goto :goto_86

    :cond_8c
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_textsize:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_textsize_min:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_b2

    :goto_ac
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    goto/16 :goto_23

    :cond_b2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_textSize_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_23

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$integer;->ui_textsize_min:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_ac

    :cond_cd
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_layout_height:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f2

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_default_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_23

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setHeight(I)V

    goto/16 :goto_23

    :cond_f2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_layout_width:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_117

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_default_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_23

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setWidth(I)V

    goto/16 :goto_23

    :cond_117
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_23

    :cond_11c
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method public parseEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$integer;->ui_textSize_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

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

    if-eqz v2, :cond_160

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_name:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto :goto_27

    :cond_47
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_edittext_hintcontent:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_27

    :cond_5d
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_textsize:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9d

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cyjh/mqsdk/R$integer;->ui_textsize_min:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-le v2, v3, :cond_82

    :goto_7d
    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    goto :goto_27

    :cond_82
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cyjh/mqsdk/R$integer;->ui_textSize_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eq v2, v3, :cond_27

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_textsize_min:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto :goto_7d

    :cond_9d
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_layout_height:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cyjh/mqsdk/R$integer;->ui_default_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-le v2, v3, :cond_27

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHeight(I)V

    goto/16 :goto_27

    :cond_c2
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_layout_width:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e7

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cyjh/mqsdk/R$integer;->ui_default_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-le v2, v3, :cond_27

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setWidth(I)V

    goto/16 :goto_27

    :cond_e7
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_edittext_maxlength:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_10a

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    if-lez v2, :cond_27

    new-array v3, v1, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_27

    :cond_10a
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v5, Lcom/cyjh/mqsdk/R$string;->ui_edittext_inputnumber:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_126

    :try_start_118
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_11c} :catch_11d

    goto :goto_11e

    :catch_11d
    const/4 v2, 0x0

    :goto_11e
    if-eqz v2, :cond_27

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_27

    :cond_126
    const-string v3, "\u5bc6\u7801"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_144

    :try_start_12e
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_132} :catch_133

    goto :goto_134

    :catch_133
    const/4 v2, 0x0

    :goto_134
    if-eqz v2, :cond_13f

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    :goto_13a
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto/16 :goto_27

    :cond_13f
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    goto :goto_13a

    :cond_144
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_edittext_defaultcontent:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15b

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_27

    :cond_15b
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_27

    :cond_160
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser$1;

    invoke-direct {p1, p0}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser$2;

    invoke-direct {p1, p0}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser$2;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-object v0
.end method

.method public parseHorizontalLinearLayout(Landroid/util/JsonReader;)Lcom/cyjh/mobileanjian/ipc/uip/b;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/b;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/b;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/b;->setGravity(I)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_19
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_linearlayout:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->parseHorizontalLinearLayout(Landroid/util/JsonReader;)Lcom/cyjh/mobileanjian/ipc/uip/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/b;->addView(Landroid/view/View;)V

    goto :goto_19

    :cond_39
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_textview:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->parseTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;

    move-result-object v1

    :goto_4b
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mDefaultFlowLayoutChildLayoutParams:Lcom/cyjh/mobileanjian/ipc/uip/b$a;

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/uip/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_19

    :cond_51
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_edittext:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->parseEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;

    move-result-object v1

    goto :goto_4b

    :cond_64
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_checkbox:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->parseCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;

    move-result-object v1

    goto :goto_4b

    :cond_77
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_spinner:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->parseSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;

    move-result-object v1

    goto :goto_4b

    :cond_8a
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_button:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->parseButton(Landroid/util/JsonReader;)Landroid/widget/Button;

    move-result-object v1

    goto :goto_4b

    :cond_9d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_19

    :cond_a2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method public parseSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/cyjh/mqsdk/R$drawable;->spinner_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/Spinner;->setPadding(IIII)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setGravity(I)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_21
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b9

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v5, Lcom/cyjh/mqsdk/R$string;->ui_name:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    goto :goto_21

    :cond_46
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v5, Lcom/cyjh/mqsdk/R$string;->ui_onSelect:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    sget v2, Lcom/cyjh/mqsdk/R$id;->uip_function_key:I

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/Spinner;->setTag(ILjava/lang/Object;)V

    goto :goto_21

    :cond_5e
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v5, Lcom/cyjh/mqsdk/R$string;->ui_spinner_items:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    :goto_6f
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :cond_7d
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    new-instance v2, Lcom/cyjh/mobileanjian/ipc/uip/e;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Lcom/cyjh/mobileanjian/ipc/uip/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const v3, 0x1090009

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/uip/e;->setDropDownViewResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_21

    :cond_91
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_spinner_defaultitem:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_ae

    goto :goto_af

    :cond_ae
    const/4 v2, 0x0

    :goto_af
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_21

    :cond_b4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_21

    :cond_b9
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method public parseTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$integer;->ui_textSize_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :cond_28
    :goto_28
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ed

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_28

    :cond_48
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_28

    :cond_5e
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_textsize:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_textsize_min:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_83

    :goto_7e
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_28

    :cond_83
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_textSize_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_28

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$integer;->ui_textsize_min:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_7e

    :cond_9e
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_layout_height:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c3

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_default_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_28

    :cond_c3
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_layout_width:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e8

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_default_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_28

    :cond_e8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_28

    :cond_ed
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method
