.class public final Lcom/sibtain/nothingtranslucenticons/ThemeSyncService$configAndWallpaperReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "ThemeSyncService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sibtain/nothingtranslucenticons/ThemeSyncService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/sibtain/nothingtranslucenticons/ThemeSyncService$configAndWallpaperReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x6210d4ee

    if-eq p2, v0, :cond_3

    const v0, 0x9780086

    if-eq p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 25
    :cond_2
    sget-object p0, Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;->INSTANCE:Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;

    invoke-virtual {p0, p1}, Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;->syncIfThemeChanged(Landroid/content/Context;)Z

    return-void

    .line 20
    :cond_3
    const-string p2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    .line 22
    :cond_4
    sget-object p0, Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;->INSTANCE:Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;->forceLauncherIconReload(Landroid/content/Context;Z)V

    :cond_5
    :goto_1
    return-void
.end method
