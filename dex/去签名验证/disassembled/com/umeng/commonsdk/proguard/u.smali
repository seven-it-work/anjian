.class public Lcom/umeng/commonsdk/proguard/u;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "239.192.152.163"

.field private static b:I = 0xbea9


# instance fields
.field private c:Landroid/net/wifi/WifiManager$MulticastLock;

.field private d:Landroid/net/wifi/WifiManager;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_15

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/u;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/u;->d:Landroid/net/wifi/WifiManager;

    :cond_15
    return-void
.end method

.method private a()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/u;->d:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/u;->d:Landroid/net/wifi/WifiManager;

    const-string v1, "multicast.test"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/u;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/u;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/u;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigure;->getUMIDString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/u;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/umeng/commonsdk/proguard/u;->a:Ljava/lang/String;

    sget v1, Lcom/umeng/commonsdk/proguard/u;->b:I

    invoke-static {p0, v0, v1, p1}, Lcom/umeng/commonsdk/proguard/u;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/umeng/commonsdk/proguard/u;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/proguard/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/u;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/u;->a()V

    const/4 v0, 0x0

    :try_start_4
    new-instance v1, Ljava/net/MulticastSocket;

    invoke-direct {v1, p2}, Ljava/net/MulticastSocket;-><init>(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_45
    .catchall {:try_start_4 .. :try_end_9} :catchall_42

    :try_start_9
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->setLoopbackMode(Z)V

    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    array-length p3, p3

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {v0, v2, p3, p1, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_29} :catch_3f
    .catchall {:try_start_9 .. :try_end_29} :catchall_3d

    :try_start_29
    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_33

    :catch_2d
    move-exception p1

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/u;->e:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_33
    :try_start_33
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/u;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/u;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3c} :catch_3c

    :catch_3c
    :cond_3c
    return-void

    :catchall_3d
    move-exception p1

    goto :goto_61

    :catch_3f
    move-exception p1

    move-object v0, v1

    goto :goto_46

    :catchall_42
    move-exception p1

    move-object v1, v0

    goto :goto_61

    :catch_45
    move-exception p1

    :goto_46
    :try_start_46
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/u;->e:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_42

    if-eqz v0, :cond_57

    :try_start_4d
    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_57

    :catch_51
    move-exception p1

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/u;->e:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_57
    :goto_57
    :try_start_57
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/u;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/u;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_60} :catch_60

    :catch_60
    :cond_60
    return-void

    :goto_61
    if-eqz v1, :cond_6d

    :try_start_63
    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_6d

    :catch_67
    move-exception p2

    iget-object p3, p0, Lcom/umeng/commonsdk/proguard/u;->e:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_6d
    :goto_6d
    :try_start_6d
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/u;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz p2, :cond_76

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/u;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_76} :catch_76

    :catch_76
    :cond_76
    throw p1
.end method
