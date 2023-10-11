function [trialsNames, trialsMatrix, ezTrialsSeq]=CuedOutcome_Phase(S,PhaseName)

switch PhaseName    
	case 'Habituation'  % Habituation
        trialsNames={'Uncued Reward',...
                     'Uncued Omission'};
        trialsMatrix=[...
        % 1.type, 2.proba, 3.cue,   4.delay,    5.valve,                6.Outcome         	7.Marker
            1,   0.5,         0,    S.GUI.Delay,  S.GUI.RewardValve,    S.InterRew,         double('o');...   
            2,   0.5,         0,    S.GUI.Delay,  S.GUI.OmissionValve, 	S.InterRew,         double('s')];
        easyTrials=[1 1 1 1 1 1 2 2 ];
       
    case 'Hab-RewardSize'  % Habituation
        trialsNames={'Uncued small Reward','Uncued Reward', 'Uncued large Reward',...
                     'Uncued Omission'};
        trialsMatrix=[...
        % 1.type, 2.proba, 3.cue, 4.delay,    5.valve,                6.Outcome         	7.Marker
            1,   0.3,         0,    S.GUI.Delay,  S.GUI.RewardValve,    S.SmallRew,         double('v');...   
            2,   0.3,         0,    S.GUI.Delay,  S.GUI.RewardValve, 	S.InterRew,         double('d');...
            3,   0.3,         0,    S.GUI.Delay,  S.GUI.RewardValve, 	S.LargeRew,         double('o');...
            4,   0.1,         0,    S.GUI.Delay,  S.GUI.OmissionValve, 	S.InterRew,         double('s')];
        
        easyTrials=[1 1 1 2 2 2 3 3];

       case 'Train3C'  % training
        trialsNames={'Cue A Small Reward','Cue B Big Reward',...
                     'Cue C Omission'};
        trialsMatrix=[...
        % 1.type, 2.proba, 3.cue, 4.delay,    5.valve,                6.Outcome         	7.Marker
            1,   0.4,       1,    S.GUI.Delay,  S.GUI.RewardValve,      S.SmallRew,         double('o');...   
            2,   0.4,       2,    S.GUI.Delay,  S.GUI.RewardValve, 	    S.LargeRew,         double('d');...   
            3,   0.2,       3,    S.GUI.Delay,  S.GUI.OmissionValve,	S.InterRew,         double('s')];   
        easyTrials=[1 1 1 1 2 2 2 2];
        
        case 'Train3C_Reversal'  % training
        trialsNames={'Cue A Small Reward','Cue B Omission',...
                     'Cue C Big Reward'};
        trialsMatrix=[...
        % 1.type, 2.proba, 3.cue, 4.delay,    5.valve,                6.Outcome         	7.Marker
            1,   0.1,       1,    S.GUI.Delay,  S.GUI.RewardValve,      S.SmallRew,         double('o');...   
            2,   0.45,       2,    S.GUI.Delay,  S.GUI.OmissionValve, 	S.InterRew,         double('d');...   
            3,   0.45,       3,    S.GUI.Delay,  S.GUI.RewardValve,     S.LargeRew,         double('s')];   
        easyTrials=[1 1 1 1 2 2 2 2];
        
        case 'Train3C_vDelay'  % training
        trialsNames={'Cue A Small Reward (early)',...
                    'Cue A Small Reward ',...
                    'Cue A Small Reward (late)',...
                    'Cue B Big Reward (early)',...
                    'Cue B Big Reward',...
                    'Cue B Big Reward (late)',...
                    'Cue C Omission'};
        trialsMatrix=[...
        % 1.type, 2.proba, 3.cue, 4.delay,    5.valve,                6.Outcome         	7.Marker
            1,   0.1,       1,    S.GUI.Delay,  S.GUI.RewardValve,      S.SmallRew,         double('o');...   
            2,   0.2,       1,    S.GUI.Delay,  S.GUI.RewardValve,      S.SmallRew,         double('o');...   
            3,   0.1,       1,    S.GUI.Delay,  S.GUI.RewardValve,      S.SmallRew,         double('o');...   
            4,   0.1,       2,    S.GUI.Delay,  S.GUI.RewardValve,      S.LargeRew,         double('d');...   
            5,   0.2,       2,    S.GUI.Delay,  S.GUI.RewardValve,      S.LargeRew,         double('d');...     
            6,   0.1,       2,    S.GUI.Delay,  S.GUI.RewardValve, 	    S.LargeRew,         double('d');... 
            7,   0.2,       3,    S.GUI.Delay,  S.GUI.OmissionValve,	 S.InterRew,         double('s')];   
        easyTrials=[2 2 2 5 5 5 7 7];

        case 'Test3C-RewardSize'  % training
        trialsNames={'Cue A Small Reward','Cue A Big Reward','Cue A Omission',...
                     'Cue B Big Reward','Cue B Small Reward','Cue B Omission',...
                     'Cue C Omission','Cue C Reward'};
        trialsMatrix=[...
        % 1.type, 2.proba, 3.cue, 4.delay,    5.valve,                6.Outcome         	7.Marker
            1,   0.3,      1,    S.GUI.Delay,  S.GUI.RewardValve,      S.SmallRew,         double('o');...   
            2,   0.05,      1,    S.GUI.Delay,  S.GUI.RewardValve, 	    S.LargeRew,         double('d');...   
            3,   0.05,      1,    S.GUI.Delay,  S.GUI.OmissionValve, 	S.InterRew,         double('s');...   
            4,   0.30,      2,    S.GUI.Delay,  S.GUI.RewardValve, 	    S.LargeRew,         double('d');...   
            5,   0.00,      2,    S.GUI.Delay,  S.GUI.RewardValve, 	    S.SmallRew,         double('o');...   
            6,   0.05,      2,    S.GUI.Delay,  S.GUI.OmissionValve, 	S.InterRew,         double('o');...   
            7,   0.20,      3,    S.GUI.Delay,  S.GUI.OmissionValve,	S.InterRew,         double('s');...
            8,   0.05,      3,    S.GUI.Delay,  S.GUI.RewardValve,	    S.LargeRew,         double('o')];   
        easyTrials=[1 1 1 4 4 4 7 7];

        case 'Train2C'  % training
        trialsNames={'Cue A Reward','Cue B Reward',...
                     'Uncued Reward', 'Uncued Omission'};
        trialsMatrix=[...
        % 1.type, 2.proba, 3.cue, 4.delay,    5.valve,                6.Outcome         	7.Marker
            1,   0.6,       1,    S.GUI.Delay,  S.GUI.RewardValve,      S.InterRew,         double('o');...   
            2,   0.2,       2,    S.GUI.Delay,  S.GUI.RewardValve, 	    S.InterRew,         double('o');...   
            3,   0.1,       0,    S.GUI.Delay,  S.GUI.RewardValve,	    S.InterRew,         double('o');...
            4,   0.1,       0,    S.GUI.Delay,  S.GUI.OmissionValve,	S.InterRew,         double('s')];   
        easyTrials=[1 1 1 2 2 2 3 3];
             

    case 'Test2C-vDelay'  % testing
        trialsNames={'Cue A Reward vDelay','Cue A Omission','Cue B Reward',...
                      'Uncued Reward', 'Uncued Omission'};
        trialsMatrix=[...
        % 1.type, 2.proba, 3.cue, 4.delay,    5.valve,                6.Outcome         	7.Marker
            1,   0.55,      1,    S.GUI.Delay,  S.GUI.RewardValve,      S.InterRew,         double('o');... 
            2,   0.05,      1,    S.GUI.Delay,  S.GUI.OmissionValve,    S.InterRew,         double('o');... 
            3,   0.2,       2,    S.GUI.Delay,  S.GUI.RewardValve, 	    S.InterRew,         double('o');...   
            4,   0.1,       0,    S.GUI.Delay,  S.GUI.RewardValve,	    S.InterRew,         double('o');...
            5,   0.1,       0,    S.GUI.Delay,  S.GUI.OmissionValve,	S.InterRew,         double('s')];   
        easyTrials=[1 1 1 3 3 3 4 4];
     
end
ezTrialsSeq=easyTrials(randperm(length(easyTrials),length(easyTrials)));
end