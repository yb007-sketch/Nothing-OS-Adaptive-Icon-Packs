.class public final Landroidx/core/app/NotificationCompat$Metric$FixedFloat;
.super Landroidx/core/app/NotificationCompat$Metric$MetricValue;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedFloat"
.end annotation


# static fields
.field private static final DEFAULT_MAX_FRACTION_DIGITS:I = 0x2

.field private static final DEFAULT_MIN_FRACTION_DIGITS:I = 0x0

.field private static final KEY_MAX_FRACTION_DIGITS:Ljava/lang/String; = "maxDigits"

.field private static final KEY_MIN_FRACTION_DIGITS:Ljava/lang/String; = "minDigits"

.field private static final KEY_UNIT:Ljava/lang/String; = "unit"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final LOWER_BOUND_FRACTION_DIGITS:I = 0x0

.field private static final UPPER_BOUND_FRACTION_DIGITS:I = 0x6


# instance fields
.field private final mMaxFractionDigits:I

.field private final mMinFractionDigits:I

.field private final mUnit:Ljava/lang/String;

.field private final mValue:F


# direct methods
.method static bridge synthetic -$$Nest$smfromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric$FixedFloat;
    .locals 0

    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric$FixedFloat;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    .line 6248
    invoke-direct {p0, p1, v0}, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;-><init>(FLjava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(FLjava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 6258
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;-><init>(FLjava/lang/CharSequence;II)V

    return-void
.end method

.method public constructor <init>(FLjava/lang/CharSequence;II)V
    .locals 4

    const/4 v0, 0x0

    .line 6276
    invoke-direct {p0, v0}, Landroidx/core/app/NotificationCompat$Metric$MetricValue;-><init>(Landroidx/core/app/NotificationCompat-IA;)V

    .line 6277
    iput p1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mValue:F

    .line 6278
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->-$$Nest$smsafeCharSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    const/4 p1, 0x6

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ltz p3, :cond_0

    if-gt p3, p1, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 6282
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 6280
    const-string v3, "Invalid minFractionDigits: %s"

    invoke-static {v1, v3, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz p4, :cond_1

    if-gt p4, p1, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    move p1, v0

    .line 6285
    :goto_1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 6283
    const-string v2, "Invalid maxFractionDigits: %s"

    invoke-static {p1, v2, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-gt p3, p4, :cond_2

    goto :goto_2

    :cond_2
    move p2, v0

    .line 6288
    :goto_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 6286
    const-string v0, "Invalid minFractionDigits/maxFractionDigits: %s/%s"

    invoke-static {p2, v0, p1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6289
    iput p3, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMinFractionDigits:I

    .line 6290
    iput p4, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMaxFractionDigits:I

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric$FixedFloat;
    .locals 6

    .line 6295
    new-instance v0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;

    const-string/jumbo v1, "value"

    .line 6296
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    const-string/jumbo v2, "unit"

    .line 6297
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "minDigits"

    const/4 v4, 0x0

    .line 6298
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "maxDigits"

    const/4 v5, 0x2

    .line 6299
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;-><init>(FLjava/lang/CharSequence;II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 6312
    instance-of v0, p1, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6313
    :cond_0
    check-cast p1, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 6315
    :cond_1
    iget v2, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mValue:F

    iget v3, p1, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mValue:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    .line 6316
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMinFractionDigits:I

    iget v3, p1, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMinFractionDigits:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMaxFractionDigits:I

    iget p1, p1, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMaxFractionDigits:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public getMaxFractionDigits()I
    .locals 0

    .line 6364
    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMaxFractionDigits:I

    return p0
.end method

.method public getMinFractionDigits()I
    .locals 0

    .line 6358
    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMinFractionDigits:I

    return p0
.end method

.method public getUnit()Ljava/lang/CharSequence;
    .locals 0

    .line 6352
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()F
    .locals 0

    .line 6339
    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mValue:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 6323
    iget v0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    iget v2, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMinFractionDigits:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMaxFractionDigits:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method toBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 6304
    const-string/jumbo v0, "value"

    iget v1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mValue:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 6305
    const-string/jumbo v0, "unit"

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6306
    const-string v0, "minDigits"

    iget v1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMinFractionDigits:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6307
    const-string v0, "maxDigits"

    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMaxFractionDigits:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 6329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinFractionDigits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMinFractionDigits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxFractionDigits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMaxFractionDigits:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
