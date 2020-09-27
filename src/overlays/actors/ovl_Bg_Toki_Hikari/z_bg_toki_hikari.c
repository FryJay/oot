#include "z_bg_toki_hikari.h"

#define FLAGS 0x00000020

#define THIS ((BgTokiHikari*)thisx)

void BgTokiHikari_Init(Actor* thisx, GlobalContext* globalCtx);
void BgTokiHikari_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgTokiHikari_Update(Actor* thisx, GlobalContext* globalCtx);
void BgTokiHikari_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808B9F98(BgTokiHikari* this, GlobalContext* globalCtx);
void func_808BA204(BgTokiHikari* this, GlobalContext* globalCtx);

const ActorInit Bg_Toki_Hikari_InitVars = {
    ACTOR_BG_TOKI_HIKARI,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_TOKI_OBJECTS,
    sizeof(BgTokiHikari),
    (ActorFunc)BgTokiHikari_Init,
    (ActorFunc)BgTokiHikari_Destroy,
    (ActorFunc)BgTokiHikari_Update,
    (ActorFunc)BgTokiHikari_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

// void BgTokiHikari_Init(Actor *thisx, GlobalContext *globalCtx) {
//     BgTokiHikari *this = THIS;

//     if (thisx->params != 1) {
//         return;
//     }
//     if (thisx->params == 0) {
//         Actor_ProcessInitChain(thisx, sInitChain);
//         this->actionFunc = func_808B9F98;
//         return;
//     }
//     if ((gSaveContext.eventChkInf[1] & 0x800) == 0) {
//         this->actionFunc = func_808BA204;
//         this->unk_14C = 0.0f;
//         return;
//     }
//     Actor_Kill(thisx);
// }

void BgTokiHikari_Init(Actor *thisx, GlobalContext *globalCtx) {
    BgTokiHikari *this = THIS;
    s16 temp_v0;

    temp_v0 = thisx->params;
    if (temp_v0 == 0) {
        goto block_3;
    }
    if (temp_v0 != 1) {
        return;
    }
    goto block_4;
block_3:
    Actor_ProcessInitChain(thisx, sInitChain);
    this->actionFunc = func_808B9F98;
    return;
block_4:
    if ((gSaveContext.eventChkInf[4] & 0x800) != 0) {
        goto block_6;
    }
    this->actionFunc = func_808BA204;
    this->unk_14C = 0.0f;
    return;
block_6:
    Actor_Kill(thisx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808B9F98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA018.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA204.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA22C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA274.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA2CC.s")
