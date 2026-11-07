.class final Landroidx/core/view/inputmethod/TextAttributeCompat$TextAttributeCompatApi37Impl;
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
    name = "TextAttributeCompatApi37Impl"
.end annotation


# instance fields
.field final mObject:Landroid/view/inputmethod/TextAttribute;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    check-cast p1, Landroid/view/inputmethod/TextAttribute;

    iput-object p1, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$TextAttributeCompatApi37Impl;->mObject:Landroid/view/inputmethod/TextAttribute;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Landroid/os/PersistableBundle;Z)V
    .locals 1
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

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroid/view/inputmethod/TextAttribute$Builder;

    invoke-direct {v0}, Landroid/view/inputmethod/TextAttribute$Builder;-><init>()V

    .line 129
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/TextAttribute$Builder;->setTextConversionSuggestions(Ljava/util/List;)Landroid/view/inputmethod/TextAttribute$Builder;

    move-result-object p1

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/TextAttribute$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/view/inputmethod/TextAttribute$Builder;

    move-result-object p1

    .line 131
    invoke-virtual {p1, p3}, Landroid/view/inputmethod/TextAttribute$Builder;->setTextSuggestionSelected(Z)Landroid/view/inputmethod/TextAttribute$Builder;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/view/inputmethod/TextAttribute$Builder;->build()Landroid/view/inputmethod/TextAttribute;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$TextAttributeCompatApi37Impl;->mObject:Landroid/view/inputmethod/TextAttribute;

    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/PersistableBundle;
    .locals 0

    .line 147
    iget-object p0, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$TextAttributeCompatApi37Impl;->mObject:Landroid/view/inputmethod/TextAttribute;

    invoke-virtual {p0}, Landroid/view/inputmethod/TextAttribute;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method public getTextAttribute()Ljava/lang/Object;
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$TextAttributeCompatApi37Impl;->mObject:Landroid/view/inputmethod/TextAttribute;

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

    .line 137
    iget-object p0, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$TextAttributeCompatApi37Impl;->mObject:Landroid/view/inputmethod/TextAttribute;

    invoke-virtual {p0}, Landroid/view/inputmethod/TextAttribute;->getTextConversionSuggestions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isTextSuggestionSelected()Z
    .locals 0

    .line 142
    iget-object p0, p0, Landroidx/core/view/inputmethod/TextAttributeCompat$TextAttributeCompatApi37Impl;->mObject:Landroid/view/inputmethod/TextAttribute;

    invoke-virtual {p0}, Landroid/view/inputmethod/TextAttribute;->isTextSuggestionSelected()Z

    move-result p0

    return p0
.end method
