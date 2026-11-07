.class Lcom/google/android/material/loadingindicator/LoadingIndicator$2;
.super Ljava/lang/Object;
.source "LoadingIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/loadingindicator/LoadingIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/loadingindicator/LoadingIndicator;


# direct methods
.method constructor <init>(Lcom/google/android/material/loadingindicator/LoadingIndicator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 450
    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator$2;->this$0:Lcom/google/android/material/loadingindicator/LoadingIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator$2;->this$0:Lcom/google/android/material/loadingindicator/LoadingIndicator;

    invoke-static {v0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->access$100(Lcom/google/android/material/loadingindicator/LoadingIndicator;)V

    .line 454
    iget-object p0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator$2;->this$0:Lcom/google/android/material/loadingindicator/LoadingIndicator;

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->access$202(Lcom/google/android/material/loadingindicator/LoadingIndicator;J)J

    return-void
.end method
