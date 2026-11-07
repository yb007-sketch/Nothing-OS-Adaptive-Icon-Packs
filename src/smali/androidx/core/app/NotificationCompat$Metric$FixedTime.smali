.class public final Landroidx/core/app/NotificationCompat$Metric$FixedTime;
.super Landroidx/core/app/NotificationCompat$Metric$MetricValue;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedTime"
.end annotation


# static fields
.field private static final KEY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private final mValue:Ljava/time/LocalTime;


# direct methods
.method static bridge synthetic -$$Nest$smfromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric$FixedTime;
    .locals 0

    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Metric$FixedTime;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric$FixedTime;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/time/LocalTime;)V
    .locals 1

    const/4 v0, 0x0

    .line 6097
    invoke-direct {p0, v0}, Landroidx/core/app/NotificationCompat$Metric$MetricValue;-><init>(Landroidx/core/app/NotificationCompat-IA;)V

    .line 6098
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/LocalTime;

    sget-object v0, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p1, v0}, Ljava/time/LocalTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedTime;->mValue:Ljava/time/LocalTime;

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric$FixedTime;
    .locals 3

    .line 6103
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6104
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_1

    .line 6106
    new-instance v0, Landroidx/core/app/NotificationCompat$Metric$FixedTime;

    invoke-direct {v0, p0}, Landroidx/core/app/NotificationCompat$Metric$FixedTime;-><init>(Ljava/time/LocalTime;)V

    return-object v0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 6119
    instance-of v0, p1, Landroidx/core/app/NotificationCompat$Metric$FixedTime;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6120
    :cond_0
    check-cast p1, Landroidx/core/app/NotificationCompat$Metric$FixedTime;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 6122
    :cond_1
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedTime;->mValue:Ljava/time/LocalTime;

    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Metric$FixedTime;->mValue:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getValue()Ljava/time/LocalTime;
    .locals 0

    .line 6140
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedTime;->mValue:Ljava/time/LocalTime;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 6127
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedTime;->mValue:Ljava/time/LocalTime;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method toBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 6114
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedTime;->mValue:Ljava/time/LocalTime;

    invoke-virtual {p0}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result p0

    int-to-long v0, p0

    const-string/jumbo p0, "value"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 6133
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

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedTime;->mValue:Ljava/time/LocalTime;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
