.class public Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;


# static fields
.field public static final b:Ljava/lang/String; = "PhoneConfig"

.field private static final c:Ljava/lang/String; = "RecognitionGuideActivity"


# instance fields
.field private d:Landroid/widget/ImageView;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cyjh/http/bean/response/PhoneConfig;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PhoneConfig"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "\u8df3\u8f6c\u94fe\u63a5\u4e3a\u7a7a\uff01"

    invoke-static {p0, v0}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/cyjh/http/b/a;->b(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->finish()V

    return-void
.end method

.method private b()V
    .registers 2

    const v0, 0x7f1000d3

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->d:Landroid/widget/ImageView;

    return-void
.end method

.method private c()V
    .registers 5

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PhoneConfig"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cyjh/http/bean/response/PhoneConfig;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/cyjh/http/bean/response/PhoneConfig;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cyjh/http/bean/response/PhoneConfig;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->e:Ljava/lang/String;

    sget-object v0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initData --> imageUrl="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cyjh/common/util/n;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_36
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_40
    return-void
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "\u8df3\u8f6c\u94fe\u63a5\u4e3a\u7a7a\uff01"

    invoke-static {p0, v0}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/cyjh/http/b/a;->b(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040028

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->setContentView(I)V

    const p1, 0x7f1000d3

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "PhoneConfig"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/PhoneConfig;

    if-eqz p1, :cond_54

    invoke-virtual {p1}, Lcom/cyjh/http/bean/response/PhoneConfig;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/http/bean/response/PhoneConfig;->getLinkUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->e:Ljava/lang/String;

    sget-object p1, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initData --> imageUrl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cyjh/common/util/n;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4a

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4a
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->d:Landroid/widget/ImageView;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity$1;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_54
    return-void
.end method
