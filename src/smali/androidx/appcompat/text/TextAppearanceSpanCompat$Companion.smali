.class public final Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion;
.super Ljava/lang/Object;
.source "TextAppearanceSpanCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/text/TextAppearanceSpanCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion$FontFetcher;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000=\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0011\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0017B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J0\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0018\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002J=\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008\u0016R\u0010\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0012\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Landroidx/appcompat/text/TextAppearanceSpanCompat;",
        "context",
        "Landroid/content/Context;",
        "appearance",
        "",
        "colorList",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "onComplete",
        "Ljava/lang/Runnable;",
        "extractFontFamilyAttribute",
        "DEFAULT_FONT_FETCHER",
        "androidx/appcompat/text/TextAppearanceSpanCompat$Companion$DEFAULT_FONT_FETCHER$1",
        "Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion$DEFAULT_FONT_FETCHER$1;",
        "createInternal",
        "fetcher",
        "Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion$FontFetcher;",
        "createInternal$appcompat",
        "FontFetcher",
        "appcompat"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion;-><init>()V

    return-void
.end method

.method static final createInternal$lambda$0(Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion$FontFetcher;Landroid/content/Context;ILjava/util/concurrent/atomic/AtomicReference;Ljava/lang/Runnable;)V
    .locals 0

    .line 179
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion$FontFetcher;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p3, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 183
    :cond_0
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final extractFontFamilyAttribute(Landroid/content/Context;I)I
    .locals 0

    .line 116
    sget-object p0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const-string p1, "obtainStyledAttributes(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    :try_start_0
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method


# virtual methods
.method public final create(Landroid/content/Context;IILjava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroidx/appcompat/text/TextAppearanceSpanCompat;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Landroidx/appcompat/text/TextAppearanceSpanCompat;->access$getDEFAULT_FONT_FETCHER$cp()Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion$DEFAULT_FONT_FETCHER$1;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion$FontFetcher;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 106
    invoke-virtual/range {v1 .. v7}, Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion;->createInternal$appcompat(Landroid/content/Context;IILjava/util/concurrent/Executor;Ljava/lang/Runnable;Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion$FontFetcher;)Landroidx/appcompat/text/TextAppearanceSpanCompat;

    move-result-object p0

    return-object p0
.end method

.method public final createInternal$appcompat(Landroid/content/Context;IILjava/util/concurrent/Executor;Ljava/lang/Runnable;Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion$FontFetcher;)Landroidx/appcompat/text/TextAppearanceSpanCompat;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetcher"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion;->extractFontFamilyAttribute(Landroid/content/Context;I)I

    move-result v4

    const/4 p0, -0x1

    const/4 v0, 0x0

    if-ne v4, p0, :cond_0

    .line 153
    new-instance p0, Landroidx/appcompat/text/TextAppearanceSpanCompat;

    .line 158
    new-instance p5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p5, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    const/4 p6, 0x0

    move p4, v4

    .line 153
    invoke-direct/range {p0 .. p6}, Landroidx/appcompat/text/TextAppearanceSpanCompat;-><init>(Landroid/content/Context;IIILjava/util/concurrent/atomic/AtomicReference;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    .line 163
    :cond_0
    invoke-interface {p6, p1, v4}, Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion$FontFetcher;->getCachedFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object v1, p0

    .line 165
    new-instance p0, Landroidx/appcompat/text/TextAppearanceSpanCompat;

    .line 170
    new-instance p5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p5, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    const/4 p6, 0x0

    move p4, v4

    .line 165
    invoke-direct/range {p0 .. p6}, Landroidx/appcompat/text/TextAppearanceSpanCompat;-><init>(Landroid/content/Context;IIILjava/util/concurrent/atomic/AtomicReference;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    .line 175
    :cond_1
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 178
    new-instance v1, Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion$$ExternalSyntheticLambda0;

    move-object v6, p5

    move-object v2, p6

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion$FontFetcher;Landroid/content/Context;ILjava/util/concurrent/atomic/AtomicReference;Ljava/lang/Runnable;)V

    move-object p5, v5

    invoke-interface {p4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 185
    new-instance p0, Landroidx/appcompat/text/TextAppearanceSpanCompat;

    const/4 p6, 0x0

    move p4, v4

    invoke-direct/range {p0 .. p6}, Landroidx/appcompat/text/TextAppearanceSpanCompat;-><init>(Landroid/content/Context;IIILjava/util/concurrent/atomic/AtomicReference;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
