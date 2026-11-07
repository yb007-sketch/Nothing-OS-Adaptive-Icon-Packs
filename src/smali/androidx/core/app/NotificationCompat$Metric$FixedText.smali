.class public final Landroidx/core/app/NotificationCompat$Metric$FixedText;
.super Landroidx/core/app/NotificationCompat$Metric$MetricValue;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedText"
.end annotation


# static fields
.field private static final KEY_UNIT:Ljava/lang/String; = "unit"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private final mUnit:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$smfromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric$FixedText;
    .locals 0

    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Metric$FixedText;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric$FixedText;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 6381
    invoke-direct {p0, p1, v0}, Landroidx/core/app/NotificationCompat$Metric$FixedText;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 6390
    invoke-direct {p0, v0}, Landroidx/core/app/NotificationCompat$Metric$MetricValue;-><init>(Landroidx/core/app/NotificationCompat-IA;)V

    .line 6391
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->-$$Nest$smsafeCharSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedText;->mValue:Ljava/lang/String;

    .line 6392
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->-$$Nest$smsafeCharSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedText;->mUnit:Ljava/lang/String;

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric$FixedText;
    .locals 3

    .line 6397
    new-instance v0, Landroidx/core/app/NotificationCompat$Metric$FixedText;

    const-string/jumbo v1, "value"

    const-string v2, ""

    .line 6398
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unit"

    .line 6399
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroidx/core/app/NotificationCompat$Metric$FixedText;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 6410
    instance-of v0, p1, Landroidx/core/app/NotificationCompat$Metric$FixedText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6411
    :cond_0
    check-cast p1, Landroidx/core/app/NotificationCompat$Metric$FixedText;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 6413
    :cond_1
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Metric$FixedText;->mValue:Ljava/lang/String;

    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Metric$FixedText;->mValue:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedText;->mUnit:Ljava/lang/String;

    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Metric$FixedText;->mUnit:Ljava/lang/String;

    .line 6414
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public getUnit()Ljava/lang/CharSequence;
    .locals 0

    .line 6447
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedText;->mUnit:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/CharSequence;
    .locals 0

    .line 6434
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedText;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 6419
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedText;->mValue:Ljava/lang/String;

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedText;->mUnit:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method toBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 6404
    const-string/jumbo v0, "value"

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedText;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6405
    const-string/jumbo v0, "unit"

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedText;->mUnit:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 6425
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

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedText;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedText;->mUnit:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
