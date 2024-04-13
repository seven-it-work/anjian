.class public Lcom/cyjh/elfin/ui/activity/SplashActivity;
.super Lcom/cyjh/common/base/activity/BaseModelActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/SplashActivity$a;,
        Lcom/cyjh/elfin/ui/activity/SplashActivity$b;,
        Lcom/cyjh/elfin/ui/activity/SplashActivity$d;,
        Lcom/cyjh/elfin/ui/activity/SplashActivity$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cyjh/common/base/activity/BaseModelActivity<",
        "Lcom/cyjh/elfin/ui/model/SplashModel;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final c:I = 0x8

.field private static final f:Ljava/lang/String; = "SplashActivity"

.field private static final h:I = 0x1


# instance fields
.field d:I

.field e:Lcom/cyjh/elfin/ui/activity/SplashActivity$a;

.field private g:[Ljava/lang/String;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/elfin/ad/e/b;

.field private n:Lcom/elfin/ad/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/elfin/ad/c/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 14

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;-><init>()V

    const-string v0, "android.permission.INTERNET"

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v4, "android.permission.CALL_PHONE"

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    const-string v6, "android.permission.ACCESS_WIFI_STATE"

    const-string v7, "android.permission.SEND_SMS"

    const-string v8, "android.permission.READ_SMS"

    const-string v9, "android.permission.READ_CONTACTS"

    const-string v10, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v11, "android.permission.ACCESS_FINE_LOCATION"

    const-string v12, "android.permission.CAMERA"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->g:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->d:I

    new-instance v0, Lcom/cyjh/elfin/ui/activity/SplashActivity$3;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity$3;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->n:Lcom/elfin/ad/c/a;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ping -c 3 -w 100 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_39

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2f

    :cond_39
    if-nez v1, :cond_3e

    const-string p0, "success"

    return-object p0

    :cond_3e
    const-string p0, "faild"
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_40} :catch_46
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_40} :catch_41

    return-object p0

    :catch_41
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4a

    :catch_46
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4a
    move-object p0, v0

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/cyjh/elfin/ui/a/b;->a()Lcom/cyjh/elfin/ui/a/b;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/SplashActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/activity/SplashActivity$b;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;B)V

    const v2, 0x7f040058

    invoke-static {p0, v2}, Lcom/cyjh/elfin/ui/a/b;->a(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    const v1, 0x7f100153

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f100163

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cyjh/elfin/ui/b/a;->b:Landroid/app/AlertDialog;

    iput p1, v0, Lcom/cyjh/elfin/ui/b/a;->c:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .registers 8

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/cyjh/elfin/base/AppContext;->c:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_14
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_21

    const/4 v1, 0x1

    goto :goto_3c

    :cond_21
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "zzz"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "notHasBlueTooth:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_3c
    const/4 v3, 0x0

    if-nez v1, :cond_152

    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    if-eqz v1, :cond_58

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_52

    const/4 v1, 0x1

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :goto_53
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_5c

    :cond_58
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_5c
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_152

    const-string v1, "tel:123456"

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_81

    const/4 v1, 0x1

    goto :goto_82

    :cond_81
    const/4 v1, 0x0

    :goto_82
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v5, "generic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "vbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "test-keys"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "google_sdk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "Emulator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string v5, "unknown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "Android SDK built for x86"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "Genymotion"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v5, "generic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f8

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "generic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11f

    :cond_f8
    const-string v4, "google_sdk"

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11f

    const-string v4, "android"

    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11f

    if-nez v1, :cond_11d

    goto :goto_11f

    :cond_11d
    const/4 v1, 0x0

    goto :goto_120

    :cond_11f
    :goto_11f
    const/4 v1, 0x1

    :goto_120
    if-nez v1, :cond_152

    invoke-static {}, Lcom/cyjh/common/util/j;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "zzz"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "EmulatorUtils--checkIsNotRealPhone--"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "intel"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14c

    const-string v4, "amd"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14a

    goto :goto_14c

    :cond_14a
    const/4 v1, 0x0

    goto :goto_14d

    :cond_14c
    :goto_14c
    const/4 v1, 0x1

    :goto_14d
    if-eqz v1, :cond_150

    goto :goto_152

    :cond_150
    const/4 v1, 0x0

    goto :goto_153

    :cond_152
    :goto_152
    const/4 v1, 0x1

    :goto_153
    iput-boolean v1, v0, Lcom/cyjh/elfin/base/AppContext;->h:Z

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16c

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iput-boolean v2, v0, Lcom/cyjh/elfin/base/AppContext;->m:Z

    goto :goto_17c

    :cond_16c
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "sIsBooted"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/cyjh/elfin/base/AppContext;->m:Z

    :goto_17c
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/model/SplashModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18e

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/model/SplashModel;->a()V

    goto :goto_199

    :cond_18e
    iget-object v0, v0, Lcom/cyjh/elfin/ui/model/SplashModel;->i:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/elfin/ui/model/SplashModel$a;

    const/4 v4, -0x1

    invoke-direct {v1, v4}, Lcom/cyjh/elfin/ui/model/SplashModel$a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_199
    invoke-static {v2}, Lcom/cyjh/elfin/e/c/k;->a(I)V

    new-instance v0, Lcom/cyjh/elfin/ui/activity/SplashActivity$c;

    invoke-direct {v0, p0, v3}, Lcom/cyjh/elfin/ui/activity/SplashActivity$c;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;B)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/elfin/ui/activity/SplashActivity$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/activity/SplashActivity;Ljava/lang/String;)V
    .registers 4

    const-string v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/cyjh/common/util/q;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/i;->c:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->i:Landroid/widget/ImageView;

    invoke-static {p0, p1, v1, v0}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/g;)V

    goto :goto_25

    :cond_17
    invoke-static {}, Lcom/cyjh/common/util/q;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/i;->b:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->i:Landroid/widget/ImageView;

    invoke-static {p0, p1, v1, v0}, Lcom/cyjh/common/util/q;->b(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/g;)V

    :goto_25
    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->m:Lcom/elfin/ad/e/b;

    invoke-virtual {p0}, Lcom/elfin/ad/e/b;->b()V

    return-void
