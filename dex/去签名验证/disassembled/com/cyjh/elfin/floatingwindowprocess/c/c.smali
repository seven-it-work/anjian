.class public final Lcom/cyjh/elfin/floatingwindowprocess/c/c;
.super Ljava/lang/Object;


# static fields
.field public static b:Z = false

.field private static final f:Ljava/lang/String; = "RunScriptManager"

.field private static final g:Lcom/cyjh/elfin/floatingwindowprocess/c/c;


# instance fields
.field public a:Lcom/cyjh/elfin/entity/Script;

.field public c:Z

.field public d:I

.field public e:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    invoke-direct {v0}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->g:Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    return-void
.end method

.method private a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->e:J

    return-void
.end method

.method public static c()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    const-string v1, "LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlDWEFJQkFBS0JnUUNWTkNFeFpsK1NaQVFOaGtSMUtYZGFmdDY0b0c4OEZqeW1QK2lLOWw1VFZ0NytWcFV3CmJKNC9obDlVWHFyRk1Rc3JBbTlkMi80Tk4zTGF6K0t0aFdPQ2pOUkRXZ01nMHhoWFJnNm5zMGhLUkZaQ0Vhc2MKTVg1aW9XMElGZi9XcUZrYVlFbk10Z25KV3JPdlBGUy9GUE5Jazg0VFpBRGZBa3R6U1JKdythTnpGd0lEQVFBQgpBb0dBSWRDWHVUOXZaNWtkUmdkcEduaVVZVUVocnd4RlNZUHNxTzBSQWZXR09UTVdCT1NRbVZIMHA0Y0hzZkptCmw1eGU0SmVEcit6ODdmZmtJdTA4ZllFZXBRNFk1ZU1OSjhUNE8zVjhNbGhxS0FwSlB5VndMTnpkMmZDWGIzdkoKamtVQzArQ0pCNjc2N2VIR29SdmxQVDJUa1VPc3NNTlByaU0wWEs0dDlpUEt6emtDUVFET0s0dTlUZTIzTTdJUQpNZjNTUVRCdHdUK1Npak9IUHg2UVNhT2Vtdkd2TzhneG0wc2EzN1IxZlRVa001WmVWemF2WjVTbkxHbllEaXRjCnh2Q3RRNkJOQWtFQXVVUGZSYVp5OXZDbXNwRTU5VGdjYnVOTnMycHVQWEdocnRaWkh4emlHaXV5aWtwVVQ1TnAKSFF3WXZSbzZYYUFzdVV1RGk5c2pLUDFrQWZkYUFWQnk4d0pCQUtxK25haFYxYjJYN3F4QytyY2FqZ1VYdXBLZQpLamFrSzZmTGxOcFI4RDd6LzhRMW5HblJReDdhWnh4b0xPeE14bGxXSzJLWUFjQ1JXNUFtb2tTY2NURUNRRzMzCjZLN2FKMEdIQlJ2WGNsU3BjczhyWXpMTlNSUjF2NmdkR1plTE9IYWFXNGNVcWNqMlVoMW8wY0psc0NGazgwY2wKbUxiS1k2dHdCUTNadWZZdnY1c0NRQ2FXbjRrRHQ5ampodVAwK1BianpjbDc1TWl4Zm5aUExTaldraHFndjBUTwpPR1c0aU94S3BERjdRMU1CaU1ja3lteml0YWIzR0J5NE93ZDNRQy93bmswPQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo="

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    const-string v1, "LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUlHZk1BMEdDU3FHU0liM0RRRUJBUVVBQTRHTkFEQ0JpUUtCZ1FEUTZhRjF5WFFNMmRTNldsNUlVa3BJQVBhZApQcHl0OHFraFdTRncwT3BtRHhUUEJPbm5GLzNWMEhVYmN1MEUreE81NDJzYkhYMVBZWkQxT1N0SEJZT2N2YzJJCnVLYTdkbC9BL3V5d0haNGZWeFNLWHJnZTNNdXZEWjZrZWZiSkVjRGFDTHVjK1RPdGo3L0hsRHBibEpFN3NSVnQKQ1l4TlFwMFQzYjNPb2t5RG53SURBUUFCCi0tLS0tRU5EIFBVQkxJQyBLRVktLS0tLQo="

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;
    .registers 1

    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->g:Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    return-object v0
