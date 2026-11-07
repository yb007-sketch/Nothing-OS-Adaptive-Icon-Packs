.class Landroidx/core/view/DisplayShapeCompat$Impl34;
.super Ljava/lang/Object;
.source "DisplayShapeCompat.java"

# interfaces
.implements Landroidx/core/view/DisplayShapeCompat$Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DisplayShapeCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl34"
.end annotation


# instance fields
.field private final mPlatformDisplayShape:Landroid/view/DisplayShape;


# direct methods
.method constructor <init>(Landroid/view/DisplayShape;)V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Landroidx/core/view/DisplayShapeCompat$Impl34;->mPlatformDisplayShape:Landroid/view/DisplayShape;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 408
    :cond_0
    instance-of v0, p1, Landroidx/core/view/DisplayShapeCompat$Impl34;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 409
    :cond_1
    check-cast p1, Landroidx/core/view/DisplayShapeCompat$Impl34;

    .line 410
    iget-object p0, p0, Landroidx/core/view/DisplayShapeCompat$Impl34;->mPlatformDisplayShape:Landroid/view/DisplayShape;

    iget-object p1, p1, Landroidx/core/view/DisplayShapeCompat$Impl34;->mPlatformDisplayShape:Landroid/view/DisplayShape;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 0

    .line 396
    iget-object p0, p0, Landroidx/core/view/DisplayShapeCompat$Impl34;->mPlatformDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {p0}, Landroid/view/DisplayShape;->getPath()Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public getPlatformDisplayShape()Landroid/view/DisplayShape;
    .locals 0

    .line 402
    iget-object p0, p0, Landroidx/core/view/DisplayShapeCompat$Impl34;->mPlatformDisplayShape:Landroid/view/DisplayShape;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 415
    iget-object p0, p0, Landroidx/core/view/DisplayShapeCompat$Impl34;->mPlatformDisplayShape:Landroid/view/DisplayShape;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayShapeCompat{mPlatformDisplayShape="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/core/view/DisplayShapeCompat$Impl34;->mPlatformDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
