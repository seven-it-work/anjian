.class public final Lcom/cyjh/common/util/toast/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "KEY_LOCALE"

.field private static final b:Ljava/lang/String; = "VALUE_FOLLOW_SYSTEM"


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_10
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/util/Locale;
    .registers 9

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    const/4 v5, 0x1

    if-ge v3, v1, :cond_18

    aget-char v6, v0, v3

    const/16 v7, 0x24

    if-ne v6, v7, :cond_15

    if-gtz v4, :cond_1c

    add-int/lit8 v4, v4, 0x1

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_18
    if-ne v4, v5, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    const/4 v1, 0x0

    if-nez v0, :cond_21

    return-object v1

    :cond_21
    :try_start_21
    const-string v0, "$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Ljava/util/Locale;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_35} :catch_36

    return-object v3

    :catch_36
    return-object v1
.end method

.method private static a(Landroid/app/Activity;)V
    .registers 6

    const-string v0, "Utils"

    invoke-static {v0}, Lcom/cyjh/common/util/toast/k;->a(Ljava/lang/String;)Lcom/cyjh/common/util/toast/k;

    move-result-object v0

    const-string v1, "KEY_LOCALE"

    const-string v2, ""

    iget-object v0, v0, Lcom/cyjh/common/util/toast/k;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    return-void

    :cond_17
    const-string v1, "VALUE_FOLLOW_SYSTEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_37

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_6e

    :cond_37
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_6e

    :cond_3a
    invoke-static {v0}, Lcom/cyjh/common/util/toast/h;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    if-nez v1, :cond_6d

    const-string v2, "LanguageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The string of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not in the correct format."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Utils"

    invoke-static {v0}, Lcom/cyjh/common/util/toast/k;->a(Ljava/lang/String;)Lcom/cyjh/common/util/toast/k;

    move-result-object v0

    const-string v2, "KEY_LOCALE"

    iget-object v0, v0, Lcom/cyjh/common/util/toast/k;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6d
    move-object v0, v1

    :goto_6e
    if-nez v0, :cond_71

    return-void

    :cond_71
    invoke-static {p0, v0}, Lcom/cyjh/common/util/toast/h;->a(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/cyjh/common/util/toast/h;->a(Landroid/content/Context;Ljava/util/Locale;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_12

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_14

    :cond_12
    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_14
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method private static a(Landroid/content/res/Configuration;Ljava/util/Locale;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    return-void

    :cond_a
    iput-object p1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/util/Locale;
    .registers 5

    invoke-static {p0}, Lcom/cyjh/common/util/toast/h;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_33

    const-string v1, "LanguageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The string of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not in the correct format."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Utils"

    invoke-static {p0}, Lcom/cyjh/common/util/toast/k;->a(Ljava/lang/String;)Lcom/cyjh/common/util/toast/k;

    move-result-object p0

    const-string v1, "KEY_LOCALE"

    iget-object p0, p0, Lcom/cyjh/common/util/toast/k;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_33
    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v2, v0, :cond_18

    aget-char v4, p0, v2

    const/16 v5, 0x24

    if-ne v4, v5, :cond_15

    if-lez v3, :cond_13

    return v1

    :cond_13
    add-int/lit8 v3, v3, 0x1

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    const/4 p0, 0x1

    if-ne v3, p0, :cond_1c

    return p0

    :cond_1c
    return v1
.end method
