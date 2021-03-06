.class public Lcom/android/camera/fragment/FragmentBeauty;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBeauty.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$FrontBeautyProtocol;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;
    }
.end annotation


# instance fields
.field private mBackButton:Landroid/widget/ImageView;

.field private mBeautyAdvance:Landroid/widget/TextView;

.field private mBeautyLevel:Landroid/widget/TextView;

.field private mBeautyPagerAdapter:Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;

.field private mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

.field private mViewPager:Lcom/android/camera/ui/NoScrollViewPager;


# direct methods
.method static synthetic -get0(Lcom/android/camera/fragment/FragmentBeauty;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBeauty;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyAdvance:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/fragment/FragmentBeauty;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBeauty;
    .param p1, "expand"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->animateExpanding(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private animateExpanding(Z)V
    .locals 10
    .param p1, "expand"    # Z

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v6, 0x0

    const-wide/16 v4, 0x12c

    .line 248
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyAdvance:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 249
    .local v1, "distanceLevel":I
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyLevel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 251
    .local v0, "distanceAdvance":I
    if-nez p1, :cond_0

    .line 252
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyLevel:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 253
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 252
    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 254
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyAdvance:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 255
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyAdvance:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 256
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 255
    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 257
    new-instance v3, Lcom/android/camera/fragment/FragmentBeauty$5;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/FragmentBeauty$5;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    .line 255
    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 298
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyLevel:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 276
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyAdvance:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 277
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyAdvance:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 278
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 277
    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 279
    new-instance v3, Lcom/android/camera/fragment/FragmentBeauty$6;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/FragmentBeauty$6;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    .line 277
    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0
.end method

.method private hideAdvance()V
    .locals 4

    .prologue
    .line 239
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyAdvance:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/camera/Util;->getChildMeasureWidth(Landroid/view/View;)I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 240
    .local v1, "distanceLevel":I
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyLevel:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/camera/Util;->getChildMeasureWidth(Landroid/view/View;)I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 241
    .local v0, "distanceAdvance":I
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyLevel:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 242
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyAdvance:Landroid/widget/TextView;

    neg-int v3, v0

    int-to-float v3, v3

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 243
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyAdvance:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 244
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyAdvance:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    return-void
.end method

.method private removeFragmentBeauty()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 343
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 344
    .local v0, "baseDelegate":Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;
    if-nez v0, :cond_0

    .line 345
    return v4

    .line 347
    :cond_0
    const v2, 0x7f0a00ed

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v2

    const/16 v3, 0xfb

    if-eq v2, v3, :cond_1

    .line 348
    return v4

    .line 350
    :cond_1
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    .line 353
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xaf

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 354
    .local v1, "tips":Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    .line 355
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 1

    .prologue
    .line 180
    const/16 v0, 0xfb

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    .prologue
    .line 175
    const v0, 0x7f040009

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v1

    .line 72
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 73
    new-instance v2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 75
    const v2, 0x7f0a0032

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBackButton:Landroid/widget/ImageView;

    .line 76
    sget v2, Lcom/android/camera/Util;->sNavigationBarHeight:I

    if-lez v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    sget v3, Lcom/android/camera/Util;->sNavigationBarHeight:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 78
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBackButton:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :goto_0
    const v2, 0x7f0a0031

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/NoScrollViewPager;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "fragmentList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    new-instance v2, Lcom/android/camera/fragment/beauty/LegacyBeautyLevelFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/LegacyBeautyLevelFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v2, Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :goto_1
    new-instance v2, Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;-><init>(Lcom/android/camera/fragment/FragmentBeauty;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;

    .line 104
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/NoScrollViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 105
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v2, v5}, Lcom/android/camera/ui/NoScrollViewPager;->setFocusable(Z)V

    .line 106
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    new-instance v3, Lcom/android/camera/fragment/FragmentBeauty$2;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/FragmentBeauty$2;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/NoScrollViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    new-instance v3, Lcom/android/camera/fragment/FragmentBeauty$3;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/FragmentBeauty$3;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/NoScrollViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 156
    const v2, 0x7f0a002f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyLevel:Landroid/widget/TextView;

    .line 157
    const v2, 0x7f0a0030

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyAdvance:Landroid/widget/TextView;

    .line 158
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyAdvance:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyLevel:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const-string/jumbo v2, "pref_camera_face_beauty_key"

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautySwitch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v2, v5, v5}, Lcom/android/camera/ui/NoScrollViewPager;->setCurrentItem(IZ)V

    .line 163
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyLevel:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setActivated(Z)V

    .line 164
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->hideAdvance()V

    .line 171
    :cond_0
    :goto_2
    return-void

    .line 80
    .end local v0    # "fragmentList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 82
    const v4, 0x7f0f0127

    .line 81
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBackButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/camera/fragment/FragmentBeauty$1;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/FragmentBeauty$1;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 100
    .restart local v0    # "fragmentList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    :cond_3
    new-instance v2, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 168
    :cond_4
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v2, v6, v5}, Lcom/android/camera/ui/NoScrollViewPager;->setCurrentItem(IZ)V

    .line 169
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyAdvance:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setActivated(Z)V

    goto :goto_2
.end method

.method public onBackEvent(I)Z
    .locals 1
    .param p1, "callingFrom"    # I

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->removeFragmentBeauty()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 315
    :goto_0
    return-void

    .line 304
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyLevel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setActivated(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyAdvance:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 306
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/NoScrollViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyLevel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyAdvance:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setActivated(Z)V

    .line 312
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/NoScrollViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x7f0a002f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 338
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onPause()V

    .line 339
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 1
    .param p1, "newMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p2, "animateInElements":Ljava/util/List;, "Ljava/util/List<Lio/reactivex/Completable;>;"
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    .line 207
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->onBackEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "lastFragmentInfo"    # I

    .prologue
    .line 186
    const/16 v1, 0xa7

    .line 187
    const/16 v2, 0xa1

    .line 185
    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 188
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 189
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 190
    return-object v0
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 196
    const/16 v1, 0xa8

    .line 197
    const/16 v2, 0xa2

    .line 195
    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 198
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 199
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 200
    return-object v0
.end method

.method public refreshBottomBeauty(Z)V
    .locals 2
    .param p1, "isClose"    # Z

    .prologue
    .line 219
    if-eqz p1, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyAdvance:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 228
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/FragmentBeauty$4;-><init>(Lcom/android/camera/fragment/FragmentBeauty;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 236
    :cond_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyAdvance:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1
    .param p1, "modeCoordinator"    # Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 58
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentBeauty;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 59
    const/16 v0, 0xc1

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 60
    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1
    .param p1, "modeCoordinator"    # Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 65
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentBeauty;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 66
    const/16 v0, 0xc1

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 67
    return-void
.end method
