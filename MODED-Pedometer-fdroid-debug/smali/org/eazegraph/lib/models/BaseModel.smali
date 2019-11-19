.class public abstract Lorg/eazegraph/lib/models/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"


# instance fields
.field private mIgnore:Z

.field private mLegendBounds:Landroid/graphics/RectF;

.field protected mLegendLabel:Ljava/lang/String;

.field private mLegendLabelPosition:I

.field protected mShowLabel:Z

.field private mTextBounds:Landroid/graphics/Rect;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eazegraph/lib/models/BaseModel;->mIgnore:Z

    .line 34
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "_legendLabel"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eazegraph/lib/models/BaseModel;->mIgnore:Z

    .line 30
    iput-object p1, p0, Lorg/eazegraph/lib/models/BaseModel;->mLegendLabel:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public canShowLabel()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/eazegraph/lib/models/BaseModel;->mShowLabel:Z

    return v0
.end method

.method public getLegendBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/eazegraph/lib/models/BaseModel;->mLegendBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getLegendLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/eazegraph/lib/models/BaseModel;->mLegendLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLegendLabelPosition()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/eazegraph/lib/models/BaseModel;->mLegendLabelPosition:I

    return v0
.end method

.method public getTextBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/eazegraph/lib/models/BaseModel;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isIgnore()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/eazegraph/lib/models/BaseModel;->mIgnore:Z

    return v0
.end method

.method public setIgnore(Z)V
    .locals 0
    .param p1, "_ignore"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/eazegraph/lib/models/BaseModel;->mIgnore:Z

    .line 82
    return-void
.end method

.method public setLegendBounds(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "_legendBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/eazegraph/lib/models/BaseModel;->mLegendBounds:Landroid/graphics/RectF;

    .line 66
    return-void
.end method

.method public setLegendLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "_LegendLabel"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lorg/eazegraph/lib/models/BaseModel;->mLegendLabel:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setLegendLabelPosition(I)V
    .locals 0
    .param p1, "_legendLabelPosition"    # I

    .prologue
    .line 57
    iput p1, p0, Lorg/eazegraph/lib/models/BaseModel;->mLegendLabelPosition:I

    .line 58
    return-void
.end method

.method public setShowLabel(Z)V
    .locals 0
    .param p1, "_showLabel"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lorg/eazegraph/lib/models/BaseModel;->mShowLabel:Z

    .line 50
    return-void
.end method

.method public setTextBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "_textBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/eazegraph/lib/models/BaseModel;->mTextBounds:Landroid/graphics/Rect;

    .line 74
    return-void
.end method
