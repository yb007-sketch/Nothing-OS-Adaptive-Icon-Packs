.class public abstract Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$StructuredDataInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StructuredDataInfoCompat"
.end annotation


# instance fields
.field final mStructuredDataInfo:Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;


# direct methods
.method protected constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;)V
    .locals 0

    .line 1578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$StructuredDataInfoCompat;->mStructuredDataInfo:Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1694
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x25

    if-lt v0, v1, :cond_0

    .line 1695
    instance-of v0, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$StructuredDataInfoCompat;

    if-eqz v0, :cond_0

    .line 1696
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$StructuredDataInfoCompat;->mStructuredDataInfo:Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;

    check-cast p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$StructuredDataInfoCompat;

    iget-object p1, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$StructuredDataInfoCompat;->mStructuredDataInfo:Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;

    invoke-static {p0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$Api37Impl;->structuredDataInfoEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1646
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x25

    if-lt v0, v1, :cond_0

    .line 1647
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$StructuredDataInfoCompat;->mStructuredDataInfo:Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;

    invoke-static {p0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$Api37Impl;->getStructuredDataInfoAttribute(Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1663
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x25

    if-lt v0, v1, :cond_0

    .line 1664
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$StructuredDataInfoCompat;->mStructuredDataInfo:Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;

    invoke-static {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$Api37Impl;->getStructuredDataInfoAttributes(Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 1667
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 1592
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x25

    if-lt v0, v1, :cond_0

    .line 1593
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$StructuredDataInfoCompat;->mStructuredDataInfo:Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;

    invoke-static {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$Api37Impl;->getStructuredDataInfoTag(Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 1678
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x25

    if-lt v0, v1, :cond_0

    .line 1679
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$StructuredDataInfoCompat;->mStructuredDataInfo:Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;

    invoke-static {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$Api37Impl;->structuredDataInfoHashCode(Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public putAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1612
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x25

    if-lt v0, v1, :cond_0

    .line 1613
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$StructuredDataInfoCompat;->mStructuredDataInfo:Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;

    invoke-static {p0, p1, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$Api37Impl;->putStructuredDataInfoAttribute(Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 2

    .line 1628
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x25

    if-lt v0, v1, :cond_0

    .line 1629
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$StructuredDataInfoCompat;->mStructuredDataInfo:Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;

    invoke-static {p0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$Api37Impl;->removeStructuredDataInfoAttribute(Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
