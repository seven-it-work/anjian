.class public final Lcom/c/a/c;
.super Lcom/c/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/c$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

.field private static final i:Ljava/lang/String; = "https://graph.facebook.com/oauth/authorize"

.field private static final j:Ljava/lang/String; = "https://www.facebook.com/connect/login_success.html"

.field private static final k:Ljava/lang/String; = "fbconnect:cancel"

.field private static final n:Ljava/lang/String; = "aq.fb.token"

.field private static final o:Ljava/lang/String; = "aq.fb.permission"

.field private static p:Ljava/lang/Boolean;


# instance fields
.field a:Landroid/app/Activity;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field private f:Ljava/lang/String;

.field private g:Lcom/c/c;

.field private h:Ljava/lang/String;

.field private l:Z

.field private m:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/c/a/c;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;B)V
    .registers 8

    invoke-direct {p0}, Lcom/c/a/a;-><init>()V

    iput-object p2, p0, Lcom/c/a/c;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/c/a/c;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/c/a/c;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/c/a/c;->b:Ljava/lang/String;

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_62

    iget-object p2, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v1, "aq.fb.permission"

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p3, :cond_22

    :goto_20
    const/4 p2, 0x1

    goto :goto_4e

    :cond_22
    if-nez p2, :cond_26

    :goto_24
    const/4 p2, 0x0

    goto :goto_4e

    :cond_26
    const-string v1, "[,\\s]+"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string p2, "[,\\s]+"

    invoke-virtual {p3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    :goto_3c
    array-length v2, p2

    if-lt p3, v2, :cond_40

    goto :goto_20

    :cond_40
    aget-object v2, p2, p3

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-string p2, "perm mismatch"

    invoke-static {p2}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    goto :goto_24

    :goto_4e
    if-eqz p2, :cond_62

    iget-object p2, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "aq.fb.token"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/c/a/c;->b:Ljava/lang/String;

    goto :goto_62

    :cond_5f
    add-int/lit8 p3, p3, 0x1

    goto :goto_3c

    :cond_62
    :goto_62
    iget-object p1, p0, Lcom/c/a/c;->b:Ljava/lang/String;

    if-nez p1, :cond_67

    const/4 p4, 0x1

    :cond_67
    iput-boolean p4, p0, Lcom/c/a/c;->d:Z

    return-void
.end method

.method private a(I)Lcom/c/a/c;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/c;->l:Z

    iput p1, p0, Lcom/c/a/c;->m:I

    return-object p0
.end method

.method private static a(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_23

    const/4 v2, 0x0

    goto :goto_28

    :cond_23
    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e
.end method

.method private a(ILandroid/content/Intent;)V
    .registers 5

    const-string v0, "on result"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_73

    const-string p1, "error"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1a

    const-string p1, "error_type"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1a
    if-eqz p1, :cond_4a

    const-string v0, "error"

    invoke-static {v0, p1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "service_disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "AndroidAuthKillSwitchException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    goto :goto_46

    :cond_32
    const-string p1, "error_description"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "fb error"

    invoke-static {p2, p1}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p2, "fb error"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/c/a/c;->e(Ljava/lang/String;)V

    return-void

    :cond_46
    :goto_46
    invoke-direct {p0}, Lcom/c/a/c;->j()V

    return-void

    :cond_4a
    const-string p1, "access_token"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/c/a/c;->b:Ljava/lang/String;

    const-string p1, "onComplete"

    iget-object p2, p0, Lcom/c/a/c;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/c/a/c;->b:Ljava/lang/String;

    if-eqz p1, :cond_6d

    iget-object p1, p0, Lcom/c/a/c;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/c/a/c;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/c/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/c/a/c;->d:Z

    iget-object p1, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/c/a/c;->a(Landroid/content/Context;)V

    return-void

    :cond_6d
    const-string p1, "cancel"

    invoke-direct {p0, p1}, Lcom/c/a/c;->e(Ljava/lang/String;)V

    return-void

    :cond_73
    if-nez p1, :cond_7a

    const-string p1, "cancel"

    invoke-direct {p0, p1}, Lcom/c/a/c;->e(Ljava/lang/String;)V

    :cond_7a
    return-void
.end method

.method static synthetic a(Lcom/c/a/c;)V
    .registers 2

    const-string v0, "cancel"

    invoke-direct {p0, v0}, Lcom/c/a/c;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Lcom/c/a/c;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/c/a/c;->b:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a(Lcom/c/a/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/c/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/c/b/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/b<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const-string v0, "https://graph.facebook.com/me"

    new-instance v1, Lcom/c/a;

    iget-object v2, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/c/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p0}, Lcom/c/a;->a(Lcom/c/a/a;)Lcom/c/b;

    move-result-object v1

    check-cast v1, Lcom/c/a;

    const-class v2, Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2, p1}, Lcom/c/a;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/c/b/b;)Lcom/c/b;

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.facebook.katana"

    const-string v2, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "client_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_18

    const-string p1, "scope"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_18
    invoke-static {p0, v0}, Lcom/c/a/c;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_20

    return p2

    :cond_20
    :try_start_20
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_23
    .catch Landroid/content/ActivityNotFoundException; {:try_start_20 .. :try_end_23} :catch_24

    const/4 p2, 0x1

    :catch_24
    return p2
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_c

    return v0

    :cond_c
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x40

    :try_start_12
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_16} :catch_30

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p1, p0

    const/4 v1, 0x0

    :goto_1a
    if-lt v1, p1, :cond_1d

    return v0

    :cond_1d
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :catch_30
    return v0
