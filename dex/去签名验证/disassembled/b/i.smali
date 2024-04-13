.class public final Lb/i;
.super Ljava/lang/Object;


# static fields
.field public static final A:Lb/i;

.field public static final B:Lb/i;

.field public static final C:Lb/i;

.field public static final D:Lb/i;

.field public static final E:Lb/i;

.field public static final F:Lb/i;

.field public static final G:Lb/i;

.field public static final H:Lb/i;

.field public static final I:Lb/i;

.field public static final J:Lb/i;

.field public static final K:Lb/i;

.field public static final L:Lb/i;

.field public static final M:Lb/i;

.field public static final N:Lb/i;

.field public static final O:Lb/i;

.field public static final P:Lb/i;

.field public static final Q:Lb/i;

.field public static final R:Lb/i;

.field public static final S:Lb/i;

.field public static final T:Lb/i;

.field public static final U:Lb/i;

.field public static final V:Lb/i;

.field public static final W:Lb/i;

.field public static final X:Lb/i;

.field public static final Y:Lb/i;

.field public static final Z:Lb/i;

.field static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final aA:Lb/i;

.field public static final aB:Lb/i;

.field public static final aC:Lb/i;

.field public static final aD:Lb/i;

.field public static final aE:Lb/i;

.field public static final aF:Lb/i;

.field public static final aG:Lb/i;

.field public static final aH:Lb/i;

.field public static final aI:Lb/i;

.field public static final aJ:Lb/i;

.field public static final aK:Lb/i;

.field public static final aL:Lb/i;

.field public static final aM:Lb/i;

.field public static final aN:Lb/i;

.field public static final aO:Lb/i;

.field public static final aP:Lb/i;

.field public static final aQ:Lb/i;

.field public static final aR:Lb/i;

.field public static final aS:Lb/i;

.field public static final aT:Lb/i;

.field public static final aU:Lb/i;

.field public static final aV:Lb/i;

.field public static final aW:Lb/i;

.field public static final aX:Lb/i;

.field public static final aY:Lb/i;

.field public static final aZ:Lb/i;

.field public static final aa:Lb/i;

.field public static final ab:Lb/i;

.field public static final ac:Lb/i;

.field public static final ad:Lb/i;

.field public static final ae:Lb/i;

.field public static final af:Lb/i;

.field public static final ag:Lb/i;

.field public static final ah:Lb/i;

.field public static final ai:Lb/i;

.field public static final aj:Lb/i;

.field public static final ak:Lb/i;

.field public static final al:Lb/i;

.field public static final am:Lb/i;

.field public static final an:Lb/i;

.field public static final ao:Lb/i;

.field public static final ap:Lb/i;

.field public static final aq:Lb/i;

.field public static final ar:Lb/i;

.field public static final as:Lb/i;

.field public static final at:Lb/i;

.field public static final au:Lb/i;

.field public static final av:Lb/i;

.field public static final aw:Lb/i;

.field public static final ax:Lb/i;

.field public static final ay:Lb/i;

.field public static final az:Lb/i;

.field public static final b:Lb/i;

.field public static final ba:Lb/i;

.field public static final bb:Lb/i;

.field public static final bc:Lb/i;

.field public static final bd:Lb/i;

.field public static final be:Lb/i;

.field public static final bf:Lb/i;

.field public static final bg:Lb/i;

.field public static final bh:Lb/i;

.field public static final bi:Lb/i;

.field private static final bk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lb/i;

.field public static final d:Lb/i;

.field public static final e:Lb/i;

.field public static final f:Lb/i;

.field public static final g:Lb/i;

.field public static final h:Lb/i;

.field public static final i:Lb/i;

.field public static final j:Lb/i;

.field public static final k:Lb/i;

.field public static final l:Lb/i;

.field public static final m:Lb/i;

.field public static final n:Lb/i;

.field public static final o:Lb/i;

.field public static final p:Lb/i;

.field public static final q:Lb/i;

.field public static final r:Lb/i;

.field public static final s:Lb/i;

.field public static final t:Lb/i;

.field public static final u:Lb/i;

.field public static final v:Lb/i;

.field public static final w:Lb/i;

.field public static final x:Lb/i;

.field public static final y:Lb/i;

.field public static final z:Lb/i;