.end method

.method private synthetic a(Lcom/cyjh/elfin/ui/model/SplashModel$a;)V
    .registers 6

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    const v0, 0x7f09012b

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;I)V

    return-void

    :cond_d
    iget v0, p1, Lcom/cyjh/elfin/ui/model/SplashModel$a;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_86

    return-void

    :pswitch_14
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->f()V

    return-void

    :pswitch_18
    iget v0, p1, Lcom/cyjh/elfin/ui/model/SplashModel$a;->c:I

    iget-object p1, p1, Lcom/cyjh/elfin/ui/model/SplashModel$a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/ui/a/b;->a()Lcom/cyjh/elfin/ui/a/b;

    new-instance v2, Lcom/cyjh/elfin/ui/activity/SplashActivity$b;

    invoke-direct {v2, p0, v1}, Lcom/cyjh/elfin/ui/activity/SplashActivity$b;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;B)V

    const v3, 0x7f040058

    invoke-static {p0, v3}, Lcom/cyjh/elfin/ui/a/b;->a(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    const v1, 0x7f100153

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f100163

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/cyjh/elfin/ui/b/a;->b:Landroid/app/AlertDialog;

    iput v0, v2, Lcom/cyjh/elfin/ui/b/a;->c:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_4e
    invoke-static {}, Lcom/cyjh/elfin/ui/a/b;->a()Lcom/cyjh/elfin/ui/a/b;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    const v0, 0x7f040052

    invoke-static {p1, v0}, Lcom/cyjh/elfin/ui/a/b;->a(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const v0, 0x7f100154

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f100155

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Lcom/cyjh/elfin/ui/activity/SplashActivity$d;

    invoke-direct {v3, p0, p1, v1}, Lcom/cyjh/elfin/ui/activity/SplashActivity$d;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;Landroid/app/AlertDialog;B)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/cyjh/elfin/ui/activity/SplashActivity$1;

    invoke-direct {p1, p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_86
    .packed-switch -0x1
        :pswitch_4e
        :pswitch_18
        :pswitch_14
    .end packed-switch
.end method

.method private synthetic a(Lcom/cyjh/http/bean/response/PhoneConfig;)V
    .registers 2

    if-eqz p1, :cond_8

    invoke-static {p0, p1}, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->a(Landroid/content/Context;Lcom/cyjh/http/bean/response/PhoneConfig;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->finish()V

    :cond_8
    return-void
.end method

.method static synthetic b(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    const-string v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/cyjh/common/util/q;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/i;->c:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->i:Landroid/widget/ImageView;

    invoke-static {p0, p1, v1, v0}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/g;)V

    goto :goto_25

    :cond_17
    invoke-static {}, Lcom/cyjh/common/util/q;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/i;->b:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->i:Landroid/widget/ImageView;

    invoke-static {p0, p1, v1, v0}, Lcom/cyjh/common/util/q;->b(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/g;)V

    :goto_25
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->m:Lcom/elfin/ad/e/b;

    invoke-virtual {p1}, Lcom/elfin/ad/e/b;->b()V

    return-void
.end method

.method static synthetic c(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/arch/lifecycle/AndroidViewModel;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    return-object p0
.end method

.method static synthetic f(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/arch/lifecycle/AndroidViewModel;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    return-object p0
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->e:Lcom/cyjh/elfin/ui/activity/SplashActivity$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->e:Lcom/cyjh/elfin/ui/activity/SplashActivity$a;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity$a;->cancel()V

    iput v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->e:Lcom/cyjh/elfin/ui/activity/SplashActivity$a;

    :cond_f
    new-instance v0, Lcom/cyjh/elfin/ui/activity/SplashActivity$a;

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/activity/SplashActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;B)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->e:Lcom/cyjh/elfin/ui/activity/SplashActivity$a;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->e:Lcom/cyjh/elfin/ui/activity/SplashActivity$a;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity$a;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic g(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .registers 1

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->f()V

    return-void
.end method

.method static synthetic h(Lcom/cyjh/elfin/ui/activity/SplashActivity;)I
    .registers 3

    iget v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->d:I

    return v0
.end method

.method private h()V
    .registers 6

    invoke-static {}, Lcom/cyjh/elfin/ui/a/b;->a()Lcom/cyjh/elfin/ui/a/b;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f040052

    invoke-static {v0, v1}, Lcom/cyjh/elfin/ui/a/b;->a(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const v2, 0x7f100154

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f100155

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Lcom/cyjh/elfin/ui/activity/SplashActivity$d;

    invoke-direct {v4, p0, v0, v1}, Lcom/cyjh/elfin/ui/activity/SplashActivity$d;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;Landroid/app/AlertDialog;B)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/cyjh/elfin/ui/activity/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity$1;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private i()V
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->g:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_1a

    aget-object v5, v1, v4

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->j()V

    return-void

    :cond_24
    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic i(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->finish()V

    return-void
.end method

.method private j()V
    .registers 3

    invoke-static {}, Lcom/elfin/engin/a/c$a;->a()Lcom/elfin/engin/a/c;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/SplashActivity$2;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity$2;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    invoke-virtual {v0, v1}, Lcom/elfin/engin/a/c;->a(Lcom/cyjh/common/f/a;)V

    return-void
.end method

.method private k()V
    .registers 8

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/cyjh/elfin/base/AppContext;->c:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_14
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_21

    const/4 v1, 0x1

    goto :goto_3c

    :cond_21
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "zzz"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "notHasBlueTooth:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_3c
    const/4 v3, 0x0

    if-nez v1, :cond_152

    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    if-eqz v1, :cond_58

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_52

    const/4 v1, 0x1

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :goto_53
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_5c

    :cond_58
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_5c
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_152

    const-string v1, "tel:123456"

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_81

    const/4 v1, 0x1

    goto :goto_82

    :cond_81
    const/4 v1, 0x0

    :goto_82
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v5, "generic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "vbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "test-keys"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "google_sdk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "Emulator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string v5, "unknown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "Android SDK built for x86"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "Genymotion"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11f

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v5, "generic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f8

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "generic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11f

    :cond_f8
    const-string v4, "google_sdk"

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11f

    const-string v4, "android"

    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11f

    if-nez v1, :cond_11d

    goto :goto_11f

    :cond_11d
    const/4 v1, 0x0

    goto :goto_120

    :cond_11f
    :goto_11f
    const/4 v1, 0x1

    :goto_120
    if-nez v1, :cond_152

    invoke-static {}, Lcom/cyjh/common/util/j;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "zzz"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "EmulatorUtils--checkIsNotRealPhone--"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "intel"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14c

    const-string v4, "amd"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14a

    goto :goto_14c

    :cond_14a
    const/4 v1, 0x0

    goto :goto_14d

    :cond_14c
    :goto_14c
    const/4 v1, 0x1

    :goto_14d
    if-eqz v1, :cond_150

    goto :goto_152

    :cond_150
    const/4 v1, 0x0

    goto :goto_153

    :cond_152
    :goto_152
    const/4 v1, 0x1

    :goto_153
    iput-boolean v1, v0, Lcom/cyjh/elfin/base/AppContext;->h:Z

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16c

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iput-boolean v2, v0, Lcom/cyjh/elfin/base/AppContext;->m:Z

    goto :goto_17c

    :cond_16c
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "sIsBooted"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/cyjh/elfin/base/AppContext;->m:Z

    :goto_17c
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/model/SplashModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18e

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/model/SplashModel;->a()V

    goto :goto_199

    :cond_18e
    iget-object v0, v0, Lcom/cyjh/elfin/ui/model/SplashModel;->i:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/elfin/ui/model/SplashModel$a;

    const/4 v4, -0x1

    invoke-direct {v1, v4}, Lcom/cyjh/elfin/ui/model/SplashModel$a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_199
    invoke-static {v2}, Lcom/cyjh/elfin/e/c/k;->a(I)V

    new-instance v0, Lcom/cyjh/elfin/ui/activity/SplashActivity$c;

    invoke-direct {v0, p0, v3}, Lcom/cyjh/elfin/ui/activity/SplashActivity$c;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;B)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/elfin/ui/activity/SplashActivity$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private l()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/model/SplashModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/model/SplashModel;->a()V

    goto :goto_1d

    :cond_12
    iget-object v0, v0, Lcom/cyjh/elfin/ui/model/SplashModel;->i:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/elfin/ui/model/SplashModel$a;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/cyjh/elfin/ui/model/SplashModel$a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_1d
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cyjh/elfin/e/c/k;->a(I)V

    return-void
.end method

.method private m()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->finish()V

    return-void
.end method

.method private n()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->m:Lcom/elfin/ad/e/b;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->n:Lcom/elfin/ad/c/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/elfin/ad/e/b;->a(ILcom/elfin/ad/c/a;)V

    return-void
.end method

.method private o()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->e:Lcom/cyjh/elfin/ui/activity/SplashActivity$a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->e:Lcom/cyjh/elfin/ui/activity/SplashActivity$a;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity$a;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->e:Lcom/cyjh/elfin/ui/activity/SplashActivity$a;

    :cond_f
    return-void
.end method


# virtual methods
.method protected final b()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/cyjh/elfin/ui/model/SplashModel;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/cyjh/elfin/ui/model/SplashModel;

    return-object v0
.end method

.method protected final c()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/SplashModel;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/model/SplashModel;->i:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/c;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/c;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->b:Landroid/arch/lifecycle/AndroidViewModel;

    check-cast v0, Lcom/cyjh/elfin/ui/model/SplashModel;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/model/SplashModel;->j:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/d;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/d;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    new-instance v0, Lcom/elfin/ad/e/b;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->i:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1}, Lcom/elfin/ad/e/b;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->m:Lcom/elfin/ad/e/b;

    return-void
.end method

.method protected final d()V
    .registers 2

    const v0, 0x7f1001a2

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->i:Landroid/widget/ImageView;

    const v0, 0x7f1001a3

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f100100

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f100117

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->l:Landroid/widget/TextView;

    return-void
.end method

.method protected final e()I
    .registers 2

    const v0, 0x7f04002e

    return v0
.end method

.method final f()V
    .registers 4

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elfin/ad/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->m:Lcom/elfin/ad/e/b;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->n:Lcom/elfin/ad/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/elfin/ad/e/b;->a(ILcom/elfin/ad/c/a;)V

    return-void

    :cond_13
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f100117

    if-eq p1, v0, :cond_15

    const v0, 0x7f1001a2

    if-eq p1, v0, :cond_f

    return-void

    :cond_f
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->m:Lcom/elfin/ad/e/b;

    invoke-virtual {p1}, Lcom/elfin/ad/e/b;->c()V

    return-void

    :cond_15
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->m:Lcom/elfin/ad/e/b;

    iget v0, p1, Lcom/elfin/ad/e/b;->d:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_20

    invoke-virtual {p1}, Lcom/elfin/ad/e/b;->c()V

    return-void

    :cond_20
    iget-object p1, p1, Lcom/elfin/ad/e/b;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/elfin/ad/e/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->finish()V

    return-void

    :cond_d
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_44

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->g:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v1, :cond_2d

    aget-object v4, v0, v3

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_2d
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->j()V

    return-void

    :cond_37
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_44
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->j()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->m:Lcom/elfin/ad/e/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->m:Lcom/elfin/ad/e/b;

    invoke-virtual {v0}, Lcom/elfin/ad/e/b;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->m:Lcom/elfin/ad/e/b;

    :cond_f
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 8
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    array-length p1, p3

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_8
    if-ge v0, p1, :cond_13

    aget v2, p3, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    const/4 v1, 0x0

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_13
    if-eqz v1, :cond_19

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->j()V

    return-void

    :cond_19
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const-string p2, "\u83b7\u53d6\u6743\u9650\u5931\u8d25"

    invoke-static {p1, p2}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onResume()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->m:Lcom/elfin/ad/e/b;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->m:Lcom/elfin/ad/e/b;

    iget-boolean v1, v0, Lcom/elfin/ad/e/b;->a:Z

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/elfin/ad/e/b;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/elfin/ad/e/b;->a(Landroid/app/Activity;)V

    :cond_12
    return-void
.end method
