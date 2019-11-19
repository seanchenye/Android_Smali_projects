.class public Lorg/eazegraph/lib/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    const-class v0, Lorg/eazegraph/lib/utils/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eazegraph/lib/utils/Utils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLegendInformation(Ljava/util/List;FFLandroid/graphics/Paint;)V
    .locals 12
    .param p1, "_StartX"    # F
    .param p2, "_EndX"    # F
    .param p3, "_Paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/eazegraph/lib/models/BaseModel;",
            ">;FF",
            "Landroid/graphics/Paint;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "_Models":Ljava/util/List;, "Ljava/util/List<+Lorg/eazegraph/lib/models/BaseModel;>;"
    move v2, p1

    .line 80
    .local v2, "lastX":F
    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v6

    .line 84
    .local v6, "textMargin":F
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eazegraph/lib/models/BaseModel;

    .line 85
    .local v4, "model":Lorg/eazegraph/lib/models/BaseModel;
    invoke-virtual {v4}, Lorg/eazegraph/lib/models/BaseModel;->isIgnore()Z

    move-result v9

    if-nez v9, :cond_0

    .line 86
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 87
    .local v5, "textBounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Lorg/eazegraph/lib/models/BaseModel;->getLegendBounds()Landroid/graphics/RectF;

    move-result-object v3

    .line 89
    .local v3, "legendBounds":Landroid/graphics/RectF;
    invoke-virtual {v4}, Lorg/eazegraph/lib/models/BaseModel;->getLegendLabel()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v4}, Lorg/eazegraph/lib/models/BaseModel;->getLegendLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p3, v9, v10, v11, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 90
    invoke-virtual {v4, v5}, Lorg/eazegraph/lib/models/BaseModel;->setTextBounds(Landroid/graphics/Rect;)V

    .line 92
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 93
    .local v0, "centerX":F
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float v1, v0, v9

    .line 94
    .local v1, "centeredTextPos":F
    sub-float v7, v1, v6

    .line 96
    .local v7, "textStartPos":F
    cmpl-float v9, v2, p1

    if-nez v9, :cond_2

    .line 97
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lorg/eazegraph/lib/models/BaseModel;->setShowLabel(Z)V

    .line 99
    add-float v9, v7, v6

    cmpg-float v9, v9, p1

    if-gez v9, :cond_1

    .line 101
    float-to-int v9, p1

    invoke-virtual {v4, v9}, Lorg/eazegraph/lib/models/BaseModel;->setLegendLabelPosition(I)V

    .line 102
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v2, v9

    goto :goto_0

    .line 105
    :cond_1
    float-to-int v9, v1

    invoke-virtual {v4, v9}, Lorg/eazegraph/lib/models/BaseModel;->setLegendLabelPosition(I)V

    .line 106
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float v2, v0, v9

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v1

    cmpl-float v9, v9, p2

    if-lez v9, :cond_3

    .line 111
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lorg/eazegraph/lib/models/BaseModel;->setShowLabel(Z)V

    goto :goto_0

    .line 117
    :cond_3
    cmpg-float v9, v7, v2

    if-gez v9, :cond_5

    .line 118
    add-float v9, v2, v6

    iget v10, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4

    .line 119
    add-float v9, v2, v6

    float-to-int v9, v9

    invoke-virtual {v4, v9}, Lorg/eazegraph/lib/models/BaseModel;->setLegendLabelPosition(I)V

    .line 120
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lorg/eazegraph/lib/models/BaseModel;->setShowLabel(Z)V

    .line 121
    add-float v9, v2, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    add-float v2, v9, v10

    goto/16 :goto_0

    .line 123
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lorg/eazegraph/lib/models/BaseModel;->setShowLabel(Z)V

    goto/16 :goto_0

    .line 127
    :cond_5
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lorg/eazegraph/lib/models/BaseModel;->setShowLabel(Z)V

    .line 128
    float-to-int v9, v1

    invoke-virtual {v4, v9}, Lorg/eazegraph/lib/models/BaseModel;->setLegendLabelPosition(I)V

    .line 129
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float v2, v0, v9

    goto/16 :goto_0

    .line 135
    .end local v0    # "centerX":F
    .end local v1    # "centeredTextPos":F
    .end local v3    # "legendBounds":Landroid/graphics/RectF;
    .end local v4    # "model":Lorg/eazegraph/lib/models/BaseModel;
    .end local v5    # "textBounds":Landroid/graphics/Rect;
    .end local v7    # "textStartPos":F
    :cond_6
    return-void
.end method

.method public static calculateMaxTextHeight(Landroid/graphics/Paint;)F
    .locals 4
    .param p0, "_Paint"    # Landroid/graphics/Paint;

    .prologue
    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 159
    .local v0, "height":Landroid/graphics/Rect;
    const-string/jumbo v1, "MgHITasger"

    .line 160
    .local v1, "text":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    return v2
.end method

.method public static dpToPx(F)F
    .locals 1
    .param p0, "_Dp"    # F

    .prologue
    .line 42
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static getFloatString(FZ)Ljava/lang/String;
    .locals 2
    .param p0, "_value"    # F
    .param p1, "_showDecimal"    # Z

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static intersectsPointWithRectF(Landroid/graphics/RectF;FF)Z
    .locals 1
    .param p0, "_Rect"    # Landroid/graphics/RectF;
    .param p1, "_X"    # F
    .param p2, "_Y"    # F

    .prologue
    .line 172
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static vectorToScalarScroll(FFFF)F
    .locals 8
    .param p0, "_Dx"    # F
    .param p1, "_Dy"    # F
    .param p2, "_X"    # F
    .param p3, "_Y"    # F

    .prologue
    .line 56
    mul-float v5, p0, p0

    mul-float v6, p1, p1

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 60
    .local v3, "l":F
    neg-float v0, p3

    .line 61
    .local v0, "crossX":F
    move v1, p2

    .line 63
    .local v1, "crossY":F
    mul-float v5, v0, p0

    mul-float v6, v1, p1

    add-float v2, v5, v6

    .line 64
    .local v2, "dot":F
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v4

    .line 66
    .local v4, "sign":F
    mul-float v5, v3, v4

    return v5
.end method
