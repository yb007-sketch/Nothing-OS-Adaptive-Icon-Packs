.class public final Landroidx/core/app/NotificationCompat$Metric$FixedDate;
.super Landroidx/core/app/NotificationCompat$Metric$MetricValue;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedDate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$Metric$FixedDate$Format;
    }
.end annotation


# static fields
.field public static final FORMAT_AUTOMATIC:I = 0x0

.field public static final FORMAT_LONG_DATE:I = 0x1

.field public static final FORMAT_SHORT_DATE:I = 0x2

.field private static final KEY_FORMAT:Ljava/lang/String; = "format"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private final mFormat:I

.field private final mValue:Ljava/time/LocalDate;


# direct methods
.method static bridge synthetic -$$Nest$smfromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric$FixedDate;
    .locals 0

    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Metric$FixedDate;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric$FixedDate;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/time/LocalDate;)V
    .locals 1

    const/4 v0, 0x0

    .line 6012
    invoke-direct {p0, p1, v0}, Landroidx/core/app/NotificationCompat$Metric$FixedDate;-><init>(Ljava/time/LocalDate;I)V

    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDate;I)V
    .locals 2

    const/4 v0, 0x0

    .line 6019
    invoke-direct {p0, v0}, Landroidx/core/app/NotificationCompat$Metric$MetricValue;-><init>(Landroidx/core/app/NotificationCompat-IA;)V

    .line 6020
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/LocalDate;

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedDate;->mValue:Ljava/time/LocalDate;

    if-ltz p2, :cond_0

    const/4 p1, 0x2

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6022
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 6021
    const-string v1, "Invalid format: %s"

    invoke-static {p1, v1, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6023
    iput p2, p0, Landroidx/core/app/NotificationCompat$Metric$FixedDate;->mFormat:I

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Metric$FixedDate;
    .locals 3

    .line 6028
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6029
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 6031
    const-string v1, "format"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 6032
    new-instance v1, Landroidx/core/app/NotificationCompat$Metric$FixedDate;

    invoke-direct {v1, v0, p0}, Landroidx/core/app/NotificationCompat$Metric$FixedDate;-><init>(Ljava/time/LocalDate;I)V

    return-object v1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 6046
    instance-of v0, p1, Landroidx/core/app/NotificationCompat$Metric$FixedDate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6047
    :cond_0
    check-cast p1, Landroidx/core/app/NotificationCompat$Metric$FixedDate;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 6049
    :cond_1
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Metric$FixedDate;->mValue:Ljava/time/LocalDate;

    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Metric$FixedDate;->mValue:Ljava/time/LocalDate;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedDate;->mFormat:I

    iget p1, p1, Landroidx/core/app/NotificationCompat$Metric$FixedDate;->mFormat:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public getFormat()I
    .locals 0

    .line 6074
    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedDate;->mFormat:I

    return p0
.end method

.method public getValue()Ljava/time/LocalDate;
    .locals 0

    .line 6069
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedDate;->mValue:Ljava/time/LocalDate;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 6055
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedDate;->mValue:Ljava/time/LocalDate;

    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedDate;->mFormat:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method toBundle(Landroid/os/Bundle;)V
    .locals 3

    .line 6040
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedDate;->mValue:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-string/jumbo v2, "value"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6041
    const-string v0, "format"

    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedDate;->mFormat:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 6061
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

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedDate;->mValue:Ljava/time/LocalDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedDate;->mFormat:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
