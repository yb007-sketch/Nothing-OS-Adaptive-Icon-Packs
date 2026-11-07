.class final Landroidx/core/app/NotificationCompat$MetricStyle$Api37Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$MetricStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api37Impl"
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smtoPlatformStyle(Landroidx/core/app/NotificationCompat$MetricStyle;)Landroid/app/Notification$Style;
    .locals 0

    invoke-static {p0}, Landroidx/core/app/NotificationCompat$MetricStyle$Api37Impl;->toPlatformStyle(Landroidx/core/app/NotificationCompat$MetricStyle;)Landroid/app/Notification$Style;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 5398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toPlatformMetric(Landroidx/core/app/NotificationCompat$Metric;)Landroid/app/Notification$Metric;
    .locals 3

    .line 5411
    new-instance v0, Landroid/app/Notification$Metric;

    .line 5412
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric;->getValue()Landroidx/core/app/NotificationCompat$Metric$MetricValue;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$MetricStyle$Api37Impl;->toPlatformMetricValue(Landroidx/core/app/NotificationCompat$Metric$MetricValue;)Landroid/app/Notification$Metric$MetricValue;

    move-result-object v1

    .line 5413
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 5414
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric;->getSemanticStyle()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Landroid/app/Notification$Metric;-><init>(Landroid/app/Notification$Metric$MetricValue;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method private static toPlatformMetricValue(Landroidx/core/app/NotificationCompat$Metric$MetricValue;)Landroid/app/Notification$Metric$MetricValue;
    .locals 4

    .line 5420
    instance-of v0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;

    if-eqz v0, :cond_6

    .line 5421
    check-cast p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;

    .line 5422
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->getZeroTime()Ljava/time/Instant;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5423
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->isTimer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5425
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->getZeroTime()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->getFormat()I

    move-result p0

    .line 5424
    invoke-static {v0, p0}, Landroid/app/Notification$Metric$TimeDifference;->forTimer(Ljava/time/Instant;I)Landroid/app/Notification$Metric$TimeDifference;

    move-result-object p0

    return-object p0

    .line 5427
    :cond_0
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->getZeroTime()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->getFormat()I

    move-result p0

    .line 5426
    invoke-static {v0, p0}, Landroid/app/Notification$Metric$TimeDifference;->forStopwatch(Ljava/time/Instant;I)Landroid/app/Notification$Metric$TimeDifference;

    move-result-object p0

    return-object p0

    .line 5428
    :cond_1
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->getZeroElapsedRealtime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5429
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->isTimer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5431
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->getZeroElapsedRealtime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->getFormat()I

    move-result p0

    .line 5430
    invoke-static {v0, v1, p0}, Landroid/app/Notification$Metric$TimeDifference;->forTimer(JI)Landroid/app/Notification$Metric$TimeDifference;

    move-result-object p0

    return-object p0

    .line 5433
    :cond_2
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->getZeroElapsedRealtime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->getFormat()I

    move-result p0

    .line 5432
    invoke-static {v0, v1, p0}, Landroid/app/Notification$Metric$TimeDifference;->forStopwatch(JI)Landroid/app/Notification$Metric$TimeDifference;

    move-result-object p0

    return-object p0

    .line 5435
    :cond_3
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->getPausedDuration()Ljava/time/Duration;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5436
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->isTimer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5438
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->getPausedDuration()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->getFormat()I

    move-result p0

    .line 5437
    invoke-static {v0, p0}, Landroid/app/Notification$Metric$TimeDifference;->forPausedTimer(Ljava/time/Duration;I)Landroid/app/Notification$Metric$TimeDifference;

    move-result-object p0

    return-object p0

    .line 5440
    :cond_4
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->getPausedDuration()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->getFormat()I

    move-result p0

    .line 5439
    invoke-static {v0, p0}, Landroid/app/Notification$Metric$TimeDifference;->forPausedStopwatch(Ljava/time/Duration;I)Landroid/app/Notification$Metric$TimeDifference;

    move-result-object p0

    return-object p0

    .line 5442
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected TimeDifference: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5444
    :cond_6
    instance-of v0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedDate;

    if-eqz v0, :cond_7

    .line 5445
    check-cast p0, Landroidx/core/app/NotificationCompat$Metric$FixedDate;

    .line 5446
    new-instance v0, Landroid/app/Notification$Metric$FixedDate;

    .line 5447
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$FixedDate;->getValue()Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$FixedDate;->getFormat()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/app/Notification$Metric$FixedDate;-><init>(Ljava/time/LocalDate;I)V

    return-object v0

    .line 5448
    :cond_7
    instance-of v0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;

    if-eqz v0, :cond_8

    .line 5449
    check-cast p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;

    .line 5450
    new-instance v0, Landroid/app/Notification$Metric$FixedFloat;

    .line 5451
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->getValue()F

    move-result v1

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->getUnit()Ljava/lang/CharSequence;

    move-result-object v2

    .line 5452
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->getMinFractionDigits()I

    move-result v3

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->getMaxFractionDigits()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/app/Notification$Metric$FixedFloat;-><init>(FLjava/lang/CharSequence;II)V

    return-object v0

    .line 5453
    :cond_8
    instance-of v0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedInt;

    if-eqz v0, :cond_9

    .line 5454
    check-cast p0, Landroidx/core/app/NotificationCompat$Metric$FixedInt;

    .line 5455
    new-instance v0, Landroid/app/Notification$Metric$FixedInt;

    .line 5456
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$FixedInt;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$FixedInt;->getUnit()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/app/Notification$Metric$FixedInt;-><init>(ILjava/lang/CharSequence;)V

    return-object v0

    .line 5457
    :cond_9
    instance-of v0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedText;

    if-eqz v0, :cond_a

    .line 5458
    check-cast p0, Landroidx/core/app/NotificationCompat$Metric$FixedText;

    .line 5459
    new-instance v0, Landroid/app/Notification$Metric$FixedText;

    .line 5460
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$FixedText;->getValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$FixedText;->getUnit()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/app/Notification$Metric$FixedText;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0

    .line 5461
    :cond_a
    instance-of v0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedTime;

    if-eqz v0, :cond_b

    .line 5462
    check-cast p0, Landroidx/core/app/NotificationCompat$Metric$FixedTime;

    .line 5463
    new-instance v0, Landroid/app/Notification$Metric$FixedTime;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Metric$FixedTime;->getValue()Ljava/time/LocalTime;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/app/Notification$Metric$FixedTime;-><init>(Ljava/time/LocalTime;)V

    return-object v0

    .line 5465
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected MetricValue: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toPlatformStyle(Landroidx/core/app/NotificationCompat$MetricStyle;)Landroid/app/Notification$Style;
    .locals 3

    .line 5401
    new-instance v0, Landroid/app/Notification$MetricStyle;

    invoke-direct {v0}, Landroid/app/Notification$MetricStyle;-><init>()V

    .line 5402
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$MetricStyle;->getMetrics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/app/NotificationCompat$Metric;

    .line 5403
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$MetricStyle$Api37Impl;->toPlatformMetric(Landroidx/core/app/NotificationCompat$Metric;)Landroid/app/Notification$Metric;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$MetricStyle;->addMetric(Landroid/app/Notification$Metric;)Landroid/app/Notification$MetricStyle;

    goto :goto_0

    .line 5406
    :cond_0
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$MetricStyle;->getMetrics()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$MetricStyle;->getCriticalMetric()Landroidx/core/app/NotificationCompat$Metric;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 5405
    invoke-virtual {v0, p0}, Landroid/app/Notification$MetricStyle;->setCriticalMetric(I)Landroid/app/Notification$MetricStyle;

    return-object v0
.end method
