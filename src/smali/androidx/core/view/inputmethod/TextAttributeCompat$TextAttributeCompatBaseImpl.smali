.class final Landroidx/core/view/inputmethod/TextAttributeCompat$TextAttributeCompatBaseImpl;
.super Ljava/lang/Object;
.source "TextAttributeCompat.java"

# interfaces
.implements Landroidx/core/view/inputmethod/TextAttributeCompat$TextAttributeCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/inputmethod/TextAttributeCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextAttributeCompatBaseImpl"
.end annotation


# instance fields
.field private final mExtras:Landroid/os/PersistableBundle;

.field private final mTextConversionSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextSuggestionSelected:Z


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/os/PersistableBundle;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/PersistableBundle;",
            "Z)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$TextAttributeCompatBaseImpl;->mTextConversionSuggestions:Ljava/util/List;

    .line 53
    iput-object p2, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$TextAttributeCompatBaseImpl;->mExtras:Landroid/os/PersistableBundle;

    .line 54
    iput-boolean p3, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$TextAttributeCompatBaseImpl;->mTextSuggestionSelected:Z

    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/PersistableBundle;
    .locals 0

    .line 69
    iget-object p0, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$TextAttributeCompatBaseImpl;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public getTextAttribute()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTextConversionSuggestions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$TextAttributeCompatBaseImpl;->mTextConversionSuggestions:Ljava/util/List;

    return-object p0
.end method

.method public isTextSuggestionSelected()Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$TextAttributeCompatBaseImpl;->mTextSuggestionSelected:Z

    return p0
.end method
