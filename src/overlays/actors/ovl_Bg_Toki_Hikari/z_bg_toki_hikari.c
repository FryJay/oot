#include "z_bg_toki_hikari.h"

#define FLAGS 0x00000020

#define THIS ((BgTokiHikari*)thisx)

void BgTokiHikari_Init(Actor* thisx, GlobalContext* globalCtx);
void BgTokiHikari_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgTokiHikari_Update(Actor* thisx, GlobalContext* globalCtx);
void BgTokiHikari_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808B9F98(BgTokiHikari* this, GlobalContext* globalCtx);
void func_808BA204(BgTokiHikari* this, GlobalContext* globalCtx);
void func_808BA018(BgTokiHikari* this, GlobalContext* globalCtx);
void func_808BA22C(BgTokiHikari* this, GlobalContext* globalCtx);

extern Gfx D_06007E20[];
extern Gfx D_06008190[];
extern Gfx D_06007EE0[];
extern Gfx D_06008190[];

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

void BgTokiHikari_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgTokiHikari* this = THIS;

    switch (thisx->params) {
        case 0:
            Actor_ProcessInitChain(thisx, sInitChain);
            this->actionFunc = func_808B9F98;
            break;
        case 1:
            if ((gSaveContext.eventChkInf[4] & 0x800) == 0) {
                this->actionFunc = func_808BA204;
                this->unk_14C = 0.0f;
            } else {
                Actor_Kill(thisx);
            }
            break;
        default:
            break;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Init.s")

void BgTokiHikari_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Destroy.s")

void func_808B9F98(BgTokiHikari* this, GlobalContext* globalCtx) {
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808B9F98.s")

void BgTokiHikari_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgTokiHikari* this = THIS;
    this->actionFunc(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Update.s")

void BgTokiHikari_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgTokiHikari* this = THIS;

    switch (thisx->params) {
        case 0:
            func_808BA018(this, globalCtx);
            break;
        case 1:
            func_808BA2CC(this, globalCtx);
            break;
        default:
            break;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Draw.s")

void func_808BA018(BgTokiHikari* this, GlobalContext* globalCtx) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 246);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 0xFC),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (gSaveContext.linkAge == 0) {
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_06008190);
    } else {
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_06007E20);
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
                   Gfx_TexScroll(globalCtx->state.gfxCtx, 0, globalCtx->gameplayFrames & 0x7F, 0x40, 0x20));
        gSPSegment(oGfxCtx->polyXlu.p++, 0x09,
                   Gfx_TexScroll(globalCtx->state.gfxCtx, 0, globalCtx->gameplayFrames & 0x7F, 0x40, 0x20));
        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 0x116),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_06007EE0);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 284);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA018.s")

void func_808BA204(BgTokiHikari *this, GlobalContext *globalCtx) {
    if (globalCtx->unk_11D30[1] != 0) {
        this->actionFunc = func_808BA22C;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA204.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA22C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA274.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA2CC.s")
