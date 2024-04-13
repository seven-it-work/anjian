.class public final Lcom/c/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/c/a$a;
    }
.end annotation


# static fields
.field public static final k:I = 0x0

.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field private static q:Landroid/content/pm/ApplicationInfo; = null

.field private static r:Landroid/content/pm/PackageInfo; = null

.field private static final s:Ljava/lang/String; = "aqs.skip"

.field private static final t:Ljava/lang/String; = "\u2022"


# instance fields
.field a:Landroid/app/Activity;

.field b:Lcom/c/a;

.field c:Lcom/c/c/a$a;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:I

.field h:Ljava/lang/String;

.field i:Z

.field j:Z

.field private n:Ljava/lang/String;

.field private o:J

.field private p:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xafc80

    iput-wide v0, p0, Lcom/c/c/a;->o:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/c/a;->p:I

    iput-object p1, p0, Lcom/c/c/a;->a:Landroid/app/Activity;

    new-instance v1, Lcom/c/a;

    invoke-direct {v1, p1}, Lcom/c/a;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/c/c/a;->b:Lcom/c/a;

    new-instance p1, Lcom/c/c/a$a;

    invoke-direct {p1, p0, v0}, Lcom/c/c/a$a;-><init>(Lcom/c/c/a;B)V

    iput-object p1, p0, Lcom/c/c/a;->c:Lcom/c/c/a$a;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/c/c/a;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/c/c/a;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market://details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/c/c/a;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/c/c/a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/c/c/a;->e:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a(Lcom/c/c/a;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/c/c/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private a(I)Lcom/c/c/a;
    .registers 2

    iput p1, p0, Lcom/c/c/a;->p:I

    return-object p0
.end method

