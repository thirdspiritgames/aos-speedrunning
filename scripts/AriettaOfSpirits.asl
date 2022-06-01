state("Arietta of Spirits", "Steam 1.2.9.0")
{
    string128 SpeedrunStage : 0x0261462C, 0x100;
    string8 IsPauseMenuOpen : 0x023D6DB4, 0x14, 0xC, 0x0;
}

init
{
    version = "Steam 1.2.9.0";
}

startup
{

}

update
{
    //print(current.SpeedrunStage);
}

start
{
    bool speedrunStageChanged = (old.SpeedrunStage != current.SpeedrunStage);

    if(speedrunStageChanged) {
        bool wasInMainMenu = (old.SpeedrunStage == "SPEEDRUN_NONE");

        if(wasInMainMenu) {
            return true;
        }
    }
}

onStart
{

}

split
{
    bool speedrunStageChanged = (old.SpeedrunStage != current.SpeedrunStage);
    bool isValidStage = (current.SpeedrunStage != "" && current.SpeedrunStage != "SPEEDRUN_NONE");

    if(speedrunStageChanged && isValidStage) {
        return true;
    }
}

isLoading
{
    bool isMenuStateOpen = (current.IsPauseMenuOpen == "YES");
    return isMenuStateOpen;
}

reset
{
    bool speedrunStageChanged = (old.SpeedrunStage != current.SpeedrunStage);

    if(speedrunStageChanged) {
        bool isInMainMenu = current.SpeedrunStage == "SPEEDRUN_NONE";

        if(isInMainMenu) {
            return true;
        }
    }
}

onReset
{

}