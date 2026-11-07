.class public final Lcom/sibtain/nothingtranslucenticons/ThemeSyncService;
.super Landroid/app/Service;
.source "ThemeSyncService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\"\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0016J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0008H\u0016J\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016R\u0010\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/sibtain/nothingtranslucenticons/ThemeSyncService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "configAndWallpaperReceiver",
        "com/sibtain/nothingtranslucenticons/ThemeSyncService$configAndWallpaperReceiver$1",
        "Lcom/sibtain/nothingtranslucenticons/ThemeSyncService$configAndWallpaperReceiver$1;",
        "onCreate",
        "",
        "onStartCommand",
        "",
        "intent",
        "Landroid/content/Intent;",
        "flags",
        "startId",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onDestroy",
        "onBind",
        "Landroid/os/IBinder;",
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


# instance fields
.field private final configAndWallpaperReceiver:Lcom/sibtain/nothingtranslucenticons/ThemeSyncService$configAndWallpaperReceiver$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    new-instance v0, Lcom/sibtain/nothingtranslucenticons/ThemeSyncService$configAndWallpaperReceiver$1;

    invoke-direct {v0}, Lcom/sibtain/nothingtranslucenticons/ThemeSyncService$configAndWallpaperReceiver$1;-><init>()V

    iput-object v0, p0, Lcom/sibtain/nothingtranslucenticons/ThemeSyncService;->configAndWallpaperReceiver:Lcom/sibtain/nothingtranslucenticons/ThemeSyncService$configAndWallpaperReceiver$1;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 51
    sget-object p1, Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;->INSTANCE:Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;->syncIfThemeChanged(Landroid/content/Context;)Z

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 32
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/sibtain/nothingtranslucenticons/ThemeSyncService;->configAndWallpaperReceiver:Lcom/sibtain/nothingtranslucenticons/ThemeSyncService$configAndWallpaperReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sibtain/nothingtranslucenticons/ThemeSyncService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/sibtain/nothingtranslucenticons/ThemeSyncService;->configAndWallpaperReceiver:Lcom/sibtain/nothingtranslucenticons/ThemeSyncService$configAndWallpaperReceiver$1;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sibtain/nothingtranslucenticons/ThemeSyncService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :catch_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 45
    sget-object p1, Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;->INSTANCE:Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;->syncIfThemeChanged(Landroid/content/Context;)Z

    const/4 p0, 0x1

    return p0
.end method