.end method

.method private static g()V
    .registers 0

    return-void
.end method

.method private h()Lcom/cyjh/elfin/entity/Script;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    return-object v0
.end method

.method private i()V
    .registers 1

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->b()V

    return-void
.end method

.method private static j()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/cyjh/common/a/a;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/cyjh/common/a/a;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cyjh/common/a/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()Z
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method private l()Z
    .registers 3

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/o;->c(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 10

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    if-eqz v0, :cond_62

    const-string v0, "RunScriptManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initMQScript initScript4Run ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v2}, Lcom/cyjh/elfin/entity/Script;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getLcFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getAtcFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->e:J

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/ParamsWrap;->getScriptEncryptKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v7, 0x7f090105

    invoke-virtual {v0, v7}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v8, 0x7f09010f

    invoke-virtual {v0, v8}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "script info not exist"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .registers 19

    move-object/from16 v1, p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cyjh/elfin/base/AppContext;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/cyjh/elfin/a/b;->au:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "script.lc"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v5, "script.prop"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string v6, "script.atc"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "script.ui"

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    const-string v8, "script.uip"

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    const-string v9, "script.rtd"

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyjh/elfin/base/AppContext;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/io/File;

    const-string v10, "script.lc"

    invoke-static {v2, v10}, Lcom/cyjh/common/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    const-string v11, "script.prop"

    invoke-static {v2, v11}, Lcom/cyjh/common/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    const-string v12, "script.atc"

    invoke-static {v2, v12}, Lcom/cyjh/common/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    const-string v13, "script.ui"

    invoke-static {v2, v13}, Lcom/cyjh/common/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    const-string v14, "script.uip"

    invoke-static {v2, v14}, Lcom/cyjh/common/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;

    const-string v15, "script.rtd"

    invoke-static {v2, v15}, Lcom/cyjh/common/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/io/File;

    move-object/from16 v16, v9

    const-string v9, "script.cfg"

    invoke-static {v2, v9}, Lcom/cyjh/common/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_cc

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_cc

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_cc

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_cc

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_cc

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_ca

    goto :goto_cc

    :cond_ca
    const/4 v2, 0x0

    goto :goto_cd

    :cond_cc
    :goto_cc
    const/4 v2, 0x1

    :goto_cd
    iput-boolean v2, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    const-string v2, "RunScriptManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v3

    const-string v3, "initMQScript --> 1 isUseSdcardScript="

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    if-eqz v2, :cond_fb

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/elfin/e/c/o;->c(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_f8

    iput-boolean v3, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    goto :goto_fb

    :cond_f8
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    :cond_fb
    :goto_fb
    :try_start_fb
    iget-boolean v2, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    if-eqz v2, :cond_109

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_104
    invoke-static {v2}, Lcom/cyjh/elfin/e/c/l;->a(Ljava/io/InputStream;)Lcom/cyjh/elfin/entity/Script;

    move-result-object v2

    goto :goto_118

    :cond_109
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyjh/elfin/base/AppContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "script.prop"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_104

    :goto_118
    iput-object v2, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    iget-object v2, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    iget-boolean v3, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    if-eqz v3, :cond_123

    move-object/from16 v3, v17

    goto :goto_125

    :cond_123
    move-object/from16 v3, v16

    :goto_125
    invoke-virtual {v2, v3}, Lcom/cyjh/elfin/entity/Script;->setLcFile(Ljava/io/File;)V

    iget-object v2, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    iget-boolean v3, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    if-eqz v3, :cond_12f

    goto :goto_130

    :cond_12f
    move-object v4, v10

    :goto_130
    invoke-virtual {v2, v4}, Lcom/cyjh/elfin/entity/Script;->setPropFile(Ljava/io/File;)V

    iget-object v2, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    iget-boolean v3, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    if-eqz v3, :cond_13a

    goto :goto_13b

    :cond_13a
    move-object v5, v11

    :goto_13b
    invoke-virtual {v2, v5}, Lcom/cyjh/elfin/entity/Script;->setAtcFile(Ljava/io/File;)V

    iget-object v2, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    iget-boolean v3, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    if-eqz v3, :cond_145

    goto :goto_146

    :cond_145
    move-object v6, v12

    :goto_146
    invoke-virtual {v2, v6}, Lcom/cyjh/elfin/entity/Script;->setUiFile(Ljava/io/File;)V

    iget-object v2, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    iget-boolean v3, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    if-eqz v3, :cond_150

    move-object v13, v7

    :cond_150
    invoke-virtual {v2, v13}, Lcom/cyjh/elfin/entity/Script;->setUipFile(Ljava/io/File;)V

    iget-object v2, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    iget-boolean v3, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    if-eqz v3, :cond_15a

    move-object v14, v8

    :cond_15a
    invoke-virtual {v2, v14}, Lcom/cyjh/elfin/entity/Script;->setRtdFile(Ljava/io/File;)V

    iget-object v2, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v2, v15}, Lcom/cyjh/elfin/entity/Script;->setCfgFile(Ljava/io/File;)V

    invoke-static {}, Lcom/cyjh/common/util/af;->a()Lcom/cyjh/common/util/af;

    move-result-object v2

    iget-object v3, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cyjh/common/util/af;->a(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    if-eqz v2, :cond_187

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    sget-object v2, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->g:Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    invoke-virtual {v2}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_187
    const-string v2, "RunScriptManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initMQScript --> 3 cfgFile absolutePath = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v4}, Lcom/cyjh/elfin/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",isUseSdcardScript="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RunScriptManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initMQScript --> 4 AppId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v4}, Lcom/cyjh/elfin/entity/Script;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",Version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v4}, Lcom/cyjh/elfin/entity/Script;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RunScriptManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initMQScript --> 5 mScript="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v4}, Lcom/cyjh/elfin/entity/Script;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_1ee} :catch_1ef

    return-void

    :catch_1ef
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "RunScriptManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initMQScript --> ex= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    new-instance v1, Lcom/cyjh/http/bean/request/EngineParams;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/EngineParams;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/base/AppContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/http/bean/request/EngineParams;->PackageName:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/common/a/a;->i()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/cyjh/common/a/a;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cyjh/common/a/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_41
    iput-object v0, v1, Lcom/cyjh/http/bean/request/EngineParams;->BaseURL:Ljava/lang/String;

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/http/bean/request/EngineParams;->PayAppId:Ljava/lang/String;

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    :cond_5b
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    :cond_6b
    const/4 v0, 0x0

    goto :goto_6e

    :cond_6d
    const/4 v0, 0x1

    :goto_6e
    iput-boolean v0, v1, Lcom/cyjh/http/bean/request/EngineParams;->ScriptType:Z

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v2, 0x7f09010f

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_92

    :cond_8c
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getVersion()Ljava/lang/String;

    move-result-object v0

    :goto_92
    iput-object v0, v1, Lcom/cyjh/http/bean/request/EngineParams;->AppVersion:Ljava/lang/String;

    sget-object v0, Lcom/cyjh/common/a/a;->c:[Ljava/lang/String;

    iput-object v0, v1, Lcom/cyjh/http/bean/request/EngineParams;->authDesKeys:[Ljava/lang/String;

    invoke-static {v1}, Lcom/cyjh/common/util/r;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
