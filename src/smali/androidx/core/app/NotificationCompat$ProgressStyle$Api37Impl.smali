.class final Landroidx/core/app/NotificationCompat$ProgressStyle$Api37Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$ProgressStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api37Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setProgressPoints(Landroid/app/Notification$ProgressStyle;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification$ProgressStyle;",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$ProgressStyle$Point;",
            ">;)V"
        }
    .end annotation

    .line 7436
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$ProgressStyle$Point;

    .line 7437
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$ProgressStyle$Api37Impl;->toPlatformPoint(Landroidx/core/app/NotificationCompat$ProgressStyle$Point;)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$ProgressStyle;->addProgressPoint(Landroid/app/Notification$ProgressStyle$Point;)Landroid/app/Notification$ProgressStyle;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static setProgressSegments(Landroid/app/Notification$ProgressStyle;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification$ProgressStyle;",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;",
            ">;)V"
        }
    .end annotation

    .line 7450
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;

    .line 7451
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$ProgressStyle$Api37Impl;->toPlatformSegment(Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$ProgressStyle;->addProgressSegment(Landroid/app/Notification$ProgressStyle$Segment;)Landroid/app/Notification$ProgressStyle;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static toPlatformPoint(Landroidx/core/app/NotificationCompat$ProgressStyle$Point;)Landroid/app/Notification$ProgressStyle$Point;
    .locals 1

    .line 7443
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$ProgressStyle$Api36Impl;->toPlatformPoint(Landroidx/core/app/NotificationCompat$ProgressStyle$Point;)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v0

    .line 7444
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$ProgressStyle$Point;->getSemanticStyle()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$ProgressStyle$Point;->setSemanticStyle(I)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object p0

    return-object p0
.end method

.method static toPlatformSegment(Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;)Landroid/app/Notification$ProgressStyle$Segment;
    .locals 1

    .line 7457
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$ProgressStyle$Api36Impl;->toPlatformSegment(Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    .line 7458
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;->getSemanticStyle()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$ProgressStyle$Segment;->setSemanticStyle(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object p0

    return-object p0
.end method
