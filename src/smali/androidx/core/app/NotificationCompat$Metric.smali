.class public final Landroidx/core/app/NotificationCompat$Metric;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metric"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$Metric$MetricValue;,
        Landroidx/core/app/NotificationCompat$Metric$FixedText;,
        Landroidx/core/app/NotificationCompat$Metric$FixedFloat;,
        Landroidx/core/app/NotificationCompat$Metric$FixedInt;,
        Landroidx/core/app/NotificationCompat$Metric$FixedTime;,
        Landroidx/core/app/NotificationCompat$Metric$FixedDate;,
        Landroidx/core/app/NotificationCompat$Metric$TimeDifference;
    }
.end annotation


# static fields
.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_SEMANTIC_STYLE:Ljava/lang/String; = "semanticStyle"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private final mLabel:Ljava/lang/String;

.field private final mSemanticStyle:I

.field private final mValue:Landroidx/core/app/NotificationCompat$Metric$MetricValue;


# direct methods
.method static bridge synthetic -$$Nest$smfromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric;
    .locals 0

    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Metric;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smtoBundle(Landroidx/core/app/NotificationCompat$Metric;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Metric;->toBundle(Landroidx/core/app/NotificationCompat$Metric;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Metric$MetricValue;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 5534
    invoke-direct {p0, p1, p2, v0}, Landroidx/core/app/NotificationCompat$Metric;-><init>(Landroidx/core/app/NotificationCompat$Metric$MetricValue;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Metric$MetricValue;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 5547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5548
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/app/NotificationCompat$Metric$MetricValue;

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Metric;->mValue:Landroidx/core/app/NotificationCompat$Metric$MetricValue;

    .line 5549
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->-$$Nest$smsafeCharSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Metric;->mLabel:Ljava/lang/String;

    .line 5550
    invoke-static {p1}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticThrowIAE2;->m(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "Metric label is required"

    invoke-static {p1, p2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5551
    iput p3, p0, Landroidx/core/app/NotificationCompat$Metric;->mSemanticStyle:I

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric;
    .locals 4

    .line 5556
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5560
    :cond_0
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$Metric$MetricValue;->-$$Nest$smfromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric$MetricValue;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 5564
    :cond_1
    const-string v1, "label"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5565
    const-string/jumbo v2, "semanticStyle"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 5566
    new-instance v2, Landroidx/core/app/NotificationCompat$Metric;

    invoke-direct {v2, v0, v1, p0}, Landroidx/core/app/NotificationCompat$Metric;-><init>(Landroidx/core/app/NotificationCompat$Metric$MetricValue;Ljava/lang/CharSequence;I)V

    return-object v2
.end method

.method private static toBundle(Landroidx/core/app/NotificationCompat$Metric;)Landroid/os/Bundle;
    .locals 3

    .line 5571
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5572
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric;->mValue:Landroidx/core/app/NotificationCompat$Metric$MetricValue;

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Metric$MetricValue;->-$$Nest$smtoBundle(Landroidx/core/app/NotificationCompat$Metric$MetricValue;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5573
    const-string v1, "label"

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Metric;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5574
    const-string/jumbo v1, "semanticStyle"

    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric;->mSemanticStyle:I

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 5580
    instance-of v0, p1, Landroidx/core/app/NotificationCompat$Metric;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5581
    :cond_0
    check-cast p1, Landroidx/core/app/NotificationCompat$Metric;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 5583
    :cond_1
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Metric;->mValue:Landroidx/core/app/NotificationCompat$Metric$MetricValue;

    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Metric;->mValue:Landroidx/core/app/NotificationCompat$Metric$MetricValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Metric;->mLabel:Ljava/lang/String;

    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Metric;->mLabel:Ljava/lang/String;

    .line 5584
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric;->mSemanticStyle:I

    iget p1, p1, Landroidx/core/app/NotificationCompat$Metric;->mSemanticStyle:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 5617
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getSemanticStyle()I
    .locals 0

    .line 5627
    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric;->mSemanticStyle:I

    return p0
.end method

.method public getValue()Landroidx/core/app/NotificationCompat$Metric$MetricValue;
    .locals 0

    .line 5606
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric;->mValue:Landroidx/core/app/NotificationCompat$Metric$MetricValue;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 5590
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Metric;->mValue:Landroidx/core/app/NotificationCompat$Metric$MetricValue;

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric;->mLabel:Ljava/lang/String;

    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric;->mSemanticStyle:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5596
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metric{mValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric;->mValue:Landroidx/core/app/NotificationCompat$Metric$MetricValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSemanticStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric;->mSemanticStyle:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
