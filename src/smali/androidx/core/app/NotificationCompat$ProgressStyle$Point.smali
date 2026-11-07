.class public final Landroidx/core/app/NotificationCompat$ProgressStyle$Point;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$ProgressStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Point"
.end annotation


# instance fields
.field private mColor:I

.field private mId:I

.field private mPosition:I

.field private mSemanticStyle:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 7270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7259
    iput v0, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Point;->mId:I

    .line 7260
    iput v0, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Point;->mColor:I

    .line 7262
    iput v0, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Point;->mSemanticStyle:I

    .line 7271
    iput p1, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Point;->mPosition:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 0

    .line 7309
    iget p0, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Point;->mColor:I

    return p0
.end method

.method public getId()I
    .locals 0

    .line 7289
    iget p0, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Point;->mId:I

    return p0
.end method

.method public getPosition()I
    .locals 0

    .line 7281
    iget p0, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Point;->mPosition:I

    return p0
.end method

.method public getSemanticStyle()I
    .locals 0

    .line 7327
    iget p0, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Point;->mSemanticStyle:I

    return p0
.end method

.method public setColor(I)Landroidx/core/app/NotificationCompat$ProgressStyle$Point;
    .locals 0

    .line 7316
    iput p1, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Point;->mColor:I

    return-object p0
.end method

.method public setId(I)Landroidx/core/app/NotificationCompat$ProgressStyle$Point;
    .locals 0

    .line 7297
    iput p1, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Point;->mId:I

    return-object p0
.end method

.method public setSemanticStyle(I)Landroidx/core/app/NotificationCompat$ProgressStyle$Point;
    .locals 0

    .line 7339
    iput p1, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Point;->mSemanticStyle:I

    return-object p0
.end method
