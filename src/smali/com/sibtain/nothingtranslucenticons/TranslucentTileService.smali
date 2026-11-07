.class public final Lcom/sibtain/nothingtranslucenticons/TranslucentTileService;
.super Landroid/service/quicksettings/TileService;
.source "TranslucentTileService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sibtain/nothingtranslucenticons/TranslucentTileService;",
        "Landroid/service/quicksettings/TileService;",
        "<init>",
        "()V",
        "onStartListening",
        "",
        "onClick",
        "updateTileState",
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
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method private final updateTileState()V
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcom/sibtain/nothingtranslucenticons/TranslucentTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    sget-object v1, Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;->INSTANCE:Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;->isSystemDarkMode(Landroid/content/Context;)Z

    move-result p0

    const/4 v1, 0x2

    .line 22
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    if-eqz p0, :cond_1

    .line 23
    const-string p0, "Icons: Dark Glass"

    goto :goto_0

    :cond_1
    const-string p0, "Icons: Light Frost"

    :goto_0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 24
    const-string p0, "Tap to sync launcher"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/service/quicksettings/Tile;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 14
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 15
    sget-object v0, Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;->INSTANCE:Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sibtain/nothingtranslucenticons/NothingLauncherSync;->forceLauncherIconReload(Landroid/content/Context;Z)V

    .line 16
    invoke-direct {p0}, Lcom/sibtain/nothingtranslucenticons/TranslucentTileService;->updateTileState()V

    return-void
.end method

.method public onStartListening()V
    .locals 0

    .line 9
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 10
    invoke-direct {p0}, Lcom/sibtain/nothingtranslucenticons/TranslucentTileService;->updateTileState()V

    return-void
.end method