.method private a(J)Lcom/c/c/a;
    .registers 3

    iput-wide p1, p0, Lcom/c/c/a;->o:J

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/c/c/a;
    .registers 2

    iput-object p1, p0, Lcom/c/c/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method private a(Z)Lcom/c/c/a;
    .registers 2

    iput-boolean p1, p0, Lcom/c/c/a;->f:Z

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "aqs.skip"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "aqs.skip"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "version"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "version"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/c/c/a;->b()Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/c/c/a;->b()Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "outdated"

    invoke-virtual {p0, v0, v1}, Lcom/c/c/a;->a(Ljava/lang/String;I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v2, p0, Lcom/c/c/a;->f:Z

    if-nez v2, :cond_5f

    invoke-virtual {p0, v0, v1}, Lcom/c/c/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_100

    :cond_5f
    if-eqz p1, :cond_100

    iget-object v0, p0, Lcom/c/c/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_66

    return-void

    :cond_66
    iget-object v0, p0, Lcom/c/c/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_100

    const-string v0, "dialog"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "update"

    const-string v2, "Update"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip"

    const-string v3, "Skip"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rate"

    const-string v4, "Rate"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wbody"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    const-string v6, "Update Available"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "wbody"

    invoke-static {v5, v4}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "version"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/c/c/a;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/c/c/a;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object v5, p0, Lcom/c/c/a;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v5, p0, Lcom/c/c/a;->a:Landroid/app/Activity;

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, p1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/c/c/a;->c:Lcom/c/c/a$a;

    invoke-virtual {p1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/c/c/a;->c:Lcom/c/c/a$a;

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/c/c/a;->c:Lcom/c/c/a$a;

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<small>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</small>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/c/c/a;->c:Lcom/c/c/a$a;

    invoke-static {v0, v6, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/c/c/a;->b:Lcom/c/a;

    invoke-virtual {v0, p1}, Lcom/c/a;->a(Landroid/app/Dialog;)Lcom/c/b;

    :cond_100
    return-void
.end method

.method static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_14

    const/4 p0, 0x1

    return p0

    :catch_14
    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    :try_start_9
    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_51

    array-length v2, p1

    if-ge v2, v3, :cond_1d

    return v0

    :cond_1d
    packed-switch p2, :pswitch_data_58

    return v0

    :pswitch_21
    array-length p2, p0

    sub-int/2addr p2, v0

    aget-object p2, p0, p2

    array-length v2, p1

    sub-int/2addr v2, v0

    aget-object v2, p1, v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_30

    return v0

    :cond_30
    :pswitch_30
    array-length p2, p0

    add-int/lit8 p2, p2, -0x2

    aget-object p2, p0, p2

    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget-object v2, p1, v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_41

    return v0

    :cond_41
    :pswitch_41
    array-length p2, p0

    sub-int/2addr p2, v3

    aget-object p0, p0, p2

    array-length p2, p1

    sub-int/2addr p2, v3

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_4d} :catch_52

    if-nez p0, :cond_50

    return v0

    :cond_50
    return v1

    :cond_51
    return v0

    :catch_52
    move-exception p0

    invoke-static {p0}, Lcom/c/d/a;->b(Ljava/lang/Throwable;)V

    return v0

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_21
        :pswitch_30
        :pswitch_41
    .end packed-switch
.end method

.method private b(I)Lcom/c/c/a;
    .registers 2

    iput p1, p0, Lcom/c/c/a;->g:I

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/c/c/a;
    .registers 2

    iput-object p1, p0, Lcom/c/c/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "aqs.skip"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 10

    if-eqz p1, :cond_a2

    iget-object v0, p0, Lcom/c/c/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/c/c/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_12

    return-void

    :cond_12
    const-string v0, "dialog"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "update"

    const-string v2, "Update"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip"

    const-string v3, "Skip"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rate"

    const-string v4, "Rate"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wbody"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    const-string v6, "Update Available"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "wbody"

    invoke-static {v5, v4}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "version"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/c/c/a;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/c/c/a;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object v5, p0, Lcom/c/c/a;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v5, p0, Lcom/c/c/a;->a:Landroid/app/Activity;

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, p1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/c/c/a;->c:Lcom/c/c/a$a;

    invoke-virtual {p1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/c/c/a;->c:Lcom/c/c/a$a;

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/c/c/a;->c:Lcom/c/c/a$a;

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<small>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</small>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/c/c/a;->c:Lcom/c/c/a$a;

    invoke-static {v0, v6, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/c/c/a;->b:Lcom/c/a;

    invoke-virtual {v0, p1}, Lcom/c/a;->a(Landroid/app/Dialog;)Lcom/c/b;

    :cond_a2
    return-void
.end method

.method private static synthetic b(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/c/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic b(Lcom/c/c/a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/c/c/a;->i:Z

    return p0
.end method

.method private c(Ljava/lang/String;)Lcom/c/c/a;
    .registers 2

    iput-object p1, p0, Lcom/c/c/a;->n:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic c(Lcom/c/c/a;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/c/a;->i:Z

    return-void
.end method

.method private static synthetic d(Lcom/c/c/a;)Lcom/c/a;
    .registers 1

    iget-object p0, p0, Lcom/c/c/a;->b:Lcom/c/a;

    return-object p0
.end method

.method private static d()Ljava/lang/String;
    .registers 1

    const-string v0, "https://androidquery.appspot.com"

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<small>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</small>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e(Lcom/c/c/a;)I
    .registers 1

    iget p0, p0, Lcom/c/c/a;->g:I

    return p0
.end method

.method private e()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/c/c/a;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method private f()Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-virtual {p0}, Lcom/c/c/a;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/c/c/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic f(Lcom/c/c/a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/c/c/a;->j:Z

    return p0
.end method

.method private g()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/c/c/a;->b()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic g(Lcom/c/c/a;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/c/a;->j:Z

    return-void
.end method

.method private h()I
    .registers 2

    invoke-virtual {p0}, Lcom/c/c/a;->b()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method

.method private static synthetic h(Lcom/c/c/a;)V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/c/a;->g:I

    return-void
.end method

.method private static synthetic i(Lcom/c/c/a;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/c/c/a;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private i()V
    .registers 5

    invoke-virtual {p0}, Lcom/c/c/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/c/b/b;

    invoke-direct {v1}, Lcom/c/b/b;-><init>()V

    iput-object v0, v1, Lcom/c/b/a;->c:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lcom/c/b/b;

    const-class v2, Lorg/json/JSONObject;

    iput-object v2, v0, Lcom/c/b/a;->b:Ljava/lang/Class;

    check-cast v0, Lcom/c/b/b;

    iget-object v2, p0, Lcom/c/c/a;->c:Lcom/c/c/a$a;

    const-string v3, "marketCb"

    invoke-virtual {v0, v2, v3}, Lcom/c/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/b;

    iget-boolean v2, p0, Lcom/c/c/a;->f:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/c/b/b;->a(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/b;

    iget-wide v2, p0, Lcom/c/c/a;->o:J

    iput-wide v2, v0, Lcom/c/b/a;->p:J

    iget-object v0, p0, Lcom/c/c/a;->b:Lcom/c/a;

    iget v2, p0, Lcom/c/c/a;->g:I

    invoke-virtual {v0, v2}, Lcom/c/a;->a(I)Lcom/c/b;

    move-result-object v0

    check-cast v0, Lcom/c/a;

    invoke-virtual {v0, v1}, Lcom/c/a;->a(Lcom/c/b/b;)Lcom/c/b;

    return-void
.end method

.method private j()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/c/c/a;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic j(Lcom/c/c/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/c/c/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic k(Lcom/c/c/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/c/c/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method private k()Z
    .registers 2

    iget-object v0, p0, Lcom/c/c/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic l(Lcom/c/c/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/c/c/a;->h:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method final a()Landroid/content/pm/ApplicationInfo;
    .registers 2

    sget-object v0, Lcom/c/c/a;->q:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/c/c/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sput-object v0, Lcom/c/c/a;->q:Landroid/content/pm/ApplicationInfo;

    :cond_c
    sget-object v0, Lcom/c/c/a;->q:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method final a(Ljava/lang/String;I)Z
    .registers 7

    iget-object v0, p0, Lcom/c/c/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aqs.skip"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    return v1

    :cond_15
    invoke-virtual {p0}, Lcom/c/c/a;->b()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/c/c/a;->b()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    if-gt v2, p2, :cond_30

    iget p2, p0, Lcom/c/c/a;->p:I

    invoke-static {v0, p1, p2}, Lcom/c/c/a;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_30
    return v1
.end method

.method final b()Landroid/content/pm/PackageInfo;
    .registers 4

    sget-object v0, Lcom/c/c/a;->r:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1c

    :try_start_4
    iget-object v0, p0, Lcom/c/c/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/c/c/a;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    sput-object v0, Lcom/c/c/a;->r:Landroid/content/pm/PackageInfo;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1c
    :goto_1c
    sget-object v0, Lcom/c/c/a;->r:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/c/c/a;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://androidquery.appspot.com"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/api/market?app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&locale="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/c/c/a;->n:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&version="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/c/c/a;->b()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&code="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/c/c/a;->b()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&aq=0.26.7"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/c/c/a;->f:Z

    if-eqz v1, :cond_5e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&force=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5e
    return-object v0
.end method
