.class public final synthetic Landroidx/appcompat/widget/AppCompatTextView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/widget/AppCompatTextView;

    check-cast p1, Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->lambda$getFontVariationSettingsManager$0$androidx-appcompat-widget-AppCompatTextView(Landroid/graphics/Typeface;)V

    return-void
.end method