.end method

.method private b(I)Lcom/c/a/c;
    .registers 3

    iget-object v0, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/c/a/c;->h:Ljava/lang/String;

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "aq.fb.token"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Lcom/c/a/c;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/c/a/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/c/b/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/b<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const-string v0, "https://graph.facebook.com/me"

    new-instance v1, Lcom/c/a;

    iget-object v2, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/c/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p0}, Lcom/c/a;->a(Lcom/c/a/a;)Lcom/c/b;

    move-result-object v1

    check-cast v1, Lcom/c/a;

    const-class v2, Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2, p1}, Lcom/c/a;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/c/b/b;)Lcom/c/b;

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    const-string v2, "[,\\s]+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string p1, "[,\\s]+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    :goto_1e
    array-length v3, p0

    if-lt p1, v3, :cond_22

    return v0

    :cond_22
    aget-object v3, p0, p1

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string p0, "perm mismatch"

    invoke-static {p0}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    return v1

    :cond_30
    add-int/lit8 p1, p1, 0x1

    goto :goto_1e
.end method

.method static c(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/c/a/c;->g(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/c;->g(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_18
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method private static synthetic c(Lcom/c/a/c;)V
    .registers 1

    invoke-virtual {p0}, Lcom/c/a/c;->d()V

    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/c/a/c;
    .registers 2

    iput-object p1, p0, Lcom/c/a/c;->h:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic d(Lcom/c/a/c;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/c/a/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic e(Lcom/c/a/c;)V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/c;->d:Z

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lcom/c/a/c;->d()V

    const/16 v0, -0x66

    invoke-virtual {p0, v0, p1}, Lcom/c/a/c;->a(ILjava/lang/String;)V

    return-void
.end method

.method private static synthetic f(Lcom/c/a/c;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x23

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "access_token"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "token"

    invoke-static {v0, p0}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static g(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_26

    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-lt v3, v1, :cond_13

    return-object v0

    :cond_13
    aget-object v4, p0, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_26
    return-object v0
.end method

.method private g()V
    .registers 2

    iget-object v0, p0, Lcom/c/a/c;->g:Lcom/c/c;

    if-eqz v0, :cond_e

    :try_start_4
    iget-object v0, p0, Lcom/c/a/c;->g:Lcom/c/c;

    invoke-virtual {v0}, Lcom/c/c;->hide()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    :cond_e
    return-void
.end method

.method private static synthetic g(Lcom/c/a/c;)V
    .registers 1

    invoke-virtual {p0}, Lcom/c/a/c;->e()V

    return-void
.end method

.method private static synthetic h(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 1

    invoke-static {p0}, Lcom/c/a/c;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private h()V
    .registers 2

    const-string v0, "cancel"

    invoke-direct {p0, v0}, Lcom/c/a/c;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic i(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x23

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "access_token"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "token"

    invoke-static {v0, p0}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private i()Z
    .registers 5

    iget-boolean v0, p0, Lcom/c/a/c;->l:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/c/a/c;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/c/a/c;->c:Ljava/lang/String;

    iget v3, p0, Lcom/c/a/c;->m:I

    invoke-static {v0, v1, v2, v3}, Lcom/c/a/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private j()V
    .registers 5

    const-string v0, "web auth"

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_id"

    iget-object v2, p0, Lcom/c/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "user_agent"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/c/a/c;->c:Ljava/lang/String;

    if-eqz v1, :cond_23

    const-string v1, "scope"

    iget-object v2, p0, Lcom/c/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    const-string v1, "redirect_uri"

    const-string v2, "https://www.facebook.com/connect/login_success.html"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://graph.facebook.com/oauth/authorize?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/c/a/c;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/c/a/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/c/a/c$a;-><init>(Lcom/c/a/c;B)V

    new-instance v2, Lcom/c/c;

    iget-object v3, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    invoke-direct {v2, v3, v0, v1}, Lcom/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebViewClient;)V

    iput-object v2, p0, Lcom/c/a/c;->g:Lcom/c/c;

    iget-object v0, p0, Lcom/c/a/c;->g:Lcom/c/c;

    iget-object v2, p0, Lcom/c/a/c;->h:Ljava/lang/String;

    iput-object v2, v0, Lcom/c/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/c/a/c;->g:Lcom/c/c;

    invoke-virtual {v0, v1}, Lcom/c/c;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0}, Lcom/c/a/c;->e()V

    iget-boolean v0, p0, Lcom/c/a/c;->d:Z

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/c/a/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_74

    :cond_61
    const-string v0, "auth hide"

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/c/a/c;->g:Lcom/c/c;

    if-eqz v0, :cond_74

    :try_start_6a
    iget-object v0, p0, Lcom/c/a/c;->g:Lcom/c/c;

    invoke-virtual {v0}, Lcom/c/c;->hide()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6f} :catch_70

    goto :goto_74

    :catch_70
    move-exception v0

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/c/a/c;->g:Lcom/c/c;

    invoke-virtual {v0}, Lcom/c/c;->a()V

    const-string v0, "auth started"

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private k()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aq.fb.token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aq.fb.permission"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m()Z
    .registers 4

    sget-object v0, Lcom/c/a/c;->p:Ljava/lang/Boolean;

    if-nez v0, :cond_1c

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.facebook.katana"

    const-string v2, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/c/a/c;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/c/a/c;->p:Ljava/lang/Boolean;

    :cond_1c
    sget-object v0, Lcom/c/a/c;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static n()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "?"

    :goto_14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "&"

    goto :goto_14

    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "access_token="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/c/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aq.fb.token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "aq.fb.permission"

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/c/d/a;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcom/c/a/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/c/b/a;Lcom/c/b/c;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/a<",
            "**>;",
            "Lcom/c/b/c;",
            ")Z"
        }
    .end annotation

    iget v0, p2, Lcom/c/b/c;->i:I

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_8

    return v1

    :cond_8
    iget-object p2, p2, Lcom/c/b/c;->w:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz p2, :cond_1b

    const-string v3, "OAuthException"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1b

    const-string p1, "fb token expired"

    invoke-static {p1}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    return v2

    :cond_1b
    iget-object p1, p1, Lcom/c/b/a;->c:Ljava/lang/String;

    const/16 p2, 0x190

    if-ne v0, p2, :cond_3a

    const-string v3, "/likes"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "/comments"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "/checkins"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    :cond_39
    return v1

    :cond_3a
    const/16 v3, 0x193

    if-ne v0, v3, :cond_4f

    const-string v4, "/feed"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-string v4, "method=delete"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4f

    :cond_4e
    return v1

    :cond_4f
    if-eq v0, p2, :cond_58

    const/16 p1, 0x191

    if-eq v0, p1, :cond_58

    if-eq v0, v3, :cond_58

    return v1

    :cond_58
    return v2
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/c/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final b()V
    .registers 5

    iget-object v0, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-boolean v0, p0, Lcom/c/a/c;->l:Z

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_1b

    :cond_f
    iget-object v0, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/c/a/c;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/c/a/c;->c:Ljava/lang/String;

    iget v3, p0, Lcom/c/a/c;->m:I

    invoke-static {v0, v1, v2, v3}, Lcom/c/a/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    :goto_1b
    const-string v1, "authing"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/c/a/c;->j()V

    :cond_29
    return-void
.end method

.method public final b(Lcom/c/b/a;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/a<",
            "**>;)Z"
        }
    .end annotation

    const-string v0, "reauth requested"

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/c;->b:Ljava/lang/String;

    new-instance v0, Lcom/c/a/c$1;

    invoke-direct {v0, p0, p1}, Lcom/c/a/c$1;-><init>(Lcom/c/a/c;Lcom/c/b/a;)V

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final c()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-virtual {p0, v0, v0}, Lcom/c/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final d()V
    .registers 3

    iget-object v0, p0, Lcom/c/a/c;->g:Lcom/c/c;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/c/a;

    iget-object v1, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/c/a;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/c/a/c;->g:Lcom/c/c;

    invoke-virtual {v0, v1}, Lcom/c/a;->b(Landroid/app/Dialog;)Lcom/c/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/c;->g:Lcom/c/c;

    :cond_13
    return-void
.end method

.method final e()V
    .registers 3

    iget-object v0, p0, Lcom/c/a/c;->g:Lcom/c/c;

    if-eqz v0, :cond_10

    new-instance v0, Lcom/c/a;

    iget-object v1, p0, Lcom/c/a/c;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/c/a;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/c/a/c;->g:Lcom/c/c;

    invoke-virtual {v0, v1}, Lcom/c/a;->a(Landroid/app/Dialog;)Lcom/c/b;

    :cond_10
    return-void
.end method
