.class public Lde/j4velin/lib/colorpicker/ExtractFromPhoto;
.super Landroid/app/Activity;
.source "ExtractFromPhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_IMAGE_CAPTURE:I = 0x1


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private swatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic access$200(Lde/j4velin/lib/colorpicker/ExtractFromPhoto;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lde/j4velin/lib/colorpicker/ExtractFromPhoto;

    .prologue
    .line 32
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;->swatches:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 59
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 60
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 62
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v2

    const/16 v3, 0x10

    .line 63
    invoke-virtual {v2, v3}, Landroid/support/v7/graphics/Palette$Builder;->maximumColorCount(I)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v1

    .line 64
    .local v1, "p":Landroid/support/v7/graphics/Palette;
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;->swatches:Ljava/util/List;

    .line 65
    iget-object v2, p0, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "p":Landroid/support/v7/graphics/Palette;
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 68
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;->finish()V

    goto :goto_0

    .line 71
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, "takePictureIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p0, v1, v3}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;->startActivityForResult(Landroid/content/Intent;I)V

    .line 44
    sget v2, Lde/j4velin/lib/colorpicker/R$string;->press_color_to_apply:I

    invoke-virtual {p0, v2}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;->setTitle(I)V

    .line 45
    sget v2, Lde/j4velin/lib/colorpicker/R$layout;->extract:I

    invoke-virtual {p0, v2}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;->setContentView(I)V

    .line 46
    sget v2, Lde/j4velin/lib/colorpicker/R$id;->grid:I

    invoke-virtual {p0, v2}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 47
    .local v0, "mRecyclerView":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 48
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 49
    new-instance v2, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;-><init>(Lde/j4velin/lib/colorpicker/ExtractFromPhoto;Lde/j4velin/lib/colorpicker/ExtractFromPhoto$1;)V

    iput-object v2, p0, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 50
    iget-object v2, p0, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 55
    .end local v0    # "mRecyclerView":Landroid/support/v7/widget/RecyclerView;
    :goto_0
    return-void

    .line 52
    :cond_0
    sget v2, Lde/j4velin/lib/colorpicker/R$string;->camera_not_found:I

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 53
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;->finish()V

    goto :goto_0
.end method
