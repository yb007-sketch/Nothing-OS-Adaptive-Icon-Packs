.class Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl$VarCacheKey;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VarCacheKey"
.end annotation


# instance fields
.field private final mFontVariationSettings:Ljava/lang/String;

.field private final mTypeface:Landroid/graphics/Typeface;

.field private final mWeightAdjustment:I


# direct methods
.method constructor <init>(Landroid/graphics/Typeface;Ljava/lang/String;I)V
    .locals 0

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl$VarCacheKey;->mTypeface:Landroid/graphics/Typeface;

    .line 731
    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl$VarCacheKey;->mFontVariationSettings:Ljava/lang/String;

    .line 732
    iput p3, p0, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl$VarCacheKey;->mWeightAdjustment:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 737
    instance-of v0, p1, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl$VarCacheKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 738
    :cond_0
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl$VarCacheKey;

    .line 739
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl$VarCacheKey;->mWeightAdjustment:I

    iget v2, p1, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl$VarCacheKey;->mWeightAdjustment:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl$VarCacheKey;->mTypeface:Landroid/graphics/Typeface;

    iget-object v2, p1, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl$VarCacheKey;->mTypeface:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl$VarCacheKey;->mFontVariationSettings:Ljava/lang/String;

    iget-object p1, p1, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl$VarCacheKey;->mFontVariationSettings:Ljava/lang/String;

    .line 740
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 746
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl$VarCacheKey;->mTypeface:Landroid/graphics/Typeface;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl$VarCacheKey;->mFontVariationSettings:Ljava/lang/String;

    iget p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl$VarCacheKey;->mWeightAdjustment:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