# instance fields
.field final bj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/i$1;

    invoke-direct {v0}, Lb/i$1;-><init>()V

    sput-object v0, Lb/i;->a:Ljava/util/Comparator;

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lb/i;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lb/i;->bk:Ljava/util/Map;

    const-string v0, "SSL_RSA_WITH_NULL_MD5"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->b:Lb/i;

    const-string v0, "SSL_RSA_WITH_NULL_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->c:Lb/i;

    const-string v0, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->d:Lb/i;

    const-string v0, "SSL_RSA_WITH_RC4_128_MD5"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->e:Lb/i;

    const-string v0, "SSL_RSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->f:Lb/i;

    const-string v0, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->g:Lb/i;

    const-string v0, "SSL_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->h:Lb/i;

    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->i:Lb/i;

    const-string v0, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->j:Lb/i;

    const-string v0, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->k:Lb/i;

    const-string v0, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->l:Lb/i;

    const-string v0, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->m:Lb/i;

    const-string v0, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->n:Lb/i;

    const-string v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->o:Lb/i;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->p:Lb/i;

    const-string v0, "SSL_DH_anon_WITH_RC4_128_MD5"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->q:Lb/i;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->r:Lb/i;

    const-string v0, "SSL_DH_anon_WITH_DES_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->s:Lb/i;

    const-string v0, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->t:Lb/i;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->u:Lb/i;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->v:Lb/i;

    const-string v0, "TLS_KRB5_WITH_RC4_128_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->w:Lb/i;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_MD5"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->x:Lb/i;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->y:Lb/i;

    const-string v0, "TLS_KRB5_WITH_RC4_128_MD5"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->z:Lb/i;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->A:Lb/i;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->B:Lb/i;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->C:Lb/i;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->D:Lb/i;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->E:Lb/i;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->F:Lb/i;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->G:Lb/i;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->H:Lb/i;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->I:Lb/i;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->J:Lb/i;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->K:Lb/i;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->L:Lb/i;

    const-string v0, "TLS_RSA_WITH_NULL_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->M:Lb/i;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->N:Lb/i;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->O:Lb/i;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->P:Lb/i;

    const-string v0, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->Q:Lb/i;

    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->R:Lb/i;

    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->S:Lb/i;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->T:Lb/i;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->U:Lb/i;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->V:Lb/i;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->W:Lb/i;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->X:Lb/i;

    const-string v0, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->Y:Lb/i;

    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->Z:Lb/i;

    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aa:Lb/i;

    const-string v0, "TLS_PSK_WITH_RC4_128_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->ab:Lb/i;

    const-string v0, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->ac:Lb/i;

    const-string v0, "TLS_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->ad:Lb/i;

    const-string v0, "TLS_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->ae:Lb/i;

    const-string v0, "TLS_RSA_WITH_SEED_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->af:Lb/i;

    const-string v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->ag:Lb/i;

    const-string v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->ah:Lb/i;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->ai:Lb/i;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aj:Lb/i;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->ak:Lb/i;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->al:Lb/i;

    const-string v0, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->am:Lb/i;

    const-string v0, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->an:Lb/i;

    const-string v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->ao:Lb/i;

    const-string v0, "TLS_FALLBACK_SCSV"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->ap:Lb/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aq:Lb/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->ar:Lb/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->as:Lb/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->at:Lb/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->au:Lb/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->av:Lb/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aw:Lb/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->ax:Lb/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->ay:Lb/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->az:Lb/i;

    const-string v0, "TLS_ECDH_RSA_WITH_NULL_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aA:Lb/i;

    const-string v0, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aB:Lb/i;

    const-string v0, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aC:Lb/i;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aD:Lb/i;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aE:Lb/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aF:Lb/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aG:Lb/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aH:Lb/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aI:Lb/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aJ:Lb/i;

    const-string v0, "TLS_ECDH_anon_WITH_NULL_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aK:Lb/i;

    const-string v0, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aL:Lb/i;

    const-string v0, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aM:Lb/i;

    const-string v0, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aN:Lb/i;

    const-string v0, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aO:Lb/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aP:Lb/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aQ:Lb/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aR:Lb/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aS:Lb/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aT:Lb/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aU:Lb/i;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aV:Lb/i;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aW:Lb/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aX:Lb/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aY:Lb/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->aZ:Lb/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->ba:Lb/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->bb:Lb/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->bc:Lb/i;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->bd:Lb/i;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->be:Lb/i;

    const-string v0, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->bf:Lb/i;

    const-string v0, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->bg:Lb/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->bh:Lb/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    sput-object v0, Lb/i;->bi:Lb/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_b

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_b
    iput-object p1, p0, Lb/i;->bj:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lb/i;
    .registers 4

    const-class v0, Lb/i;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lb/i;->bk:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/i;

    if-nez v1, :cond_17

    new-instance v1, Lb/i;

    invoke-direct {v1, p0}, Lb/i;-><init>(Ljava/lang/String;)V

    sget-object v2, Lb/i;->bk:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/i;->bj:Ljava/lang/String;

    return-object v0
.end method

.method static varargs a([Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lb/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    invoke-static {v3}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Lb/i;
    .registers 1

    invoke-static {p0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/i;->bj:Ljava/lang/String;

    return-object v0
.end method
