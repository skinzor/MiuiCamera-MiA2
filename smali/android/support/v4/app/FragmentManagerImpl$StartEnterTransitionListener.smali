.class Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field private final mIsBack:Z

.field private mNumPostponed:I

.field private final mRecord:Landroid/support/v4/app/BackStackRecord;


# direct methods
.method static synthetic -get0(Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Z
    .locals 1
    .param p0, "-this"    # Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;

    .prologue
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    return v0
.end method

.method static synthetic -get1(Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/support/v4/app/BackStackRecord;
    .locals 1
    .param p0, "-this"    # Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;

    .prologue
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    return-object v0
.end method

.method constructor <init>(Landroid/support/v4/app/BackStackRecord;Z)V
    .locals 0
    .param p1, "record"    # Landroid/support/v4/app/BackStackRecord;
    .param p2, "isBack"    # Z

    .prologue
    .line 3814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3815
    iput-boolean p2, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    .line 3816
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    .line 3817
    return-void
.end method


# virtual methods
.method public cancelTransaction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3875
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    invoke-static {v0, v1, v2, v3, v3}, Landroid/support/v4/app/FragmentManagerImpl;->-wrap0(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;ZZZ)V

    .line 3876
    return-void
.end method

.method public completeTransaction()V
    .locals 10

    .prologue
    .line 3857
    iget v5, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-lez v5, :cond_1

    const/4 v0, 0x1

    .line 3858
    .local v0, "canceled":Z
    :goto_0
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v3, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 3859
    .local v3, "manager":Landroid/support/v4/app/FragmentManagerImpl;
    iget-object v5, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3860
    .local v4, "numAdded":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 3861
    iget-object v5, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3862
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/support/v4/app/Fragment;->setOnStartEnterTransitionListener(Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;)V

    .line 3863
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isPostponed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3864
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->startPostponedEnterTransition()V

    .line 3860
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3857
    .end local v0    # "canceled":Z
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "i":I
    .end local v3    # "manager":Landroid/support/v4/app/FragmentManagerImpl;
    .end local v4    # "numAdded":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "canceled":Z
    goto :goto_0

    .line 3867
    .restart local v2    # "i":I
    .restart local v3    # "manager":Landroid/support/v4/app/FragmentManagerImpl;
    .restart local v4    # "numAdded":I
    :cond_2
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-boolean v7, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    xor-int/lit8 v8, v0, 0x1

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->-wrap0(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;ZZZ)V

    .line 3868
    return-void
.end method

.method public isReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3847
    iget v1, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onStartEnterTransition()V
    .locals 1

    .prologue
    .line 3826
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3827
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-eqz v0, :cond_0

    .line 3828
    return-void

    .line 3830
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v0}, Landroid/support/v4/app/FragmentManagerImpl;->-wrap1(Landroid/support/v4/app/FragmentManagerImpl;)V

    .line 3831
    return-void
.end method

.method public startListening()V
    .locals 1

    .prologue
    .line 3840
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3841
    return-void
.end method
