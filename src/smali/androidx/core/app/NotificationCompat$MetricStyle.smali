.class public final Landroidx/core/app/NotificationCompat$MetricStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetricStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$MetricStyle$Api37Impl;
    }
.end annotation


# static fields
.field private static final CRITICAL_METRIC_DEFAULT:I = 0x0

.field private static final EXTRA_METRICS:Ljava/lang/String; = "android.metrics"

.field private static final EXTRA_METRICS_CRITICAL_INDEX:Ljava/lang/String; = "android.metrics.criticalIndex"

.field public static final METRIC_INDEX_NONE:I = -0x1

.field private static final TEMPLATE_CLASS_NAME:Ljava/lang/String; = "androidx.core.app.NotificationCompat$MetricStyle"


# instance fields
.field private mCriticalMetric:I

.field private final mMetrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Metric;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5288
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 5274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/List;

    const/4 v0, 0x0

    .line 5275
    iput v0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mCriticalMetric:I

    return-void
.end method

.method private validate()V
    .locals 1

    .line 5391
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 5392
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "A MetricStyle must have at least one Metric"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .locals 3

    .line 5472
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    .line 5473
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x25

    if-lt v0, v1, :cond_0

    return-void

    .line 5477
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5478
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/app/NotificationCompat$Metric;

    .line 5479
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Metric;->-$$Nest$smtoBundle(Landroidx/core/app/NotificationCompat$Metric;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5481
    :cond_1
    const-string v1, "android.metrics"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5482
    const-string v0, "android.metrics.criticalIndex"

    iget p0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mCriticalMetric:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public addMetric(Landroidx/core/app/NotificationCompat$Metric;)Landroidx/core/app/NotificationCompat$MetricStyle;
    .locals 1

    .line 5323
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/app/NotificationCompat$Metric;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 2

    .line 5383
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$MetricStyle;->validate()V

    .line 5384
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x25

    if-lt v0, v1, :cond_0

    .line 5385
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    .line 5386
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$MetricStyle$Api37Impl;->-$$Nest$smtoPlatformStyle(Landroidx/core/app/NotificationCompat$MetricStyle;)Landroid/app/Notification$Style;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_0
    return-void
.end method

.method protected clearCompatExtraKeys(Landroid/os/Bundle;)V
    .locals 0

    .line 5507
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->clearCompatExtraKeys(Landroid/os/Bundle;)V

    .line 5508
    const-string p0, "android.metrics"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5509
    const-string p0, "android.metrics.criticalIndex"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 5299
    instance-of v0, p1, Landroidx/core/app/NotificationCompat$MetricStyle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5300
    :cond_0
    check-cast p1, Landroidx/core/app/NotificationCompat$MetricStyle;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 5302
    :cond_1
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/List;

    iget-object v3, p1, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mCriticalMetric:I

    iget p1, p1, Landroidx/core/app/NotificationCompat$MetricStyle;->mCriticalMetric:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 0

    .line 5294
    const-string p0, "androidx.core.app.NotificationCompat$MetricStyle"

    return-object p0
.end method

.method public getCriticalMetric()Landroidx/core/app/NotificationCompat$Metric;
    .locals 2

    .line 5373
    iget v0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mCriticalMetric:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5374
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/List;

    iget p0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mCriticalMetric:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/app/NotificationCompat$Metric;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetrics()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Metric;",
            ">;"
        }
    .end annotation

    .line 5346
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 5308
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/List;

    iget p0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mCriticalMetric:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 5487
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V

    .line 5488
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5489
    const-string v0, "android.metrics"

    const-class v1, Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroidx/core/os/BundleCompat;->getParcelableArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5492
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 5494
    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Metric;->-$$Nest$smfromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5496
    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$MetricStyle;->addMetric(Landroidx/core/app/NotificationCompat$Metric;)Landroidx/core/app/NotificationCompat$MetricStyle;

    goto :goto_0

    .line 5502
    :cond_1
    const-string v0, "android.metrics.criticalIndex"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mCriticalMetric:I

    return-void
.end method

.method public setCriticalMetric(I)Landroidx/core/app/NotificationCompat$MetricStyle;
    .locals 0

    .line 5359
    iput p1, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mCriticalMetric:I

    return-object p0
.end method

.method public setMetrics(Ljava/util/List;)Landroidx/core/app/NotificationCompat$MetricStyle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Metric;",
            ">;)",
            "Landroidx/core/app/NotificationCompat$MetricStyle;"
        }
    .end annotation

    .line 5333
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5334
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$Metric;

    .line 5335
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$Metric;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MetricStyle{mMetrics="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCriticalMetric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mCriticalMetric:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
