.class public Lcom/umeng/commonsdk/statistics/idtracking/t;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;


# static fields
.field private static final a:Ljava/lang/String; = "uuid"

.field private static final e:Ljava/lang/String; = "yosuid"

.field private static final f:Ljava/lang/String; = "23346339"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "uuid"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string p1, "ro.yunos.openuuid"

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->d:Ljava/lang/String;

    return-object p1

    :cond_15
    const-string p1, "ro.aliyun.clouduuid"

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_31

    const-string p1, "ro.sys.aliyun.clouduuid"

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->c:Ljava/lang/String;

    :cond_31
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_182

    const/4 p1, 0x0

    :try_start_3a
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://cmnsguider.yunos.com:443/genDeviceToken"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_47} :catch_131
    .catchall {:try_start_3a .. :try_end_47} :catchall_12b

    const/16 v1, 0x7530

    :try_start_49
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/umeng/commonsdk/statistics/idtracking/t$1;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/idtracking/t$1;-><init>(Lcom/umeng/commonsdk/statistics/idtracking/t;)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "23338940"

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FC1FE84794417B1BEF276234F6FB4E63"

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_9d} :catch_127
    .catchall {:try_start_49 .. :try_end_9d} :catchall_123

    :try_start_9d
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a7} :catch_11f
    .catchall {:try_start_9d .. :try_end_a7} :catchall_11b

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_f6

    :try_start_ab
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_af} :catch_df
    .catchall {:try_start_ab .. :try_end_af} :catchall_11b

    :try_start_af
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b9} :catch_da
    .catchall {:try_start_af .. :try_end_b9} :catchall_d1

    :try_start_b9
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_be
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c8

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_be

    :cond_c8
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->d:Ljava/lang/String;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_ce} :catch_cf
    .catchall {:try_start_b9 .. :try_end_ce} :catchall_e7

    goto :goto_f8

    :catch_cf
    move-exception p1

    goto :goto_e3

    :catchall_d1
    move-exception v3

    move-object v5, v3

    move-object v3, p1

    move-object p1, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_15e

    :catch_da
    move-exception v3

    move-object v5, v3

    move-object v3, p1

    move-object p1, v5

    goto :goto_e3

    :catch_df
    move-exception v1

    move-object v3, p1

    move-object p1, v1

    move-object v1, v3

    :goto_e3
    :try_start_e3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_ef
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_e7

    goto :goto_f8

    :catchall_e7
    move-exception p1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v0

    move-object v0, v5

    goto/16 :goto_15e

    :catch_ef
    move-exception p1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_136

    :cond_f6
    move-object v1, p1

    move-object v3, v1

    :goto_f8
    :try_start_f8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fb} :catch_fc

    goto :goto_100

    :catch_fc
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_100
    if-eqz v3, :cond_10a

    :try_start_102
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_105} :catch_106

    goto :goto_10a

    :catch_106
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10a
    :goto_10a
    if-eqz v1, :cond_114

    :try_start_10c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_10f} :catch_110

    goto :goto_114

    :catch_110
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_114
    :goto_114
    if-eqz v0, :cond_182

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_182

    :catchall_11b
    move-exception v1

    move-object v3, p1

    move-object p1, v2

    goto :goto_125

    :catch_11f
    move-exception v1

    move-object v3, p1

    move-object p1, v2

    goto :goto_129

    :catchall_123
    move-exception v1

    move-object v3, p1

    :goto_125
    move-object v2, v0

    goto :goto_12f

    :catch_127
    move-exception v1

    move-object v3, p1

    :goto_129
    move-object v2, v0

    goto :goto_135

    :catchall_12b
    move-exception v0

    move-object v2, p1

    move-object v3, v2

    move-object v1, v0

    :goto_12f
    move-object v0, v3

    goto :goto_15e

    :catch_131
    move-exception v0

    move-object v2, p1

    move-object v3, v2

    move-object v1, v0

    :goto_135
    move-object v0, v3

    :goto_136
    :try_start_136
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_139
    .catchall {:try_start_136 .. :try_end_139} :catchall_15d

    if-eqz p1, :cond_143

    :try_start_13b
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_13e} :catch_13f

    goto :goto_143

    :catch_13f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_143
    :goto_143
    if-eqz v3, :cond_14d

    :try_start_145
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_148} :catch_149

    goto :goto_14d

    :catch_149
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14d
    :goto_14d
    if-eqz v0, :cond_157

    :try_start_14f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_152} :catch_153

    goto :goto_157

    :catch_153
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_157
    :goto_157
    if-eqz v2, :cond_182

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_182

    :catchall_15d
    move-exception v1

    :goto_15e
    if-eqz p1, :cond_168

    :try_start_160
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_163} :catch_164

    goto :goto_168

    :catch_164
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_168
    :goto_168
    if-eqz v3, :cond_172

    :try_start_16a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_16d} :catch_16e

    goto :goto_172

    :catch_16e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_172
    :goto_172
    if-eqz v0, :cond_17c

    :try_start_174
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_177} :catch_178

    goto :goto_17c

    :catch_178
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_17c
    :goto_17c
    if-eqz v2, :cond_181

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_181
    throw v1

    :cond_182
    :goto_182
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->d:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "ro.yunos.version"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->b:Landroid/content/Context;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_57

    const-string v1, "yosuid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    const-string v1, "23346339"

    invoke-direct {p0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->b:Landroid/content/Context;

    if-eqz v1, :cond_4f

    if-eqz v0, :cond_4f

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_4f

    const-string v1, "yosuid"

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4f
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/t;->d:Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_53

    return-object v0

    :cond_52
    return-object v1

    :catch_53
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_57
    const/4 v0, 0x0

    return-object v0
.end method
