.class Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$Api37Impl;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api37Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMathInfo(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo$MathInfo;
    .locals 1

    .line 6818
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$MathInfo;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$MathInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStructuredDataInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6838
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getStructuredDataInfo()Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getStructuredDataInfoAttribute(Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6878
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStructuredDataInfoAttributes(Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 6885
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 6888
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;->getAttributes()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getStructuredDataInfoTag(Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6848
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getView(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;)Landroid/view/View;
    .locals 0

    .line 6809
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static getVirtualDescendantId(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;)I
    .locals 0

    .line 6813
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->getVirtualDescendantId()I

    move-result p0

    return p0
.end method

.method public static putStructuredDataInfoAttribute(Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 6859
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static removeStructuredDataInfoAttribute(Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 6868
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public static setStructuredDataInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 6828
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStructuredDataInfo(Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;)V

    return-void
.end method

.method public static structuredDataInfoEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 6906
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static structuredDataInfoHashCode(Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6897
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$StructuredDataInfo;->hashCode()I

    move-result p0

    return p0
.end method
