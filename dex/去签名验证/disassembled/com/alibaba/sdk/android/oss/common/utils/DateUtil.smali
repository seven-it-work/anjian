.class public Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;
.super Ljava/lang/Object;


# static fields
.field private static final ALTERNATIVE_ISO8601_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field private static final ISO8601_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field private static final RFC822_DATE_FORMAT:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

.field private static volatile amendTimeSkewed:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized currentFixedSkewedTimeInRFC822Format()Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->getFixedSkewedTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static formatAlternativeIso8601Date(Ljava/util/Date;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->getAlternativeIso8601DateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->getIso8601DateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->getRfc822DateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAlternativeIso8601DateFormat()Ljava/text/DateFormat;
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v2, "GMT"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static getFixedSkewedTimeMillis()J
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->amendTimeSkewed:J

    add-long v4, v0, v2

    return-wide v4
.end method

.method private static getIso8601DateFormat()Ljava/text/DateFormat;
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v2, "GMT"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private static getRfc822DateFormat()Ljava/text/DateFormat;
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v2, "GMT"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->getIso8601DateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->getAlternativeIso8601DateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->getRfc822DateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized setCurrentServerTime(J)V
    .registers 7

    const-class v0, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    sub-long v3, p0, v1

    sput-wide v3, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->amendTimeSkewed:J
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method
