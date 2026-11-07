.class public final Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$ProgressStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation


# instance fields
.field private mColor:I

.field private mId:I

.field private mLength:I

.field private mSemanticStyle:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 7175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7165
    iput v0, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;->mId:I

    .line 7166
    iput v0, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;->mColor:I

    .line 7168
    iput v0, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;->mSemanticStyle:I

    .line 7176
    iput p1, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;->mLength:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 0

    .line 7215
    iget p0, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;->mColor:I

    return p0
.end method

.method public getId()I
    .locals 0

    .line 7195
    iget p0, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;->mId:I

    return p0
.end method

.method public getLength()I
    .locals 0

    .line 7186
    iget p0, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;->mLength:I

    return p0
.end method

.method public getSemanticStyle()I
    .locals 0

    .line 7233
    iget p0, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;->mSemanticStyle:I

    return p0
.end method

.method public setColor(I)Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;
    .locals 0

    .line 7222
    iput p1, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;->mColor:I

    return-object p0
.end method

.method public setId(I)Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;
    .locals 0

    .line 7203
    iput p1, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;->mId:I

    return-object p0
.end method

.method public setSemanticStyle(I)Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;
    .locals 0

    .line 7245
    iput p1, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;->mSemanticStyle:I

    return-object p0
.end method
