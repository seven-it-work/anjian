.class public final Lcom/cyjh/mobileanjian/ipc/a;
.super Ljava/lang/Object;


# static fields
.field public static final c:Ljava/lang/String; = "NO NETWORK"

.field public static final d:Ljava/lang/String; = "WiFi"

.field public static final e:Ljava/lang/String; = "2G"

.field public static final f:Ljava/lang/String; = "3G"

.field public static final g:Ljava/lang/String; = "4G"

.field private static k:Landroid/media/MediaPlayer;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/ime/input/a;

.field private h:Landroid/os/PowerManager$WakeLock;

.field private i:Landroid/os/PowerManager$WakeLock;

.field private j:Landroid/app/KeyguardManager$KeyguardLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/a;->k:Landroid/media/MediaPlayer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string v0, "fzcyjh"

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a;->h:Landroid/os/PowerManager$WakeLock;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a;->h:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-static {}, Lcom/ime/input/a;->a()Lcom/ime/input/a;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a;->b:Lcom/ime/input/a;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    const-string v0, "unlock"

    invoke-virtual {p1, v0}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a;->j:Landroid/app/KeyguardManager$KeyguardLock;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string v0, "lock_unlock_screen"

    const v1, 0x10000006

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a;->i:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Z)V
    .registers 4

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/a;->k:Landroid/media/MediaPlayer;

    if-nez v0, :cond_b

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/a;->k:Landroid/media/MediaPlayer;

    :cond_b
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/a;->f()V

    :try_start_e
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/a;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/a;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    sget-object p0, Lcom/cyjh/mobileanjian/ipc/a;->k:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object p0, Lcom/cyjh/mobileanjian/ipc/a;->k:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    sget-object p0, Lcom/cyjh/mobileanjian/ipc/a;->k:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    const/4 p0, 0x0

    sput-object p0, Lcom/cyjh/mobileanjian/ipc/a;->k:Landroid/media/MediaPlayer;

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->b:Lcom/ime/input/a;

    iget-object v1, v0, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    if-eqz v1, :cond_15

    iget-object v0, v0, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_15
    return-void
.end method

.method public static f()V
    .registers 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/a;->k:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/a;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/a;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_11
    return-void
.end method

.method private static f(I)V
    .registers 4

    if-lez p0, :cond_17

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/d;->a()Lcom/cyjh/mobileanjian/ipc/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kill "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/d;->a(Ljava/lang/String;)Z

    :cond_17
    return-void
.end method

.method private l()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "fzcyjh"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->h:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->h:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method private m()Z
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    :try_start_a
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_e} :catch_f

    return v0

    :catch_f
    const/4 v0, 0x0

    return v0
.end method

.method private n()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2b
    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method

.method public final a(I)V
    .registers 5

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/a;->m()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a;->a()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_17
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    return v0

    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_3c

    if-nez v1, :cond_1d

    return v0

    :cond_1d
    const/high16 v0, 0x10200000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "runApp("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") OK."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1

    :catch_3c
    :cond_3c
    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cyjh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_58

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_3f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "com.cyjh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_43

    move-object v0, v2

    :cond_58
    return-object v0
.end method

.method public final b(I)V
    .registers 2

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a;->h:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_11
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    return v0

    :cond_10
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-lez v0, :cond_4f

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/d;->a()Lcom/cyjh/mobileanjian/ipc/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "kill "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/d;->a(Ljava/lang/String;)Z

    :cond_4f
    const/4 v0, 0x1

    goto :goto_22

    :cond_51
    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, ""

    return-object v0

    :cond_13
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1e

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_1e
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    :goto_22
    move-object v0, v1

    if-eqz v0, :cond_2d

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    :cond_2d
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a;->c()Ljava/lang/String;

    move-result-object v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_33

    move-object v0, v1

    goto :goto_37

    :catch_33
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_37
    :goto_37
    if-eqz v0, :cond_43

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    goto :goto_43

    :cond_42
    return-object v0

    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object p1

    :catch_e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public final d(I)V
    .registers 8

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    mul-int/lit16 p1, p1, 0xff

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-int p1, v2

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final e()V
    .registers 9

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_43

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_43

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_40

    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0xc8

    if-le v6, v7, :cond_40

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v6, 0x0

    :goto_35
    array-length v7, v5

    if-ge v6, v7, :cond_40

    aget-object v7, v5, v6

    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_43
    return-void
.end method

.method public final e(I)V
    .registers 10

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    mul-int v2, v2, p1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    mul-int v2, v2, p1

    int-to-double v6, v2

    div-double/2addr v6, v4

    double-to-int v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    mul-int v2, v2, p1

    int-to-double v6, v2

    div-double/2addr v6, v4

    double-to-int v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    mul-int v2, v2, p1

    int-to-double v6, v2

    div-double/2addr v6, v4

    double-to-int v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    mul-int v2, v2, p1

    int-to-double v6, v2

    div-double/2addr v6, v4

    double-to-int v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    mul-int v2, v2, p1

    int-to-double v6, v2

    div-double/2addr v6, v4

    double-to-int v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    mul-int p1, p1, v1

    int-to-double v1, p1

    div-double/2addr v1, v4

    double-to-int p1, v1

    invoke-virtual {v0, v3, p1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public final g()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->j:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    return-void
.end method

.method public final h()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->j:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public final i()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_f

    const-string v0, "NO NETWORK"

    return-object v0

    :cond_f
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_7f

    :cond_1c
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-eqz v2, :cond_34

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_31

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_34

    :cond_31
    const-string v0, "WiFi"

    return-object v0

    :cond_34
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_7c

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_4d

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_7c

    :cond_4d
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_82

    const-string v1, "TD-SCDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_79

    const-string v1, "WCDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_79

    const-string v1, "CDMA2000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    goto :goto_79

    :pswitch_6d
    const-string v0, "4G"

    return-object v0

    :pswitch_70
    const-string v0, "3G"

    return-object v0

    :pswitch_73
    const-string v0, "2G"

    return-object v0

    :cond_76
    const-string v0, "2G"

    return-object v0

    :cond_79
    :goto_79
    const-string v0, "3G"

    return-object v0

    :cond_7c
    const-string v0, "NO NETWORK"

    return-object v0

    :cond_7f
    :goto_7f
    const-string v0, "NO NETWORK"

    return-object v0

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_73
        :pswitch_73
        :pswitch_70
        :pswitch_73
        :pswitch_70
        :pswitch_70
        :pswitch_73
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_70
        :pswitch_70
    .end packed-switch
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public final k()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.vpn.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
