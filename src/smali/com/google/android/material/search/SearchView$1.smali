.class Lcom/google/android/material/search/SearchView$1;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/search/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/search/SearchView;


# direct methods
.method public static synthetic $r8$lambda$BMi3Nkni3MxE_GKLFY56pGI2TEs(Landroid/widget/EditText;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/google/android/material/search/SearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/google/android/material/search/SearchView$1;->this$0:Lcom/google/android/material/search/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchModeChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/google/android/material/search/SearchView$1;->this$0:Lcom/google/android/material/search/SearchView;

    .line 187
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/search/SearchView$1;->this$0:Lcom/google/android/material/search/SearchView;

    .line 188
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/search/SearchView$1;->this$0:Lcom/google/android/material/search/SearchView;

    iget-object p1, p1, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/search/SearchView$1;->this$0:Lcom/google/android/material/search/SearchView;

    iget-object p1, p1, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 190
    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/google/android/material/search/SearchView$1;->this$0:Lcom/google/android/material/search/SearchView;

    iget-object p1, p1, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/google/android/material/search/SearchView$1;->this$0:Lcom/google/android/material/search/SearchView;

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/material/search/SearchView$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/material/search/SearchView$1$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
