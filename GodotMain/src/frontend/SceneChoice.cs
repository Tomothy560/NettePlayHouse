using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Godot;

public partial class SceneChoice : Node // this is just abstract
{
    // display data
    [Export]
    public virtual var Theme; // godot theme to handle display
    // prompt data
    public string ChoicePrompt;
    public string AiOutPrompt;

    // internal choice data
    public byte EthicsValue;
    public byte FriendlinessValue;
    public byte DeductionEfficiencyValue;
    public byte SuspiciousValue;

    public bool isHidden = true;
    public bool instantiated = false;

    // pseudo constructor
    public void InstantiateSceneChoice(string choicePrompt, string aiOutPrompt, byte ethicsValue, byte friendlinessValue, byte deductionEfficiencyValue, byte suspiciousValue) {
        ChoicePrompt = choicePrompt;
        AiOutPrompt = aiOutPrompt;
        EthicsValue = ethicsValue;
        FriendlinessValue = friendlinessValue;
        DeductionEfficiencyValue = deductionEfficiencyValue;
        SuspiciousValue = suspiciousValue;

        instantiated = true;
    }   

    // animation calling
    public void PlayShowAnimation() {}
    public void PlayChosenAnimation() {}
    public void PlayNotChosenAnimation() {}

    // process and read
    public override void _Ready() {

    }

    public override void _Process(double delta) {
        
    }
}
