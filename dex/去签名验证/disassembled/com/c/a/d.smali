.class public final Lcom/c/a/d;
.super Lcom/c/a/a;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/accounts/AccountManager;

.field private b:Landroid/accounts/Account;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Activity;

.field private e:Ljava/lang/String;

.field private f:[Landroid/accounts/Account;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/c/a/a;-><init>()V

    const-string v0, "aq.account"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    const-string v0, "aq.account"

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_16
    iput-object p1, p0, Lcom/c/a/d;->d:Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/c/a/d;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/c/a/d;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/c/a/d;->a:Landroid/accounts/AccountManager;

    return-void
.end method

.method static synthetic a(Lcom/c/a/d;)Landroid/accounts/AccountManager;
    .registers 1

    iget-object p0, p0, Lcom/c/a/d;->a:Landroid/accounts/AccountManager;

    return-object p0
.end method

.method private a(Landroid/accounts/Account;)V
    .registers 3

    iput-object p1, p0, Lcom/c/a/d;->b:Landroid/accounts/Account;

    new-instance p1, Lcom/c/a/d$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/c/a/d$a;-><init>(Lcom/c/a/d;B)V

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/c/a/d$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "aq.account"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic a(Lcom/c/a/d;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/c/a/d;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/c/a/d;)Landroid/accounts/Account;
    .registers 1

    iget-object p0, p0, Lcom/c/a/d;->b:Landroid/accounts/Account;

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "aq.account"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/c/a/d;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/c/a/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/c/a/d;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/c/a/d;->d:Landroid/app/Activity;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .registers 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/c/a/d;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/c/a/d;->a:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/c/a/d;->f:[Landroid/accounts/Account;

    iget-object v1, p0, Lcom/c/a/d;->f:[Landroid/accounts/Account;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_20

    iget-object v0, p0, Lcom/c/a/d;->f:[Landroid/accounts/Account;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/c/a/d;->a(Landroid/accounts/Account;)V

    return-void

    :cond_20
    new-array v3, v1, [Ljava/lang/String;

    :goto_22
    if-lt v2, v1, :cond_39

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/c/a;

    iget-object v2, p0, Lcom/c/a/d;->d:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/c/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Lcom/c/a;->a(Landroid/app/Dialog;)Lcom/c/b;

    return-void

    :cond_39
    iget-object v4, p0, Lcom/c/a/d;->f:[Landroid/accounts/Account;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_22
.end method


# virtual methods
.method public final a(Lcom/c/b/a;Lorg/apache/http/HttpRequest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/a<",
            "**>;",
            "Lorg/apache/http/HttpRequest;",
            ")V"
        }
    .end annotation

    const-string p1, "Authorization"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GoogleLogin auth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/c/a/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcom/c/a/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/c/b/a;Lcom/c/b/c;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/a<",
            "**>;",
            "Lcom/c/b/c;",
            ")Z"
        }
    .end annotation

    iget p1, p2, Lcom/c/b/c;->i:I

    const/16 p2, 0x191

    if-eq p1, p2, :cond_c

    const/16 p2, 0x193

    if-eq p1, p2, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "#"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/c/a/d;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final b()V
    .registers 6

    iget-object v0, p0, Lcom/c/a/d;->e:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_48

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/c/a/d;->d:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/c/a/d;->a:Landroid/accounts/AccountManager;

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/c/a/d;->f:[Landroid/accounts/Account;

    iget-object v2, p0, Lcom/c/a/d;->f:[Landroid/accounts/Account;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    iget-object v0, p0, Lcom/c/a/d;->f:[Landroid/accounts/Account;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/c/a/d;->a(Landroid/accounts/Account;)V

    return-void

    :cond_24
    new-array v3, v2, [Ljava/lang/String;

    :goto_26
    if-lt v1, v2, :cond_3d

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/c/a;

    iget-object v2, p0, Lcom/c/a/d;->d:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/c/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Lcom/c/a;->a(Landroid/app/Dialog;)Lcom/c/b;

    return-void

    :cond_3d
    iget-object v4, p0, Lcom/c/a/d;->f:[Landroid/accounts/Account;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_48
    iget-object v0, p0, Lcom/c/a/d;->a:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    :goto_50
    array-length v2, v0

    if-lt v1, v2, :cond_54

    return-void

    :cond_54
    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/c/a/d;->e:Ljava/lang/String;

    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-direct {p0, v2}, Lcom/c/a/d;->a(Landroid/accounts/Account;)V

    return-void

    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_50
.end method

.method public final b(Lcom/c/b/a;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/a<",
            "**>;)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/c/a/d;->a:Landroid/accounts/AccountManager;

    iget-object v0, p0, Lcom/c/a/d;->b:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/c/a/d;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    :try_start_c
    iget-object v0, p0, Lcom/c/a/d;->a:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/c/a/d;->b:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/c/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/d;->g:Ljava/lang/String;

    const-string v0, "re token"

    iget-object v1, p0, Lcom/c/a/d;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1f} :catch_20

    goto :goto_27

    :catch_20
    move-exception v0

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/d;->g:Ljava/lang/String;

    :goto_27
    iget-object v0, p0, Lcom/c/a/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_2c

    return p1

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    const-string p1, "cancel"

    const/16 v0, -0x66

    invoke-virtual {p0, v0, p1}, Lcom/c/a/d;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object p1, p0, Lcom/c/a/d;->f:[Landroid/accounts/Account;

    aget-object p1, p1, p2

    const-string p2, "acc"

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/c/a/d;->d:Landroid/app/Activity;

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "aq.account"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0, p1}, Lcom/c/a/d;->a(Landroid/accounts/Account;)V

    return-void
.end method
