.class public final Landroidx/core/view/inputmethod/TextAttributeCompat$Builder;
.super Ljava/lang/Object;
.source "TextAttributeCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/inputmethod/TextAttributeCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mExtras:Landroid/os/PersistableBundle;

.field private mTextConversionSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextSuggestionSelected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$Builder;->mTextConversionSuggestions:Ljava/util/List;

    .line 248
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$Builder;->mExtras:Landroid/os/PersistableBundle;

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$Builder;->mTextSuggestionSelected:Z

    return-void
.end method


# virtual methods
.method public build()Landroidx/core/view/inputmethod/TextAttributeCompat;
    .locals 4

    .line 280
    new-instance v0, Landroidx/core/view/inputmethod/TextAttributeCompat;

    iget-object v1, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$Builder;->mTextConversionSuggestions:Ljava/util/List;

    iget-object v2, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$Builder;->mExtras:Landroid/os/PersistableBundle;

    iget-boolean p0, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$Builder;->mTextSuggestionSelected:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Landroidx/core/view/inputmethod/TextAttributeCompat;-><init>(Ljava/util/List;Landroid/os/PersistableBundle;ZLandroidx/core/view/inputmethod/TextAttributeCompat-IA;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroidx/core/view/inputmethod/TextAttributeCompat$Builder;
    .locals 0

    .line 272
    iput-object p1, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public setTextConversionSuggestions(Ljava/util/List;)Landroidx/core/view/inputmethod/TextAttributeCompat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/view/inputmethod/TextAttributeCompat$Builder;"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$Builder;->mTextConversionSuggestions:Ljava/util/List;

    return-object p0
.end method

.method public setTextSuggestionSelected(Z)Landroidx/core/view/inputmethod/TextAttributeCompat$Builder;
    .locals 0

    .line 264
    iput-boolean p1, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$Builder;->mTextSuggestionSelected:Z

    return-object p0
.end method
