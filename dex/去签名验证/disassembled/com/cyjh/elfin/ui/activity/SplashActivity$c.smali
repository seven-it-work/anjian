.class final Lcom/cyjh/elfin/ui/activity/SplashActivity$c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/SplashActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$c;->a:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/SplashActivity$c;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    return-void
.end method

.method private static varargs a()Ljava/lang/String;
    .registers 2

    const-string v0, "auth2.mobileanjian.com"

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ping"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const-string p1, "auth2.mobileanjian.com"

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ping"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
