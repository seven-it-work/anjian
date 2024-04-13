.class final Lb/a/f/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/f/d$b;,
        Lb/a/f/d$a;
    }
.end annotation


# static fields
.field static final a:[Lb/a/f/c;

.field static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/f;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:I = 0xf

.field private static final d:I = 0x1f

.field private static final e:I = 0x3f

.field private static final f:I = 0x7f


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x3d

    new-array v0, v0, [Lb/a/f/c;

    new-instance v1, Lb/a/f/c;

    sget-object v2, Lb/a/f/c;->f:Lc/f;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lb/a/f/c;

    sget-object v3, Lb/a/f/c;->c:Lc/f;

    const-string v4, "GET"

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    sget-object v3, Lb/a/f/c;->c:Lc/f;

    const-string v4, "POST"

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    sget-object v3, Lb/a/f/c;->d:Lc/f;

    const-string v4, "/"

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    sget-object v3, Lb/a/f/c;->d:Lc/f;

    const-string v4, "/index.html"

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    sget-object v3, Lb/a/f/c;->e:Lc/f;

    const-string v4, "http"

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    sget-object v3, Lb/a/f/c;->e:Lc/f;

    const-string v4, "https"

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    sget-object v3, Lb/a/f/c;->b:Lc/f;

    const-string v4, "200"

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    sget-object v3, Lb/a/f/c;->b:Lc/f;

    const-string v4, "204"

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    sget-object v3, Lb/a/f/c;->b:Lc/f;

    const-string v4, "206"

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    sget-object v3, Lb/a/f/c;->b:Lc/f;

    const-string v4, "304"

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    sget-object v3, Lb/a/f/c;->b:Lc/f;

    const-string v4, "400"

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    sget-object v3, Lb/a/f/c;->b:Lc/f;

    const-string v4, "404"

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    sget-object v3, Lb/a/f/c;->b:Lc/f;

    const-string v4, "500"

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Lc/f;Ljava/lang/String;)V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "accept-charset"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "accept-encoding"

    const-string v4, "gzip, deflate"

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "accept-language"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "accept-ranges"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "accept"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x12

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "access-control-allow-origin"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x13

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "age"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x14

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "allow"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x15

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "authorization"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x16

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "cache-control"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x17

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "content-disposition"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x18

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "content-encoding"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x19

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "content-language"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "content-length"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "content-location"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "content-range"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "content-type"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1e

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "cookie"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "date"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x20

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "etag"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x21

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "expect"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x22

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "expires"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x23

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "from"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x24

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "host"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x25

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "if-match"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x26

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "if-modified-since"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x27

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "if-none-match"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x28

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "if-range"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x29

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "if-unmodified-since"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2a

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "last-modified"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2b

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "link"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2c

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "location"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2d

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "max-forwards"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2e

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "proxy-authenticate"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2f

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "proxy-authorization"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x30

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "range"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x31

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "referer"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x32

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "refresh"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x33

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "retry-after"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x34

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "server"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x35

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "set-cookie"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x36

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "strict-transport-security"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x37

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "transfer-encoding"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x38

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "user-agent"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x39

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "vary"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3a

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "via"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3b

    aput-object v1, v0, v3

    new-instance v1, Lb/a/f/c;

    const-string v3, "www-authenticate"

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lb/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3c

    aput-object v1, v0, v3

    sput-object v0, Lb/a/f/d;->a:[Lb/a/f/c;

    new-instance v0, Ljava/util/LinkedHashMap;

    sget-object v1, Lb/a/f/d;->a:[Lb/a/f/c;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    :goto_31f
    sget-object v1, Lb/a/f/d;->a:[Lb/a/f/c;

    array-length v1, v1

    if-ge v2, v1, :cond_340

    sget-object v1, Lb/a/f/d;->a:[Lb/a/f/c;

    aget-object v1, v1, v2

    iget-object v1, v1, Lb/a/f/c;->g:Lc/f;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33d

    sget-object v1, Lb/a/f/d;->a:[Lb/a/f/c;

    aget-object v1, v1, v2

    iget-object v1, v1, Lb/a/f/c;->g:Lc/f;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33d
    add-int/lit8 v2, v2, 0x1

    goto :goto_31f

    :cond_340
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/f/d;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lc/f;)Lc/f;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lc/f;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2e

    invoke-virtual {p0, v1}, Lc/f;->getByte(I)B

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_2b

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_2b

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PROTOCOL_ERROR response malformed: mixed case name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lc/f;->utf8()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2e
    return-object p0
.end method

.method private static a()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lc/f;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    sget-object v1, Lb/a/f/d;->a:[Lb/a/f/c;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_9
    sget-object v2, Lb/a/f/d;->a:[Lb/a/f/c;

    array-length v2, v2

    if-ge v1, v2, :cond_2a

    sget-object v2, Lb/a/f/d;->a:[Lb/a/f/c;

    aget-object v2, v2, v1

    iget-object v2, v2, Lb/a/f/c;->g:Lc/f;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lb/a/f/d;->a:[Lb/a/f/c;

    aget-object v2, v2, v1

    iget-object v2, v2, Lb/a/f/c;->g:Lc/f;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_2a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
