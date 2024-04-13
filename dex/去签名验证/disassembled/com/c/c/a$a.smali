.class final Lcom/c/c/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/c/c/a;


# direct methods
.method private constructor <init>(Lcom/c/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/c/c/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/c/c/a$a;-><init>(Lcom/c/c/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_3b

    iget-object v0, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    invoke-virtual {v0}, Lcom/c/c/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/c/b/b;

    invoke-direct {v1}, Lcom/c/b/b;-><init>()V

    iput-object v0, v1, Lcom/c/b/a;->c:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lcom/c/b/b;

    const-class v2, Lorg/json/JSONObject;

    iput-object v2, v0, Lcom/c/b/a;->b:Ljava/lang/Class;

    check-cast v0, Lcom/c/b/b;

    const-string v2, "marketCb"

    invoke-virtual {v0, p0, v2}, Lcom/c/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "html"

    invoke-virtual {v1, v0, p1}, Lcom/c/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    iget-object p1, p1, Lcom/c/c/a;->b:Lcom/c/a;

    iget-object v0, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    iget v0, v0, Lcom/c/c/a;->g:I

    invoke-virtual {p1, v0}, Lcom/c/a;->a(I)Lcom/c/b;

    move-result-object p1

    check-cast p1, Lcom/c/a;

    invoke-virtual {p1, v1}, Lcom/c/a;->a(Lcom/c/b/b;)Lcom/c/b;

    :cond_3b
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 11

    iget-object v0, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    iget-boolean v0, v0, Lcom/c/c/a;->j:Z

    if-nez v0, :cond_110

    iget-object v0, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/c/c/a;->j:Z

    iget-object v0, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    const/4 v2, 0x0

    iput v2, v0, Lcom/c/c/a;->g:I

    iget-object v0, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    if-eqz p1, :cond_110

    const-string v3, "version"

    const-string v4, "0"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "code"

    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "version"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/c/c/a;->b()Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/c/c/a;->b()Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "outdated"

    invoke-virtual {v0, v3, v2}, Lcom/c/c/a;->a(Ljava/lang/String;I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v4, v0, Lcom/c/c/a;->f:Z

    if-nez v4, :cond_6f

    invoke-virtual {v0, v3, v2}, Lcom/c/c/a;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_110

    :cond_6f
    if-eqz p1, :cond_110

    iget-object v2, v0, Lcom/c/c/a;->h:Ljava/lang/String;

    if-eqz v2, :cond_76

    return-void

    :cond_76
    iget-object v2, v0, Lcom/c/c/a;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_110

    const-string v1, "dialog"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "update"

    const-string v3, "Update"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "skip"

    const-string v4, "Skip"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rate"

    const-string v5, "Rate"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "wbody"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    const-string v7, "Update Available"

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "wbody"

    invoke-static {v6, v5}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "version"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/c/c/a;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/c/c/a;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object v6, v0, Lcom/c/c/a;->a:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v6, v0, Lcom/c/c/a;->a:Landroid/app/Activity;

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, p1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, v0, Lcom/c/c/a;->c:Lcom/c/c/a$a;

    invoke-virtual {p1, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, v0, Lcom/c/c/a;->c:Lcom/c/c/a$a;

    invoke-virtual {p1, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, v0, Lcom/c/c/a;->c:Lcom/c/c/a$a;

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<small>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</small>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/c/c/a;->c:Lcom/c/c/a$a;

    invoke-static {v1, v7, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/c/c/a;->b:Lcom/c/a;

    invoke-virtual {v0, p1}, Lcom/c/a;->a(Landroid/app/Dialog;)Lcom/c/b;

    return-void

    :cond_110
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/c/b/c;)V
    .registers 6

    iget-object v0, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    iget-object v0, v0, Lcom/c/c/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    if-eqz p1, :cond_7b

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6c

    const-string v0, "dialog"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0, p1}, Lcom/c/c/a$a;->a(Lorg/json/JSONObject;)V

    :cond_27
    iget-object v0, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    iget-boolean v0, v0, Lcom/c/c/a;->i:Z

    if-nez v0, :cond_7e

    const-string v0, "fetch"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7e

    iget p2, p2, Lcom/c/b/c;->r:I

    if-ne p2, v2, :cond_7e

    iget-object p2, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    iput-boolean v2, p2, Lcom/c/c/a;->i:Z

    const-string p2, "marketUrl"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/c/b/b;

    invoke-direct {p2}, Lcom/c/b/b;-><init>()V

    iput-object p1, p2, Lcom/c/b/a;->c:Ljava/lang/String;

    move-object p1, p2

    check-cast p1, Lcom/c/b/b;

    const-class v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/c/b/a;->b:Ljava/lang/Class;

    check-cast p1, Lcom/c/b/b;

    const-string v0, "detailCb"

    invoke-virtual {p1, p0, v0}, Lcom/c/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    iget-object p1, p1, Lcom/c/c/a;->b:Lcom/c/a;

    iget-object v0, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    iget v0, v0, Lcom/c/c/a;->g:I

    invoke-virtual {p1, v0}, Lcom/c/a;->a(I)Lcom/c/b;

    move-result-object p1

    check-cast p1, Lcom/c/a;

    invoke-virtual {p1, p2}, Lcom/c/a;->a(Lcom/c/b/b;)Lcom/c/b;

    return-void

    :cond_6c
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    iput-boolean v2, p2, Lcom/c/b/c;->u:Z

    return-void

    :cond_77
    invoke-direct {p0, p1}, Lcom/c/c/a$a;->a(Lorg/json/JSONObject;)V

    return-void

    :cond_7b
    invoke-direct {p0, p1}, Lcom/c/c/a$a;->a(Lorg/json/JSONObject;)V

    :cond_7e
    return-void
.end method


# virtual methods
.method public final handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .registers 5

    const-string p4, "li"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f

    if-eqz p1, :cond_1a

    const-string p1, "  "

    invoke-interface {p3, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    const-string p1, "\u2022"

    invoke-interface {p3, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    const-string p1, "  "

    invoke-interface {p3, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    return-void

    :cond_1a
    const-string p1, "\n"

    invoke-interface {p3, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :cond_1f
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    packed-switch p2, :pswitch_data_34

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    iget-object p1, p1, Lcom/c/c/a;->a:Landroid/app/Activity;

    iget-object p2, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    iget-object p2, p2, Lcom/c/c/a;->d:Ljava/lang/String;

    :goto_c
    invoke-static {p1, p2}, Lcom/c/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    return-void

    :pswitch_10
    iget-object p1, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    iget-object p1, p1, Lcom/c/c/a;->a:Landroid/app/Activity;

    iget-object p2, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    iget-object p2, p2, Lcom/c/c/a;->e:Ljava/lang/String;

    goto :goto_c

    :pswitch_19
    iget-object p1, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    iget-object p1, p1, Lcom/c/c/a;->a:Landroid/app/Activity;

    iget-object p2, p0, Lcom/c/c/a$a;->a:Lcom/c/c/a;

    iget-object p2, p2, Lcom/c/c/a;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "aqs.skip"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    nop

    :pswitch_data_34
    .packed-switch -0x3
        :pswitch_19
        :pswitch_10
        :pswitch_4
    .end packed-switch
.end method
