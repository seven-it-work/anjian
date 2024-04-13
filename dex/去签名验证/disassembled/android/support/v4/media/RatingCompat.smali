.class public final Landroid/support/v4/media/RatingCompat;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/RatingCompat$StarStyle;,
        Landroid/support/v4/media/RatingCompat$Style;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/media/RatingCompat;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATING_3_STARS:I = 0x3

.field public static final RATING_4_STARS:I = 0x4

.field public static final RATING_5_STARS:I = 0x5

.field public static final RATING_HEART:I = 0x1

.field public static final RATING_NONE:I = 0x0

.field private static final RATING_NOT_RATED:F = -1.0f

.field public static final RATING_PERCENTAGE:I = 0x6

.field public static final RATING_THUMB_UP_DOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Rating"


# instance fields
.field private mRatingObj:Ljava/lang/Object;

.field private final mRatingStyle:I

.field private final mRatingValue:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/media/RatingCompat$1;

    invoke-direct {v0}, Landroid/support/v4/media/RatingCompat$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    iput p2, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    return-void
.end method

.method public static fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_44

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_44

    move-object v1, p0

    check-cast v1, Landroid/media/Rating;

    invoke-virtual {v1}, Landroid/media/Rating;->getRatingStyle()I

    move-result v2

    invoke-virtual {v1}, Landroid/media/Rating;->isRated()Z

    move-result v3

    if-eqz v3, :cond_3e

    packed-switch v2, :pswitch_data_46

    return-object v0

    :pswitch_1a
    invoke-virtual {v1}, Landroid/media/Rating;->getPercentRating()F

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat;->newPercentageRating(F)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    goto :goto_42

    :pswitch_23
    invoke-virtual {v1}, Landroid/media/Rating;->getStarRating()F

    move-result v0

    invoke-static {v2, v0}, Landroid/support/v4/media/RatingCompat;->newStarRating(IF)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    goto :goto_42

    :pswitch_2c
    invoke-virtual {v1}, Landroid/media/Rating;->isThumbUp()Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat;->newThumbRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    goto :goto_42

    :pswitch_35
    invoke-virtual {v1}, Landroid/media/Rating;->hasHeart()Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat;->newHeartRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    goto :goto_42

    :cond_3e
    invoke-static {v2}, Landroid/support/v4/media/RatingCompat;->newUnratedRating(I)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    :goto_42
    iput-object p0, v0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    :cond_44
    return-object v0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_35
        :pswitch_2c
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_1a
    .end packed-switch
.end method

.method public static newHeartRating(Z)Landroid/support/v4/media/RatingCompat;
    .registers 3

    new-instance v0, Landroid/support/v4/media/RatingCompat;

    if-eqz p0, :cond_7

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0
.end method

.method public static newPercentageRating(F)Landroid/support/v4/media/RatingCompat;
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_13

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_c

    goto :goto_13

    :cond_c
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0

    :cond_13
    :goto_13
    const-string p0, "Rating"

    const-string v0, "Invalid percentage-based rating value"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static newStarRating(IF)Landroid/support/v4/media/RatingCompat;
    .registers 5

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_3e

    const-string p1, "Rating"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid rating style ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") for a star rating"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_1d
    const/high16 v1, 0x40a00000    # 5.0f

    goto :goto_25

    :pswitch_20
    const/high16 v1, 0x40800000    # 4.0f

    goto :goto_25

    :pswitch_23
    const/high16 v1, 0x40400000    # 3.0f

    :goto_25
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_35

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2f

    goto :goto_35

    :cond_2f
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0

    :cond_35
    :goto_35
    const-string p0, "Rating"

    const-string p1, "Trying to set out of range star-based rating"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x3
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static newThumbRating(Z)Landroid/support/v4/media/RatingCompat;
    .registers 3

    new-instance v0, Landroid/support/v4/media/RatingCompat;

    if-eqz p0, :cond_7

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0
.end method

.method public static newUnratedRating(I)Landroid/support/v4/media/RatingCompat;
    .registers 3

    packed-switch p0, :pswitch_data_e

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    return v0
.end method

.method public final getPercentRating()F
    .registers 3

    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_f

    :cond_c
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    return v0

    :cond_f
    :goto_f
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public final getRating()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    if-nez v0, :cond_45

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_45

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    packed-switch v0, :pswitch_data_48

    const/4 v0, 0x0

    return-object v0

    :pswitch_17
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getPercentRating()F

    move-result v0

    invoke-static {v0}, Landroid/media/Rating;->newPercentageRating(F)Landroid/media/Rating;

    move-result-object v0

    goto :goto_43

    :pswitch_20
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result v1

    invoke-static {v0, v1}, Landroid/media/Rating;->newStarRating(IF)Landroid/media/Rating;

    move-result-object v0

    goto :goto_43

    :pswitch_2b
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isThumbUp()Z

    move-result v0

    invoke-static {v0}, Landroid/media/Rating;->newThumbRating(Z)Landroid/media/Rating;

    move-result-object v0

    goto :goto_43

    :pswitch_34
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    move-result v0

    invoke-static {v0}, Landroid/media/Rating;->newHeartRating(Z)Landroid/media/Rating;

    move-result-object v0

    goto :goto_43

    :cond_3d
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-static {v0}, Landroid/media/Rating;->newUnratedRating(I)Landroid/media/Rating;

    move-result-object v0

    :goto_43
    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    :cond_45
    iget-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    return-object v0

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2b
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_17
    .end packed-switch
.end method

.method public final getRatingStyle()I
    .registers 2

    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    return v0
.end method

.method public final getStarRating()F
    .registers 2

    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    packed-switch v0, :pswitch_data_12

    goto :goto_f

    :pswitch_6
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    return v0

    :cond_f
    :goto_f
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :pswitch_data_12
    .packed-switch 0x3
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public final hasHeart()Z
    .registers 5

    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    return v1

    :cond_7
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_10

    return v2

    :cond_10
    return v1
.end method

.method public final isRated()Z
    .registers 3

    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final isThumbUp()Z
    .registers 4

    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    return v1

    :cond_7
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rating:style="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1b

    const-string v1, "unrated"

    goto :goto_21

    :cond_1b
    iget v1, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget p2, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
