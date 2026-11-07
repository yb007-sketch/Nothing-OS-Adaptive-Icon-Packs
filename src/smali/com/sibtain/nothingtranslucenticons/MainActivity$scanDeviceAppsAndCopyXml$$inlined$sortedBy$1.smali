.class public final Lcom/sibtain/nothingtranslucenticons/MainActivity$scanDeviceAppsAndCopyXml$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sibtain/nothingtranslucenticons/MainActivity;->scanDeviceAppsAndCopyXml()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 MainActivity.kt\ncom/sibtain/nothingtranslucenticons/MainActivity\n*L\n1#1,328:1\n360#2:329\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sibtain/nothingtranslucenticons/MainActivity;


# direct methods
.method public constructor <init>(Lcom/sibtain/nothingtranslucenticons/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sibtain/nothingtranslucenticons/MainActivity$scanDeviceAppsAndCopyXml$$inlined$sortedBy$1;->this$0:Lcom/sibtain/nothingtranslucenticons/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 329
    iget-object v0, p0, Lcom/sibtain/nothingtranslucenticons/MainActivity$scanDeviceAppsAndCopyXml$$inlined$sortedBy$1;->this$0:Lcom/sibtain/nothingtranslucenticons/MainActivity;

    invoke-virtual {v0}, Lcom/sibtain/nothingtranslucenticons/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 329
    iget-object p0, p0, Lcom/sibtain/nothingtranslucenticons/MainActivity$scanDeviceAppsAndCopyXml$$inlined$sortedBy$1;->this$0:Lcom/sibtain/nothingtranslucenticons/MainActivity;

    invoke-virtual {p0}, Lcom/sibtain/nothingtranslucenticons/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    check-cast p0, Ljava/lang/Comparable;

    invoke-static {p1, p0}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
