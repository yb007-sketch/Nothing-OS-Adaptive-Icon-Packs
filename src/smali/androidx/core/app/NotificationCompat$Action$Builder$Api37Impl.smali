.class Landroidx/core/app/NotificationCompat$Action$Builder$Api37Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Action$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api37Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEmphasisHint(Landroid/app/Notification$Action;)I
    .locals 0

    .line 8469
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getEmphasisHint()I

    move-result p0

    return p0
.end method

.method static getStyleHint(Landroid/app/Notification$Action;)I
    .locals 0

    .line 8473
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getStyleHint()I

    move-result p0

    return p0
.end method
