.class public final Landroidx/core/app/NotificationCompat$Metric$TimeDifference;
.super Landroidx/core/app/NotificationCompat$Metric$MetricValue;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeDifference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$Metric$TimeDifference$Format;
    }
.end annotation


# static fields
.field public static final FORMAT_ADAPTIVE:I = 0x1

.field public static final FORMAT_CHRONOMETER:I = 0x2

.field private static final KEY_COUNT_DOWN:Ljava/lang/String; = "countDown"

.field private static final KEY_FORMAT:Ljava/lang/String; = "format"

.field private static final KEY_PAUSED_DURATION:Ljava/lang/String; = "pausedDuration"

.field private static final KEY_ZERO_ELAPSED_REALTIME:Ljava/lang/String; = "zeroElapsedRealtime"

.field private static final KEY_ZERO_TIME:Ljava/lang/String; = "zeroTime"


# instance fields
.field private final mCountDown:Z

.field private final mFormat:I

.field private final mPausedDuration:Ljava/time/Duration;

.field private final mZeroElapsedRealtime:Ljava/lang/Long;

.field private final mZeroTime:Ljava/time/Instant;


# direct methods
.method static bridge synthetic -$$Nest$smfromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric$TimeDifference;
    .locals 0

    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric$TimeDifference;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Ljava/time/Instant;Ljava/lang/Long;Ljava/time/Duration;ZI)V
    .locals 5

    const/4 v0, 0x0

    .line 5817
    invoke-direct {p0, v0}, Landroidx/core/app/NotificationCompat$Metric$MetricValue;-><init>(Landroidx/core/app/NotificationCompat-IA;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    add-int/2addr v2, v3

    if-eqz p3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    add-int/2addr v2, v3

    if-ne v2, v1, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v0

    .line 5819
    :goto_3
    const-string v3, "Exactly one of zeroTime, zeroElapsedRealtime, or pausedDuration must be present; received %s,%s,%s"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v4

    .line 5818
    invoke-static {v2, v3, v4}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lt p5, v1, :cond_4

    const/4 v2, 0x2

    if-gt p5, v2, :cond_4

    move v0, v1

    .line 5824
    :cond_4
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 5823
    const-string v2, "Invalid format: %s"

    invoke-static {v0, v2, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5825
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroTime:Ljava/time/Instant;

    .line 5826
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    .line 5827
    iput-object p3, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mPausedDuration:Ljava/time/Duration;

    .line 5828
    iput-boolean p4, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mCountDown:Z

    .line 5829
    iput p5, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mFormat:I

    return-void
.end method

.method public static forPausedStopwatch(Ljava/time/Duration;I)Landroidx/core/app/NotificationCompat$Metric$TimeDifference;
    .locals 6

    .line 5812
    new-instance v0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;

    .line 5813
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/time/Duration;

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;-><init>(Ljava/time/Instant;Ljava/lang/Long;Ljava/time/Duration;ZI)V

    return-object v0
.end method

.method public static forPausedTimer(Ljava/time/Duration;I)Landroidx/core/app/NotificationCompat$Metric$TimeDifference;
    .locals 6

    .line 5801
    new-instance v0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;

    .line 5802
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/time/Duration;

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;-><init>(Ljava/time/Instant;Ljava/lang/Long;Ljava/time/Duration;ZI)V

    return-object v0
.end method

.method public static forStopwatch(JI)Landroidx/core/app/NotificationCompat$Metric$TimeDifference;
    .locals 6

    .line 5790
    new-instance v0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;-><init>(Ljava/time/Instant;Ljava/lang/Long;Ljava/time/Duration;ZI)V

    return-object v0
.end method

.method public static forStopwatch(Ljava/time/Instant;I)Landroidx/core/app/NotificationCompat$Metric$TimeDifference;
    .locals 6

    .line 5774
    new-instance v0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/time/Instant;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;-><init>(Ljava/time/Instant;Ljava/lang/Long;Ljava/time/Duration;ZI)V

    return-object v0
.end method

.method public static forTimer(JI)Landroidx/core/app/NotificationCompat$Metric$TimeDifference;
    .locals 6

    .line 5759
    new-instance v0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;-><init>(Ljava/time/Instant;Ljava/lang/Long;Ljava/time/Duration;ZI)V

    return-object v0
.end method

.method public static forTimer(Ljava/time/Instant;I)Landroidx/core/app/NotificationCompat$Metric$TimeDifference;
    .locals 6

    .line 5744
    new-instance v0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/time/Instant;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;-><init>(Ljava/time/Instant;Ljava/lang/Long;Ljava/time/Duration;ZI)V

    return-object v0
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric$TimeDifference;
    .locals 9

    .line 5834
    const-string/jumbo v0, "zeroTime"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5835
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 5836
    :goto_0
    const-string/jumbo v0, "zeroElapsedRealtime"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5837
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v2

    .line 5838
    :goto_1
    const-string v0, "pausedDuration"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5839
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v2

    :goto_2
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    return-object v2

    .line 5841
    :cond_4
    :goto_3
    new-instance v3, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;

    const-string v0, "countDown"

    .line 5842
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v0, "format"

    .line 5843
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct/range {v3 .. v8}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;-><init>(Ljava/time/Instant;Ljava/lang/Long;Ljava/time/Duration;ZI)V

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 5864
    instance-of v0, p1, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5865
    :cond_0
    check-cast p1, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 5867
    :cond_1
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroTime:Ljava/time/Instant;

    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroTime:Ljava/time/Instant;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    .line 5868
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mPausedDuration:Ljava/time/Duration;

    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mPausedDuration:Ljava/time/Duration;

    .line 5869
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mCountDown:Z

    iget-boolean v3, p1, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mCountDown:Z

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mFormat:I

    iget p1, p1, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mFormat:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public getFormat()I
    .locals 0

    .line 5966
    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mFormat:I

    return p0
.end method

.method public getPausedDuration()Ljava/time/Duration;
    .locals 0

    .line 5944
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mPausedDuration:Ljava/time/Duration;

    return-object p0
.end method

.method public getZeroElapsedRealtime()Ljava/lang/Long;
    .locals 0

    .line 5929
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    return-object p0
.end method

.method public getZeroTime()Ljava/time/Instant;
    .locals 0

    .line 5911
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroTime:Ljava/time/Instant;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 5876
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroTime:Ljava/time/Instant;

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mPausedDuration:Ljava/time/Duration;

    iget-boolean v3, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mCountDown:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mFormat:I

    .line 5877
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 5876
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isStopwatch()Z
    .locals 0

    .line 5952
    iget-boolean p0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mCountDown:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isTimer()Z
    .locals 0

    .line 5960
    iget-boolean p0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mCountDown:Z

    return p0
.end method

.method toBundle(Landroid/os/Bundle;)V
    .locals 4

    .line 5851
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroTime:Ljava/time/Instant;

    if-eqz v0, :cond_0

    .line 5852
    const-string/jumbo v1, "zeroTime"

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 5853
    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 5854
    const-string/jumbo v1, "zeroElapsedRealtime"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 5855
    :cond_1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mPausedDuration:Ljava/time/Duration;

    if-eqz v0, :cond_2

    .line 5856
    const-string v1, "pausedDuration"

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5858
    :cond_2
    :goto_0
    const-string v0, "countDown"

    iget-boolean v1, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mCountDown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5859
    const-string v0, "format"

    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mFormat:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 5883
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeDifference{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5884
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroTime:Ljava/time/Instant;

    if-eqz v1, :cond_0

    .line 5885
    const-string v1, "mZeroTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroTime:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5886
    :cond_0
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 5887
    const-string v1, "mZeroElapsedRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5888
    :cond_1
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mPausedDuration:Ljava/time/Duration;

    if-eqz v1, :cond_2

    .line 5889
    const-string v1, "mPausedDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mPausedDuration:Ljava/time/Duration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5891
    :cond_2
    :goto_0
    const-string v1, ", mCountDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mCountDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFormat="

    .line 5892
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mFormat:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v1, "}"

    .line 5893
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5894
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
