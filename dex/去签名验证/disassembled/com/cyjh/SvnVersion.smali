.class public Lcom/cyjh/SvnVersion;
.super Ljava/lang/Object;


# static fields
.field public static svn_version_anjian_vip:J = 0x67dL


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


# virtual methods
.method public getAnjianVipSvnVersion()Ljava/lang/String;
    .registers 3

    sget-wide v0, Lcom/cyjh/SvnVersion;->svn_version_anjian_vip:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
