.class public final Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionCompat"
.end annotation


# instance fields
.field final mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo$Selection;)V
    .locals 1

    .line 2293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2294
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastB_1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2295
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionCompat;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2297
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionCompat;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;)V
    .locals 1

    .line 2280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2281
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastB_1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2282
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    iget-object p1, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;->mPosition:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    iget-object p2, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;->mPosition:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    invoke-direct {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;)V

    iput-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionCompat;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2284
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionCompat;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 2367
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastB_1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2368
    instance-of v0, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionCompat;

    if-nez v0, :cond_0

    return v1

    .line 2371
    :cond_0
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionCompat;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    if-eqz p0, :cond_1

    .line 2372
    check-cast p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionCompat;

    iget-object p1, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionCompat;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    return v1

    :cond_2
    if-ne p0, p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public getEnd()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;
    .locals 1

    .line 2326
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastB_1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2327
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionCompat;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStart()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;
    .locals 1

    .line 2310
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastB_1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2311
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionCompat;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 2351
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastB_1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2352
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionCompat;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->hashCode()I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public unwrap()Landroid/view/accessibility/AccessibilityNodeInfo$Selection;
    .locals 0

    .line 2340
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionCompat;->mSelection:Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    return-object p0
.end method
